package sap.m;

@:native("sap.m.DateTimePicker")

/**
* Enables the users to select date (between 0001-01-01 and 9999-12-31) and time values in a combined input.

<h3>Overview</h3>

The <code>DateTimePicker</code> control consists of two parts: the input field and the date/time picker.

<b>Note:</b> The {@link sap.ui.unified.Calendar} is used internally only if the <code>DateTimePicker</code> is opened (not used for the initial rendering). If the <code>sap.ui.unified</code> library is not loaded before the <code>DateTimePicker</code> is opened, it will be loaded upon opening. This could lead to a waiting time when the <code>DateTimePicker</code> is opened for the first time. To prevent this, apps using the <code>DateTimePicker</code> should also load the <code>sap.ui.unified</code> library.

<h3>Usage</h3>

Use this control if you need a combined date and time input control.

Don't use it if you want to use either a date or a time value. In this case, use the {@link sap.m.DatePicker} or the {@link sap.m.TimePicker} controls instead.

The user can enter a date by: <ul> <li>Using the calendar or a time selector that opens in a popup</li> <li>Typing it in directly in the input field</li></ul>

On app level, there are two options to provide a date for the <code>DateTimePicker</code> - as a string to the <code>value</code> property or as a JavaScript Date object to the <code>dateValue</code> property (only one of these properties should be used at a time):

<ul><li>Use the <code>value</code> property if you want to bind the <code>DateTimePicker</code> to a model using the <code>sap.ui.model.type.DateTime</code></li> <li>Use the <code>value</code> property if the date is provided as a string from the backend or inside the app (for example, as ABAP type DATS field)</li> <li>Use the <code>dateValue</code> property if the date is already provided as a JavaScript Date object or you want to work with a JavaScript Date object. Use <code>dateValue</code> as a helper property to easily obtain the day, month, year, hours, minutes and seconds of the chosen date and time. Although possible to bind it, the recommendation is not to do it. When binding is needed, use <code>value</code> property instead</li></ul>

<h3>Formatting</h3>

All formatting and parsing of dates from and to strings is done using the {@link sap.ui.core.format.DateFormat}. If a date is entered by typing it into the input field, it must fit to the used date format and locale.

Supported format options are pattern-based on Unicode LDML Date Format notation. See {@link http://unicode.org/reports/tr35/#Date_Field_Symbol_Table}

For example, if the <code>valueFormat</code> is "yyyy-MM-dd-HH-mm-ss", the <code>displayFormat</code> is "MMM d, y, HH:mm:ss", and the used locale is English, a valid value string is "2015-07-30-10-30-15", which leads to an output of "Jul 30, 2015, 10:30:15".

If no placeholder is set to the <code>DateTimePicker</code>, the used <code>displayFormat</code> is displayed as a placeholder. If another placeholder is needed, it must be set.

<b>Note:</b> If the string does NOT match the <code>displayFormat</code> (from user input) or the <code>valueFormat</code> (on app level), the {@link sap.ui.core.format.DateFormat} makes an attempt to parse it based on the locale settings. For more information, see the respective documentation in the API Reference.

<h3>Responsive behavior</h3>

The <code>DateTimePicker</code> is responsive and fully adapts to all devices. For larger screens, such as tablet or desktop, it opens as a popover. For mobile devices, it opens in full screen.
*/
extern class DateTimePicker extends sap.m.DatePicker
{
	@:overload(function(?sId:String, ?mSettings:DateTimePickerArgs):Void {})
	public function new(?mSettings:DateTimePickerArgs):Void;

	/**
	* Creates a new subclass of class sap.m.DateTimePicker with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.DatePicker.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.m.DateTimePicker.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getMinutesStep minutesStep}.

Sets the minutes slider step. If the step is less than 1, it will be automatically converted back to 1. The minutes slider is populated only by multiples of the step.

Default value is <code>1</code>.
	* @return	Value of property <code>minutesStep</code>
	*/
	public function getMinutesStep( ):Int;

	/**
	* Gets current value of property {@link #getSecondsStep secondsStep}.

Sets the seconds slider step. If the step is less than 1, it will be automatically converted back to 1. The seconds slider is populated only by multiples of the step.

Default value is <code>1</code>.
	* @return	Value of property <code>secondsStep</code>
	*/
	public function getSecondsStep( ):Int;

	/**
	* Sets a new value for property {@link #getMinutesStep minutesStep}.

Sets the minutes slider step. If the step is less than 1, it will be automatically converted back to 1. The minutes slider is populated only by multiples of the step.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	iMinutesStep New value for property <code>minutesStep</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMinutesStep( iMinutesStep:Int):sap.m.DateTimePicker;

	/**
	* Sets a new value for property {@link #getSecondsStep secondsStep}.

Sets the seconds slider step. If the step is less than 1, it will be automatically converted back to 1. The seconds slider is populated only by multiples of the step.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	iSecondsStep New value for property <code>secondsStep</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSecondsStep( iSecondsStep:Int):sap.m.DateTimePicker;
}

typedef DateTimePickerArgs = sap.m.DatePicker.DatePickerArgs & {

	/**
	* Sets the minutes slider step. If the step is less than 1, it will be automatically converted back to 1. The minutes slider is populated only by multiples of the step.
	*/
	@:optional var minutesStep:haxe.extern.EitherType<String,Int>;

	/**
	* Sets the seconds slider step. If the step is less than 1, it will be automatically converted back to 1. The seconds slider is populated only by multiples of the step.
	*/
	@:optional var secondsStep:haxe.extern.EitherType<String,Int>;
}
