package sap.ui.core.ws;

@:native("sap.ui.core.ws.WebSocket")

/**
* Basic WebSocket class.
*/
extern class WebSocket extends sap.ui.base.EventProvider
{

	/**
	* 
	* @param	sUrl relative or absolute URL for WebSocket connection.
	* @param	aProtocols array of protocols as strings, a single protocol as a string
	* @return	Object
	*/
	public function new( ?sUrl:String, ?aProtocols:Array<Dynamic>):Void;

	/**
	* Attach event-handler <code>fnFunction</code> to the 'close' event of this <code>sap.ui.core.ws.WebSocket</code>.<br>
	* @param	oData The object, that should be passed along with the event-object when firing the event.
	* @param	fnFunction The function to call, when the event occurs. This function will be called on the oListener-instance (if present) or in a 'static way'.
	* @param	oListener Object on which to call the given function. If empty, this WebSocket is used.
	* @return	<code>this</code> to allow method chaining
	*/
	public function attachClose( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.ws.WebSocket;

	/**
	* Attach event-handler <code>fnFunction</code> to the 'error' event of this <code>sap.ui.core.ws.WebSocket</code>.<br>
	* @param	oData The object, that should be passed along with the event-object when firing the event.
	* @param	fnFunction The function to call, when the event occurs. This function will be called on the oListener-instance (if present) or in a 'static way'.
	* @param	oListener Object on which to call the given function. If empty, this WebSocket is used.
	* @return	<code>this</code> to allow method chaining
	*/
	public function attachError( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.ws.WebSocket;

	/**
	* Attach event-handler <code>fnFunction</code> to the 'message' event of this <code>sap.ui.core.ws.WebSocket</code>.<br>
	* @param	oData The object, that should be passed along with the event-object when firing the event.
	* @param	fnFunction The function to call, when the event occurs. This function will be called on the oListener-instance (if present) or in a 'static way'.
	* @param	oListener Object on which to call the given function. If empty, this WebSocket is used.
	* @return	<code>this</code> to allow method chaining
	*/
	public function attachMessage( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.ws.WebSocket;

	/**
	* Attach event-handler <code>fnFunction</code> to the 'open' event of this <code>sap.ui.core.ws.WebSocket</code>.<br>
	* @param	oData The object, that should be passed along with the event-object when firing the event.
	* @param	fnFunction The function to call, when the event occurs. This function will be called on the oListener-instance (if present) or in a 'static way'.
	* @param	oListener Object on which to call the given function. If empty, this WebSocket is used.
	* @return	<code>this</code> to allow method chaining
	*/
	public function attachOpen( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.ws.WebSocket;

	/**
	* Closes the connection.
	* @param	iCode Status code that explains why the connection is closed. Must be either 1000, or between 3000 and 4999 (default 1000)
	* @param	sReason Closing reason as a string
	* @return	<code>this</code> to allow method chaining
	*/
	public function close( ?iCode:Int, ?sReason:String):sap.ui.core.ws.WebSocket;

	/**
	* Detach event-handler <code>fnFunction</code> from the 'close' event of this <code>sap.ui.core.ws.WebSocket</code>.<br>

The passed function and listener object must match the ones previously used for event registration.
	* @param	fnFunction The function to call, when the event occurs.
	* @param	oListener Object on which the given function had to be called.
	* @return	<code>this</code> to allow method chaining
	*/
	public function detachClose( fnFunction:()->Void, oListener:Dynamic):sap.ui.core.ws.WebSocket;

	/**
	* Detach event-handler <code>fnFunction</code> from the 'error' event of this <code>sap.ui.core.ws.WebSocket</code>.<br>

The passed function and listener object must match the ones previously used for event registration.
	* @param	fnFunction The function to call, when the event occurs.
	* @param	oListener Object on which the given function had to be called.
	* @return	<code>this</code> to allow method chaining
	*/
	public function detachError( fnFunction:()->Void, oListener:Dynamic):sap.ui.core.ws.WebSocket;

	/**
	* Detach event-handler <code>fnFunction</code> from the 'message' event of this <code>sap.ui.core.ws.WebSocket</code>.<br>

The passed function and listener object must match the ones previously used for event registration.
	* @param	fnFunction The function to call, when the event occurs.
	* @param	oListener Object on which the given function had to be called.
	* @return	<code>this</code> to allow method chaining
	*/
	public function detachMessage( fnFunction:()->Void, oListener:Dynamic):sap.ui.core.ws.WebSocket;

	/**
	* Detach event-handler <code>fnFunction</code> from the 'open' event of this <code>sap.ui.core.ws.WebSocket</code>.<br>

The passed function and listener object must match the ones previously used for event registration.
	* @param	fnFunction The function to call, when the event occurs.
	* @param	oListener Object on which the given function had to be called.
	* @return	<code>this</code> to allow method chaining
	*/
	public function detachOpen( fnFunction:()->Void, oListener:Dynamic):sap.ui.core.ws.WebSocket;

	/**
	* Creates a new subclass of class sap.ui.core.ws.WebSocket with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.EventProvider.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* null
	* @return	Void
	*/
	public function getInterface( ):Void;

	/**
	* Returns a metadata object for class sap.ui.core.ws.WebSocket.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Getter for the protocol selected by the server once the connection is open.
	* @return	protocol
	*/
	public function getProtocol( ):String;

	/**
	* Getter for WebSocket readyState.
	* @return	readyState
	*/
	public function getReadyState( ):sap.ui.core.ws.ReadyState;

	/**
	* Sends a message.<br> <br> If the connection is not yet opened, the message will be queued and sent when the connection is established.
	* @param	sMessage Message to send
	* @return	<code>this</code> to allow method chaining
	*/
	public function send( sMessage:String):sap.ui.core.ws.WebSocket;
}

