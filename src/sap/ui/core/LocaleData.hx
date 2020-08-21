package sap.ui.core;

@:native("sap.ui.core.LocaleData")

/**
* Provides access to locale-specific data, such as, date formats, number formats, and currencies.
*/
extern class LocaleData extends sap.ui.base.Object
{

	/**
	* 
	* @param	oLocale the locale
	* @return	Object
	*/
	public function new( ?oLocale:sap.ui.core.Locale):Void;

	/**
	* Creates a new subclass of class sap.ui.core.LocaleData with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns the defined pattern for representing the calendar week number.
	* @param	sStyle the style of the pattern. It can only be either "wide" or "narrow".
	* @param	iWeekNumber the week number
	* @return	the week number string
	*/
	public function getCalendarWeek( sStyle:String, iWeekNumber:Int):String;

	/**
	* Get combined datetime pattern with given date and and time style.
	* @param	sDateStyle the required style for the date part
	* @param	sTimeStyle the required style for the time part
	* @param	sCalendarType the type of calendar. If it's not set, it falls back to the calendar type either set in configuration or calculated from locale.
	* @return	the combined datetime pattern
	*/
	public function getCombinedDateTimePattern( sDateStyle:String, sTimeStyle:String, ?sCalendarType:sap.ui.core.CalendarType):String;

	/**
	* Get combined interval pattern using a given pattern and the fallback interval pattern.

If a skeleton based pattern is not available or not wanted, this method can be used to create an interval pattern based on a given pattern, using the fallback interval pattern.
	* @param	sPattern the single date pattern to use within the interval pattern
	* @param	sCalendarType the type of calendar. If it's not set, it falls back to the calendar type either set in configuration or calculated from locale.
	* @return	the calculated interval pattern
	*/
	public function getCombinedIntervalPattern( sPattern:String, ?sCalendarType:sap.ui.core.CalendarType):String;

	/**
	* Returns the currency code which is corresponded with the given currency symbol.
	* @param	sCurrencySymbol The currency symbol which needs to be converted to currency code
	* @return	The corresponded currency code defined for the given currency symbol. The given currency symbol is returned if no currency code can be found by using the given currency symbol.
	*/
	public function getCurrencyCodeBySymbol( sCurrencySymbol:String):String;

	/**
	* Returns the number of digits of the specified currency.
	* @param	sCurrency ISO 4217 currency code
	* @return	digits of the currency
	*/
	public function getCurrencyDigits( sCurrency:String):Int;

	/**
	* Returns the short currency formats (like 1K USD, 1M USD....).
	* @param	sStyle short
	* @param	sNumber 1000, 10000 ...
	* @param	sPlural one or other (if not exists other is used)
	* @return	decimal format
	*/
	public function getCurrencyFormat( sStyle:String, sNumber:String, sPlural:String):String;

	/**
	* Get currency format pattern.

CLDR format pattern:
	* @param	sContext the context of the currency pattern (standard or accounting)
	* @return	The pattern
	*/
	public function getCurrencyPattern( sContext:String):String;

	/**
	* Returns the currency symbol for the specified currency, if no symbol is found the ISO 4217 currency code is returned.
	* @param	sCurrency ISO 4217 currency code
	* @return	the currency symbol
	*/
	public function getCurrencySymbol( sCurrency:String):String;

	/**
	* Returns the currency symbols available for this locale. Currency symbols get accumulated by custom currency symbols.
	* @return	the map of all currency symbols available in this locale, e.g. { "AUD": "A$", "BRL": "R$", "EUR": "€", "GBP": "£", }
	*/
	public function getCurrencySymbols( ):Dynamic;

	/**
	* Get custom datetime pattern for a given skeleton format.

The format string does contain pattern symbols (e.g. "yMMMd" or "Hms") and will be converted into the pattern in the used locale, which matches the wanted symbols best. The symbols must be in canonical order, that is: Era (G), Year (y/Y), Quarter (q/Q), Month (M/L), Week (w/W), Day-Of-Week (E/e/c), Day (d/D), Hour (h/H/k/K/), Minute (m), Second (s), Timezone (z/Z/v/V/O/X/x)

See http://unicode.org/reports/tr35/tr35-dates.html#availableFormats_appendItems
	* @param	sSkeleton the wanted skeleton format for the datetime pattern
	* @param	sCalendarType the type of calendar. If it's not set, it falls back to the calendar type either set in configuration or calculated from locale.
	* @return	the best matching datetime pattern
	*/
	public function getCustomDateTimePattern( sSkeleton:String, ?sCalendarType:sap.ui.core.CalendarType):String;
	@:overload( function(sSkeleton:String, vGreatestDiff:Dynamic, ?sCalendarType:sap.ui.core.CalendarType):Dynamic{ })

	/**
	* Get interval pattern for a given skeleton format.

The format string does contain pattern symbols (e.g. "yMMMd" or "Hms") and will be converted into the pattern in the used locale, which matches the wanted symbols best. The symbols must be in canonical order, that is: Era (G), Year (y/Y), Quarter (q/Q), Month (M/L), Week (w/W), Day-Of-Week (E/e/c), Day (d/D), Hour (h/H/k/K/), Minute (m), Second (s), Timezone (z/Z/v/V/O/X/x)

See http://unicode.org/reports/tr35/tr35-dates.html#availableFormats_appendItems
	* @param	sSkeleton the wanted skeleton format for the datetime pattern
	* @param	vGreatestDiff is either a string which represents the symbol matching the greatest difference in the two dates to format or an object which contains key-value pairs. The value is always true. The key is one of the date field symbol groups whose value are different between the two dates. The key can only be set with 'Year', 'Quarter', 'Month', 'Week', 'Day', 'DayPeriod', 'Hour', 'Minute', or 'Second'.
	* @param	sCalendarType the type of calendar. If it's not set, it falls back to the calendar type either set in configuration or calculated from locale.
	* @return	the best matching interval pattern if interval difference is given otherwise an array with all possible interval patterns which match the given skeleton format
	*/
	public function getCustomIntervalPattern( sSkeleton:String, vGreatestDiff:String, ?sCalendarType:sap.ui.core.CalendarType):Dynamic;

	/**
	* Get date pattern in format "short", "medium", "long" or "full".
	* @param	sStyle the required style for the date pattern
	* @param	sCalendarType the type of calendar. If it's not set, it falls back to the calendar type either set in configuration or calculated from locale.
	* @return	the selected date pattern
	*/
	public function getDatePattern( sStyle:String, ?sCalendarType:sap.ui.core.CalendarType):String;

	/**
	* Get datetime pattern in style "short", "medium", "long" or "full".
	* @param	sStyle the required style for the datetime pattern
	* @param	sCalendarType the type of calendar. If it's not set, it falls back to the calendar type either set in configuration or calculated from locale.
	* @return	the selected datetime pattern
	*/
	public function getDateTimePattern( sStyle:String, ?sCalendarType:sap.ui.core.CalendarType):String;

	/**
	* Get day periods in width "narrow", "abbreviated" or "wide".
	* @param	sWidth the required width for the day period names
	* @param	sCalendarType the type of calendar. If it's not set, it falls back to the calendar type either set in configuration or calculated from locale.
	* @return	array of day periods (AM, PM)
	*/
	public function getDayPeriods( sWidth:String, ?sCalendarType:sap.ui.core.CalendarType):Array<Dynamic>;

	/**
	* Get standalone day periods in width "narrow", "abbreviated" or "wide".
	* @param	sWidth the required width for the day period names
	* @param	sCalendarType the type of calendar. If it's not set, it falls back to the calendar type either set in configuration or calculated from locale.
	* @return	array of day periods (AM, PM)
	*/
	public function getDayPeriodsStandAlone( sWidth:String, ?sCalendarType:sap.ui.core.CalendarType):Array<Dynamic>;

	/**
	* Get day names in width "narrow", "abbreviated" or "wide".
	* @param	sWidth the required width for the day names
	* @param	sCalendarType the type of calendar. If it's not set, it falls back to the calendar type either set in configuration or calculated from locale.
	* @return	array of day names (starting with Sunday)
	*/
	public function getDays( sWidth:String, ?sCalendarType:sap.ui.core.CalendarType):Array<Dynamic>;

	/**
	* Get stand alone day names in width "narrow", "abbreviated" or "wide".
	* @param	sWidth the required width for the day names
	* @param	sCalendarType the type of calendar. If it's not set, it falls back to the calendar type either set in configuration or calculated from locale.
	* @return	array of day names (starting with Sunday)
	*/
	public function getDaysStandAlone( sWidth:String, ?sCalendarType:sap.ui.core.CalendarType):Array<Dynamic>;

	/**
	* Returns the short decimal formats (like 1K, 1M....).
	* @param	sStyle short or long
	* @param	sNumber 1000, 10000 ...
	* @param	sPlural one or other (if not exists other is used)
	* @return	decimal format
	*/
	public function getDecimalFormat( sStyle:String, sNumber:String, sPlural:String):String;

	/**
	* Get decimal format pattern.
	* @return	The pattern
	*/
	public function getDecimalPattern( ):String;

	/**
	* Returns the display name for a time unit (second, minute, hour, day, week, month, year).
	* @param	sType Type (second, minute, hour, day, week, month, year)
	* @param	sStyle @since 1.32.10, 1.34.4 the style of the pattern. The valid values are "wide", "short" and "narrow" returns {string} display name
	* @return	Void
	*/
	public function getDisplayName( sType:String, ?sStyle:String):Void;

	/**
	* Returns the map of era IDs to era dates.
	* @param	sCalendarType the type of calendar
	* @return	the array of eras containing objects with either an _end or _start property with a date
	*/
	public function getEraDates( ?sCalendarType:sap.ui.core.CalendarType):Array<Dynamic>;

	/**
	* Returns array of eras.
	* @param	sWidth the style of the era name. It can be 'wide', 'abbreviated' or 'narrow'
	* @param	sCalendarType the type of calendar
	* @return	the array of eras
	*/
	public function getEras( sWidth:String, ?sCalendarType:sap.ui.core.CalendarType):Array<Dynamic>;

	/**
	* Returns the day that usually is regarded as the first day of a week in the current locale.

Days are encoded as integer where Sunday=0, Monday=1 etc.

All week data information in the CLDR is provided for territories (countries). If the locale of this LocaleData doesn't contain country information (e.g. if it contains only a language), then the "likelySubtag" information of the CLDR is taken into account to guess the "most likely" territory for the locale.
	* @return	first day of week
	*/
	public function getFirstDayOfWeek( ):Int;

	/**
	* Returns the interval format with the given Id (see CLDR documentation for valid Ids) or the fallback format if no interval format with that Id is known.

The empty Id ("") might be used to retrieve the interval format fallback.
	* @param	sId Id of the interval format, e.g. "d-d"
	* @param	sCalendarType the type of calendar. If it's not set, it falls back to the calendar type either set in configuration or calculated from locale.
	* @return	interval format string with placeholders {0} and {1}
	*/
	public function getIntervalPattern( sId:String, ?sCalendarType:sap.ui.core.CalendarType):String;

	/**
	* Get locale specific language names.
	* @return	map of locale specific language names
	*/
	public function getLanguages( ):Dynamic;

	/**
	* Get lenient number symbols for "plusSign" or "minusSign".
	* @param	sType the required type of symbol
	* @return	the selected lenient number symbols, e.g. "-‒⁻₋−➖﹣"
	*/
	public function getLenientNumberSymbols( sType:String):String;

	/**
	* Returns a metadata object for class sap.ui.core.LocaleData.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the required minimal number of days for the first week of a year.

This is the minimal number of days of the week which must be contained in the new year for the week to become the first week of the year. Depending on the country, this is just a single day (in the US) or at least 4 days (in most of Europe).

All week data information in the CLDR is provided for territories (countries). If the locale of this LocaleData doesn't contain country information (e.g. if it contains only a language), then the "likelySubtag" information of the CLDR is taken into account to guess the "most likely" territory for the locale.
	* @return	minimal number of days
	*/
	public function getMinimalDaysInFirstWeek( ):Int;

	/**
	* Get miscellaneous pattern.
	* @param	sName the name of the misc pattern, can be "approximately", "atLeast", "atMost" or "range"
	* @return	The pattern
	*/
	public function getMiscPattern( sName:String):String;

	/**
	* Get month names in width "narrow", "abbreviated" or "wide".
	* @param	sWidth the required width for the month names
	* @param	sCalendarType the type of calendar. If it's not set, it falls back to the calendar type either set in configuration or calculated from locale.
	* @return	array of month names (starting with January)
	*/
	public function getMonths( sWidth:String, ?sCalendarType:sap.ui.core.CalendarType):Array<Dynamic>;

	/**
	* Get stand alone month names in width "narrow", "abbreviated" or "wide".
	* @param	sWidth the required width for the month names
	* @param	sCalendarType the type of calendar. If it's not set, it falls back to the calendar type either set in configuration or calculated from locale.
	* @return	array of month names (starting with January)
	*/
	public function getMonthsStandAlone( sWidth:String, ?sCalendarType:sap.ui.core.CalendarType):Array<Dynamic>;

	/**
	* Get number symbol "decimal", "group", "plusSign", "minusSign", "percentSign".
	* @param	sType the required type of symbol
	* @return	the selected number symbol
	*/
	public function getNumberSymbol( sType:String):String;

	/**
	* Get orientation (left-to-right or right-to-left).
	* @return	character orientation for this locale
	*/
	public function getOrientation( ):String;

	/**
	* Get percent format pattern.
	* @return	The pattern
	*/
	public function getPercentPattern( ):String;

	/**
	* Returns an array of all plural categories available in this language.
	* @return	The array of plural categories
	*/
	public function getPluralCategories( ):Array<Dynamic>;
	@:overload( function(sNumber:String):String{ })

	/**
	* Returns the plural category (zero, one, two, few, many or other) for the given number value. The number should be passed as a string with dot as decimal separator and the number of decimal/fraction digits as used in the final output. This is needed in order to preserve trailing zeros which are relevant to determine the right plural category.
	* @param	sNumber The number to find the plural category for
	* @return	The plural category
	*/
	public function getPluralCategory( sNumber:String):String;

	/**
	* Returns the preferred calendar type for the current locale which exists in {@link sap.ui.core.CalendarType}
	* @return	the preferred calendar type
	*/
	public function getPreferredCalendarType( ):sap.ui.core.CalendarType;

	/**
	* Returns the preferred hour pattern symbol (h for 12, H for 24 hours) for the current locale.
	* @return	the preferred hour symbol
	*/
	public function getPreferredHourSymbol( ):String;

	/**
	* Get quarter names in width "narrow", "abbreviated" or "wide".
	* @param	sWidth the required width for the quarter names
	* @param	sCalendarType the type of calendar. If it's not set, it falls back to the calendar type either set in configuration or calculated from locale.
	* @return	array of quarters
	*/
	public function getQuarters( sWidth:String, ?sCalendarType:sap.ui.core.CalendarType):Array<Dynamic>;

	/**
	* Get stand alone quarter names in width "narrow", "abbreviated" or "wide".
	* @param	sWidth the required width for the quarter names
	* @param	sCalendarType the type of calendar. If it's not set, it falls back to the calendar type either set in configuration or calculated from locale.
	* @return	array of quarters
	*/
	public function getQuartersStandAlone( sWidth:String, ?sCalendarType:sap.ui.core.CalendarType):Array<Dynamic>;

	/**
	* Returns the relative day resource pattern (like "Today", "Yesterday", "{0} days ago") based on the given difference of days (0 means today, 1 means tommorrow, -1 means yesterday, ...).
	* @param	iDiff the difference in days
	* @param	sStyle @since 1.32.10, 1.34.4 the style of the pattern. The valid values are "wide", "short" and "narrow"
	* @return	the relative day resource pattern
	*/
	public function getRelativeDay( iDiff:Int, ?sStyle:String):String;

	/**
	* Returns the relative resource pattern with unit 'hour' (like "in {0} hour(s)", "{0} hour(s) ago" under locale 'en') based on the given difference value (positive value means in the future and negative value means in the past).

There's no pattern defined for 0 difference and the function returns null if 0 is given. In the 0 difference case, you can use the getRelativeMinute or getRelativeSecond function to format the difference using unit 'minute' or 'second'.
	* @param	iDiff the difference in hours
	* @param	sStyle @since 1.32.10, 1.34.4 the style of the pattern. The valid values are "wide", "short" and "narrow"
	* @return	the relative resource pattern in unit 'hour'. The method returns null if 0 is given as parameter.
	*/
	public function getRelativeHour( iDiff:Int, ?sStyle:String):Dynamic;

	/**
	* Returns the relative resource pattern with unit 'minute' (like "in {0} minute(s)", "{0} minute(s) ago" under locale 'en') based on the given difference value (positive value means in the future and negative value means in the past).

There's no pattern defined for 0 difference and the function returns null if 0 is given. In the 0 difference case, you can use the getRelativeSecond function to format the difference using unit 'second'.
	* @param	iDiff the difference in minutes
	* @param	sStyle @since 1.32.10, 1.34.4 the style of the pattern. The valid values are "wide", "short" and "narrow"
	* @return	the relative resource pattern in unit 'minute'. The method returns null if 0 is given as parameter.
	*/
	public function getRelativeMinute( iDiff:Int, ?sStyle:String):Dynamic;

	/**
	* Returns the relative month resource pattern (like "This month", "Last month", "{0} months ago") based on the given difference of months (0 means this month, 1 means next month, -1 means last month, ...).
	* @param	iDiff the difference in months
	* @param	sStyle @since 1.32.10, 1.34.4 the style of the pattern. The valid values are "wide", "short" and "narrow"
	* @return	the relative month resource pattern
	*/
	public function getRelativeMonth( iDiff:Int, ?sStyle:String):String;

	/**
	* Returns the relative format pattern with given scale (year, month, week, ...) and difference value.
	* @param	sScale the scale the relative pattern is needed for
	* @param	iDiff the difference in the given scale unit
	* @param	bFuture whether a future or past pattern should be used
	* @param	sStyle @since 1.32.10, 1.34.4 the style of the pattern. The valid values are "wide", "short" and "narrow"
	* @return	the relative format pattern
	*/
	public function getRelativePattern( sScale:String, iDiff:Int, ?bFuture:Bool, ?sStyle:String):String;

	/**
	* Returns relative time patterns for the given scales as an array of objects containing scale, value and pattern.

The array may contain the following values: "year", "month", "week", "day", "hour", "minute" and "second". If no scales are given, patterns for all available scales will be returned.

The return array will contain objects looking like: <pre>
{
    scale: "minute",
    sign: 1,
    pattern: "in {0} minutes"
}
</pre>
	* @param	aScales The scales for which the available patterns should be returned
	* @param	sStyle @since 1.32.10, 1.34.4 The style of the scale patterns. The valid values are "wide", "short" and "narrow".
	* @return	An array of all relative time patterns
	*/
	public function getRelativePatterns( aScales:Array<String>, ?sStyle:String):Array<Dynamic>;

	/**
	* Returns the relative resource pattern with unit 'second' (like now, "in {0} seconds", "{0} seconds ago" under locale 'en') based on the given difference value (0 means now, positive value means in the future and negative value means in the past).
	* @param	iDiff the difference in seconds
	* @param	sStyle @since 1.32.10, 1.34.4 the style of the pattern. The valid values are "wide", "short" and "narrow"
	* @return	the relative resource pattern in unit 'second'
	*/
	public function getRelativeSecond( iDiff:Int, ?sStyle:String):String;

	/**
	* Returns the relative week resource pattern (like "This week", "Last week", "{0} weeks ago") based on the given difference of weeks (0 means this week, 1 means next week, -1 means last week, ...).
	* @param	iDiff the difference in weeks
	* @param	sStyle @since 1.32.10, 1.34.4 the style of the pattern. The valid values are "wide", "short" and "narrow"
	* @return	the relative week resource pattern
	*/
	public function getRelativeWeek( iDiff:Int, ?sStyle:String):String;

	/**
	* Returns the relative year resource pattern (like "This year", "Last year", "{0} year ago") based on the given difference of years (0 means this year, 1 means next year, -1 means last year, ...).
	* @param	iDiff the difference in years
	* @param	sStyle @since 1.32.10, 1.34.4 the style of the pattern. The valid values are "wide", "short" and "narrow"
	* @return	the relative year resource pattern
	*/
	public function getRelativeYear( iDiff:Int, ?sStyle:String):String;

	/**
	* Retrieves the unit format pattern for a specific unit name considering the unit mappings.
	* @param	sUnit unit name, e.g. "duration-hour" or "my"
	* @return	The unit format configuration for the given unit name
	*/
	public function getResolvedUnitFormat( sUnit:String):Dynamic;

	/**
	* Get locale specific script names.
	* @return	map of locale specific script names
	*/
	public function getScripts( ):Dynamic;

	/**
	* Get locale specific territory names.
	* @return	map of locale specific territory names
	*/
	public function getTerritories( ):Dynamic;

	/**
	* Get time pattern in style "short", "medium", "long" or "full".
	* @param	sStyle the required style for the date pattern
	* @param	sCalendarType the type of calendar. If it's not set, it falls back to the calendar type either set in configuration or calculated from locale.
	* @return	the selected time pattern
	*/
	public function getTimePattern( sStyle:String, ?sCalendarType:sap.ui.core.CalendarType):String;

	/**
	* Retrieves the localized display name of a unit by sUnit, e.g. "duration-hour".
	* @param	sUnit the unit key, e.g. "duration-hour"
	* @return	The localized display name for the requested unit, e.g. <code>"Hour"</code>. Return empty string <code>""</code> if not found
	*/
	public function getUnitDisplayName( sUnit:String):String;

	/**
	* Retrieves the unit format pattern for a specific unit name.

Note: Does not take unit mapping into consideration.
	* @param	sUnit unit name, e.g. "duration-hour"
	* @return	The unit format configuration for the given unit name
	*/
	public function getUnitFormat( sUnit:String):Dynamic;

	/**
	* Retrieves all unit format patterns merged.

Note: Does not take unit mapping into consideration.
	* @return	The unit format patterns
	*/
	public function getUnitFormats( ):Dynamic;

	/**
	* Looks up the unit from defined unit mapping. E.g. for defined unit mapping <code> { "my": "my-custom-unit", "cm": "length-centimeter" } </code>

Call: <code>getUnitFromMapping("my")</code> would result in <code>"my-custom-unit"</code>
	* @return	unit from the mapping
	*/
	public function getUnitFromMapping( ):String;

	/**
	* Returns the last day of a weekend for the given locale.

Days are encoded in the same way as for {@link #getFirstDayOfWeek}.

All week data information in the CLDR is provided for territories (countries). If the locale of this LocaleData doesn't contain country information (e.g. if it contains only a language), then the "likelySubtag" information of the CLDR is taken into account to guess the "most likely" territory for the locale.
	* @return	last day of weekend
	*/
	public function getWeekendEnd( ):Int;

	/**
	* Returns the first day of a weekend for the given locale.

Days are encoded in the same way as for {@link #getFirstDayOfWeek}.

All week data information in the CLDR is provided for territories (countries). If the locale of this LocaleData doesn't contain country information (e.g. if it contains only a language), then the "likelySubtag" information of the CLDR is taken into account to guess the "most likely" territory for the locale.
	* @return	first day of weekend
	*/
	public function getWeekendStart( ):Int;
}

