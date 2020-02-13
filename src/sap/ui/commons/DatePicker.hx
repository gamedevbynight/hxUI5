package sap.ui.commons;

@:native("sap.ui.commons.DatePicker")

/**
* Allows end users to interact with dates. Entries can directly be written in, or selected from a calendar pad. Note: Dates can always be manually entered in the fix YYYYMMDD format, on top of the flexible "locale" format. If the value is provided via data binding, using a Date.type the formatter of the Date.type is used. Since version 1.22 the unified.Calendar is used inside the datePicker. So applications using the DatePicker should load the unified library. Otherwise it will be loaded the first time a DatePicker is opened.
*/
extern class DatePicker extends sap.ui.commons.TextField
{
	@:overload(function(?sId:String, ?mSettings:DatePickerArgs):Void {})
	public function new(?mSettings:DatePickerArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.DatePicker with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.commons.TextField.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getLocale locale}.

Defines the locale (language and country), e.g. "en-US", whose translations and Date formatters should be used to render the DatePicker.If the value property is bound to a model using a Date type the locale will be ignored, because the locale information of the model are used.
	* @return	Value of property <code>locale</code>
	*/
	public function getLocale( ):String;

	/**
	* Returns a metadata object for class sap.ui.commons.DatePicker.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getYyyymmdd yyyymmdd}.

Defines the date as a "yyyymmdd" string, independent from the format used. The inherited textField "value" attribute uses the date format as configured via the locale. The date is interpreted as gregorian date
	* @return	Value of property <code>yyyymmdd</code>
	*/
	public function getYyyymmdd( ):String;

	/**
	* Sets a new value for property {@link #getLocale locale}.

Defines the locale (language and country), e.g. "en-US", whose translations and Date formatters should be used to render the DatePicker.If the value property is bound to a model using a Date type the locale will be ignored, because the locale information of the model are used.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sLocale New value for property <code>locale</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLocale( sLocale:String):sap.ui.commons.DatePicker;

	/**
	* Sets a new value for property {@link #getYyyymmdd yyyymmdd}.

Defines the date as a "yyyymmdd" string, independent from the format used. The inherited textField "value" attribute uses the date format as configured via the locale. The date is interpreted as gregorian date

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sYyyymmdd New value for property <code>yyyymmdd</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setYyyymmdd( sYyyymmdd:String):sap.ui.commons.DatePicker;
}

typedef DatePickerArgs = sap.ui.commons.TextField.TextFieldArgs & {

	/**
	* Defines the locale (language and country), e.g. "en-US", whose translations and Date formatters should be used to render the DatePicker.If the value property is bound to a model using a Date type the locale will be ignored, because the locale information of the model are used.
	*/
	@:optional var locale:String;

	/**
	* Defines the date as a "yyyymmdd" string, independent from the format used. The inherited textField "value" attribute uses the date format as configured via the locale. The date is interpreted as gregorian date
	*/
	@:optional var yyyymmdd:String;
}
