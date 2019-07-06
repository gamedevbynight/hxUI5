package sap.ui.device;

@:native("sap.ui.device.resize")
extern class Resize
{

	/**
	* Registers the given event handler to resize change events of the document's window.

The event is fired whenever the document's window size changes.

The event handler is called with a single argument: a map <code>mParams</code> which provides the following information: <ul> <li><code>mParams.height</code>: The height of the document's window in pixels.</li> <li><code>mParams.width</code>: The width of the document's window in pixels.</li> </ul>
	* @param	fnFunction The handler function to call when the event occurs. This function will be called in the context of the <code>oListener</code> instance (if present) or on the <code>window</code> instance. A map with information about the size is provided as a single argument to the handler (see details above).
	* @param	oListener The object that wants to be notified when the event occurs (<code>this</code> context within the handler function). If it is not specified, the handler function is called in the context of the <code>window</code>.
	* @return	Void
	*/
	public static function attachHandler( fnFunction:()->Void, ?oListener:Dynamic):Void;

	/**
	* Removes a previously attached event handler from the resize events.

The passed parameters must match those used for registration with {@link #.attachHandler} beforehand.
	* @param	fnFunction The handler function to detach from the event
	* @param	oListener The object that wanted to be notified when the event occurred
	* @return	Void
	*/
	public static function detachHandler( fnFunction:()->Void, ?oListener:Dynamic):Void;
}

