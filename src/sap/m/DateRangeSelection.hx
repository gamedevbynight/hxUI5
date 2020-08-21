package sap.m;

@:native("sap.m.DateRangeSelection")

/**
* A single-field input control that enables the users to enter a localized date range (between 0001-01-01 and 9999-12-31).

<h3>Overview</h3>

The <code>DateRangeSelection</code> enables the users to enter a localized date range using touch, mouse, keyboard input, or by selecting a date range in the calendar. They can also navigate directly from one month or year to another.

<b>Note:</b> The control is not UTC aware and the selected date range starts from 00:00:00:000 of the first date and ends in 23:59:59:999 on the second date.

The {@link sap.ui.unified.Calendar} is used internally only if the <code>DateRangeSelection</code> is opened (not used for the initial rendering). If the <code>sap.ui.unified</code> library is not loaded before the <code>DateRangeSelection</code> is opened, it will be loaded upon opening. This could lead to a waiting time when the <code>DateRangeSelection</code> is opened for the first time. To prevent this, apps using the <code>DateRangeSelection</code> should also load the <code>sap.ui.unified</code> library.

<h3>Usage</h3>

<i>When to use?</i>

If you need a date range and know that your user is a power user who has to input lots of data. If the keyboard is the primary device used for navigating the app, use two input fields. This allows the user to quickly jump from field to field. By selecting a date in one of the fields, the other field should recognize the information and jump to the same selection.

<i>When not to use?</i>

If the user's primary goal is not to select ranges or if you just want to enter a date and a time. For such cases, use the {@link sap.m.DatePicker} or {@link sap.m.TimePicker}.

The user can enter a date by: <ul><li>Using the calendar that opens in a popup</li> <li>Typing it in directly in the input field (not available for mobile devices)</li></ul>

On app level, there are two options to provide a date for the <code>DateRangeSelection</code> - date range as a string to the <code>value</code> property or JavaScript Date objects to the <code>dateValue</code> and <code>secondDateValue</code> properties (only one of these options should be used at a time):

<ul><li>Use the <code>value</code> property if the date range is already provided as a formatted string</li> <li>Use the <code>dateValue</code> and <code>secondDateValue</code> properties if the date range is already provided as JavaScript Date objects or you want to work with JavaScript Date objects</li></ul>

<h3>Formatting</h3>

All formatting and parsing of dates from and to strings is done using the {@link sap.ui.core.format.DateFormat}. If a date is entered by typing it into the input field, it must fit to the used date format and locale.

Supported format options are pattern-based on Unicode LDML Date Format notation. See {@link http://unicode.org/reports/tr35/#Date_Field_Symbol_Table}

For example, if the <code>displayFormat</code> is "MMM d, y", delimiter is "-", and the used locale is English, a valid value string is "Jul 29, 2015 - Jul 31, 2015" and it is displayed in the same way in the input field.

If no placeholder is set to the <code>DateRangeSelection</code>, the used <code>displayFormat</code> is displayed as a placeholder. If another placeholder is needed, it must be set.

<b>Note:</b> If the string does NOT match the <code>displayFormat</code> (from user input) or the <code>valueFormat</code> (on app level), the {@link sap.ui.core.format.DateFormat} makes an attempt to parse it based on the locale settings. For more information, see the respective documentation in the API Reference.

<h3>Responsive behavior</h3>

The <code>DateRangeSelection</code> is fully responsive. It is smaller in compact mode and provides a touch-friendly size in cozy mode.
*/
extern class DateRangeSelection extends sap.m.DatePicker
{
	@:overload(function(?sId:String, ?mSettings:DateRangeSelectionArgs):Void {})
	public function new(?mSettings:DateRangeSelectionArgs):Void;

	/**
	* Creates a new subclass of class sap.m.DateRangeSelection with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.DatePicker.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Getter for property <code>dateValue</code>.

The start date of the range as JavaScript Date object. This is independent from any formatter.

<b>Note:</b> If this property is used, the <code>value</code> property should not be changed from the caller.
	* @return	the value of property <code>dateValue</code>
	*/
	public function getDateValue( ):Dynamic;

	/**
	* Gets current value of property {@link #getDelimiter delimiter}.

Delimiter between start and end date. Default value is "-". If no delimiter is given, the one defined for the used locale is used.

Default value is <code>'-'</code>.
	* @return	Value of property <code>delimiter</code>
	*/
	public function getDelimiter( ):String;

	/**
	* Returns a metadata object for class sap.m.DateRangeSelection.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getSecondDateValue secondDateValue}.

The end date of the range as JavaScript Date object. This is independent from any formatter.

<b>Note:</b> If this property is used, the <code>value</code> property should not be changed from the caller.
	* @return	Value of property <code>secondDateValue</code>
	*/
	public function getSecondDateValue( ):Dynamic;

	/**
	* Getter for property <code>value</code>.

Returns a date as a string in the format defined in property <code>displayFormat</code>.

<b>Note:</b> As the value string always used the <code>displayFormat</code>, it is both locale-dependent and calendar-type-dependent.

If this property is used, the <code>dateValue</code> property should not be changed from the caller.
	* @return	the value of property <code>value</code>
	*/
	public function getValue( ):String;

	/**
	* Getter for property <code>valueFormat</code>.

<b>Note:</b> Property <code>valueFormat</code> is not supported in the <code>sap.m.DateRangeSelection</code> control.
	* @return	the value of property valueFormat
	*/
	public function getValueFormat( ):String;

	/**
	* Setter for property <code>dateValue</code>.

The start date of the range as JavaScript Date object. This is independent from any formatter.

<b>Note:</b> If this property is used, the <code>value</code> property should not be changed from the caller.
	* @param	oDateValue New value for property <code>dateValue</code>
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setDateValue( oDateValue:Dynamic):sap.m.DateRangeSelection;

	/**
	* Sets a new value for property {@link #getDelimiter delimiter}.

Delimiter between start and end date. Default value is "-". If no delimiter is given, the one defined for the used locale is used.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>'-'</code>.
	* @param	sDelimiter New value for property <code>delimiter</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDelimiter( ?sDelimiter:String):sap.m.DateRangeSelection;

	/**
	* Sets a new value for property {@link #getSecondDateValue secondDateValue}.

The end date of the range as JavaScript Date object. This is independent from any formatter.

<b>Note:</b> If this property is used, the <code>value</code> property should not be changed from the caller.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oSecondDateValue New value for property <code>secondDateValue</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSecondDateValue( ?oSecondDateValue:Dynamic):sap.m.DateRangeSelection;

	/**
	* Setter for property <code>value</code>.

Expects a date as a string in the format defined in property <code>displayFormat</code>.

<b>Note:</b> As the value string always used the <code>displayFormat</code>, it is both locale-dependent and calendar-type-dependent.

If this property is used, the <code>dateValue</code> property should not be changed from the caller.
	* @param	sValue The new value of the input.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setValue( sValue:String):sap.m.DateRangeSelection;

	/**
	* Setter for property <code>valueFormat</code>.

<b>Note:</b> Property <code>valueFormat</code> is not supported in the <code>sap.m.DateRangeSelection</code> control.
	* @param	sValueFormat New value for property valueFormat
	* @return	<code>this</code> to allow method chaining
	*/
	public function setValueFormat( sValueFormat:String):sap.m.DateRangeSelection;
}

typedef DateRangeSelectionArgs = sap.m.DatePicker.DatePickerArgs & {

	/**
	* Delimiter between start and end date. Default value is "-". If no delimiter is given, the one defined for the used locale is used.
	*/
	@:optional var delimiter:String;

	/**
	* The end date of the range as JavaScript Date object. This is independent from any formatter.

<b>Note:</b> If this property is used, the <code>value</code> property should not be changed from the caller.
	*/
	@:optional var secondDateValue:haxe.extern.EitherType<String,Dynamic>;

	/**
	* On change of date range event.
	*/
	@:optional var change:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
