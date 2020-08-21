package sap.ui.events;

@:native("module:sap/ui/events/ControlEvents")
extern class ControlEvents
{

	/**
	* List of DOM events that a UIArea automatically takes care of.

A control/element doesn't have to bind listeners for these events. It instead can implement an <code>on<i>event</i>(oEvent)</code> method for any of the following events that it wants to be notified about:

click, dblclick, contextmenu, focusin, focusout, keydown, keypress, keyup, mousedown, mouseout, mouseover, mouseup, select, selectstart, dragstart, dragenter, dragover, dragleave, dragend, drop, paste, cut, input, touchstart, touchend, touchmove, touchcancel, tap, swipe, swipeleft, swiperight, scrollstart, scrollstop

The mouse events and touch events are supported simultaneously on both desktop and mobile browsers. Do NOT create both onmouse* and ontouch* functions to avoid one event being handled twice on the same control.
	*/
	 public static var events:Dynamic;



	/**
	* Binds all events for listening with the given callback function.
	* @param	fnCallback Callback function
	* @return	Void
	*/
	public static function bindAnyEvent( fnCallback:(Dynamic)->Void):Void;

	/**
	* Unbinds all events for listening with the given callback function.
	* @param	fnCallback Callback function
	* @return	Void
	*/
	public static function unbindAnyEvent( fnCallback:(Dynamic)->Void):Void;
}

