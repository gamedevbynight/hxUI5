package jquery.sap.storage;

@:native("jQuery.sap.storage.Type")
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
