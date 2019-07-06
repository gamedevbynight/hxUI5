package sap.ui.core.ws;

@:native("sap.ui.core.ws.SapPcpWebSocket")

/**
* WebSocket class implementing the pcp-protocol.
*/
extern class SapPcpWebSocket extends sap.ui.core.ws.WebSocket
{

	/**
	* 
	* @param	sUrl relative or absolute URL for WebSocket connection.
	* @param	aProtocols array of protocols as strings, a single protocol as a string. Protocol(s) should be selected from {@link sap.ui.core.ws.SapPcpWebSocket.SUPPORTED_PROTOCOLS}.
	* @return	Object
	*/
	public function new( ?sUrl:String, ?aProtocols:Array<Dynamic>):Void;

	/**
	* Creates a new subclass of class sap.ui.core.ws.SapPcpWebSocket with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.ws.WebSocket.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.core.ws.SapPcpWebSocket.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
	@:overload( function(message:String, ?oPcpFields:Dynamic):sap.ui.core.ws.SapPcpWebSocket{ })
	@:overload( function(message:Blob, ?oPcpFields:Dynamic):sap.ui.core.ws.SapPcpWebSocket{ })

	/**
	* Sends a message and optional pcp-header-fields using the pcp-protocol.<br> <br> If the connection is not yet opened, the message will be queued and sent when the connection is established.
	* @param	message message to send
	* @param	oPcpFields additional pcp-fields as key-value map
	* @return	<code>this</code> to allow method chaining
	*/
	public function send( message:ArrayBuffer, ?oPcpFields:Dynamic):sap.ui.core.ws.SapPcpWebSocket;
}

