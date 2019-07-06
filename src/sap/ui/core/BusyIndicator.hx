package sap.ui.core;

@:native("sap.ui.core.BusyIndicator")
extern class BusyIndicator
{

	/**
	* Registers a handler for the "close" event
	* @param	fnFunction The function to call, when the event occurs. This function will be called on the oListener-instance (if present) or in a 'static way'.
	* @param	oListener Object on which to call the given function.
	* @return	<code>this</code> to allow method chaining
	*/
	public static function attachClose( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.BusyIndicator;

	/**
	* Registers a handler for the "open" event.
	* @param	fnFunction The function to call, when the event occurs. This function will be called on the oListener-instance (if present) or in a 'static way'.
	* @param	oListener Object on which to call the given function.
	* @return	<code>this</code> to allow method chaining
	*/
	public static function attachOpen( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.BusyIndicator;

	/**
	* Unregisters a handler for the "close" event
	* @param	fnFunction The callback function to unregister
	* @param	oListener Object on which the given function had to be called.
	* @return	<code>this</code> to allow method chaining
	*/
	public static function detachClose( fnFunction:()->Void, oListener:Dynamic):sap.ui.core.BusyIndicator;

	/**
	* Unregisters a handler for the "open" event
	* @param	fnFunction The callback function to unregister
	* @param	oListener Object on which the given function had to be called.
	* @return	<code>this</code> to allow method chaining
	*/
	public static function detachOpen( fnFunction:()->Void, oListener:Dynamic):sap.ui.core.BusyIndicator;

	/**
	* Removes the BusyIndicator from the screen.
	* @return	Void
	*/
	public static function hide( ):Void;

	/**
	* Displays the <code>BusyIndicator</code> and starts blocking all user input. This only happens after some delay, and if, after that delay, the <code>BusyIndicator.hide()</code> has not yet been called in the meantime.

There is a certain default value for the delay, which can be overridden.
	* @param	iDelay The delay in milliseconds before opening the <code>BusyIndicator</code>; It is not opened if <code>hide()</code> is called before the delay ends. If no delay (or no valid delay) is given, a delay of 1000 milliseconds is used.
	* @return	Void
	*/
	public static function show( ?iDelay:Int):Void;
}

