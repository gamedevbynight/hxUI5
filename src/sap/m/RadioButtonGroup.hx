package sap.m;

@:native("sap.m.RadioButtonGroup")

/**
* This control is used as a wrapper for a group of {@link sap.m.RadioButton} controls, which can be used as a single UI element. You can select only one of the grouped radio buttons at a time. <h3>Structure</h3> <ul> <li>The radio buttons are stored in the <code>buttons</code> aggregation.</li> <li>By setting the <code>columns</code> property, you can create layouts like a 'matrix', 'vertical' or 'horizontal'.</li> <li><b>Note:</b>For proper display on all devices, we recommend creating radio button groups with only one row or only one column.</li> </ul> <h3>Usage</h3> <h4>When to use:</h4> <ul> <li>You want to attach a single event handler on a group of buttons, rather than on each individual button.</li> </ul> <h4>When not to use:</h4> <ul> <li>Do not put two radio button groups right next to each other as it is difficult to determine which buttons belong to which group.</li> </ul>
*/
extern class RadioButtonGroup extends sap.ui.core.Control implements sap.ui.core.IFormContent
{
	@:overload(function(?sId:String, ?mSettings:RadioButtonGroupArgs):Void {})
	public function new(?mSettings:RadioButtonGroupArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.m.RadioButtonGroup{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.m.RadioButtonGroup;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.RadioButtonGroup{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.RadioButtonGroup;

	/**
	* Adds a new radio button to the group.
	* @param	oButton The button which will be added to the group.
	* @return	Pointer to the control instance for chaining.
	*/
	public function addButton( oButton:sap.m.RadioButton):sap.m.RadioButtonGroup;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:select select} event of this <code>sap.m.RadioButtonGroup</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.RadioButtonGroup</code> itself.

Fires when selection is changed by user interaction.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.RadioButtonGroup</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.RadioButtonGroup;

	/**
	* Binds aggregation {@link #getButtons buttons} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindButtons( oBindingInfo:Dynamic):sap.m.RadioButtonGroup;

	/**
	* Creates a new instance of RadioButtonGroup, with the same settings as the RadioButtonGroup on which the method is called. Event handlers are not cloned.
	* @return	New instance of RadioButtonGroup
	*/
	public function clone( ):sap.m.RadioButtonGroup;

	/**
	* Destroys all radio buttons.
	* @return	Pointer to the control instance for chaining.
	*/
	public function destroyButtons( ):sap.m.RadioButtonGroup;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:select select} event of this <code>sap.m.RadioButtonGroup</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelect( fnFunction:()->Void, ?oListener:Dynamic):sap.m.RadioButtonGroup;

	/**
	* Exits the radio button group.
	* @return	Void
	*/
	public function exit( ):Void;

	/**
	* Creates a new subclass of class sap.m.RadioButtonGroup with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

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
	* Gets content of aggregation {@link #getButtons buttons}.

Returns a list of the RadioButtons in a RadioButtonGroup
	* @return	null
	*/
	public function getButtons( ):Array<sap.m.RadioButton>;

	/**
	* Gets current value of property {@link #getColumns columns}.

Specifies the maximum number of radio buttons displayed in one line.

Default value is <code>1</code>.
	* @return	Value of property <code>columns</code>
	*/
	public function getColumns( ):Int;

	/**
	* Gets current value of property {@link #getEditable editable}.

Specifies whether the user can change the selected value of the RadioButtonGroup. When the property is set to false, the control obtains visual styles different from its visual styles for the normal and the disabled state. Additionally, the control is no longer interactive, but can receive focus.

Default value is <code>true</code>.
	* @return	Value of property <code>editable</code>
	*/
	public function getEditable( ):Bool;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Switches the enabled state of the control. All Radio Buttons inside a disabled group are disabled. Default value is "true".

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Returns a metadata object for class sap.m.RadioButtonGroup.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Returns the selected radio button.
	* @return	The selected radio button.
	*/
	public function getSelectedButton( ):sap.m.RadioButton;

	/**
	* Gets current value of property {@link #getSelectedIndex selectedIndex}.

Determines the index of the selected/checked RadioButton. Default is 0. If no radio button is selected, the selectedIndex property will return -1.

Default value is <code>0</code>.
	* @return	Value of property <code>selectedIndex</code>
	*/
	public function getSelectedIndex( ):Int;

	/**
	* Gets current value of property {@link #getTextDirection textDirection}.

This property specifies the element's text directionality with enumerated options. By default, the control inherits text direction from the DOM.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>textDirection</code>
	*/
	public function getTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Gets current value of property {@link #getValueState valueState}.

The value state to be displayed for the radio button. Possible values are: sap.ui.core.ValueState.Error, sap.ui.core.ValueState.Warning, sap.ui.core.ValueState.Success and sap.ui.core.ValueState.None. Note: Setting this attribute to sap.ui.core.ValueState.Error when the accessibility feature is enabled, sets the value of the invalid property for the whole RadioButtonGroup to "true".

Default value is <code>None</code>.
	* @return	Value of property <code>valueState</code>
	*/
	public function getValueState( ):sap.ui.core.ValueState;

	/**
	* Gets current value of property {@link #getWidth width}.

Specifies the width of the RadioButtonGroup.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.m.RadioButton</code> in the aggregation {@link #getButtons buttons}. and returns its index if found or -1 otherwise.
	* @param	oButton The button whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfButton( oButton:sap.m.RadioButton):Int;

	/**
	* Adds a new radio button to the group at a specified index.
	* @param	oButton The radio button which will be added to the group.
	* @param	iIndex The index, at which the radio button will be added.
	* @return	Pointer to the control instance for chaining.
	*/
	public function insertButton( oButton:sap.m.RadioButton, iIndex:String):sap.m.RadioButtonGroup;

	/**
	* Overwrites the onAfterRendering
	* @return	Void
	*/
	public function onAfterRendering( ):Void;

	/**
	* Overwrites the onBeforeRendering method.
	* @return	Void
	*/
	public function onBeforeRendering( ):Void;

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

	/**
	* Removes all radio buttons.
	* @return	Array of removed buttons or null.
	*/
	public function removeAllButtons( ):Array<Dynamic>;
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
	* Removes a radio button from the group.
	* @return	vElement The removed radio button.
	*/
	public function removeButton( ):sap.m.RadioButton;

	/**
	* Sets a new value for property {@link #getColumns columns}.

Specifies the maximum number of radio buttons displayed in one line.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	iColumns New value for property <code>columns</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumns( ?iColumns:Int):sap.m.RadioButtonGroup;

	/**
	* Sets the editable property of the RadioButtonGroup. Single buttons preserve the value of their editable property. If the group is set to editable=false the buttons are also displayed and function as read only. Non editable radio buttons can still obtain focus.
	* @param	bEditable Defines whether the radio buttons should be interactive.
	* @return	Pointer to the control instance for chaining.
	*/
	public function setEditable( bEditable:Bool):sap.m.RadioButtonGroup;

	/**
	* Sets the enabled property of the RadioButtonGroup. Single buttons preserve internally the value of their enabled property. If the group is set to enabled=false the buttons are also displayed as disabled and getEnabled returns false.
	* @param	bEnabled Defines whether the radio buttons should be interactive.
	* @return	Pointer to the control instance for chaining.
	*/
	public function setEnabled( bEnabled:Bool):sap.m.RadioButtonGroup;

	/**
	* Sets the selected sap.m.RadioButton using sap.m.RadioButton.
	* @param	oSelectedButton The item to be selected.
	* @return	Pointer to the control instance for chaining.
	*/
	public function setSelectedButton( oSelectedButton:sap.m.RadioButton):sap.m.RadioButtonGroup;

	/**
	* Sets the selected sap.m.RadioButton using index.
	* @param	iSelectedIndex The index of the radio button which has to be selected.
	* @return	Pointer to the control instance for chaining.
	*/
	public function setSelectedIndex( iSelectedIndex:String):sap.m.RadioButtonGroup;

	/**
	* Sets a new value for property {@link #getTextDirection textDirection}.

This property specifies the element's text directionality with enumerated options. By default, the control inherits text direction from the DOM.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sTextDirection New value for property <code>textDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextDirection( ?sTextDirection:sap.ui.core.TextDirection):sap.m.RadioButtonGroup;

	/**
	* Sets a new value for property {@link #getValueState valueState}.

The value state to be displayed for the radio button. Possible values are: sap.ui.core.ValueState.Error, sap.ui.core.ValueState.Warning, sap.ui.core.ValueState.Success and sap.ui.core.ValueState.None. Note: Setting this attribute to sap.ui.core.ValueState.Error when the accessibility feature is enabled, sets the value of the invalid property for the whole RadioButtonGroup to "true".

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sValueState New value for property <code>valueState</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValueState( ?sValueState:sap.ui.core.ValueState):sap.m.RadioButtonGroup;

	/**
	* Sets a new value for property {@link #getWidth width}.

Specifies the width of the RadioButtonGroup.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.m.RadioButtonGroup;

	/**
	* Unbinds aggregation {@link #getButtons buttons} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindButtons( ):sap.m.RadioButtonGroup;

	/**
	* Updates the buttons in the group.
	* @return	Void
	*/
	public function updateButtons( ):Void;
}

typedef RadioButtonGroupArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Specifies the width of the RadioButtonGroup.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Specifies the maximum number of radio buttons displayed in one line.
	*/
	@:optional var columns:haxe.extern.EitherType<String,Int>;

	/**
	* Specifies whether the user can change the selected value of the RadioButtonGroup. When the property is set to false, the control obtains visual styles different from its visual styles for the normal and the disabled state. Additionally, the control is no longer interactive, but can receive focus.
	*/
	@:optional var editable:haxe.extern.EitherType<String,Bool>;

	/**
	* The value state to be displayed for the radio button. Possible values are: sap.ui.core.ValueState.Error, sap.ui.core.ValueState.Warning, sap.ui.core.ValueState.Success and sap.ui.core.ValueState.None. Note: Setting this attribute to sap.ui.core.ValueState.Error when the accessibility feature is enabled, sets the value of the invalid property for the whole RadioButtonGroup to "true".
	*/
	@:optional var valueState:haxe.extern.EitherType<String,sap.ui.core.ValueState>;

	/**
	* Determines the index of the selected/checked RadioButton. Default is 0. If no radio button is selected, the selectedIndex property will return -1.
	*/
	@:optional var selectedIndex:haxe.extern.EitherType<String,Int>;

	/**
	* Switches the enabled state of the control. All Radio Buttons inside a disabled group are disabled. Default value is "true".
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* This property specifies the element's text directionality with enumerated options. By default, the control inherits text direction from the DOM.
	*/
	@:optional var textDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

    /**
    * Returns a list of the RadioButtons in a RadioButtonGroup
    */
	@:optional var buttons:Array<haxe.extern.EitherType<String,sap.m.RadioButton>>;

	/**
	* Association to controls / IDs which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / IDs which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Fires when selection is changed by user interaction.
	*/
	@:optional var select:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
