(function Plugin() {
    var m_isConnectedToProduct = false;
    var m_tabs = new Tabs(BrowserName);
    var m_factorySettings = new FactorySettings();
    var m_buttonControl = new ButtonControl(m_factorySettings.getButton());
    var m_popupControl = new PopupControl(m_factorySettings.getPopup());
    var m_injectionId = null;
    var m_queuedRequests = [];
    function handleRuntimeMessages(request, sender, sendResponse) {
        if ("getFeatureScriptUrls" == request.command) {
            handleGetFeatureScriptUrlsRequest(request, sender, sendResponse);
        }
        else if ("reloadActiveTab" == request.command) {
            handleReloadActiveTabRequest();
        }
        else if ("trace" == request.command) {
            handleTraceRequest(request);
        }
        else if ("getPopupStartupParameters" == request.command) {
            handleGetPopupStartupParameters(request, sender, sendResponse);
            return true;
        }
        else if ("getContentStartupParameters" == request.command) {
            handleGetContentStartupParameters(request, sender, sendResponse);
        }
        else if ("openWebPage" == request.command) {
            handleOpenNewTab(request);
        }
    }
    function trySendResponse(sendResponse, responseObject) {
        try {
            sendResponse(responseObject);
        }
        catch (e) {
            console.debug("Response was not sent, sender page was closed or redirected: ", e);
        }
    }
    function handleTraceRequest(request) {
        traceAsIs(request.message || "<null message>");
    }
    function processQueuedRuntimeMessages() {
        m_queuedRequests.forEach(function (msg) {
            handleRuntimeMessages(msg.request, msg.sender, msg.sendResponse);
        });
        m_queuedRequests = [];
    }
    function handleGetContentStartupParameters(request, sender, sendResponse) {
        trySendResponse(sendResponse, {
            tabId: registerTab(sender.tab),
            isConnectedToProduct: m_isConnectedToProduct,
            injectionId: m_injectionId
        });
    }
    function handleGetPopupStartupParameters(request, sender, sendResponse) {
        chrome.tabs.query({ active: true, lastFocusedWindow: true }, function (result) {
            trySendResponse(sendResponse, {
                tabId: registerTab(result[0]),
                injectionId: m_injectionId
            });
        });
    }
    function handleGetFeatureScriptUrlsRequest(request, sender, sendResponse) {
        var manifest = chrome.runtime.getManifest();
        var urls = manifest.web_accessible_resources.map(function (script) {
            return chrome.extension.getURL(script);
        });
        console.debug("feature urls amount:", urls.length);
        trySendResponse(sendResponse, { urls: urls });
    }
    function handleReloadActiveTabRequest() {
        chrome.tabs.reload();
    }
    function handleOpenNewTab(request) {
        chrome.tabs.create({ url: request.message });
    }
    function registerTab(tab) {
        var encodedTabId = m_tabs.register(tab.windowId, tab.id);
        return encodedTabId;
    }
    function buildApi(hasToolbar) {
        var api = {
            getDocumentType: function () {
                return 1;
            },
            onConnect: noThrow(onConnect),
            onDisconnect: noThrow(onDisconnect),
            openNewTab: function (url) { open(url); },
            legacy: {
                openNewTabNearExisting: function (existingTabId, webPage) {
                    open(webPage);
                }
            }
        };
        if (hasToolbar) {
            api.toolbarButton = {
                setDefaultState: noThrow(function (state) {
                    m_buttonControl.setDefaultState(state);
                }),
                setStateForTab: noThrow(function (encodedTabId, state) {
                    var tabId = m_tabs.identify(encodedTabId);
                    m_buttonControl.setState(tabId, state);
                }),
            };
        }
        return api;
    }
    function noThrow(func) {
        return function () {
            var args = Array.prototype.slice.call(arguments);
            try {
                return func.apply(func, arguments);
            }
            catch (e) {
                var msg = func.name + "({})".replace("{}", args) + " failed: " + e;
                trace(msg);
                console.error(msg);
            }
        };
    }
    function publishApi(hasToolbar) {
        var msg = "Publish plugin API, hasToolbar = " + hasToolbar.toString();
        console.debug(msg);
        trace(msg);
        window.plugin = buildApi(hasToolbar);
    }
    function registerExistingTabs() {
        chrome.tabs.query({}, function (tabs) {
            tabs.forEach(registerTab);
        });
    }
    function trackTabChanges() {
        chrome.tabs.onCreated.addListener(function (tab) {
            registerTab(tab);
        });
        chrome.tabs.onRemoved.addListener(function (tabId) {
            m_tabs.forget(tabId);
        });
        chrome.tabs.onReplaced.addListener(function (newTabId, oldTabId) {
            m_tabs.forget(oldTabId);
            chrome.tabs.get(newTabId, registerTab);
        });
    }
    function onConnect() {
        console.debug("Connection with the product is discovered.");
        m_isConnectedToProduct = true;
        m_popupControl.enableOnlineMode();
        trace(chrome.runtime.id + "/" + chrome.runtime.getManifest().version + "/" + navigator.userAgent.toString() + " is online.");
        chrome.runtime.onMessage.addListener(handleRuntimeMessages);
        chrome.runtime.onMessage.removeListener(queueRuntimeMessages);
        processQueuedRuntimeMessages();
    }
    function onDisconnect() {
        console.warn("Connection with the product is lost.");
        m_isConnectedToProduct = false;
        chrome.runtime.onMessage.removeListener(handleRuntimeMessages);
        chrome.runtime.onMessage.addListener(queueRuntimeMessages);
        m_buttonControl.resetToFactory();
        m_popupControl.resetToFactory();
    }
    function queueRuntimeMessages(request, sender, sendResponse) {
        m_queuedRequests.push({
            request: request,
            sender: sender,
            sendResponse: sendResponse
        });
        return true;
    }
    function onInjectionIdLoaded(injectionId) {
        console.log("InjectionId was loaded", injectionId);
        m_injectionId = injectionId;
        var hasToolbarApi = false;
        trackTabChanges();
        hasToolbarApi = true;
        publishApi(hasToolbarApi);
        injectSnapshotScripts(injectionId);
    }
    function onInjectionIdChangeDetected() {
        console.log("InjectionId was updated, restarting");
        chrome.runtime.reload();
    }
    chrome.runtime.onMessage.addListener(queueRuntimeMessages);
    loadInjectionId(onInjectionIdLoaded, onInjectionIdChangeDetected);
})();
