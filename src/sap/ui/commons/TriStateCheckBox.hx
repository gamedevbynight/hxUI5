package sap.ui.commons;

@:native("sap.ui.commons.TriStateCheckBox")

/**
* TriStateCheckBox to reflect mixed state for checkboxes. The control can display three states, namely checked, unchecked and mixed. However, mixed state cannot be directly reached by user interaction on the particular control. It can be only set by the control's public toggle function, to make a behaviour possible which is e.g. required in checkbox trees.
*/
extern class TriStateCheckBox extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:TriStateCheckBoxArgs):Void {})
	public function new(?mSettings:TriStateCheckBoxArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:change change} event of this <code>sap.ui.commons.TriStateCheckBox</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.TriStateCheckBox</code> itself.

Event is triggered when the control status is changed by the user by flagging or unflagging the checkbox.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.TriStateCheckBox</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachChange( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.commons.TriStateCheckBox;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:change change} event of this <code>sap.ui.commons.TriStateCheckBox</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachChange( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.commons.TriStateCheckBox;

	/**
	* Creates a new subclass of class sap.ui.commons.TriStateCheckBox with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getEditable editable}.

Specifies whether the user shall be allowed to flag the check box

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
	* Returns a metadata object for class sap.ui.commons.TriStateCheckBox.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getSelectionState selectionState}.

Defines the states of the checkbox

Default value is <code>Unchecked</code>.
	* @return	Value of property <code>selectionState</code>
	*/
	public function getSelectionState( ):sap.ui.commons.TriStateCheckBoxState;

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
	* Sets a new value for property {@link #getEditable editable}.

Specifies whether the user shall be allowed to flag the check box

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEditable New value for property <code>editable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEditable( ?bEditable:Bool):sap.ui.commons.TriStateCheckBox;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Using this property, the control could be disabled, if required.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( ?bEnabled:Bool):sap.ui.commons.TriStateCheckBox;

	/**
	* Sets a new value for property {@link #getSelectionState selectionState}.

Defines the states of the checkbox

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Unchecked</code>.
	* @param	sSelectionState New value for property <code>selectionState</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSelectionState( ?sSelectionState:sap.ui.commons.TriStateCheckBoxState):sap.ui.commons.TriStateCheckBox;

	/**
	* Sets a new value for property {@link #getText text}.

Defines the text displayed next to the check box

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( ?sText:String):sap.ui.commons.TriStateCheckBox;

	/**
	* Sets a new value for property {@link #getTextDirection textDirection}.

The value can be set to LTR or RTL. Otherwise, the control inherits the text direction from its parent control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sTextDirection New value for property <code>textDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextDirection( ?sTextDirection:sap.ui.core.TextDirection):sap.ui.commons.TriStateCheckBox;

	/**
	* Sets a new value for property {@link #getValueState valueState}.

Accepts the core enumeration ValueState.type that supports 'None', 'Error', 'Warning' and 'Success'.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sValueState New value for property <code>valueState</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValueState( ?sValueState:sap.ui.core.ValueState):sap.ui.commons.TriStateCheckBox;

	/**
	* Sets a new value for property {@link #getWidth width}.

The width can be set to an absolute value. If no value is set, the control width results from the text length.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.ui.commons.TriStateCheckBox;

	/**
	* Method called whenever a user clicks on a tri-state checkbox
	* @param	destState destined selection state of checkbox
	* @return	Void
	*/
	public function toggle( destState:sap.ui.commons.TriStateCheckBoxState):Void;
}

typedef TriStateCheckBoxArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the states of the checkbox
	*/
	@:optional var selectionState:haxe.extern.EitherType<String,sap.ui.commons.TriStateCheckBoxState>;

	/**
	* Defines the text displayed next to the check box
	*/
	@:optional var text:String;

	/**
	* Using this property, the control could be disabled, if required.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies whether the user shall be allowed to flag the check box
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
	* Event is triggered when the control status is changed by the user by flagging or unflagging the checkbox.
	*/
	@:optional var change:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
