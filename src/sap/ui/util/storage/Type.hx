package sap.ui.util.storage;

@:native("module:sap/ui/util/Storage.Type")
@:enum extern abstract Type(String)
{
    /**
    * Indicates usage of the browser's localStorage feature
    */
    var local= "local";
    /**
    * Indicates usage of the browser's sessionStorage feature
    */
    var session= "session";
}
