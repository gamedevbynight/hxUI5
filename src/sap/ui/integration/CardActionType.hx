package sap.ui.integration;

@:native("sap.ui.integration.CardActionType")
@:enum extern abstract CardActionType(String)
{
    /**
    * Used for custom actions
    */
    var Custom= "Custom";
    /**
    * Used for navigation actions
    */
    var Navigation= "Navigation";
    /**
    * Used for submit actions
    */
    var Submit= "Submit";
}
