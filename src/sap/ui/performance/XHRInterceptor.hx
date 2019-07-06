package sap.ui.performance;

@:native("sap.ui.performance.XHRInterceptor")
extern class XHRInterceptor
{

	/**
	* Register a function callback which gets called as it would be an own method of XHR.
	* @param	sName Name under which the function is registered
	* @param	sXHRMethod Name of the actual XHR method
	* @param	fnCallback The registered callback function
	* @return	Void
	*/
	public static function register( sName:String, sXHRMethod:String, fnCallback:()->Void):Void;

	/**
	* Unregister a registered function.
	* @param	sName Name under which the function is registered
	* @param	sXHRMethod Name of the actual XHR method
	* @return	True if unregister was successful
	*/
	public static function unregister( sName:String, sXHRMethod:String):Bool;
}

