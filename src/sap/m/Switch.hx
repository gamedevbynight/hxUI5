package sap.m;

@:native("sap.m.Switch")

/**
* A switch is a user interface control on mobile devices that is used for change between binary states. The user can also drag the button handle or tap to change the state.
*/
extern class Switch extends sap.ui.core.Control implements sap.ui.core.IFormContent implements sap.m.IOverflowToolbarContent
{
	@:overload(function(?sId:String, ?mSettings:SwitchArgs):Void {})
	public function new(?mSettings:SwitchArgs):Void;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.Switch{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.Switch;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:change change} event of this <code>sap.m.Switch</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Switch</code> itself.

Triggered when a switch changes the state.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Switch</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachChange( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.Switch;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:change change} event of this <code>sap.m.Switch</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachChange( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.Switch;

	/**
	* Creates a new subclass of class sap.m.Switch with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

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
	* Gets current value of property {@link #getCustomTextOff customTextOff}.

Custom text for the "OFF" state.

"OFF" translated to the current language is the default value. Beware that the given text will be cut off if available space is exceeded.

Default value is <code>empty string</code>.
	* @return	Value of property <code>customTextOff</code>
	*/
	public function getCustomTextOff( ):String;

	/**
	* Gets current value of property {@link #getCustomTextOn customTextOn}.

Custom text for the "ON" state.

"ON" translated to the current language is the default value. Beware that the given text will be cut off if available space is exceeded.

Default value is <code>empty string</code>.
	* @return	Value of property <code>customTextOn</code>
	*/
	public function getCustomTextOn( ):String;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Whether the switch is enabled.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Returns a metadata object for class sap.m.Switch.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getName name}.

The name to be used in the HTML code for the switch (e.g. for HTML forms that send data to the server via submit).

Default value is <code>empty string</code>.
	* @return	Value of property <code>name</code>
	*/
	public function getName( ):String;

	/**
	* Gets current value of property {@link #getState state}.

A boolean value indicating whether the switch is on or off.

Default value is <code>false</code>.
	* @return	Value of property <code>state</code>
	*/
	public function getState( ):Bool;

	/**
	* Gets current value of property {@link #getType type}.

Type of a Switch. Possibles values "Default", "AcceptReject".

Default value is <code>Default</code>.
	* @return	Value of property <code>type</code>
	*/
	public function getType( ):sap.m.SwitchType;

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
	* Sets a new value for property {@link #getCustomTextOff customTextOff}.

Custom text for the "OFF" state.

"OFF" translated to the current language is the default value. Beware that the given text will be cut off if available space is exceeded.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sCustomTextOff New value for property <code>customTextOff</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCustomTextOff( ?sCustomTextOff:String):sap.m.Switch;

	/**
	* Sets a new value for property {@link #getCustomTextOn customTextOn}.

Custom text for the "ON" state.

"ON" translated to the current language is the default value. Beware that the given text will be cut off if available space is exceeded.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sCustomTextOn New value for property <code>customTextOn</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCustomTextOn( ?sCustomTextOn:String):sap.m.Switch;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Whether the switch is enabled.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( ?bEnabled:Bool):sap.m.Switch;

	/**
	* Sets a new value for property {@link #getName name}.

The name to be used in the HTML code for the switch (e.g. for HTML forms that send data to the server via submit).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sName New value for property <code>name</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setName( ?sName:String):sap.m.Switch;

	/**
	* Sets a new value for property {@link #getState state}.

A boolean value indicating whether the switch is on or off.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bState New value for property <code>state</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setState( ?bState:Bool):sap.m.Switch;

	/**
	* Sets a new value for property {@link #getType type}.

Type of a Switch. Possibles values "Default", "AcceptReject".

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Default</code>.
	* @param	sType New value for property <code>type</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setType( ?sType:sap.m.SwitchType):sap.m.Switch;
}

typedef SwitchArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* A boolean value indicating whether the switch is on or off.
	*/
	@:optional var state:haxe.extern.EitherType<String,Bool>;

	/**
	* Custom text for the "ON" state.

"ON" translated to the current language is the default value. Beware that the given text will be cut off if available space is exceeded.
	*/
	@:optional var customTextOn:String;

	/**
	* Custom text for the "OFF" state.

"OFF" translated to the current language is the default value. Beware that the given text will be cut off if available space is exceeded.
	*/
	@:optional var customTextOff:String;

	/**
	* Whether the switch is enabled.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* The name to be used in the HTML code for the switch (e.g. for HTML forms that send data to the server via submit).
	*/
	@:optional var name:String;

	/**
	* Type of a Switch. Possibles values "Default", "AcceptReject".
	*/
	@:optional var type:haxe.extern.EitherType<String,sap.m.SwitchType>;

	/**
	* Association to controls / ids which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Triggered when a switch changes the state.
	*/
	@:optional var change:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
