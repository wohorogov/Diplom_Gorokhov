var plugin = {
    callOnDocumentInteractive: function (callback) {
        if ("loading" == document.readyState) {
            window.addEventListener("DOMContentLoaded", function (event) {
                callback();
            });
        }
        else {
            setTimeout(callback, 0);
        }
    }
};
