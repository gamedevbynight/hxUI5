package sap.ui.model.odata.v4;

@:native("sap.ui.model.odata.v4.ODataUtils")
extern class ODataUtils
{
	@:overload( function(vValue1:Dynamic, vValue2:Dynamic, ?vEdmType:Bool):String{ })

	/**
	* Compares the given OData values.
	* @param	vValue1 The first value to compare
	* @param	vValue2 The second value to compare
	* @param	vEdmType If <code>true</code> or "Decimal", the string values <code>vValue1</code> and <code>vValue2</code> are assumed to be valid "Edm.Decimal" or "Edm.Int64" values and are compared as a decimal number (only sign, integer and fraction digits; no exponential format). If "DateTime", the string values <code>vValue1</code> and <code>vValue2</code> are assumed to be valid "Edm.DateTimeOffset" values and are compared based on the corresponding number of milliseconds since 1 January, 1970 UTC. Otherwise the values are compared with the JavaScript operators <code>===</code> and <code>></code>.
	* @return	The result of the comparison: <code>0</code> if the values are equal, <code>1</code> if the first value is larger, <code>-1</code> if the second value is larger, <code>NaN</code> if they cannot be compared
	*/
	public static function compare( vValue1:Dynamic, vValue2:Dynamic, ?vEdmType:String):String;

	/**
	* Formats the given OData value into a literal suitable for usage in data binding paths and URLs.
	* @param	vValue The value according to "OData JSON Format Version 4.0" section "7.1 Primitive Value"
	* @param	sType The OData primitive type, e.g. "Edm.String"
	* @return	The literal according to "OData Version 4.0 Part 2: URL Conventions" section "5.1.1.6.1 Primitive Literals"
	*/
	public static function formatLiteral( vValue:Dynamic, sType:String):String;

	/**
	* Parses an "Edm.Date" value and returns the corresponding JavaScript <code>Date</code> value (UTC with a time value of "00:00:00").
	* @param	sDate The "Edm.Date" value to parse
	* @return	The JavaScript <code>Date</code> value
	*/
	public static function parseDate( sDate:String):Date;

	/**
	* Parses an "Edm.DateTimeOffset" value and returns the corresponding JavaScript <code>Date</code> value.
	* @param	sDateTimeOffset The "Edm.DateTimeOffset" value to parse
	* @return	The JavaScript <code>Date</code> value
	*/
	public static function parseDateTimeOffset( sDateTimeOffset:String):Date;

	/**
	* Parses an "Edm.TimeOfDay" value and returns the corresponding JavaScript <code>Date</code> value (UTC with a date value of "1970-01-01").
	* @param	sTimeOfDay The "Edm.TimeOfDay" value to parse
	* @return	The JavaScript <code>Date</code> value
	*/
	public static function parseTimeOfDay( sTimeOfDay:String):Date;
}

