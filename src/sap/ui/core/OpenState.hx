package sap.ui.core;

@:native("sap.ui.core.OpenState")
@:enum extern abstract OpenState(String)
{
    /**
    * Closed and currently not changing states.
    */
    var CLOSED= "CLOSED";
    /**
    * Still open, but in the process of going to the CLOSED state.
    */
    var CLOSING= "CLOSING";
    /**
    * Open and currently not changing states.
    */
    var OPEN= "OPEN";
    /**
    * Already left the CLOSED state, is not OPEN yet, but in the process of getting OPEN.
    */
    var OPENING= "OPENING";
}
