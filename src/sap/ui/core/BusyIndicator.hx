package sap.ui.core;

@:native("sap.ui.core.BusyIndicator")
extern class BusyIndicator
{

	/**
	* Registers a handler for the {@link #event:Close Close} event.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to <code>sap.ui.core.BusyIndicator</code>.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with; defaults to <code>sap.ui.core.BusyIndicator</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public static function attachClose( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.core.BusyIndicator;

	/**
	* Registers a handler for the {@link #event:Open Open} event.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to <code>sap.ui.core.BusyIndicator</code>.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with; defaults to <code>sap.ui.core.BusyIndicator</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public static function attachOpen( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.core.BusyIndicator;

	/**
	* Unregisters a handler from the {@link #event:Close Close} event.
	* @param	fnFunction The callback function to unregister
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public static function detachClose( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.core.BusyIndicator;

	/**
	* Unregisters a handler from the {@link #event:Open Open} event.
	* @param	fnFunction The callback function to unregister
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public static function detachOpen( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.core.BusyIndicator;

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

