package jquery.sap;

@:native("jquery.sap.interaction")
extern class Interaction
{

	/**
	* Enables the interaction tracking.
	* @param	bActive state of the interaction detection
	* @return	Void
	*/
	public static function setActive( bActive:Bool):Void;
}

