package sap.ui.integration;

@:native("sap.ui.integration.CardDataMode")
@:enum extern abstract CardDataMode(String)
{
    /**
    * When in this mode, the card can make requests.
    */
    var Active= "Active";
    /**
    * When in this mode, the card cannot make requests.
    */
    var Inactive= "Inactive";
}
