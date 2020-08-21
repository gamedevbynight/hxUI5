package sap.ui.device;

@:native("sap.ui.Device.orientation")
extern class Orientation
{

	/**
	* If this flag is set to <code>true</code>, the screen is currently in landscape mode (the width is greater than the height).
	*/
	 public static var landscape:Bool;

	/**
	* If this flag is set to <code>true</code>, the screen is currently in portrait mode (the height is greater than the width).
	*/
	 public static var portrait:Bool;



	/**
	* Registers the given event handler to orientation change events of the document's window.

The event is fired whenever the screen orientation changes and the width of the document's window becomes greater than its height or the other way round.

The event handler is called with a single argument: a map <code>mParams</code> which provides the following information: <ul> <li><code>mParams.landscape</code>: If this flag is set to <code>true</code>, the screen is currently in landscape mode, otherwise in portrait mode.</li> </ul>
	* @param	fnFunction The handler function to call when the event occurs. This function will be called in the context of the <code>oListener</code> instance (if present) or on the <code>window</code> instance. A map with information about the orientation is provided as a single argument to the handler (see details above).
	* @param	oListener The object that wants to be notified when the event occurs (<code>this</code> context within the handler function). If it is not specified, the handler function is called in the context of the <code>window</code>.
	* @return	Void
	*/
	public static function attachHandler( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):Void;

	/**
	* Removes a previously attached event handler from the orientation change events.

The passed parameters must match those used for registration with {@link #.attachHandler} beforehand.
	* @param	fnFunction The handler function to detach from the event
	* @param	oListener The object that wanted to be notified when the event occurred
	* @return	Void
	*/
	public static function detachHandler( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):Void;
}

