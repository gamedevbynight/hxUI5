package sap.ui.util;

@:native("module:sap/ui/util/ActivityDetection")
extern class ActivityDetection
{

	/**
	* Reports an activity.
	*/
	 public static var refresh:Dynamic;



	/**
	* Checks whether recently an activity was detected.
	* @return	<code>true</code> if recently an activity was detected, <code>false</code> otherwise
	*/
	public static function isActive( ):Bool;
}

