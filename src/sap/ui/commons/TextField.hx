package sap.ui.commons;

@:native("sap.ui.commons.TextField")

/**
* Renders an input field for text input.
*/
extern class TextField extends sap.ui.core.Control implements sap.ui.commons.ToolbarItem implements sap.ui.core.IFormContent
{

	/**
	* 
	* @param	sID id for the new control, generated automatically if no ID is given
	* @param	mSettings Initial settings for the new control
	* @return	Object
	*/
	public function new( ?sID:String, ?mSettings:Dynamic):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.ui.commons.TextField{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.ui.commons.TextField;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.commons.TextField{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.commons.TextField;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:change change} event of this <code>sap.ui.commons.TextField</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.TextField</code> itself.

Event is fired when the text in the field has changed AND the focus leaves the TextField or the Enter key is pressed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.TextField</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.TextField;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:liveChange liveChange} event of this <code>sap.ui.commons.TextField</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.TextField</code> itself.

This event if fired during typing into the <code>TextField</code> and returns the currently entered value. <b>Note:</b> This is not the content of the value property. The value property is only updated by ENTER and by leaving the control.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.TextField</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachLiveChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.TextField;

	/**
	* Binds property {@link #getValue value} to model data.

See {@link sap.ui.base.ManagedObject#bindProperty ManagedObject.bindProperty} for a detailed description of the possible properties of <code>oBindingInfo</code>
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindValue( oBindingInfo:Dynamic):sap.ui.commons.TextField;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:change change} event of this <code>sap.ui.commons.TextField</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachChange( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.TextField;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:liveChange liveChange} event of this <code>sap.ui.commons.TextField</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachLiveChange( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.TextField;

	/**
	* Creates a new subclass of class sap.ui.commons.TextField with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAccessibleRole accessibleRole}.

Accessibility role for the text field.

Default value is <code>Textbox</code>.
	* @return	Value of property <code>accessibleRole</code>
	*/
	public function getAccessibleRole( ):sap.ui.core.AccessibleRole;

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
	* Gets current value of property {@link #getDesign design}.

Font type. valid values are Standard and Monospace.

Default value is <code>Standard</code>.
	* @return	Value of property <code>design</code>
	*/
	public function getDesign( ):sap.ui.core.Design;

	/**
	* Gets current value of property {@link #getEditable editable}.

Switches edit state of the control. Read-only fields have different colors, depending on theme setting.

Default value is <code>true</code>.
	* @return	Value of property <code>editable</code>
	*/
	public function getEditable( ):Bool;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Switches enabled state of the control. Disabled fields have different colors, and can not be focused.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets current value of property {@link #getHelpId helpId}.

Unique identifier used for help service.

Default value is <code>empty string</code>.
	* @return	Value of property <code>helpId</code>
	*/
	public function getHelpId( ):String;

	/**
	* Gets current value of property {@link #getImeMode imeMode}.

State of the Input Method Editor (IME).

Default value is <code>Auto</code>.
	* @return	Value of property <code>imeMode</code>
	*/
	public function getImeMode( ):sap.ui.core.ImeMode;

	/**
	* Returns the current value of the <code>TextField</code>. In case of editing the <code>TextField</code> you can access the current value via this method. The validated value is accessible via the property value.
	* @return	live value
	*/
	public function getLiveValue( ):String;

	/**
	* Gets current value of property {@link #getMaxLength maxLength}.

Maximum number of characters. Value '0' means the feature is switched off.

Default value is <code>0</code>.
	* @return	Value of property <code>maxLength</code>
	*/
	public function getMaxLength( ):Int;

	/**
	* Returns a metadata object for class sap.ui.commons.TextField.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getName name}.

The <code>name</code> property to be used in the HTML code (e.g. for HTML forms that send data to the server via 'submit').
	* @return	Value of property <code>name</code>
	*/
	public function getName( ):String;

	/**
	* Gets current value of property {@link #getPlaceholder placeholder}.

Placeholder for the text field.
	* @return	Value of property <code>placeholder</code>
	*/
	public function getPlaceholder( ):String;

	/**
	* Gets current value of property {@link #getRequired required}.

Depending on theme the <code>TextField</code> is shown as required. If a <code>Label</code> is assigned to the <code>TextField</code> it will visualize the requires state too.

Default value is <code>false</code>.
	* @return	Value of property <code>required</code>
	*/
	public function getRequired( ):Bool;

	/**
	* Gets current value of property {@link #getTextAlign textAlign}.

Sets the horizontal alignment of the text.

Default value is <code>Begin</code>.
	* @return	Value of property <code>textAlign</code>
	*/
	public function getTextAlign( ):sap.ui.core.TextAlign;

	/**
	* Gets current value of property {@link #getTextDirection textDirection}.

Direction of the text. Possible values: "rtl", "ltr".

Default value is <code>Inherit</code>.
	* @return	Value of property <code>textDirection</code>
	*/
	public function getTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Gets current value of property {@link #getValue value}.

Text inside the <code>TextField</code>

Default value is <code>empty string</code>.
	* @return	Value of property <code>value</code>
	*/
	public function getValue( ):String;

	/**
	* Gets current value of property {@link #getValueState valueState}.

Visualizes warnings or errors related to the text field. Possible values: Warning, Error, Success.

Default value is <code>None</code>.
	* @return	Value of property <code>valueState</code>
	*/
	public function getValueState( ):sap.ui.core.ValueState;

	/**
	* Gets current value of property {@link #getWidth width}.

Width of text field. When it is set (CSS-size such as % or px), this is the exact size. When left blank, the text field length defines the width.
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
	* Sets a new value for property {@link #getAccessibleRole accessibleRole}.

Accessibility role for the text field.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Textbox</code>.
	* @param	sAccessibleRole New value for property <code>accessibleRole</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAccessibleRole( ?sAccessibleRole:sap.ui.core.AccessibleRole):sap.ui.commons.TextField;

	/**
	* Sets a new value for property {@link #getDesign design}.

Font type. valid values are Standard and Monospace.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Standard</code>.
	* @param	sDesign New value for property <code>design</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDesign( ?sDesign:sap.ui.core.Design):sap.ui.commons.TextField;

	/**
	* Sets a new value for property {@link #getEditable editable}.

Switches edit state of the control. Read-only fields have different colors, depending on theme setting.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEditable New value for property <code>editable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEditable( ?bEditable:Bool):sap.ui.commons.TextField;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Switches enabled state of the control. Disabled fields have different colors, and can not be focused.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( ?bEnabled:Bool):sap.ui.commons.TextField;

	/**
	* Sets a new value for property {@link #getHelpId helpId}.

Unique identifier used for help service.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sHelpId New value for property <code>helpId</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHelpId( ?sHelpId:String):sap.ui.commons.TextField;

	/**
	* Sets a new value for property {@link #getImeMode imeMode}.

State of the Input Method Editor (IME).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Auto</code>.
	* @param	sImeMode New value for property <code>imeMode</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setImeMode( ?sImeMode:sap.ui.core.ImeMode):sap.ui.commons.TextField;

	/**
	* Sets a new value for property {@link #getMaxLength maxLength}.

Maximum number of characters. Value '0' means the feature is switched off.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iMaxLength New value for property <code>maxLength</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxLength( ?iMaxLength:Int):sap.ui.commons.TextField;

	/**
	* Sets a new value for property {@link #getName name}.

The <code>name</code> property to be used in the HTML code (e.g. for HTML forms that send data to the server via 'submit').

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sName New value for property <code>name</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setName( sName:String):sap.ui.commons.TextField;

	/**
	* Sets a new value for property {@link #getPlaceholder placeholder}.

Placeholder for the text field.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sPlaceholder New value for property <code>placeholder</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPlaceholder( sPlaceholder:String):sap.ui.commons.TextField;

	/**
	* Sets a new value for property {@link #getRequired required}.

Depending on theme the <code>TextField</code> is shown as required. If a <code>Label</code> is assigned to the <code>TextField</code> it will visualize the requires state too.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bRequired New value for property <code>required</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRequired( ?bRequired:Bool):sap.ui.commons.TextField;

	/**
	* Sets a new value for property {@link #getTextAlign textAlign}.

Sets the horizontal alignment of the text.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Begin</code>.
	* @param	sTextAlign New value for property <code>textAlign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextAlign( ?sTextAlign:sap.ui.core.TextAlign):sap.ui.commons.TextField;

	/**
	* Sets a new value for property {@link #getTextDirection textDirection}.

Direction of the text. Possible values: "rtl", "ltr".

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sTextDirection New value for property <code>textDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextDirection( ?sTextDirection:sap.ui.core.TextDirection):sap.ui.commons.TextField;

	/**
	* Sets a new value for property {@link #getValue value}.

Text inside the <code>TextField</code>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sValue New value for property <code>value</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValue( ?sValue:String):sap.ui.commons.TextField;

	/**
	* Sets a new value for property {@link #getValueState valueState}.

Visualizes warnings or errors related to the text field. Possible values: Warning, Error, Success.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sValueState New value for property <code>valueState</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValueState( ?sValueState:sap.ui.core.ValueState):sap.ui.commons.TextField;

	/**
	* Sets a new value for property {@link #getWidth width}.

Width of text field. When it is set (CSS-size such as % or px), this is the exact size. When left blank, the text field length defines the width.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.commons.TextField;

	/**
	* Unbinds property {@link #getValue value} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindValue( ):sap.ui.commons.TextField;
}

