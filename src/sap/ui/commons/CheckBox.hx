package sap.ui.commons;

@:native("sap.ui.commons.CheckBox")

/**
* Provides a box which can be flagged, the box has a label. A check box can either stand alone, or in a group with other check boxes. As an option, the boxes can initially be set to status 'Not Editable'.
*/
extern class CheckBox extends sap.ui.core.Control implements sap.ui.core.IFormContent
{
	@:overload(function(?sId:String, ?mSettings:CheckBoxArgs):Void {})
	public function new(?mSettings:CheckBoxArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.ui.commons.CheckBox{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.ui.commons.CheckBox;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.commons.CheckBox{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.commons.CheckBox;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:change change} event of this <code>sap.ui.commons.CheckBox</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.CheckBox</code> itself.

Event is triggered when the control status is changed by the user by flagging or unflagging the checkbox.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.CheckBox</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachChange( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.commons.CheckBox;

	/**
	* Binds property {@link #getChecked checked} to model data.

See {@link sap.ui.base.ManagedObject#bindProperty ManagedObject.bindProperty} for a detailed description of the possible properties of <code>oBindingInfo</code>
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindChecked( oBindingInfo:Dynamic):sap.ui.commons.CheckBox;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:change change} event of this <code>sap.ui.commons.CheckBox</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachChange( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.commons.CheckBox;

	/**
	* Creates a new subclass of class sap.ui.commons.CheckBox with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

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
	* Gets current value of property {@link #getChecked checked}.

Contains the state of the control whether it is flagged with a check mark, or not

Default value is <code>false</code>.
	* @return	Value of property <code>checked</code>
	*/
	public function getChecked( ):Bool;

	/**
	* Gets current value of property {@link #getEditable editable}.

Specifies whether the user shall be allowed to select the check box.

Default value is <code>true</code>.
	* @return	Value of property <code>editable</code>
	*/
	public function getEditable( ):Bool;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Using this property, the control could be disabled, if required.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Returns a metadata object for class sap.ui.commons.CheckBox.
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
	* Gets current value of property {@link #getText text}.

Defines the text displayed next to the check box
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Gets current value of property {@link #getTextDirection textDirection}.

The value can be set to LTR or RTL. Otherwise, the control inherits the text direction from its parent control.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>textDirection</code>
	*/
	public function getTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Gets current value of property {@link #getValueState valueState}.

Accepts the core enumeration ValueState.type that supports 'None', 'Error', 'Warning' and 'Success'.

Default value is <code>None</code>.
	* @return	Value of property <code>valueState</code>
	*/
	public function getValueState( ):sap.ui.core.ValueState;

	/**
	* Gets current value of property {@link #getWidth width}.

The width can be set to an absolute value. If no value is set, the control width results from the text length.
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
	* Sets a new value for property {@link #getChecked checked}.

Contains the state of the control whether it is flagged with a check mark, or not

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bChecked New value for property <code>checked</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setChecked( ?bChecked:Bool):sap.ui.commons.CheckBox;

	/**
	* Sets a new value for property {@link #getEditable editable}.

Specifies whether the user shall be allowed to select the check box.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEditable New value for property <code>editable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEditable( ?bEditable:Bool):sap.ui.commons.CheckBox;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Using this property, the control could be disabled, if required.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( ?bEnabled:Bool):sap.ui.commons.CheckBox;

	/**
	* Sets a new value for property {@link #getName name}.

The 'name' property to be used in the HTML code, for example for HTML forms that send data to the server via submit.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sName New value for property <code>name</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setName( ?sName:String):sap.ui.commons.CheckBox;

	/**
	* Sets a new value for property {@link #getText text}.

Defines the text displayed next to the check box

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( ?sText:String):sap.ui.commons.CheckBox;

	/**
	* Sets a new value for property {@link #getTextDirection textDirection}.

The value can be set to LTR or RTL. Otherwise, the control inherits the text direction from its parent control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sTextDirection New value for property <code>textDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextDirection( ?sTextDirection:sap.ui.core.TextDirection):sap.ui.commons.CheckBox;

	/**
	* Sets a new value for property {@link #getValueState valueState}.

Accepts the core enumeration ValueState.type that supports 'None', 'Error', 'Warning' and 'Success'.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sValueState New value for property <code>valueState</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValueState( ?sValueState:sap.ui.core.ValueState):sap.ui.commons.CheckBox;

	/**
	* Sets a new value for property {@link #getWidth width}.

The width can be set to an absolute value. If no value is set, the control width results from the text length.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.ui.commons.CheckBox;

	/**
	* Inverts the current value of the control.
	* @return	null
	*/
	public function toggle( ):sap.ui.commons.CheckBox;

	/**
	* Unbinds property {@link #getChecked checked} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindChecked( ):sap.ui.commons.CheckBox;
}

typedef CheckBoxArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Contains the state of the control whether it is flagged with a check mark, or not
	*/
	@:optional var checked:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the text displayed next to the check box
	*/
	@:optional var text:String;

	/**
	* Using this property, the control could be disabled, if required.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies whether the user shall be allowed to select the check box.
	*/
	@:optional var editable:haxe.extern.EitherType<String,Bool>;

	/**
	* Accepts the core enumeration ValueState.type that supports 'None', 'Error', 'Warning' and 'Success'.
	*/
	@:optional var valueState:haxe.extern.EitherType<String,sap.ui.core.ValueState>;

	/**
	* The width can be set to an absolute value. If no value is set, the control width results from the text length.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* The value can be set to LTR or RTL. Otherwise, the control inherits the text direction from its parent control.
	*/
	@:optional var textDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

	/**
	* The 'name' property to be used in the HTML code, for example for HTML forms that send data to the server via submit.
	*/
	@:optional var name:String;

	/**
	* Association to controls / ids which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / ids which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Event is triggered when the control status is changed by the user by flagging or unflagging the checkbox.
	*/
	@:optional var change:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
