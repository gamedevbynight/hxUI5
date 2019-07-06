package sap.ui.events;

@:native("sap.ui.events.ControlEvents")
extern class ControlEvents
{

	/**
	* Binds all events for listening with the given callback function.
	* @param	fnCallback Callback function
	* @return	Void
	*/
	public static function bindAnyEvent( fnCallback:()->Void):Void;

	/**
	* Unbinds all events for listening with the given callback function.
	* @param	fnCallback Callback function
	* @return	Void
	*/
	public static function unbindAnyEvent( fnCallback:()->Void):Void;
}

