package sap.m;

@:native("sap.m.URLHelper")
extern class URLHelper
{

	/**
	* Adds an event listener for the <code>redirect</code> event.
	* @param	fnFunction The function to call, when the event occurs.
	* @param	oListener The object that wants to be notified when the event occurs.
	* @return	The URLHelper instance
	*/
	public static function attachRedirect( fnFunction:()->Void, ?oListener:Dynamic):sap.m.URLHelper;

	/**
	* Detach an already registered listener of the <code>redirect</code> event.
	* @param	fnFunction The function to call, when the event occurs.
	* @param	oListener The object, that wants to be notified, when the event occurs.
	* @return	The URLHelper instance
	*/
	public static function detachRedirect( fnFunction:()->Void, ?oListener:Dynamic):sap.m.URLHelper;

	/**
	* Builds Email URI from given parameter. Trims spaces from email addresses.
	* @param	sEmail Destination email address
	* @param	sSubject Subject of the email address
	* @param	sBody Default message text
	* @param	sCC Carbon Copy email address
	* @param	sBCC Blind carbon copy email address
	* @return	Email URI using the <code>mailto:</code> scheme
	*/
	public static function normalizeEmail( ?sEmail:String, ?sSubject:String, ?sBody:String, ?sCC:String, ?sBCC:String):String;

	/**
	* Sanitizes the given telephone number and returns a URI using the <code>sms:</code> scheme.
	* @param	sTel Telephone number
	* @return	SMS URI using the <code>sms:</code> scheme
	*/
	public static function normalizeSms( ?sTel:String):String;

	/**
	* Sanitizes the given telephone number and returns a URI using the <code>tel:</code> scheme.
	* @param	sTel Telephone number
	* @return	Telephone URI using the <code>tel:</code> scheme
	*/
	public static function normalizeTel( ?sTel:String):String;

	/**
	* Redirects to the given URL.

This method fires "redirect" event before opening the URL.
	* @param	sURL Uniform resource locator
	* @param	bNewWindow Opens URL in a new browser window or tab. Please note that, opening a new window/tab can be ignored by browsers (e.g. on Windows Phone) or by popup blockers. NOTE: On Windows Phone the URL will be enforced to open in the same window if opening in a new window/tab fails (because of a known system restriction on cross-window communications). Use sap.m.Link instead (with blank target) if you necessarily need to open URL in a new window.
	* @return	Void
	*/
	public static function redirect( sURL:String, ?bNewWindow:Bool):Void;

	/**
	* Trigger email application to send email. Trims spaces from email addresses.
	* @param	sEmail Destination email address
	* @param	sSubject Subject of the email address
	* @param	sBody Default message text
	* @param	sCC Carbon Copy email address
	* @param	sBCC Blind carbon copy email address
	* @return	Void
	*/
	public static function triggerEmail( ?sEmail:String, ?sSubject:String, ?sBody:String, ?sCC:String, ?sBCC:String):Void;

	/**
	* Trigger SMS application to send SMS to given telephone number.
	* @param	sTel Telephone number
	* @return	Void
	*/
	public static function triggerSms( ?sTel:String):Void;

	/**
	* Trigger telephone app to call the given telephone number.
	* @param	sTel Telephone number
	* @return	Void
	*/
	public static function triggerTel( ?sTel:String):Void;
}

