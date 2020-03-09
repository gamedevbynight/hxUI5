package sap.m;

@:native("sap.m.DateTimeField")

/**
* The <code>sap.m.DateTimeField</code> control provides a basic functionality for date/time input controls.

To be extended by date and time picker controls. For internal use only.
*/
extern class DateTimeField extends sap.m.InputBase
{
	@:overload(function(?sId:String, ?mSettings:DateTimeFieldArgs):Void {})
	public function new(?mSettings:DateTimeFieldArgs):Void;

	/**
	* Creates a new subclass of class sap.m.DateTimeField with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.InputBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getDateValue dateValue}.

Holds a reference to a JavaScript Date Object. The <code>value</code> (string) property will be set according to it. Alternatively, if the <code>value</code> and <code>valueFormat</code> pair properties are supplied instead, the <code>dateValue</code> will be instantiated according to the parsed <code>value</code>. Use <code>dateValue</code> as a helper property to easily obtain the day, month, year, hours, minutes and seconds of the chosen date and time. Although possible to bind it, the recommendation is not to do it. When binding is needed, use <code>value</code> property instead.
	* @return	Value of property <code>dateValue</code>
	*/
	public function getDateValue( ):Dynamic;

	/**
	* Gets current value of property {@link #getDisplayFormat displayFormat}.

Determines the format, displayed in the input field.
	* @return	Value of property <code>displayFormat</code>
	*/
	public function getDisplayFormat( ):String;

	/**
	* Gets current value of property {@link #getInitialFocusedDateValue initialFocusedDateValue}.

Holds a reference to a JavaScript Date Object to define the initially focused date/time when the picker popup is opened.

<b>Notes:</b> <ul> <li>Setting this property does not change the <code>value</code> property.</li> <li>Depending on the context this property is used in ({@link sap.m.TimePicker}, {@link sap.m.DatePicker} or {@link sap.m.DateTimePicker}), it takes into account only the time part, only the date part or both parts of the JavaScript Date Object.</li> </ul>
	* @return	Value of property <code>initialFocusedDateValue</code>
	*/
	public function getInitialFocusedDateValue( ):Dynamic;

	/**
	* Returns a metadata object for class sap.m.DateTimeField.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getValueFormat valueFormat}.

Determines the format of the value property.
	* @return	Value of property <code>valueFormat</code>
	*/
	public function getValueFormat( ):String;

	/**
	* Sets a new value for property {@link #getDateValue dateValue}.

Holds a reference to a JavaScript Date Object. The <code>value</code> (string) property will be set according to it. Alternatively, if the <code>value</code> and <code>valueFormat</code> pair properties are supplied instead, the <code>dateValue</code> will be instantiated according to the parsed <code>value</code>. Use <code>dateValue</code> as a helper property to easily obtain the day, month, year, hours, minutes and seconds of the chosen date and time. Although possible to bind it, the recommendation is not to do it. When binding is needed, use <code>value</code> property instead.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oDateValue New value for property <code>dateValue</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDateValue( oDateValue:Dynamic):sap.m.DateTimeField;

	/**
	* Sets a new value for property {@link #getDisplayFormat displayFormat}.

Determines the format, displayed in the input field.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sDisplayFormat New value for property <code>displayFormat</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDisplayFormat( sDisplayFormat:String):sap.m.DateTimeField;

	/**
	* Sets a new value for property {@link #getInitialFocusedDateValue initialFocusedDateValue}.

Holds a reference to a JavaScript Date Object to define the initially focused date/time when the picker popup is opened.

<b>Notes:</b> <ul> <li>Setting this property does not change the <code>value</code> property.</li> <li>Depending on the context this property is used in ({@link sap.m.TimePicker}, {@link sap.m.DatePicker} or {@link sap.m.DateTimePicker}), it takes into account only the time part, only the date part or both parts of the JavaScript Date Object.</li> </ul>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oInitialFocusedDateValue New value for property <code>initialFocusedDateValue</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInitialFocusedDateValue( oInitialFocusedDateValue:Dynamic):sap.m.DateTimeField;

	/**
	* Sets a new value for property {@link #getValueFormat valueFormat}.

Determines the format of the value property.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sValueFormat New value for property <code>valueFormat</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValueFormat( sValueFormat:String):sap.m.DateTimeField;
}

typedef DateTimeFieldArgs = sap.m.InputBase.InputBaseArgs & {

	/**
	* Determines the format, displayed in the input field.
	*/
	@:optional var displayFormat:String;

	/**
	* Determines the format of the value property.
	*/
	@:optional var valueFormat:String;

	/**
	* Holds a reference to a JavaScript Date Object. The <code>value</code> (string) property will be set according to it. Alternatively, if the <code>value</code> and <code>valueFormat</code> pair properties are supplied instead, the <code>dateValue</code> will be instantiated according to the parsed <code>value</code>. Use <code>dateValue</code> as a helper property to easily obtain the day, month, year, hours, minutes and seconds of the chosen date and time. Although possible to bind it, the recommendation is not to do it. When binding is needed, use <code>value</code> property instead.
	*/
	@:optional var dateValue:haxe.extern.EitherType<String,Dynamic>;

	/**
	* Holds a reference to a JavaScript Date Object to define the initially focused date/time when the picker popup is opened.

<b>Notes:</b> <ul> <li>Setting this property does not change the <code>value</code> property.</li> <li>Depending on the context this property is used in ({@link sap.m.TimePicker}, {@link sap.m.DatePicker} or {@link sap.m.DateTimePicker}), it takes into account only the time part, only the date part or both parts of the JavaScript Date Object.</li> </ul>
	*/
	@:optional var initialFocusedDateValue:haxe.extern.EitherType<String,Dynamic>;
}
