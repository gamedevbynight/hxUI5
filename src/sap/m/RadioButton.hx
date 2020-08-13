package sap.m;

@:native("sap.m.RadioButton")

/**
* RadioButton is a control similar to a {@link sap.m.CheckBox checkbox}, but it allows you to choose only one of the predefined set of options. Multiple radio buttons have to belong to the same group (have the same value for <code>groupName</code>) in order to be mutually exclusive. A wrapper control {@link sap.m.RadioButtonGroup RadioButtonGroup} can be used instead of individual radio buttons. <h3>Structure</h3> <ul> <li>Radio buttons can have a value state like Error or Warning.</li> <li>Radio buttons can be arranged vertically by setting the <code>column</code> to a number higher than 1.</li> <li>Radio button options need to have a {@link sap.m.Label label}.</li> </ul> <h3>Usage</h3> <h4>When to use:</h4> <ul> <li>You quickly need to choose between at least two alternatives.</li> <li>You need to place other controls between the radio button options.</li> </ul> <h4>When not to use:</h4> <ul> <li>You want to select multiple values for the same option. Use {@link sap.m.CheckBox checkboxes} instead.</li> <li>When the default value is recommended for most users in most situations. Use a {@link sap.m.Select drop-down} instead as is saves space by not showing all the alternatives.</li> <li>You want have more than 8 options. Use a {@link sap.m.Select drop-down} instead.</li> <li>When the options are mutually exclusive e.g. ON/OFF. Use a {@link sap.m.Switch switch} instead.</li> <li>Avoid using horizontally aligned radio buttons as they will be cut off on phones.</li> </ul>

<b>Note:</b> The order in which the RadioButtons will be selected one after another is determined upon instantiation of the control. This order is consistent with the ARIA attributes for position, which the same button will receive when added to specific group.

<b>Example:</b> If three buttons are created (<code>button1, button2, button3</code>) in consecutive order, initially they will have the same positions and TAB order. However if after that <code>button1</code> and <code>button3</code> are moved to a new group and then <code>button2</code> is added to the same group, their TAB order and position in this group will be <code>button1, button3, button2</code>.
*/
extern class RadioButton extends sap.ui.core.Control implements sap.ui.core.IFormContent
{
	@:overload(function(?sId:String, ?mSettings:RadioButtonArgs):Void {})
	public function new(?mSettings:RadioButtonArgs):Void;

	/**
	* Maintains the RadioButton's internal Label's text property.
	* @param	sText The text to be set
	* @return	Reference to the control instance for chaining
	*/
	public function _updateLabelProperties( sText:String):sap.m.RadioButton;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.m.RadioButton{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.m.RadioButton;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.RadioButton{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.RadioButton;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:select select} event of this <code>sap.m.RadioButton</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.RadioButton</code> itself.

Event is triggered when the user makes a change on the radio button (selecting or unselecting it).
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.RadioButton</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.RadioButton;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:select select} event of this <code>sap.m.RadioButton</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelect( fnFunction:()->Void, ?oListener:Dynamic):sap.m.RadioButton;

	/**
	* Destroys all related objects to the RadioButton
	* @return	Void
	*/
	public function exit( ):Void;

	/**
	* Creates a new subclass of class sap.m.RadioButton with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getActiveHandling activeHandling}.

This is a flag to switch on activeHandling. When it is switched off, there will not be visual changes on active state. Default value is 'true'

Default value is <code>true</code>.
	* @return	Value of property <code>activeHandling</code>
	*/
	public function getActiveHandling( ):Bool;

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
	* Gets current value of property {@link #getEditable editable}.

Specifies whether the user can select the radio button.

Default value is <code>true</code>.
	* @return	Value of property <code>editable</code>
	*/
	public function getEditable( ):Bool;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Specifies if the radio button is disabled.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets current value of property {@link #getGroupName groupName}.

Name of the radio button group the current radio button belongs to. You can define a new name for the group. If no new name is specified, this radio button belongs to the sapMRbDefaultGroup per default. Default behavior of a radio button in a group is that when one of the radio buttons in a group is selected, all others are unselected.

Default value is <code>sapMRbDefaultGroup</code>.
	* @return	Value of property <code>groupName</code>
	*/
	public function getGroupName( ):String;

	/**
	* Returns a metadata object for class sap.m.RadioButton.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getSelected selected}.

Specifies the select state of the radio button

Default value is <code>false</code>.
	* @return	Value of property <code>selected</code>
	*/
	public function getSelected( ):Bool;

	/**
	* Gets current value of property {@link #getText text}.

Specifies the text displayed next to the RadioButton
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Gets current value of property {@link #getTextAlign textAlign}.

Specifies the alignment of the radio button. Available alignment settings are "Begin", "Center", "End", "Left", and "Right".

Default value is <code>Begin</code>.
	* @return	Value of property <code>textAlign</code>
	*/
	public function getTextAlign( ):sap.ui.core.TextAlign;

	/**
	* Gets current value of property {@link #getTextDirection textDirection}.

Options for the text direction are RTL and LTR. Alternatively, the control can inherit the text direction from its parent container.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>textDirection</code>
	*/
	public function getTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Gets current value of property {@link #getUseEntireWidth useEntireWidth}.

Indicates if the given width will be applied for the whole RadioButton or only it's label. By Default width is set only for the label.

Default value is <code>false</code>.
	* @return	Value of property <code>useEntireWidth</code>
	*/
	public function getUseEntireWidth( ):Bool;

	/**
	* Gets current value of property {@link #getValueState valueState}.

Enumeration sap.ui.core.ValueState provides state values Error, Success, Warning, Information, None

Default value is <code>None</code>.
	* @return	Value of property <code>valueState</code>
	*/
	public function getValueState( ):sap.ui.core.ValueState;

	/**
	* Gets current value of property {@link #getWidth width}.

Width of the RadioButton or it's label depending on the useEntireWidth property. By Default width is set only for the label.

Default value is <code>empty string</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Pseudo event for pseudo 'select' event... space, enter, ... without modifiers (Ctrl, Alt or Shift)
	* @param	oEvent provides information for the event
	* @return	Void
	*/
	public function onsapselect( oEvent:Dynamic):Void;

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
	* Sets a new value for property {@link #getActiveHandling activeHandling}.

This is a flag to switch on activeHandling. When it is switched off, there will not be visual changes on active state. Default value is 'true'

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bActiveHandling New value for property <code>activeHandling</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setActiveHandling( ?bActiveHandling:Bool):sap.m.RadioButton;

	/**
	* Sets a new value for property {@link #getEditable editable}.

Specifies whether the user can select the radio button.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEditable New value for property <code>editable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEditable( ?bEditable:Bool):sap.m.RadioButton;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Specifies if the radio button is disabled.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( ?bEnabled:Bool):sap.m.RadioButton;

	/**
	* Sets a new value for property {@link #getGroupName groupName}.

Name of the radio button group the current radio button belongs to. You can define a new name for the group. If no new name is specified, this radio button belongs to the sapMRbDefaultGroup per default. Default behavior of a radio button in a group is that when one of the radio buttons in a group is selected, all others are unselected.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>sapMRbDefaultGroup</code>.
	* @param	sGroupName New value for property <code>groupName</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGroupName( ?sGroupName:String):sap.m.RadioButton;

	/**
	* Sets the state of the RadioButton to selected.
	* @param	bSelected defines if the radio button is selected
	* @return	Reference to the control instance for chaining
	*/
	public function setSelected( bSelected:Bool):sap.m.RadioButton;

	/**
	* Sets a new value for property {@link #getText text}.

Specifies the text displayed next to the RadioButton

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( sText:String):sap.m.RadioButton;

	/**
	* Sets a new value for property {@link #getTextAlign textAlign}.

Specifies the alignment of the radio button. Available alignment settings are "Begin", "Center", "End", "Left", and "Right".

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Begin</code>.
	* @param	sTextAlign New value for property <code>textAlign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextAlign( ?sTextAlign:sap.ui.core.TextAlign):sap.m.RadioButton;

	/**
	* Sets a new value for property {@link #getTextDirection textDirection}.

Options for the text direction are RTL and LTR. Alternatively, the control can inherit the text direction from its parent container.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sTextDirection New value for property <code>textDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextDirection( ?sTextDirection:sap.ui.core.TextDirection):sap.m.RadioButton;

	/**
	* Sets a new value for property {@link #getUseEntireWidth useEntireWidth}.

Indicates if the given width will be applied for the whole RadioButton or only it's label. By Default width is set only for the label.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bUseEntireWidth New value for property <code>useEntireWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUseEntireWidth( ?bUseEntireWidth:Bool):sap.m.RadioButton;

	/**
	* Sets a new value for property {@link #getValueState valueState}.

Enumeration sap.ui.core.ValueState provides state values Error, Success, Warning, Information, None

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sValueState New value for property <code>valueState</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValueState( ?sValueState:sap.ui.core.ValueState):sap.m.RadioButton;

	/**
	* Sets a new value for property {@link #getWidth width}.

Width of the RadioButton or it's label depending on the useEntireWidth property. By Default width is set only for the label.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sWidth= New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.m.RadioButton;
}

typedef RadioButtonArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Specifies if the radio button is disabled.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies the select state of the radio button
	*/
	@:optional var selected:haxe.extern.EitherType<String,Bool>;

	/**
	* Name of the radio button group the current radio button belongs to. You can define a new name for the group. If no new name is specified, this radio button belongs to the sapMRbDefaultGroup per default. Default behavior of a radio button in a group is that when one of the radio buttons in a group is selected, all others are unselected.
	*/
	@:optional var groupName:String;

	/**
	* Specifies the text displayed next to the RadioButton
	*/
	@:optional var text:String;

	/**
	* Options for the text direction are RTL and LTR. Alternatively, the control can inherit the text direction from its parent container.
	*/
	@:optional var textDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

	/**
	* Width of the RadioButton or it's label depending on the useEntireWidth property. By Default width is set only for the label.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Indicates if the given width will be applied for the whole RadioButton or only it's label. By Default width is set only for the label.
	*/
	@:optional var useEntireWidth:haxe.extern.EitherType<String,Bool>;

	/**
	* This is a flag to switch on activeHandling. When it is switched off, there will not be visual changes on active state. Default value is 'true'
	*/
	@:optional var activeHandling:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies whether the user can select the radio button.
	*/
	@:optional var editable:haxe.extern.EitherType<String,Bool>;

	/**
	* Enumeration sap.ui.core.ValueState provides state values Error, Success, Warning, Information, None
	*/
	@:optional var valueState:haxe.extern.EitherType<String,sap.ui.core.ValueState>;

	/**
	* Specifies the alignment of the radio button. Available alignment settings are "Begin", "Center", "End", "Left", and "Right".
	*/
	@:optional var textAlign:haxe.extern.EitherType<String,sap.ui.core.TextAlign>;

	/**
	* Specifies if the RadioButton should be editable. This property meant to be used by parent controls (e.g. RadioButtoGroup).
	*/
	@:optional var editableParent:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the text that appears in the tooltip of the <code>RadioButton</code>. If this is not specified, a default text is shown from the resource bundle.
	*/
	@:optional var valueStateText:String;

	/**
	* Association to controls / IDs which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / IDs which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Event is triggered when the user makes a change on the radio button (selecting or unselecting it).
	*/
	@:optional var select:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
