package sap.m;

@:native("sap.m.CheckBox")

/**
* Allows the user to set a binary value, such as true/false or yes/no for an item.

<h3>Overview</h3>

The <code>CheckBox</code> control consists of a box and a label that describes its purpose. If it's checked, an indicator is displayed inside the box.

To select/deselect the <code>CheckBox</code>, the user has to click or tap the square box or its label. Clicking or tapping toggles the <code>CheckBox</code> between checked and unchecked state. The <code>CheckBox</code> control only has 3 states - checked, unchecked and partially selected.

<h3>Usage</h3>

You can set the width of the element containing the box and the label manually with the use of the <code>width</code> property. If the text exceeds the available width, it is truncated.

<b>Note:</b> When <code>useEntireWidth</code> property is set to <code>true</code>, the value of the <code>width</code> property is applied to the control as a whole (box and label). If <code>useEntireWidth</code> is set to <code>false</code>, the <code>width</code> is applied to the label only.

The touchable area for toggling the <code>CheckBox</code> ends where the text ends.

If the width allows more space than the text requires, white space is added. The text can be positioned manually in this space using the <code>textAlign</code> property.

<b>Note:</b> Keep in mind that setting the <code>textAlign</code> property to <code>Right</code> can result in a large amount of white space between the box and the text.

You can disable the <code>CheckBox</code> by setting the <code>enabled</code> property to <code>false</code>, or use the <code>CheckBox</code> in read-only mode by setting the <code>editable</code> property to false.

<b>Note:</b> Disabled and read-only states shouldn't be used together.
*/
extern class CheckBox extends sap.ui.core.Control implements sap.ui.core.IFormContent
{
	@:overload(function(?sId:String, ?mSettings:CheckBoxArgs):Void {})
	public function new(?mSettings:CheckBoxArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.m.CheckBox{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.m.CheckBox;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.CheckBox{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.CheckBox;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:select select} event of this <code>sap.m.CheckBox</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.CheckBox</code> itself.

Event is triggered when the control status is changed by the user by selecting or deselecting the checkbox.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.CheckBox</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelect( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.CheckBox;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:select select} event of this <code>sap.m.CheckBox</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelect( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.CheckBox;

	/**
	* Creates a new subclass of class sap.m.CheckBox with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getActiveHandling activeHandling}.

Flag to switch on activeHandling, when it is switched off, there will be no visual changes on active state. Default value is 'true'

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
	* Gets current value of property {@link #getDisplayOnly displayOnly}.

Determines whether the <code>CheckBox</code> is in display only state.

When set to <code>true</code>, the <code>CheckBox</code> is not interactive, not editable, not focusable and not in the tab chain. This setting is used for forms in review mode.

<Note:> When the property <code>enabled</code> is set to <code>false</code> this property has no effect.

Default value is <code>false</code>.
	* @return	Value of property <code>displayOnly</code>
	*/
	public function getDisplayOnly( ):Bool;

	/**
	* Gets current value of property {@link #getEditable editable}.

Specifies whether the user shall be allowed to edit the state of the checkbox

Default value is <code>true</code>.
	* @return	Value of property <code>editable</code>
	*/
	public function getEditable( ):Bool;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Disables the Checkbox. Disabled controls are not interactive and are rendered differently according to the theme.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Returns a metadata object for class sap.m.CheckBox.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getName name}.

The 'name' property to be used in the HTML code, for example for HTML forms that send data to the server via submit.
	* @return	Value of property <code>name</code>
	*/
	public function getName( ):String;

	/**
	* Gets current value of property {@link #getPartiallySelected partiallySelected}.

Determines whether the <code>CheckBox</code> is displayed as partially selected.

<b>Note:</b> This property leads only to visual change of the checkbox and the state cannot be achieved by user interaction. The visual state depends on the value of the <code>selected</code> property: <ul> <li>If <code>selected</code> = <code>true</code> and <code>partiallySelected</code> = <code>true</code>, the control is displayed as partially selected</li> <li>If <code>selected</code> = <code>true</code> and <code>partiallySelected</code> = <code>false</code>, the control is displayed as selected</li> <li>If <code>selected</code> = <code>false</code>, the control is displayed as not selected regardless of what is set for <code>partiallySelected</code></li> </ul>

Default value is <code>false</code>.
	* @return	Value of property <code>partiallySelected</code>
	*/
	public function getPartiallySelected( ):Bool;

	/**
	* Gets current value of property {@link #getSelected selected}.

Determines whether the <code>CheckBox</code> is selected (checked).

When this property is set to <code>true</code>, the control is displayed as selected, unless the value of the <code>partiallySelected</code> property is also set to <code>true</code>. In this case, the control is displayed as partially selected.

Default value is <code>false</code>.
	* @return	Value of property <code>selected</code>
	*/
	public function getSelected( ):Bool;

	/**
	* Gets current value of property {@link #getText text}.

Defines the text displayed next to the checkbox
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Gets current value of property {@link #getTextAlign textAlign}.

Aligns the text of the checkbox. Available alignment settings are "Begin", "Center", "End", "Left", and "Right".

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

Indicates if the given width will be applied to the control as a whole or to its label only.

<b>Note:</b> by default the width is set to the label

Default value is <code>false</code>.
	* @return	Value of property <code>useEntireWidth</code>
	*/
	public function getUseEntireWidth( ):Bool;

	/**
	* Gets current value of property {@link #getValueState valueState}.

Accepts the core enumeration ValueState.type that supports 'None', 'Error', 'Warning', 'Success' and 'Information'.

Default value is <code>None</code>.
	* @return	Value of property <code>valueState</code>
	*/
	public function getValueState( ):sap.ui.core.ValueState;

	/**
	* Gets current value of property {@link #getWidth width}.

Determines the total width of the control or the width of its label only, depending on the value of <code>useEntireWidth</code>.

<b>Note:</b> When <code>useEntireWidth</code> is set to <code>true</code>, <code>width</code> is applied to the control as a whole (checkbox and label). Otherwise, <code>width</code> is applied to the label only.

Default value is <code>empty string</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getWrapping wrapping}.

Determines whether the label's text is wrapped.

When set to <code>false</code> (default), the label's text is truncated with ellipsis at the end.

Default value is <code>false</code>.
	* @return	Value of property <code>wrapping</code>
	*/
	public function getWrapping( ):Bool;

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

Flag to switch on activeHandling, when it is switched off, there will be no visual changes on active state. Default value is 'true'

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bActiveHandling New value for property <code>activeHandling</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setActiveHandling( ?bActiveHandling:Bool):sap.m.CheckBox;

	/**
	* Sets a new value for property {@link #getDisplayOnly displayOnly}.

Determines whether the <code>CheckBox</code> is in display only state.

When set to <code>true</code>, the <code>CheckBox</code> is not interactive, not editable, not focusable and not in the tab chain. This setting is used for forms in review mode.

<Note:> When the property <code>enabled</code> is set to <code>false</code> this property has no effect.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bDisplayOnly New value for property <code>displayOnly</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDisplayOnly( ?bDisplayOnly:Bool):sap.m.CheckBox;

	/**
	* Sets a new value for property {@link #getEditable editable}.

Specifies whether the user shall be allowed to edit the state of the checkbox

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEditable New value for property <code>editable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEditable( ?bEditable:Bool):sap.m.CheckBox;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Disables the Checkbox. Disabled controls are not interactive and are rendered differently according to the theme.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( ?bEnabled:Bool):sap.m.CheckBox;

	/**
	* Sets a new value for property {@link #getName name}.

The 'name' property to be used in the HTML code, for example for HTML forms that send data to the server via submit.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sName New value for property <code>name</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setName( ?sName:String):sap.m.CheckBox;

	/**
	* Sets a new value for property {@link #getPartiallySelected partiallySelected}.

Determines whether the <code>CheckBox</code> is displayed as partially selected.

<b>Note:</b> This property leads only to visual change of the checkbox and the state cannot be achieved by user interaction. The visual state depends on the value of the <code>selected</code> property: <ul> <li>If <code>selected</code> = <code>true</code> and <code>partiallySelected</code> = <code>true</code>, the control is displayed as partially selected</li> <li>If <code>selected</code> = <code>true</code> and <code>partiallySelected</code> = <code>false</code>, the control is displayed as selected</li> <li>If <code>selected</code> = <code>false</code>, the control is displayed as not selected regardless of what is set for <code>partiallySelected</code></li> </ul>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bPartiallySelected New value for property <code>partiallySelected</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPartiallySelected( ?bPartiallySelected:Bool):sap.m.CheckBox;

	/**
	* Sets a new value for property {@link #getSelected selected}.

Determines whether the <code>CheckBox</code> is selected (checked).

When this property is set to <code>true</code>, the control is displayed as selected, unless the value of the <code>partiallySelected</code> property is also set to <code>true</code>. In this case, the control is displayed as partially selected.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bSelected New value for property <code>selected</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSelected( ?bSelected:Bool):sap.m.CheckBox;

	/**
	* Sets a new value for property {@link #getText text}.

Defines the text displayed next to the checkbox

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( ?sText:String):sap.m.CheckBox;

	/**
	* Sets a new value for property {@link #getTextAlign textAlign}.

Aligns the text of the checkbox. Available alignment settings are "Begin", "Center", "End", "Left", and "Right".

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Begin</code>.
	* @param	sTextAlign New value for property <code>textAlign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextAlign( ?sTextAlign:sap.ui.core.TextAlign):sap.m.CheckBox;

	/**
	* Sets a new value for property {@link #getTextDirection textDirection}.

Options for the text direction are RTL and LTR. Alternatively, the control can inherit the text direction from its parent container.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sTextDirection New value for property <code>textDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextDirection( ?sTextDirection:sap.ui.core.TextDirection):sap.m.CheckBox;

	/**
	* Sets a new value for property {@link #getUseEntireWidth useEntireWidth}.

Indicates if the given width will be applied to the control as a whole or to its label only.

<b>Note:</b> by default the width is set to the label

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bUseEntireWidth New value for property <code>useEntireWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUseEntireWidth( ?bUseEntireWidth:Bool):sap.m.CheckBox;

	/**
	* Sets a new value for property {@link #getValueState valueState}.

Accepts the core enumeration ValueState.type that supports 'None', 'Error', 'Warning', 'Success' and 'Information'.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sValueState New value for property <code>valueState</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValueState( ?sValueState:sap.ui.core.ValueState):sap.m.CheckBox;

	/**
	* Sets a new value for property {@link #getWidth width}.

Determines the total width of the control or the width of its label only, depending on the value of <code>useEntireWidth</code>.

<b>Note:</b> When <code>useEntireWidth</code> is set to <code>true</code>, <code>width</code> is applied to the control as a whole (checkbox and label). Otherwise, <code>width</code> is applied to the label only.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.m.CheckBox;

	/**
	* Sets a new value for property {@link #getWrapping wrapping}.

Determines whether the label's text is wrapped.

When set to <code>false</code> (default), the label's text is truncated with ellipsis at the end.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bWrapping New value for property <code>wrapping</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWrapping( ?bWrapping:Bool):sap.m.CheckBox;
}

typedef CheckBoxArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines whether the <code>CheckBox</code> is selected (checked).

When this property is set to <code>true</code>, the control is displayed as selected, unless the value of the <code>partiallySelected</code> property is also set to <code>true</code>. In this case, the control is displayed as partially selected.
	*/
	@:optional var selected:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the <code>CheckBox</code> is displayed as partially selected.

<b>Note:</b> This property leads only to visual change of the checkbox and the state cannot be achieved by user interaction. The visual state depends on the value of the <code>selected</code> property: <ul> <li>If <code>selected</code> = <code>true</code> and <code>partiallySelected</code> = <code>true</code>, the control is displayed as partially selected</li> <li>If <code>selected</code> = <code>true</code> and <code>partiallySelected</code> = <code>false</code>, the control is displayed as selected</li> <li>If <code>selected</code> = <code>false</code>, the control is displayed as not selected regardless of what is set for <code>partiallySelected</code></li> </ul>
	*/
	@:optional var partiallySelected:haxe.extern.EitherType<String,Bool>;

	/**
	* Disables the Checkbox. Disabled controls are not interactive and are rendered differently according to the theme.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* The 'name' property to be used in the HTML code, for example for HTML forms that send data to the server via submit.
	*/
	@:optional var name:String;

	/**
	* Defines the text displayed next to the checkbox
	*/
	@:optional var text:String;

	/**
	* Options for the text direction are RTL and LTR. Alternatively, the control can inherit the text direction from its parent container.
	*/
	@:optional var textDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

	/**
	* Aligns the text of the checkbox. Available alignment settings are "Begin", "Center", "End", "Left", and "Right".
	*/
	@:optional var textAlign:haxe.extern.EitherType<String,sap.ui.core.TextAlign>;

	/**
	* Determines the total width of the control or the width of its label only, depending on the value of <code>useEntireWidth</code>.

<b>Note:</b> When <code>useEntireWidth</code> is set to <code>true</code>, <code>width</code> is applied to the control as a whole (checkbox and label). Otherwise, <code>width</code> is applied to the label only.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Indicates if the given width will be applied to the control as a whole or to its label only.

<b>Note:</b> by default the width is set to the label
	*/
	@:optional var useEntireWidth:haxe.extern.EitherType<String,Bool>;

	/**
	* Flag to switch on activeHandling, when it is switched off, there will be no visual changes on active state. Default value is 'true'
	*/
	@:optional var activeHandling:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies whether the user shall be allowed to edit the state of the checkbox
	*/
	@:optional var editable:haxe.extern.EitherType<String,Bool>;

	/**
	* Accepts the core enumeration ValueState.type that supports 'None', 'Error', 'Warning', 'Success' and 'Information'.
	*/
	@:optional var valueState:haxe.extern.EitherType<String,sap.ui.core.ValueState>;

	/**
	* Defines the text that appears in the tooltip of the <code>CheckBox</code>. If this is not specified, a default text is shown from the resource bundle.
	*/
	@:optional var valueStateText:String;

	/**
	* Determines whether the <code>CheckBox</code> is in display only state.

When set to <code>true</code>, the <code>CheckBox</code> is not interactive, not editable, not focusable and not in the tab chain. This setting is used for forms in review mode.

<Note:> When the property <code>enabled</code> is set to <code>false</code> this property has no effect.
	*/
	@:optional var displayOnly:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the label's text is wrapped.

When set to <code>false</code> (default), the label's text is truncated with ellipsis at the end.
	*/
	@:optional var wrapping:haxe.extern.EitherType<String,Bool>;

    /**
    * The label that represents the text of the checkbox control
    */
	@:optional var _label:haxe.extern.EitherType<String,sap.m.Label>;

	/**
	* Association to controls / IDs which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / IDs which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Event is triggered when the control status is changed by the user by selecting or deselecting the checkbox.
	*/
	@:optional var select:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
