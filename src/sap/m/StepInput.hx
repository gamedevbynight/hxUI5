package sap.m;

@:native("sap.m.StepInput")

/**
* Allows the user to change the input values with predefined increments (steps).

<h3>Overview</h3>

The <code>StepInput</code> consists of an input field and buttons with icons to increase/decrease the value.

The user can change the value of the control by pressing the increase/decrease buttons, by typing a number directly, by using the keyboard up/down and page up/down, or by using the mouse scroll wheel. Decimal values are supported.

<h3>Usage</h3>

The default step is 1 but the app developer can set a different one.

On desktop, the control supports a larger step, when using the keyboard page up/down keys. You can set a multiple of the step with the use of the <code>largerStep</code> property. The default value is 2 (two times the set step). For example, when using the keyboard page up/down keys the value increases/decreases with a double of the default step. If the set step is 2, the larger step is also 2 and the current value is 1, using the page up key will increase the value to 5 (1 + 2*2).

App developers can set a maximum and minimum value for the <code>StepInput</code>. The increase/decrease button and the up/down keyboard navigation become disabled when the value reaches the max/min or a new value is entered from the input which is greater/less than the max/min.

<i>When to use</i> <ul> <li>To adjust amounts, quantities, or other values quickly.</li> <li>To adjust values for a specific step.</li> </ul>

<i>When not to use</i> <ul> <li>To enter a static number (for example, postal code, phone number, or ID). In this case, use the regular {@link sap.m.Input} instead.</li> <li>To display a value that rarely needs to be adjusted and does not pertain to a particular step. In this case, use the regular {@link sap.m.Input} instead.</li> <li>To enter dates and times. In this case, use the {@link sap.m.DatePicker}, {@link sap.m.DateRangeSelection}, {@link sap.m.TimePicker}, or {@link sap.m.DateTimePicker} instead.</li> </ul>

<b>Note:</b> The control uses a JavaScript number to keep its value, which has a certain precision limitation.

In general, exponential notation is used: <ul> <li>if there are more than 21 digits before the decimal point.</li> <li>if number starts with "0." followed by more than five zeros.</li> </ul>

Exponential notation is not supported by the control and using it may lead to unpredictable behavior.

Also, the JavaScript number persists its precision up to 16 digits. If the user enters a number with a greater precision, the value will be rounded.

This limitation comes from JavaScript itself and it cannot be worked around in a feasible way.
*/
extern class StepInput extends sap.ui.core.Control implements sap.ui.core.IFormContent
{
	@:overload(function(?sId:String, ?mSettings:StepInputArgs):Void {})
	public function new(?mSettings:StepInputArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.m.StepInput{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.m.StepInput;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.StepInput{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.StepInput;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:change change} event of this <code>sap.m.StepInput</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.StepInput</code> itself.

Is fired when one of the following happens: <br> <ol> <li>the text in the input has changed and the focus leaves the input field or the enter key is pressed.</li> <li>One of the decrement or increment buttons is pressed</li> </ol>
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.StepInput</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.StepInput;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:change change} event of this <code>sap.m.StepInput</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachChange( fnFunction:()->Void, ?oListener:Dynamic):sap.m.StepInput;

	/**
	* Creates a new subclass of class sap.m.StepInput with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @return	null
	*/
	public function getAriaDescribedBy( ):Array<sap.ui.core.ID>;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets current value of property {@link #getDescription description}.

Determines the description text after the input field, for example units of measurement, currencies.
	* @return	Value of property <code>description</code>
	*/
	public function getDescription( ):String;

	/**
	* Gets current value of property {@link #getDisplayValuePrecision displayValuePrecision}.

Determines the number of digits after the decimal point.

The value should be between 0 (default) and 20. In case the value is not valid it will be set to the default value.

Default value is <code>0</code>.
	* @return	Value of property <code>displayValuePrecision</code>
	*/
	public function getDisplayValuePrecision( ):Int;

	/**
	* Gets current value of property {@link #getEditable editable}.

Defines whether the control can be modified by the user or not. <b>Note:</b> A user can tab to the non-editable control, highlight it, and copy the text from it.

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
	* Gets current value of property {@link #getFieldWidth fieldWidth}.

Determines the distribution of space between the input field and the description text . Default value is 50% (leaving the other 50% for the description).

<b>Note:</b> This property takes effect only if the <code>description</code> property is also set.

Default value is <code>50%</code>.
	* @return	Value of property <code>fieldWidth</code>
	*/
	public function getFieldWidth( ):sap.ui.core.CSSSize;

	/**
	* Returns the DOMNode Id to be used for the "labelFor" attribute of the label.

By default, this is the Id of the control itself.
	* @return	Id to be used for the <code>labelFor</code>
	*/
	public function getIdForLabel( ):String;

	/**
	* Gets current value of property {@link #getLargerStep largerStep}.

Increases/decreases the value with a larger value than the set step only when using the PageUp/PageDown keys. Default value is 2 times larger than the set step.

Default value is <code>2</code>.
	* @return	Value of property <code>largerStep</code>
	*/
	public function getLargerStep( ):Float;

	/**
	* Gets current value of property {@link #getMax max}.

Sets the maximum possible value of the defined range.
	* @return	Value of property <code>max</code>
	*/
	public function getMax( ):Float;

	/**
	* Returns a metadata object for class sap.m.StepInput.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getMin min}.

Sets the minimum possible value of the defined range.
	* @return	Value of property <code>min</code>
	*/
	public function getMin( ):Float;

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
	* Gets current value of property {@link #getRequired required}.

Indicates that user input is required. This property is only needed for accessibility purposes when a single relationship between the field and a label (see aggregation <code>labelFor</code> of <code>sap.m.Label</code>) cannot be established (e.g. one label should label multiple fields).

Default value is <code>false</code>.
	* @return	Value of property <code>required</code>
	*/
	public function getRequired( ):Bool;

	/**
	* Gets current value of property {@link #getStep step}.

Increases/decreases the value of the input. <ul><b>Note:</b> <li>The value of the <code>step</code> property should not contain more digits after the decimal point than what is set to the <code>displayValuePrecision</code> property, as it may lead to an increase/decrease that is not visible for the user. For example, if the <code>value</code> is set to 1.22 and the <code>displayValuePrecision</code> is set to one digit after the decimal, the user will see 1.2. In this case, if the <code>value</code> of the <code>step</code> property is set to 1.005 and the user selects <code>increase</code>, the resulting value will increase to 1.2261 but the displayed value will remain as 1.2 as it will be rounded to the first digit after the decimal point.</li> <li>Depending on what is set for the <code>value</code> and the <code>displayValuePrecision</code> properties, it is possible the displayed value to be rounded to a higher number, for example to 3.0 when the actual value is 2.99.</li></ul>

Default value is <code>1</code>.
	* @return	Value of property <code>step</code>
	*/
	public function getStep( ):Float;

	/**
	* Gets current value of property {@link #getStepMode stepMode}.

Defines the calculation mode for the provided <code>step</code> and <code>largerStep</code>.

If the user increases/decreases the value by <code>largerStep</code>, this calculation will consider it as well. For example, if the current <code>value</code> is 3, <code>step</code> is 5, <code>largerStep</code> is 5 and the user chooses PageUp, the calculation logic will consider the value of 3x5=15 to decide what will be the next <code>value</code>.

Default value is <code>AdditionAndSubtraction</code>.
	* @return	Value of property <code>stepMode</code>
	*/
	public function getStepMode( ):sap.m.StepInputStepModeType;

	/**
	* Gets current value of property {@link #getTextAlign textAlign}.

Defines the horizontal alignment of the text that is displayed inside the input field.

Default value is <code>End</code>.
	* @return	Value of property <code>textAlign</code>
	*/
	public function getTextAlign( ):sap.ui.core.TextAlign;

	/**
	* Gets current value of property {@link #getValidationMode validationMode}.

Defines when the validation of the typed value will happen. By default this happens on focus out.

Default value is <code>FocusOut</code>.
	* @return	Value of property <code>validationMode</code>
	*/
	public function getValidationMode( ):sap.m.StepInputValidationMode;

	/**
	* Gets current value of property {@link #getValue value}.

Determines the value of the <code>StepInput</code> and can be set initially from the app developer.

Default value is <code>0</code>.
	* @return	Value of property <code>value</code>
	*/
	public function getValue( ):Float;

	/**
	* Gets current value of property {@link #getValueState valueState}.

Accepts the core enumeration ValueState.type that supports <code>None</code>, <code>Error</code>, <code>Warning</code> and <code>Success</code>.

Default value is <code>None</code>.
	* @return	Value of property <code>valueState</code>
	*/
	public function getValueState( ):sap.ui.core.ValueState;

	/**
	* Gets current value of property {@link #getValueStateText valueStateText}.

Defines the text that appears in the value state message pop-up.
	* @return	Value of property <code>valueStateText</code>
	*/
	public function getValueStateText( ):String;

	/**
	* Gets current value of property {@link #getWidth width}.

Defines the width of the control.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Removes all the controls in the association named {@link #getAriaDescribedBy ariaDescribedBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaDescribedBy( ):Array<sap.ui.core.ID>;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;
	@:overload( function(vAriaDescribedBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaDescribedBy from the association named {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to be removed or its index or ID
	* @return	The removed ariaDescribedBy or <code>null</code>
	*/
	public function removeAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.ui.core.ID;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;

	/**
	* Sets a new value for property {@link #getDescription description}.

Determines the description text after the input field, for example units of measurement, currencies.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sDescription New value for property <code>description</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDescription( sDescription:String):sap.m.StepInput;

	/**
	* Sets a new value for property {@link #getDisplayValuePrecision displayValuePrecision}.

Determines the number of digits after the decimal point.

The value should be between 0 (default) and 20. In case the value is not valid it will be set to the default value.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iDisplayValuePrecision New value for property <code>displayValuePrecision</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDisplayValuePrecision( ?iDisplayValuePrecision:Int):sap.m.StepInput;

	/**
	* Sets a new value for property {@link #getEditable editable}.

Defines whether the control can be modified by the user or not. <b>Note:</b> A user can tab to the non-editable control, highlight it, and copy the text from it.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEditable New value for property <code>editable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEditable( ?bEditable:Bool):sap.m.StepInput;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Indicates whether the user can interact with the control or not. <b>Note:</b> Disabled controls cannot be focused and they are out of the tab-chain.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( ?bEnabled:Bool):sap.m.StepInput;

	/**
	* Sets a new value for property {@link #getFieldWidth fieldWidth}.

Determines the distribution of space between the input field and the description text . Default value is 50% (leaving the other 50% for the description).

<b>Note:</b> This property takes effect only if the <code>description</code> property is also set.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>50%</code>.
	* @param	sFieldWidth New value for property <code>fieldWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFieldWidth( ?sFieldWidth:sap.ui.core.CSSSize):sap.m.StepInput;

	/**
	* Sets a new value for property {@link #getLargerStep largerStep}.

Increases/decreases the value with a larger value than the set step only when using the PageUp/PageDown keys. Default value is 2 times larger than the set step.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>2</code>.
	* @param	fLargerStep New value for property <code>largerStep</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLargerStep( ?fLargerStep:Float):sap.m.StepInput;

	/**
	* Sets a new value for property {@link #getName name}.

Defines the name of the control for the purposes of form submission.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sName New value for property <code>name</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setName( sName:String):sap.m.StepInput;

	/**
	* Sets a new value for property {@link #getPlaceholder placeholder}.

Defines a short hint intended to aid the user with data entry when the control has no value.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sPlaceholder New value for property <code>placeholder</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPlaceholder( sPlaceholder:String):sap.m.StepInput;

	/**
	* Sets a new value for property {@link #getRequired required}.

Indicates that user input is required. This property is only needed for accessibility purposes when a single relationship between the field and a label (see aggregation <code>labelFor</code> of <code>sap.m.Label</code>) cannot be established (e.g. one label should label multiple fields).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bRequired New value for property <code>required</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRequired( ?bRequired:Bool):sap.m.StepInput;

	/**
	* Sets a new value for property {@link #getStep step}.

Increases/decreases the value of the input. <ul><b>Note:</b> <li>The value of the <code>step</code> property should not contain more digits after the decimal point than what is set to the <code>displayValuePrecision</code> property, as it may lead to an increase/decrease that is not visible for the user. For example, if the <code>value</code> is set to 1.22 and the <code>displayValuePrecision</code> is set to one digit after the decimal, the user will see 1.2. In this case, if the <code>value</code> of the <code>step</code> property is set to 1.005 and the user selects <code>increase</code>, the resulting value will increase to 1.2261 but the displayed value will remain as 1.2 as it will be rounded to the first digit after the decimal point.</li> <li>Depending on what is set for the <code>value</code> and the <code>displayValuePrecision</code> properties, it is possible the displayed value to be rounded to a higher number, for example to 3.0 when the actual value is 2.99.</li></ul>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	fStep New value for property <code>step</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setStep( ?fStep:Float):sap.m.StepInput;

	/**
	* Sets a new value for property {@link #getStepMode stepMode}.

Defines the calculation mode for the provided <code>step</code> and <code>largerStep</code>.

If the user increases/decreases the value by <code>largerStep</code>, this calculation will consider it as well. For example, if the current <code>value</code> is 3, <code>step</code> is 5, <code>largerStep</code> is 5 and the user chooses PageUp, the calculation logic will consider the value of 3x5=15 to decide what will be the next <code>value</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>AdditionAndSubtraction</code>.
	* @param	sStepMode New value for property <code>stepMode</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setStepMode( ?sStepMode:sap.m.StepInputStepModeType):sap.m.StepInput;

	/**
	* Sets a new value for property {@link #getTextAlign textAlign}.

Defines the horizontal alignment of the text that is displayed inside the input field.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>End</code>.
	* @param	sTextAlign New value for property <code>textAlign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextAlign( ?sTextAlign:sap.ui.core.TextAlign):sap.m.StepInput;

	/**
	* Sets a new value for property {@link #getValue value}.

Determines the value of the <code>StepInput</code> and can be set initially from the app developer.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	fValue New value for property <code>value</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValue( ?fValue:Float):sap.m.StepInput;

	/**
	* Sets a new value for property {@link #getValueState valueState}.

Accepts the core enumeration ValueState.type that supports <code>None</code>, <code>Error</code>, <code>Warning</code> and <code>Success</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sValueState New value for property <code>valueState</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValueState( ?sValueState:sap.ui.core.ValueState):sap.m.StepInput;

	/**
	* Sets a new value for property {@link #getValueStateText valueStateText}.

Defines the text that appears in the value state message pop-up.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sValueStateText New value for property <code>valueStateText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValueStateText( sValueStateText:String):sap.m.StepInput;

	/**
	* Sets a new value for property {@link #getWidth width}.

Defines the width of the control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.m.StepInput;
}

typedef StepInputArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Sets the minimum possible value of the defined range.
	*/
	@:optional var min:haxe.extern.EitherType<String,Float>;

	/**
	* Sets the maximum possible value of the defined range.
	*/
	@:optional var max:haxe.extern.EitherType<String,Float>;

	/**
	* Increases/decreases the value of the input. <ul><b>Note:</b> <li>The value of the <code>step</code> property should not contain more digits after the decimal point than what is set to the <code>displayValuePrecision</code> property, as it may lead to an increase/decrease that is not visible for the user. For example, if the <code>value</code> is set to 1.22 and the <code>displayValuePrecision</code> is set to one digit after the decimal, the user will see 1.2. In this case, if the <code>value</code> of the <code>step</code> property is set to 1.005 and the user selects <code>increase</code>, the resulting value will increase to 1.2261 but the displayed value will remain as 1.2 as it will be rounded to the first digit after the decimal point.</li> <li>Depending on what is set for the <code>value</code> and the <code>displayValuePrecision</code> properties, it is possible the displayed value to be rounded to a higher number, for example to 3.0 when the actual value is 2.99.</li></ul>
	*/
	@:optional var step:haxe.extern.EitherType<String,Float>;

	/**
	* Defines the calculation mode for the provided <code>step</code> and <code>largerStep</code>.

If the user increases/decreases the value by <code>largerStep</code>, this calculation will consider it as well. For example, if the current <code>value</code> is 3, <code>step</code> is 5, <code>largerStep</code> is 5 and the user chooses PageUp, the calculation logic will consider the value of 3x5=15 to decide what will be the next <code>value</code>.
	*/
	@:optional var stepMode:haxe.extern.EitherType<String,sap.m.StepInputStepModeType>;

	/**
	* Increases/decreases the value with a larger value than the set step only when using the PageUp/PageDown keys. Default value is 2 times larger than the set step.
	*/
	@:optional var largerStep:haxe.extern.EitherType<String,Float>;

	/**
	* Determines the value of the <code>StepInput</code> and can be set initially from the app developer.
	*/
	@:optional var value:haxe.extern.EitherType<String,Float>;

	/**
	* Defines the name of the control for the purposes of form submission.
	*/
	@:optional var name:String;

	/**
	* Defines a short hint intended to aid the user with data entry when the control has no value.
	*/
	@:optional var placeholder:String;

	/**
	* Indicates that user input is required. This property is only needed for accessibility purposes when a single relationship between the field and a label (see aggregation <code>labelFor</code> of <code>sap.m.Label</code>) cannot be established (e.g. one label should label multiple fields).
	*/
	@:optional var required:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the width of the control.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Accepts the core enumeration ValueState.type that supports <code>None</code>, <code>Error</code>, <code>Warning</code> and <code>Success</code>.
	*/
	@:optional var valueState:haxe.extern.EitherType<String,sap.ui.core.ValueState>;

	/**
	* Defines the text that appears in the value state message pop-up.
	*/
	@:optional var valueStateText:String;

	/**
	* Defines whether the control can be modified by the user or not. <b>Note:</b> A user can tab to the non-editable control, highlight it, and copy the text from it.
	*/
	@:optional var editable:haxe.extern.EitherType<String,Bool>;

	/**
	* Indicates whether the user can interact with the control or not. <b>Note:</b> Disabled controls cannot be focused and they are out of the tab-chain.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the number of digits after the decimal point.

The value should be between 0 (default) and 20. In case the value is not valid it will be set to the default value.
	*/
	@:optional var displayValuePrecision:haxe.extern.EitherType<String,Int>;

	/**
	* Determines the description text after the input field, for example units of measurement, currencies.
	*/
	@:optional var description:String;

	/**
	* Determines the distribution of space between the input field and the description text . Default value is 50% (leaving the other 50% for the description).

<b>Note:</b> This property takes effect only if the <code>description</code> property is also set.
	*/
	@:optional var fieldWidth:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Defines the horizontal alignment of the text that is displayed inside the input field.
	*/
	@:optional var textAlign:haxe.extern.EitherType<String,sap.ui.core.TextAlign>;

	/**
	* Defines when the validation of the typed value will happen. By default this happens on focus out.
	*/
	@:optional var validationMode:haxe.extern.EitherType<String,sap.m.StepInputValidationMode>;

    /**
    * Internal aggregation that contains the <code>Input</code>.
    */
	@:optional var _input:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* Association to controls / IDs that label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / IDs which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Is fired when one of the following happens: <br> <ol> <li>the text in the input has changed and the focus leaves the input field or the enter key is pressed.</li> <li>One of the decrement or increment buttons is pressed</li> </ol>
	*/
	@:optional var change:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
