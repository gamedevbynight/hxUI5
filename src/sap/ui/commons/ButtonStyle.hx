package sap.ui.commons;

@:native("sap.ui.commons.ButtonStyle")
@:enum extern abstract ButtonStyle(String)
{
    /**
    * Accept button (normally green).
    */
    var Accept= "Accept";
    /**
    * default style (no special styling).
    */
    var Default= "Default";
    /**
    * Button is emphasized.
    */
    var Emph= "Emph";
    /**
    * Reject button (normally red).
    */
    var Reject= "Reject";
}
