package sap.m;

@:native("sap.m.MessageToast")
extern class MessageToast
{

	/**
	* Creates and displays a simple message toast notification message with the given text, and optionally other options.

The only mandatory parameter is <code>sMessage</code>.
	* @param	sMessage The message to be displayed.
	* @param	mOptions Object which can contain all other options. Not all entries in this object are required. This property is optional.
	* @return	Void
	*/
	public static function show( sMessage:String, ?mOptions:Dynamic):Void;
}

