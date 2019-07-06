package sap.m.messagebox;

@:native("sap.m.MessageBox.Icon")
@:enum extern abstract Icon(String)
{
    /**
    * Shows the error icon in the message box.
    */
    var ERROR= "ERROR";
    /**
    * Shows the information icon in the message box.
    */
    var INFORMATION= "INFORMATION";
    /**
    * Shows no icon in the message box.
    */
    var NONE= "NONE";
    /**
    * Shows the question icon in the message box.
    */
    var QUESTION= "QUESTION";
    /**
    * Shows the success icon in the message box.
    */
    var SUCCESS= "SUCCESS";
    /**
    * Shows the warning icon in the message box.
    */
    var WARNING= "WARNING";
}
