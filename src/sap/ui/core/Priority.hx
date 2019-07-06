package sap.ui.core;

@:native("sap.ui.core.Priority")
@:enum extern abstract Priority(String)
{
    /**
    * High priority
    */
    var High= "High";
    /**
    * Low priority
    */
    var Low= "Low";
    /**
    * Medium priority
    */
    var Medium= "Medium";
    /**
    * Default, none priority
    */
    var None= "None";
}
