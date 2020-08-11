package sap.m.messagebox;

@:enum extern abstract Action(String)
{
    /**
    * Adds an "Abort" button to the message box.
    */
    var ABORT= "ABORT";
    /**
    * Adds a "Cancel" button to the message box.
    */
    var CANCEL= "CANCEL";
    /**
    * Adds a "Close" button to the message box.
    */
    var CLOSE= "CLOSE";
    /**
    * Adds a "Delete" button to the message box.
    */
    var DELETE= "DELETE";
    /**
    * Adds an "Ignore" button to the message box.
    */
    var IGNORE= "IGNORE";
    /**
    * Adds a "No" button to the message box.
    */
    var NO= "NO";
    /**
    * Adds an "OK" button to the message box.
    */
    var OK= "OK";
    /**
    * Adds a "Retry" button to the message box.
    */
    var RETRY= "RETRY";
    /**
    * Adds a "Yes" button to the message box.
    */
    var YES= "YES";
}
