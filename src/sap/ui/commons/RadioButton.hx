package sap.ui.commons;

@:native("sap.ui.commons.RadioButton")

/**
* RadioButton is a control similar to CheckBox, but it allows the user to choose only one of the predefined set of options.

Usually, RadioButton is used in a group with other RadioButtons (with the groupName property or by using sap.ui.commons.RadioButtonGroup), thus providing a limited choice for the user. An event is triggered when the user makes a change of the selection.
*/
extern class RadioButton extends sap.ui.core.Control implements sap.ui.core.IFormContent
{
	@:overload(function(?sId:String, ?mSettings:RadioButtonArgs):Void {})
	public function new(?mSettings:RadioButtonArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.ui.commons.RadioButton{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.ui.commons.RadioButton;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.commons.RadioButton{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.commons.RadioButton;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:select select} event of this <code>sap.ui.commons.RadioButton</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.RadioButton</code> itself.

Triggers when the user makes a change on the RadioButton.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.RadioButton</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelect( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.commons.RadioButton;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:select select} event of this <code>sap.ui.commons.RadioButton</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelect( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.commons.RadioButton;

	/**
	* Creates a new subclass of class sap.ui.commons.RadioButton with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

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

Specifies whether the user can select the RadioButton.

Default value is <code>true</code>.
	* @return	Value of property <code>editable</code>
	*/
	public function getEditable( ):Bool;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Displays the disabled controls in another color, depending on the customer settings.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets current value of property {@link #getGroupName groupName}.

Defines the name of the RadioButtonGroup, in which the current RadioButton belongs to. You can define a new name for the group. If no new name is specified, the default is sapUiRbDefaultGroup. By default, when one of the RadioButtons in a group is selected, all others are unselected.

Default value is <code>'sapUiRbDefaultGroup'</code>.
	* @return	Value of property <code>groupName</code>
	*/
	public function getGroupName( ):String;

	/**
	* Gets current value of property {@link #getKey key}.

Can be used for subsequent actions.
	* @return	Value of property <code>key</code>
	*/
	public function getKey( ):String;

	/**
	* Returns a metadata object for class sap.ui.commons.RadioButton.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getSelected selected}.

Specifies the select state of the RadioButton.

Default value is <code>false</code>.
	* @return	Value of property <code>selected</code>
	*/
	public function getSelected( ):Bool;

	/**
	* Gets current value of property {@link #getText text}.

Defines the text displayed next to the RadioButton.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Gets current value of property {@link #getTextDirection textDirection}.

Defines the text direction - options are left-to-right (LTR) and right-to-left (RTL). Alternatively, the control can inherit the text direction from its parent container.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>textDirection</code>
	*/
	public function getTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Gets current value of property {@link #getValueState valueState}.

Enumeration sap.ui.core.ValueState provides state values Error, Success, Warning and None.

Default value is <code>None</code>.
	* @return	Value of property <code>valueState</code>
	*/
	public function getValueState( ):sap.ui.core.ValueState;

	/**
	* Gets current value of property {@link #getWidth width}.

Determines the control width. By default, it depends on the text length. Alternatively, CSS sizes in % or px can be set.
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
	* Sets a new value for property {@link #getEditable editable}.

Specifies whether the user can select the RadioButton.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEditable New value for property <code>editable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEditable( ?bEditable:Bool):sap.ui.commons.RadioButton;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Displays the disabled controls in another color, depending on the customer settings.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( ?bEnabled:Bool):sap.ui.commons.RadioButton;

	/**
	* Sets a new value for property {@link #getGroupName groupName}.

Defines the name of the RadioButtonGroup, in which the current RadioButton belongs to. You can define a new name for the group. If no new name is specified, the default is sapUiRbDefaultGroup. By default, when one of the RadioButtons in a group is selected, all others are unselected.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>'sapUiRbDefaultGroup'</code>.
	* @param	sGroupName New value for property <code>groupName</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGroupName( ?sGroupName:String):sap.ui.commons.RadioButton;

	/**
	* Sets a new value for property {@link #getKey key}.

Can be used for subsequent actions.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sKey New value for property <code>key</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setKey( ?sKey:String):sap.ui.commons.RadioButton;

	/**
	* Sets a new value for property {@link #getSelected selected}.

Specifies the select state of the RadioButton.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bSelected New value for property <code>selected</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSelected( ?bSelected:Bool):sap.ui.commons.RadioButton;

	/**
	* Sets a new value for property {@link #getText text}.

Defines the text displayed next to the RadioButton.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( ?sText:String):sap.ui.commons.RadioButton;

	/**
	* Sets a new value for property {@link #getTextDirection textDirection}.

Defines the text direction - options are left-to-right (LTR) and right-to-left (RTL). Alternatively, the control can inherit the text direction from its parent container.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sTextDirection New value for property <code>textDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextDirection( ?sTextDirection:sap.ui.core.TextDirection):sap.ui.commons.RadioButton;

	/**
	* Sets a new value for property {@link #getValueState valueState}.

Enumeration sap.ui.core.ValueState provides state values Error, Success, Warning and None.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sValueState New value for property <code>valueState</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValueState( ?sValueState:sap.ui.core.ValueState):sap.ui.commons.RadioButton;

	/**
	* Sets a new value for property {@link #getWidth width}.

Determines the control width. By default, it depends on the text length. Alternatively, CSS sizes in % or px can be set.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.ui.commons.RadioButton;
}

typedef RadioButtonArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the text displayed next to the RadioButton.
	*/
	@:optional var text:String;

	/**
	* Displays the disabled controls in another color, depending on the customer settings.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies whether the user can select the RadioButton.
	*/
	@:optional var editable:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies the select state of the RadioButton.
	*/
	@:optional var selected:haxe.extern.EitherType<String,Bool>;

	/**
	* Enumeration sap.ui.core.ValueState provides state values Error, Success, Warning and None.
	*/
	@:optional var valueState:haxe.extern.EitherType<String,sap.ui.core.ValueState>;

	/**
	* Determines the control width. By default, it depends on the text length. Alternatively, CSS sizes in % or px can be set.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Defines the text direction - options are left-to-right (LTR) and right-to-left (RTL). Alternatively, the control can inherit the text direction from its parent container.
	*/
	@:optional var textDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

	/**
	* Defines the name of the RadioButtonGroup, in which the current RadioButton belongs to. You can define a new name for the group. If no new name is specified, the default is sapUiRbDefaultGroup. By default, when one of the RadioButtons in a group is selected, all others are unselected.
	*/
	@:optional var groupName:String;

	/**
	* Can be used for subsequent actions.
	*/
	@:optional var key:String;

	/**
	* Association to controls / IDs, which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / IDs, which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Triggers when the user makes a change on the RadioButton.
	*/
	@:optional var select:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
