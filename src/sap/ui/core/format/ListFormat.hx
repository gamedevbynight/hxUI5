package sap.ui.core.format;

@:native("sap.ui.core.format.ListFormat")

/**
* The ListFormat is a static class for formatting and parsing an array of strings in a locale-sensitive manner according to a set of format options.
*/
extern class ListFormat
{

	/**
	* Formats a list according to the given format options.
	* @param	aList The value to format
	* @return	The formatted output value.
	*/
	public function format( aList:Array<Dynamic>):String;

	/**
	* Get an instance of the ListFormat which can be used for formatting.
	* @param	oFormatOptions Object which defines the format options
	* @param	oLocale Locale to get the formatter for
	* @return	Instance of the ListFormat
	*/
	public static function getInstance( ?oFormatOptions:Dynamic, ?oLocale:sap.ui.core.Locale):sap.ui.core.format.ListFormat;

	/**
	* Parses a given list string into an array.
	* @param	sValue String value to be parsed
	* @return	The parsed output value
	*/
	public function parse( sValue:String):Array<Dynamic>;
}

