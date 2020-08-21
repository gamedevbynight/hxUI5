package sap.m;

@:native("sap.m.DateTimeInput")

/**
* Allows end users to interact with date (between 0001-01-01 and 9999-12-31) and/or time and select from a date and/or time pad.

<b>Note:</b> This control should not be used any longer, instead please use the dedicated <code>sap.m.DatePicker</code>, <code>sap.m.TimePicker</code> or <code>sap.m.DateTimePicker</code> control.
*/
extern class DateTimeInput extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:DateTimeInputArgs):Void {})
	public function new(?mSettings:DateTimeInputArgs):Void;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.DateTimeInput{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.DateTimeInput;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:change change} event of this <code>sap.m.DateTimeInput</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.DateTimeInput</code> itself.

This event gets fired when the selection has finished and the value has changed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.DateTimeInput</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachChange( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.DateTimeInput;

	/**
	* Binds property {@link #getValue value} to model data.

See {@link sap.ui.base.ManagedObject#bindProperty ManagedObject.bindProperty} for a detailed description of the possible properties of <code>oBindingInfo</code>
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindValue( oBindingInfo:Dynamic):sap.m.DateTimeInput;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:change change} event of this <code>sap.m.DateTimeInput</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachChange( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.DateTimeInput;

	/**
	* Creates a new subclass of class sap.m.DateTimeInput with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets current value of property {@link #getDateValue dateValue}.

This property as JavaScript Date Object can be used to assign a new value which is independent from valueFormat.
	* @return	Value of property <code>dateValue</code>
	*/
	public function getDateValue( ):Dynamic;

	/**
	* Gets current value of property {@link #getDisplayFormat displayFormat}.

Displays date value in this given format in text field. Default value is taken from locale settings. If you use data-binding on value property with type sap.ui.model.type.Date then you can ignore this property or the latter wins. If the user's browser supports native picker then this property is overwritten by browser with locale settings.
	* @return	Value of property <code>displayFormat</code>
	*/
	public function getDisplayFormat( ):String;

	/**
	* Gets current value of property {@link #getEditable editable}.

Defines whether the control can be modified by the user or not. <b>Note:</b> A user can tab to non-editable control, highlight it, and copy the text from it.

Default value is <code>true</code>.
	* @return	Value of property <code>editable</code>
	*/
	public function getEditable( ):Bool;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Indicates whether the user can interact with the control or not. <b>Note:</b> Disabled controls cannot be focused and they are out of the tab-chain.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Returns a metadata object for class sap.m.DateTimeInput.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getName name}.

Defines the name of the control for the purposes of form submission.
	* @return	Value of property <code>name</code>
	*/
	public function getName( ):String;

	/**
	* Gets current value of property {@link #getPlaceholder placeholder}.

Defines a short hint intended to aid the user with data entry when the control has no value.
	* @return	Value of property <code>placeholder</code>
	*/
	public function getPlaceholder( ):String;

	/**
	* Gets current value of property {@link #getShowValueStateMessage showValueStateMessage}.

Indicates whether the value state message should be shown or not.

Default value is <code>true</code>.
	* @return	Value of property <code>showValueStateMessage</code>
	*/
	public function getShowValueStateMessage( ):Bool;

	/**
	* Gets current value of property {@link #getTextAlign textAlign}.

Defines the horizontal alignment of the text that is shown inside the input field.

Default value is <code>Initial</code>.
	* @return	Value of property <code>textAlign</code>
	*/
	public function getTextAlign( ):sap.ui.core.TextAlign;

	/**
	* Gets current value of property {@link #getTextDirection textDirection}.

Defines the text directionality of the input field, e.g. <code>RTL</code>, <code>LTR</code>

Default value is <code>Inherit</code>.
	* @return	Value of property <code>textDirection</code>
	*/
	public function getTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Gets current value of property {@link #getType type}.

Type of DateTimeInput (e.g. Date, Time, DateTime)

Default value is <code>Date</code>.
	* @return	Value of property <code>type</code>
	*/
	public function getType( ):sap.m.DateTimeInputType;

	/**
	* Gets current value of property {@link #getValue value}.

Defines the value of the control.

The new value must be in the format set by <code>valueFormat</code>.

The "Now" literal can also be assigned as a parameter to show the current date and/or time.
	* @return	Value of property <code>value</code>
	*/
	public function getValue( ):String;

	/**
	* Gets current value of property {@link #getValueFormat valueFormat}.

Given value property should match with valueFormat to parse date. Default value is taken from locale settings. You can only set and get value in this format. If you use data-binding on value property with type sap.ui.model.type.Date you can ignore this property or the latter wins.
	* @return	Value of property <code>valueFormat</code>
	*/
	public function getValueFormat( ):String;

	/**
	* Gets current value of property {@link #getValueState valueState}.

Visualizes the validation state of the control, e.g. <code>Error</code>, <code>Warning</code>, <code>Success</code>.

Default value is <code>None</code>.
	* @return	Value of property <code>valueState</code>
	*/
	public function getValueState( ):sap.ui.core.ValueState;

	/**
	* Gets current value of property {@link #getValueStateText valueStateText}.

Defines the text that appears in the value state message pop-up. If this is not specified, a default text is shown from the resource bundle.
	* @return	Value of property <code>valueStateText</code>
	*/
	public function getValueStateText( ):String;

	/**
	* Gets current value of property {@link #getWidth width}.

Defines the width of the control.

Default value is <code>"100%"</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;

	/**
	* Sets a new value for property {@link #getDateValue dateValue}.

This property as JavaScript Date Object can be used to assign a new value which is independent from valueFormat.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oDateValue New value for property <code>dateValue</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDateValue( ?oDateValue:Dynamic):sap.m.DateTimeInput;

	/**
	* Sets a new value for property {@link #getDisplayFormat displayFormat}.

Displays date value in this given format in text field. Default value is taken from locale settings. If you use data-binding on value property with type sap.ui.model.type.Date then you can ignore this property or the latter wins. If the user's browser supports native picker then this property is overwritten by browser with locale settings.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sDisplayFormat New value for property <code>displayFormat</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDisplayFormat( ?sDisplayFormat:String):sap.m.DateTimeInput;

	/**
	* Sets a new value for property {@link #getEditable editable}.

Defines whether the control can be modified by the user or not. <b>Note:</b> A user can tab to non-editable control, highlight it, and copy the text from it.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEditable New value for property <code>editable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEditable( ?bEditable:Bool):sap.m.DateTimeInput;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Indicates whether the user can interact with the control or not. <b>Note:</b> Disabled controls cannot be focused and they are out of the tab-chain.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( ?bEnabled:Bool):sap.m.DateTimeInput;

	/**
	* Sets a new value for property {@link #getName name}.

Defines the name of the control for the purposes of form submission.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sName New value for property <code>name</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setName( ?sName:String):sap.m.DateTimeInput;

	/**
	* Sets a new value for property {@link #getPlaceholder placeholder}.

Defines a short hint intended to aid the user with data entry when the control has no value.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sPlaceholder New value for property <code>placeholder</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPlaceholder( ?sPlaceholder:String):sap.m.DateTimeInput;

	/**
	* Sets a new value for property {@link #getShowValueStateMessage showValueStateMessage}.

Indicates whether the value state message should be shown or not.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowValueStateMessage New value for property <code>showValueStateMessage</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowValueStateMessage( ?bShowValueStateMessage:Bool):sap.m.DateTimeInput;

	/**
	* Sets a new value for property {@link #getTextAlign textAlign}.

Defines the horizontal alignment of the text that is shown inside the input field.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Initial</code>.
	* @param	sTextAlign New value for property <code>textAlign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextAlign( ?sTextAlign:sap.ui.core.TextAlign):sap.m.DateTimeInput;

	/**
	* Sets a new value for property {@link #getTextDirection textDirection}.

Defines the text directionality of the input field, e.g. <code>RTL</code>, <code>LTR</code>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sTextDirection New value for property <code>textDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextDirection( ?sTextDirection:sap.ui.core.TextDirection):sap.m.DateTimeInput;

	/**
	* Sets a new value for property {@link #getType type}.

Type of DateTimeInput (e.g. Date, Time, DateTime)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Date</code>.
	* @param	sType New value for property <code>type</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setType( ?sType:sap.m.DateTimeInputType):sap.m.DateTimeInput;

	/**
	* Sets a new value for property {@link #getValue value}.

Defines the value of the control.

The new value must be in the format set by <code>valueFormat</code>.

The "Now" literal can also be assigned as a parameter to show the current date and/or time.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sValue New value for property <code>value</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValue( ?sValue:String):sap.m.DateTimeInput;

	/**
	* Sets a new value for property {@link #getValueFormat valueFormat}.

Given value property should match with valueFormat to parse date. Default value is taken from locale settings. You can only set and get value in this format. If you use data-binding on value property with type sap.ui.model.type.Date you can ignore this property or the latter wins.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sValueFormat New value for property <code>valueFormat</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValueFormat( ?sValueFormat:String):sap.m.DateTimeInput;

	/**
	* Sets a new value for property {@link #getValueState valueState}.

Visualizes the validation state of the control, e.g. <code>Error</code>, <code>Warning</code>, <code>Success</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sValueState New value for property <code>valueState</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValueState( ?sValueState:sap.ui.core.ValueState):sap.m.DateTimeInput;

	/**
	* Sets a new value for property {@link #getValueStateText valueStateText}.

Defines the text that appears in the value state message pop-up. If this is not specified, a default text is shown from the resource bundle.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sValueStateText New value for property <code>valueStateText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValueStateText( ?sValueStateText:String):sap.m.DateTimeInput;

	/**
	* Sets a new value for property {@link #getWidth width}.

Defines the width of the control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>"100%"</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.m.DateTimeInput;

	/**
	* Unbinds property {@link #getValue value} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindValue( ):sap.m.DateTimeInput;
}

typedef DateTimeInputArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the value of the control.

The new value must be in the format set by <code>valueFormat</code>.

The "Now" literal can also be assigned as a parameter to show the current date and/or time.
	*/
	@:optional var value:String;

	/**
	* Defines the width of the control.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Indicates whether the user can interact with the control or not. <b>Note:</b> Disabled controls cannot be focused and they are out of the tab-chain.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines whether the control can be modified by the user or not. <b>Note:</b> A user can tab to non-editable control, highlight it, and copy the text from it.
	*/
	@:optional var editable:haxe.extern.EitherType<String,Bool>;

	/**
	* Visualizes the validation state of the control, e.g. <code>Error</code>, <code>Warning</code>, <code>Success</code>.
	*/
	@:optional var valueState:haxe.extern.EitherType<String,sap.ui.core.ValueState>;

	/**
	* Defines the text that appears in the value state message pop-up. If this is not specified, a default text is shown from the resource bundle.
	*/
	@:optional var valueStateText:String;

	/**
	* Indicates whether the value state message should be shown or not.
	*/
	@:optional var showValueStateMessage:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the name of the control for the purposes of form submission.
	*/
	@:optional var name:String;

	/**
	* Defines a short hint intended to aid the user with data entry when the control has no value.
	*/
	@:optional var placeholder:String;

	/**
	* Defines the horizontal alignment of the text that is shown inside the input field.
	*/
	@:optional var textAlign:haxe.extern.EitherType<String,sap.ui.core.TextAlign>;

	/**
	* Defines the text directionality of the input field, e.g. <code>RTL</code>, <code>LTR</code>
	*/
	@:optional var textDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

	/**
	* Type of DateTimeInput (e.g. Date, Time, DateTime)
	*/
	@:optional var type:haxe.extern.EitherType<String,sap.m.DateTimeInputType>;

	/**
	* Displays date value in this given format in text field. Default value is taken from locale settings. If you use data-binding on value property with type sap.ui.model.type.Date then you can ignore this property or the latter wins. If the user's browser supports native picker then this property is overwritten by browser with locale settings.
	*/
	@:optional var displayFormat:String;

	/**
	* Given value property should match with valueFormat to parse date. Default value is taken from locale settings. You can only set and get value in this format. If you use data-binding on value property with type sap.ui.model.type.Date you can ignore this property or the latter wins.
	*/
	@:optional var valueFormat:String;

	/**
	* This property as JavaScript Date Object can be used to assign a new value which is independent from valueFormat.
	*/
	@:optional var dateValue:haxe.extern.EitherType<String,Dynamic>;

    /**
    * null
    */
	@:optional var _picker:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* Association to controls / IDs that label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* This event gets fired when the selection has finished and the value has changed.
	*/
	@:optional var change:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
