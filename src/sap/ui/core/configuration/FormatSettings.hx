package sap.ui.core.configuration;


/**
* Encapsulates configuration settings that are related to data formatting/parsing.

<b>Note:</b> When format configuration settings are modified through this class, UI5 only ensures that formatter objects created after that point in time will honor the modifications. To be on the safe side, applications should do any modifications early in their lifecycle or recreate any model/UI that is locale dependent.
*/
extern class FormatSettings extends sap.ui.base.Object
{
public function new():Void;

	/**
	* Adds custom currencies to the existing entries. E.g. <code> { "KWD": {"digits": 3}, "TND" : {"digits": 3} } </code>
	* @param	mCurrencies adds to the currency map
	* @return	null
	*/
	public function addCustomCurrencies( mCurrencies:Dynamic):sap.ui.core.configuration.FormatSettings;

	/**
	* Creates a new subclass of class sap.ui.core.Configuration.FormatSettings with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Retrieves the custom currencies. E.g. <code> { "KWD": {"digits": 3}, "TND" : {"digits": 3} } </code>
	* @return	the mapping between custom currencies and its digits
	*/
	public function getCustomCurrencies( ):Dynamic;

	/**
	* Returns the currently set date pattern or undefined if no pattern has been defined.
	* @return	Void
	*/
	public function getDatePattern( ):Void;

	/**
	* Returns the locale to be used for formatting.

If no such locale has been defined, this method falls back to the language, see {@link sap.ui.core.Configuration#getLanguage Configuration.getLanguage()}.

If any user preferences for date, time or number formatting have been set, and if no format locale has been specified, then a special private use subtag is added to the locale, indicating to the framework that these user preferences should be applied.
	* @return	the format locale
	*/
	public function getFormatLocale( ):sap.ui.core.Locale;

	/**
	* Returns the currently set customizing data for Islamic calendar support
	* @return	Returns an array contains the customizing data. Each element in the array has properties: dateFormat, islamicMonthStart, gregDate. For details, please see {@link #setLegacyDateCalendarCustomizing}
	*/
	public function getLegacyDateCalendarCustomizing( ):Array<Dynamic>;

	/**
	* Returns the currently set legacy ABAP date format (its id) or undefined if none has been set.
	* @return	Void
	*/
	public function getLegacyDateFormat( ):Void;

	/**
	* Returns the currently set legacy ABAP number format (its id) or undefined if none has been set.
	* @return	Void
	*/
	public function getLegacyNumberFormat( ):Void;

	/**
	* Returns the currently set legacy ABAP time format (its id) or undefined if none has been set.
	* @return	Void
	*/
	public function getLegacyTimeFormat( ):Void;

	/**
	* Returns a metadata object for class sap.ui.core.Configuration.FormatSettings.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the currently set number symbol of the given type or undefined if no symbol has been defined.
	* @return	Void
	*/
	public function getNumberSymbol( ):Void;

	/**
	* Returns the currently set time pattern or undefined if no pattern has been defined.
	* @return	Void
	*/
	public function getTimePattern( ):Void;

	/**
	* Returns current trailingCurrencyCode configuration for new NumberFormatter instances
	* @return	Whether currency codes shall always be placed after the numeric value
	*/
	public function getTrailingCurrencyCode( ):Bool;

	/**
	* Sets custom currencies and replaces existing entries.

There is a special currency code named "DEFAULT" that is optional. In case it is set it will be used for all currencies not contained in the list, otherwise currency digits as defined by the CLDR will be used as a fallback.

Example: To use CLDR, but override single currencies <code> { "KWD": {"digits": 3}, "TND" : {"digits": 3} } </code>

To replace the CLDR currency digits completely <code> { "DEFAULT": {"digits": 2}, "ADP": {"digits": 0}, ... "XPF": {"digits": 0} } </code>

Note: To unset the custom currencies: call with <code>undefined</code>
	* @param	mCurrencies currency map which is set
	* @return	null
	*/
	public function setCustomCurrencies( mCurrencies:Dynamic):sap.ui.core.configuration.FormatSettings;

	/**
	* Defines the preferred format pattern for the given date format style.

Calling this method with a null or undefined pattern removes a previously set pattern.

If a pattern is defined, it will be preferred over patterns derived from the current locale.

See class {@link sap.ui.core.format.DateFormat} for details about the pattern syntax.

After changing the date pattern, the framework tries to update localization specific parts of the UI. See the documentation of {@link sap.ui.core.Configuration#setLanguage} for details and restrictions.
	* @param	sStyle must be one of short, medium, long or full.
	* @param	sPattern the format pattern to be used in LDML syntax.
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function setDatePattern( sStyle:String, sPattern:String):sap.ui.core.configuration.FormatSettings;

	/**
	* Defines the day used as the first day of the week.

The day is set as an integer value between 0 (Sunday) and 6 (Saturday). Calling this method with a null or undefined symbol removes a previously set value.

If a value is defined, it will be preferred over values derived from the current locale.

Usually in the US the week starts on Sunday while in most European countries on Monday. There are special cases where you want to have the first day of week set independent of the user locale.

After changing the first day of week, the framework tries to update localization specific parts of the UI. See the documentation of {@link sap.ui.core.Configuration#setLanguage} for details and restrictions.
	* @param	iValue must be an integer value between 0 and 6
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function setFirstDayOfWeek( iValue:Int):sap.ui.core.configuration.FormatSettings;

	/**
	* Allows to specify the customizing data for Islamic calendar support
	* @param	aMappings contains the customizing data for the support of Islamic calendar.
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function setLegacyDateCalendarCustomizing( aMappings:Array<Dynamic>):sap.ui.core.configuration.FormatSettings;

	/**
	* Allows to specify one of the legacy ABAP date formats.

This method modifies the date patterns for 'short' and 'medium' style with the corresponding ABAP format. When called with a null or undefined format id, any previously applied format will be removed.

After changing the legacy date format, the framework tries to update localization specific parts of the UI. See the documentation of {@link sap.ui.core.Configuration#setLanguage} for details and restrictions.
	* @param	sFormatId id of the ABAP data format (one of '1','2','3','4','5','6','7','8','9','A','B','C')
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function setLegacyDateFormat( sFormatId:String):sap.ui.core.configuration.FormatSettings;

	/**
	* Allows to specify one of the legacy ABAP number format.

This method will modify the 'group' and 'decimal' symbols. When called with a null or undefined format id, any previously applied format will be removed.

After changing the legacy number format, the framework tries to update localization specific parts of the UI. See the documentation of {@link sap.ui.core.Configuration#setLanguage} for details and restrictions.
	* @param	sFormatId id of the ABAP number format set (one of ' ','X','Y')
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function setLegacyNumberFormat( sFormatId:String):sap.ui.core.configuration.FormatSettings;

	/**
	* Allows to specify one of the legacy ABAP time formats.

This method sets the time patterns for 'short' and 'medium' style to the corresponding ABAP formats and sets the day period texts to "AM"/"PM" or "am"/"pm" respectively. When called with a null or undefined format id, any previously applied format will be removed.

After changing the legacy time format, the framework tries to update localization specific parts of the UI. See the documentation of {@link sap.ui.core.Configuration#setLanguage} for details and restrictions.
	* @param	sFormatId id of the ABAP time format (one of '0','1','2','3','4')
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function setLegacyTimeFormat( sFormatId:String):sap.ui.core.configuration.FormatSettings;

	/**
	* Defines the string to be used for the given number symbol.

Calling this method with a null or undefined symbol removes a previously set symbol string. Note that an empty string is explicitly allowed.

If a symbol is defined, it will be preferred over symbols derived from the current locale.

See class {@link sap.ui.core.format.NumberFormat} for details about the symbols.

After changing the number symbol, the framework tries to update localization specific parts of the UI. See the documentation of {@link sap.ui.core.Configuration#setLanguage} for details and restrictions.
	* @param	sStyle must be one of decimal, group, plusSign, minusSign.
	* @param	sSymbol will be used to represent the given symbol type
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function setNumberSymbol( sStyle:String, sSymbol:String):sap.ui.core.configuration.FormatSettings;

	/**
	* Defines the preferred format pattern for the given time format style.

Calling this method with a null or undefined pattern removes a previously set pattern.

If a pattern is defined, it will be preferred over patterns derived from the current locale.

See class {@link sap.ui.core.format.DateFormat} for details about the pattern syntax.

After changing the time pattern, the framework tries to update localization specific parts of the UI. See the documentation of {@link sap.ui.core.Configuration#setLanguage} for details and restrictions.
	* @param	sStyle must be one of short, medium, long or full.
	* @param	sPattern the format pattern to be used in LDML syntax.
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function setTimePattern( sStyle:String, sPattern:String):sap.ui.core.configuration.FormatSettings;

	/**
	* Define whether the NumberFormatter shall always place the currency code after the numeric value, with the only exception of right-to-left locales, where the currency code shall be placed before the numeric value. Default configuration setting is <code>true</code>.

When set to <code>false</code> the placement of the currency code is done dynamically, depending on the configured locale using data provided by the Unicode Common Locale Data Repository (CLDR).

Each currency instance ({@link sap.ui.core.format.NumberFormat#getCurrencyInstance}) will be created with this setting unless overwritten on instance level.
	* @param	bTrailingCurrencyCode Whether currency codes shall always be placed after the numeric value
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function setTrailingCurrencyCode( bTrailingCurrencyCode:Bool):sap.ui.core.configuration.FormatSettings;
}

