package sap.ui.core;

@:native("sap.ui.core.MessageType")
@:enum extern abstract MessageType(String)
{
    /**
    * Message is an error
    */
    var Error= "Error";
    /**
    * Message should be just an information
    */
    var Information= "Information";
    /**
    * Message has no specific level
    */
    var None= "None";
    /**
    * Message is a success message
    */
    var Success= "Success";
    /**
    * Message is a warning
    */
    var Warning= "Warning";
}
