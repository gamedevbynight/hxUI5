package sap.ui.core.format;

@:native("sap.ui.core.format.FileSizeFormat")

/**
* The FileSizeFormat is a static class for formatting and parsing numeric file size values according to a set of format options.

Supports the same options as {@link sap.ui.core.format.NumberFormat.getFloatInstance NumberFormat.getFloatInstance} For format options which are not specified default values according to the type and locale settings are used.

Supported format options (additional to NumberFormat): <ul> <li>binaryFilesize: if true, base 2 is used: 1 Kibibyte = 1024 Byte, ... , otherwise base 10 is used: 1 Kilobyte = 1000 Byte (Default is false)</li> </ul>
*/
extern class FileSizeFormat extends sap.ui.base.Object
{

	/**
	* Creates a new subclass of class sap.ui.core.format.FileSizeFormat with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;
	@:overload( function(oValue:String):String{ })

	/**
	* Format a filesize (in bytes) according to the given format options.
	* @param	oValue the number (or hex string) to format
	* @return	the formatted output value
	*/
	public function format( oValue:String):String;

	/**
	* Get an instance of the FileSizeFormat, which can be used for formatting.

If no locale is given, the currently configured {@link sap.ui.core.Configuration.FormatSettings#getFormatLocale formatLocale} will be used.
	* @param	oFormatOptions Object which defines the format options
	* @param	oLocale Locale to get the formatter for
	* @return	instance of the FileSizeFormat
	*/
	public static function getInstance( ?oFormatOptions:Dynamic, ?oLocale:sap.ui.core.Locale):sap.ui.core.format.FileSizeFormat;

	/**
	* Returns a metadata object for class sap.ui.core.format.FileSizeFormat.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Parse a string which is formatted according to the given format options.
	* @param	sValue the string containing a formatted filesize value
	* @return	the parsed value in bytes
	*/
	public function parse( sValue:String):String;
}

