package sap.ui.core.dnd;

@:native("sap.ui.core.dnd.DragSession")
extern class DragSession
{

	/**
	* Returns the data that has been set via <code>setComplexData</code> method.
	* @param	sKey The key of the data
	* @return	The previously set data or undefined
	*/
	public static function getComplexData( sKey:String):Dynamic;

	/**
	* Returns the data that has been set via <code>setData</code> method.
	* @param	sKey The key of the data
	* @return	Data
	*/
	public static function getData( sKey:String):String;

	/**
	* Returns the data that has been set via <code>setTextData</code> method.
	* @return	Data
	*/
	public static function getTextData( ):String;

	/**
	* Sets string data with any MIME type. <b>Note:</b> This works in all browsers, apart from Internet Explorer and Microsoft Edge. It also works if you navigate between different windows.
	* @param	sKey The key of the data
	* @param	sData Data
	* @return	Void
	*/
	public static function setData( sKey:String, sData:String):Void;

	/**
	* Sets string data with plain text MIME type. <b>Note:</b> This works in all browsers, including Internet Explorer and Microsoft Edge. It also works if you navigate between different windows.
	* @param	sData Data
	* @return	Void
	*/
	public static function setTextData( sData:String):Void;
}

