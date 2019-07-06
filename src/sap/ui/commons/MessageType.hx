package sap.ui.commons;

@:native("sap.ui.commons.MessageType")
@:enum extern abstract MessageType(String)
{
    /**
    * Error message
    */
    var Error= "Error";
    /**
    * Successful message
    */
    var Success= "Success";
    /**
    * Warning message
    */
    var Warning= "Warning";
}
