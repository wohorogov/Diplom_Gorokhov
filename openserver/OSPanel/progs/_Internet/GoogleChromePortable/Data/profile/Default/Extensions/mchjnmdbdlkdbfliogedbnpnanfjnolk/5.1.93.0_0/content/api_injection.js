function initApiInjection(currentTabId) {
    publishApi(currentTabId);
    function executeScriptInDocument(contents) {
        var headNode = document.querySelector("head") || document.querySelector("body");
        var scriptNode = document.createElement("script");
        scriptNode.setAttribute("type", "text/javascript");
        scriptNode.text = contents;
        headNode.appendChild(scriptNode);
        headNode.removeChild(scriptNode);
    }
    function publishApi(currentTabId) {
        trace("api.publishApi(), url = " + document.location.href);
        window[TabIdPropertyName] = currentTabId;
        var script = "window.{0} = '{1}';".
            replace("{0}", TabIdPropertyName).
            replace("{1}", currentTabId);
        executeScriptInDocument(script);
        fireReadyEvent();
    }
    function fireReadyEvent() {
        trace("api.fireReadyEvent(), url = " + document.location.href);
        window.dispatchEvent(new CustomEvent(ApiReadyEventName));
    }
}
