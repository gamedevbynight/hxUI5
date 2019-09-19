package sap.ui.device;

@:native("sap.ui.device.media")
extern class Media
{

	/**
	* Registers the given event handler to change events of the screen width based on the range set with the specified name.

The event is fired whenever the screen width changes and the current screen width is in a different interval of the given range set than before the width change.

The event handler is called with a single argument: a map <code>mParams</code> which provides the following information about the entered interval: <ul> <li><code>mParams.from</code>: The start value (inclusive) of the entered interval as a number</li> <li><code>mParams.to</code>: The end value (exclusive) range of the entered interval as a number or undefined for the last interval (infinity)</li> <li><code>mParams.unit</code>: The unit used for the values above, e.g. <code>"px"</code></li> <li><code>mParams.name</code>: The name of the entered interval, if available</li> </ul>
	* @param	fnFunction The handler function to call when the event occurs. This function will be called in the context of the <code>oListener</code> instance (if present) or on the <code>window</code> instance. A map with information about the entered range set is provided as a single argument to the handler (see details above).
	* @param	oListener The object that wants to be notified when the event occurs (<code>this</code> context within the handler function). If it is not specified, the handler function is called in the context of the <code>window</code>.
	* @param	sName The name of the range set to listen to. The range set must be initialized beforehand ({@link sap.ui.Device.media.initRangeSet}). If no name is provided, the {@link sap.ui.Device.media.RANGESETS.SAP_STANDARD default range set} is used.
	* @return	Void
	*/
	public static function attachHandler( fnFunction:()->Void, ?oListener:Dynamic, ?sName:String):Void;

	/**
	* Removes a previously attached event handler from the change events of the screen width.

The passed parameters must match those used for registration with {@link #.attachHandler} beforehand.
	* @param	fnFunction The handler function to detach from the event
	* @param	oListener The object that wanted to be notified when the event occurred
	* @param	sName The name of the range set to listen to. If no name is provided, the {@link sap.ui.Device.media.RANGESETS.SAP_STANDARD default range set} is used.
	* @return	Void
	*/
	public static function detachHandler( fnFunction:()->Void, ?oListener:Dynamic, ?sName:String):Void;

	/**
	* Returns information about the current active range of the range set with the given name.

If the optional parameter <code>iWidth</code> is given, the active range will be determined for that width, otherwise it is determined for the current window size.
	* @param	sName The name of the range set. The range set must be initialized beforehand ({@link sap.ui.Device.media.initRangeSet})
	* @param	iWidth An optional width, based on which the range should be determined; If <code>iWidth</code> is not a number, the window size will be used.
	* @return	Information about the current active interval of the range set. The returned map has the same structure as the argument of the event handlers ({@link sap.ui.Device.media.attachHandler})
	*/
	public static function getCurrentRange( sName:String, ?iWidth:Int):Dynamic;

	/**
	* Returns <code>true</code> if a range set with the given name is already initialized.
	* @param	sName The name of the range set.
	* @return	Returns <code>true</code> if a range set with the given name is already initialized
	*/
	public static function hasRangeSet( sName:String):Bool;

	/**
	* Initializes a screen width media query range set.

This initialization step makes the range set ready to be used for one of the other functions in namespace <code>sap.ui.Device.media</code>. The most important {@link sap.ui.Device.media.RANGESETS predefined range sets} are initialized automatically.

To make a not yet initialized {@link sap.ui.Device.media.RANGESETS predefined range set} ready to be used, call this function with the name of the range set to be initialized: <pre>
sap.ui.Device.media.initRangeSet(sap.ui.Device.media.RANGESETS.SAP_3STEPS);
</pre>

Alternatively it is possible to define custom range sets as shown in the following example: <pre>
sap.ui.Device.media.initRangeSet("MyRangeSet", [200, 400], "px", ["Small", "Medium", "Large"]);
</pre> This example defines the following named ranges: <ul> <li><code>"Small"</code>: For screens smaller than 200 pixels.</li> <li><code>"Medium"</code>: For screens greater than or equal to 200 pixels and smaller than 400 pixels.</li> <li><code>"Large"</code>: For screens greater than or equal to 400 pixels.</li> </ul> The range names are optional. If they are specified a CSS class (e.g. <code>sapUiMedia-MyRangeSet-Small</code>) is also added to the document root depending on the current active range. This can be suppressed via parameter <code>bSuppressClasses</code>.
	* @param	sName The name of the range set to be initialized - either a {@link sap.ui.Device.media.RANGESETS predefined} or custom one. The name must be a valid id and consist only of letters and numeric digits.
	* @param	aRangeBorders The range borders
	* @param	sUnit The unit which should be used for the values given in <code>aRangeBorders</code>. The allowed values are <code>"px"</code> (default), <code>"em"</code> or <code>"rem"</code>
	* @param	aRangeNames The names of the ranges. The names must be a valid id and consist only of letters and digits. If names are specified, CSS classes are also added to the document root as described above. This behavior can be switched off explicitly by using <code>bSuppressClasses</code>. <b>Note:</b> <code>aRangeBorders</code> with <code>n</code> entries define <code>n+1</code> ranges. Therefore <code>n+1</code> names must be provided.
	* @param	bSuppressClasses Whether or not writing of CSS classes to the document root should be suppressed when <code>aRangeNames</code> are provided
	* @return	Void
	*/
	public static function initRangeSet( sName:String, ?aRangeBorders:Array<Int>, ?sUnit:String, ?aRangeNames:Array<String>, ?bSuppressClasses:Bool):Void;
}

