package sap.ui.core.ws;

@:native("sap.ui.core.ws.ReadyState")
@:enum extern abstract ReadyState(String)
{
    /**
    * The connection has been closed or could not be opened.
    */
    var CLOSED= "CLOSED";
    /**
    * The connection is going through the closing handshake.
    */
    var CLOSING= "CLOSING";
    /**
    * The connection has not yet been established.
    */
    var CONNECTING= "CONNECTING";
    /**
    * The WebSocket connection is established and communication is possible.
    */
    var OPEN= "OPEN";
}
