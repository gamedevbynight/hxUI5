package jquery;

@:native("jQuery.Event")

/**
* Check the jQuery.Event class documentation available under "http://www.jquery.com" and "http://api.jquery.com/category/events/event-object/" for details.
*/
extern class Event
{
public function new():Void;

	/**
	* Returns OffsetX of Event. In jQuery there is a bug. In IE the value is in offsetX, in FF in layerX
	* @return	offsetX
	*/
	public function getOffsetX( ):Int;

	/**
	* Returns OffsetY of Event. In jQuery there is a bug. in IE the value is in offsetY, in FF in layerY.
	* @return	offsetY
	*/
	public function getOffsetY( ):Int;

	/**
	* Returns an array of names (as strings) identifying {@link module:sap/ui/events/PseudoEvents} that are fulfilled by this very Event instance.
	* @return	Array of names identifying {@link module:sap/ui/events/PseudoEvents} that are fulfilled by this very Event instance.
	*/
	public function getPseudoTypes( ):Array<String>;

	/**
	* Checks whether this instance of {@link jQuery.Event} is of the given <code>sType</code> pseudo type.
	* @param	sType The name of the pseudo type this event should be checked for.
	* @return	<code>true</code> if this instance of jQuery.Event is of the given sType, <code>false</code> otherwise.
	*/
	public function isPseudoType( sType:String):Bool;
}

