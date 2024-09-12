sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        Dynamic_Page: function(oEvent) {
            MessageToast.show("Custom handler invoked.");
        }
    };
});
