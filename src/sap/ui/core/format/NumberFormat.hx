package sap.ui.core.format;

@:native("sap.ui.core.format.NumberFormat")

/**
* The NumberFormat is a static class for formatting and parsing numeric values according to a set of format options.
*/
extern class NumberFormat extends sap.ui.base.Object
{

	/**
	* Creates a new subclass of class sap.ui.core.format.NumberFormat with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;
	@:overload( function(vValue:String, ?sMeasure:String):String{ })

	/**
	* Format a number according to the given format options.
	* @param	vValue the number to format or an array which contains the number to format and the sMeasure parameter
	* @param	sMeasure an optional unit which has an impact on formatting currencies and units
	* @return	the formatted output value
	*/
	public function format( vValue:Array<Dynamic>, ?sMeasure:String):String;

	/**
	* Get a currency instance of the NumberFormat, which can be used for formatting.

If no locale is given, the currently configured {@link sap.ui.core.Configuration.FormatSettings#getFormatLocale formatLocale} will be used.

<p> This instance has HALF_AWAY_FROM_ZERO set as default rounding mode. Please set the roundingMode property in oFormatOptions to change the default value. </p>

The currency instance supports locally defined custom currency exclusive to the created instance. The following example shows how to use custom currencies (e.g. for Bitcoins): <pre>
var oFormat = NumberFormat.getCurrencyInstance({
    "currencyCode": false,
    "customCurrencies": {
        "BTC": {
            "symbol": "Ƀ",
            "decimals": 3
        }
    }
});

oFormat.format(123.4567, "BTC"); // "Ƀ 123.457"
</pre>

As an alternative to using a fixed <code>symbol</code> for your custom currencies, you can also provide an ISO-Code. The provided ISO-Code will be used to look up the currency symbol in the global configuration, either defined in the CLDR or custom defined on the Format Settings (see {@link sap.ui.core.Configuration.FormatSettings#setCustomCurrencies}, {@link sap.ui.core.Configuration.FormatSettings#addCustomCurrencies}).

If no symbol is given at all, the custom currency key is used for formatting.

<pre>
var oFormat = NumberFormat.getCurrencyInstance({
    "currencyCode": false,
    "customCurrencies": {
        "MyDollar": {
            "isoCode": "USD",
            "decimals": 3
        },
        "Bitcoin": {
            "decimals": 2
        }
    }
});

// symbol looked up from global configuration
oFormat.format(123.4567, "MyDollar"); // "$123.457"

// no symbol available, custom currency key is rendered
oFormat.format(777.888, "Bitcoin"); // "Bitcoin 777.89"
</pre>
	* @param	oFormatOptions The option object which support the following parameters. If no options is given, default values according to the type and locale settings are used.
	* @param	oLocale Locale to get the formatter for
	* @return	unit instance of the NumberFormat
	*/
	public static function getCurrencyInstance( ?oFormatOptions:Dynamic, ?oLocale:sap.ui.core.Locale):sap.ui.core.format.NumberFormat;

	/**
	* Get a float instance of the NumberFormat, which can be used for formatting.

If no locale is given, the currently configured {@link sap.ui.core.Configuration.FormatSettings#getFormatLocale formatLocale} will be used.

<p> This instance has HALF_AWAY_FROM_ZERO set as default rounding mode. Please set the roundingMode property in oFormatOptions to change the default value. </p>
	* @param	oFormatOptions The option object which support the following parameters. If no options is given, default values according to the type and locale settings are used.
	* @param	oLocale Locale to get the formatter for
	* @return	float instance of the NumberFormat
	*/
	public static function getFloatInstance( ?oFormatOptions:Dynamic, ?oLocale:sap.ui.core.Locale):sap.ui.core.format.NumberFormat;

	/**
	* Get an integer instance of the NumberFormat, which can be used for formatting.

If no locale is given, the currently configured {@link sap.ui.core.Configuration.FormatSettings#getFormatLocale formatLocale} will be used.

<p> This instance has TOWARDS_ZERO set as default rounding mode. Please set the roundingMode property in oFormatOptions to change the default value. </p>
	* @param	oFormatOptions The option object which support the following parameters. If no options is given, default values according to the type and locale settings are used.
	* @param	oLocale Locale to get the formatter for
	* @return	integer instance of the NumberFormat
	*/
	public static function getIntegerInstance( ?oFormatOptions:Dynamic, ?oLocale:sap.ui.core.Locale):sap.ui.core.format.NumberFormat;

	/**
	* Returns a metadata object for class sap.ui.core.format.NumberFormat.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Get a percent instance of the NumberFormat, which can be used for formatting.

If no locale is given, the currently configured {@link sap.ui.core.Configuration.FormatSettings#getFormatLocale formatLocale} will be used.

<p> This instance has HALF_AWAY_FROM_ZERO set as default rounding mode. Please set the roundingMode property in oFormatOptions to change the default value. </p>
	* @param	oFormatOptions The option object which support the following parameters. If no options is given, default values according to the type and locale settings are used.
	* @param	oLocale Locale to get the formatter for
	* @return	percentage instance of the NumberFormat
	*/
	public static function getPercentInstance( ?oFormatOptions:Dynamic, ?oLocale:sap.ui.core.Locale):sap.ui.core.format.NumberFormat;

	/**
	* Get a unit instance of the NumberFormat, which can be used for formatting units.

If no locale is given, the currently configured {@link sap.ui.core.Configuration.FormatSettings#getFormatLocale formatLocale} will be used.

<p> This instance has HALF_AWAY_FROM_ZERO set as default rounding mode. Please set the roundingMode property in oFormatOptions to change the default value. </p>
	* @param	oFormatOptions The option object which support the following parameters. If no options is given, default values according to the type and locale settings are used.
	* @param	oLocale Locale to get the formatter for
	* @return	unit instance of the NumberFormat
	*/
	public static function getUnitInstance( ?oFormatOptions:Dynamic, ?oLocale:sap.ui.core.Locale):sap.ui.core.format.NumberFormat;

	/**
	* Parse a string which is formatted according to the given format options.
	* @param	sValue the string containing a formatted numeric value
	* @return	the parsed value or an array which contains the parsed value and the currency code (symbol) when the NumberFormat is a currency instance
	*/
	public function parse( sValue:String):Dynamic;
}

