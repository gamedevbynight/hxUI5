package sap.ui.util;

@:native("sap.ui.util.ActivityDetection")
extern class ActivityDetection
{

	/**
	* Checks whether recently an activity was detected.
	* @return	<code>true</code> if recently an activity was detected, <code>false</code> otherwise
	*/
	public static function isActive( ):Bool;
}

