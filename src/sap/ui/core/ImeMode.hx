package sap.ui.core;

@:native("sap.ui.core.ImeMode")
@:enum extern abstract ImeMode(String)
{
    /**
    * IME is used for entering characters.
    */
    var Active= "Active";
    /**
    * The value is automatically computed by the user agent.
    */
    var Auto= "Auto";
    /**
    * IME is disabled.
    */
    var Disabled= "Disabled";
    /**
    * IME is not used for entering characters.
    */
    var Inactive= "Inactive";
}
