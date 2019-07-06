package sap.ui.core.format;

@:native("sap.ui.core.format.DateFormat")

/**
* The DateFormat is a static class for formatting and parsing single date and time values or date and time intervals according to a set of format options.

Supported format options are pattern based on Unicode LDML Date Format notation. Please note that only a subset of the LDML date symbols is supported. If no pattern is specified a default pattern according to the locale settings is used.
*/
extern class DateFormat
{
	@:overload( function(vJSDate:Date, bUTC:Bool):String{ })

	/**
	* Format a date according to the given format options.
	* @param	vJSDate the value to format
	* @param	bUTC whether to use UTC
	* @return	the formatted output value. If an invalid date is given, an empty string is returned.
	*/
	public function format( vJSDate:Array<Date>, bUTC:Bool):String;

	/**
	* Get a date instance of the DateFormat, which can be used for formatting.
	* @param	oFormatOptions Object which defines the format options
	* @param	oLocale Locale to ask for locale specific texts/settings
	* @return	date instance of the DateFormat
	*/
	public static function getDateInstance( ?oFormatOptions:Dynamic, ?oLocale:sap.ui.core.Locale):sap.ui.core.format.DateFormat;

	/**
	* Get a datetime instance of the DateFormat, which can be used for formatting.
	* @param	oFormatOptions Object which defines the format options
	* @param	oLocale Locale to ask for locale specific texts/settings
	* @return	datetime instance of the DateFormat
	*/
	public static function getDateTimeInstance( ?oFormatOptions:Dynamic, ?oLocale:sap.ui.core.Locale):sap.ui.core.format.DateFormat;

	/**
	* Get a time instance of the DateFormat, which can be used for formatting.
	* @param	oFormatOptions Object which defines the format options
	* @param	oLocale Locale to ask for locale specific texts/settings
	* @return	time instance of the DateFormat
	*/
	public static function getTimeInstance( ?oFormatOptions:Dynamic, ?oLocale:sap.ui.core.Locale):sap.ui.core.format.DateFormat;

	/**
	* Parse a string which is formatted according to the given format options.
	* @param	sValue the string containing a formatted date/time value
	* @param	bUTC whether to use UTC, if no timezone is contained
	* @param	bStrict to use strict value check
	* @return	the parsed value(s)
	*/
	public function parse( sValue:String, bUTC:Bool, bStrict:Bool):Dynamic;
}

