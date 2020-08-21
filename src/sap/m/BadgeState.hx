package sap.m;

@:native("sap.m.BadgeState")
@:enum extern abstract BadgeState(String)
{
    /**
    * Informing interested parties that the badge has appeared.
    */
    var Appear= "Appear";
    /**
    * Informing interested parties that the badge has disappeared.
    */
    var Disappear= "Disappear";
    /**
    * Informing interested parties that the badge has been updated.
    */
    var Updated= "Updated";
}
