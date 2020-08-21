package sap.ui.commons;

@:native("sap.ui.commons.RadioButtonGroup")

/**
* The RadioButtonGroup is a basic control that is used to provide area for making interactive choice out of a set of options. It represents a list with items where exactly one item can be selected in a session. For the representation of the single group entries, the RadioButton items are created automatically. For the RadioButton choice, mouse and keyboard navigation usage is supported.
*/
extern class RadioButtonGroup extends sap.ui.core.Control implements sap.ui.core.IFormContent
{
	@:overload(function(?sId:String, ?mSettings:RadioButtonGroupArgs):Void {})
	public function new(?mSettings:RadioButtonGroupArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.ui.commons.RadioButtonGroup{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.ui.commons.RadioButtonGroup;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.commons.RadioButtonGroup{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.commons.RadioButtonGroup;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.ui.core.Item):sap.ui.commons.RadioButtonGroup;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:select select} event of this <code>sap.ui.commons.RadioButtonGroup</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.RadioButtonGroup</code> itself.

Fires when selection is changed by user interaction.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.RadioButtonGroup</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelect( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.commons.RadioButtonGroup;

	/**
	* Binds aggregation {@link #getItems items} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindItems( oBindingInfo:Dynamic):sap.ui.commons.RadioButtonGroup;

	/**
	* Creates a new instance of RadioButtonGroup, with the same settings as the RadioButtonGroup on which the method is called. Event handlers are not cloned.
	* @return	New instance of RadioButtonGroup
	*/
	public function clone( ):sap.ui.commons.RadioButtonGroup;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.ui.commons.RadioButtonGroup;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:select select} event of this <code>sap.ui.commons.RadioButtonGroup</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelect( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.commons.RadioButtonGroup;

	/**
	* Creates a new subclass of class sap.ui.commons.RadioButtonGroup with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

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
	* Gets current value of property {@link #getColumns columns}.

Determines the maximum number of RadioButtons displayed in one line.

Default value is <code>1</code>.
	* @return	Value of property <code>columns</code>
	*/
	public function getColumns( ):Int;

	/**
	* Gets current value of property {@link #getEditable editable}.

Specifies whether the user can change the selected value of the RadioButtonGroup. When the property is set to false, the control obtains visual styles different from its visual styles for the normal and the disabled state. Additionally the control is no longer interactive, but can receive focus.

Default value is <code>true</code>.
	* @return	Value of property <code>editable</code>
	*/
	public function getEditable( ):Bool;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Enables/disables the RadioButtonGroup. If it is disabled all RadioButtons will be displayed as disabled. The enabled property of the Item will not be used in this case. If the RadioButtonGroup is enabled, the enabled property of the Item will define if a RadioButton is enabled or not.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets content of aggregation {@link #getItems items}.

The RadioButtons of this RadioButtonGroup.
	* @return	null
	*/
	public function getItems( ):Array<sap.ui.core.Item>;

	/**
	* Returns a metadata object for class sap.ui.commons.RadioButtonGroup.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getSelectedIndex selectedIndex}.

The index of the selected/checked RadioButton.

Default value is <code>0</code>.
	* @return	Value of property <code>selectedIndex</code>
	*/
	public function getSelectedIndex( ):Int;

	/**
	* When no item is selected, "null" is returned.
	* @return	Selected Item
	*/
	public function getSelectedItem( ):sap.ui.core.Item;

	/**
	* Gets current value of property {@link #getValueState valueState}.

The value state to be displayed for the RadioButton. Possible values are: sap.ui.core.ValueState.Error, sap.ui.core.ValueState.Warning, sap.ui.core.ValueState.Success and sap.ui.core.ValueState.None. Note: Setting this attribute to sap.ui.core.ValueState.Error when the accessibility feature is enabled, sets the value of the invalid property for the whole RadioButtonGroup to true.

Default value is <code>None</code>.
	* @return	Value of property <code>valueState</code>
	*/
	public function getValueState( ):sap.ui.core.ValueState;

	/**
	* Gets current value of property {@link #getWidth width}.

Defines the width of the RadioButtonGroup.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.ui.core.Item</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.ui.core.Item):Int;

	/**
	* Inserts a item into the aggregation {@link #getItems items}.
	* @param	oItem The item to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertItem( oItem:sap.ui.core.Item, iIndex:Int):sap.ui.commons.RadioButtonGroup;

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
	* Removes all the controls from the aggregation {@link #getItems items}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllItems( ):Array<sap.ui.core.Item>;
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
	@:overload( function(vItem:Int):sap.ui.core.Item{ })
	@:overload( function(vItem:String):sap.ui.core.Item{ })

	/**
	* Removes a item from the aggregation {@link #getItems items}.
	* @param	vItem The item to remove or its index or id
	* @return	The removed item or <code>null</code>
	*/
	public function removeItem( vItem:sap.ui.core.Item):sap.ui.core.Item;

	/**
	* Sets a new value for property {@link #getColumns columns}.

Determines the maximum number of RadioButtons displayed in one line.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	iColumns New value for property <code>columns</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumns( ?iColumns:Int):sap.ui.commons.RadioButtonGroup;

	/**
	* Sets a new value for property {@link #getEditable editable}.

Specifies whether the user can change the selected value of the RadioButtonGroup. When the property is set to false, the control obtains visual styles different from its visual styles for the normal and the disabled state. Additionally the control is no longer interactive, but can receive focus.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEditable New value for property <code>editable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEditable( ?bEditable:Bool):sap.ui.commons.RadioButtonGroup;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Enables/disables the RadioButtonGroup. If it is disabled all RadioButtons will be displayed as disabled. The enabled property of the Item will not be used in this case. If the RadioButtonGroup is enabled, the enabled property of the Item will define if a RadioButton is enabled or not.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( ?bEnabled:Bool):sap.ui.commons.RadioButtonGroup;

	/**
	* Sets a new value for property {@link #getSelectedIndex selectedIndex}.

The index of the selected/checked RadioButton.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iSelectedIndex New value for property <code>selectedIndex</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSelectedIndex( ?iSelectedIndex:Int):sap.ui.commons.RadioButtonGroup;

	/**
	* Sets the Item as selected and removes the selection from the previous one.
	* @param	oSelectedItem Selected item
	* @return	Void
	*/
	public function setSelectedItem( oSelectedItem:sap.ui.core.Item):Void;

	/**
	* Sets a new value for property {@link #getValueState valueState}.

The value state to be displayed for the RadioButton. Possible values are: sap.ui.core.ValueState.Error, sap.ui.core.ValueState.Warning, sap.ui.core.ValueState.Success and sap.ui.core.ValueState.None. Note: Setting this attribute to sap.ui.core.ValueState.Error when the accessibility feature is enabled, sets the value of the invalid property for the whole RadioButtonGroup to true.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sValueState New value for property <code>valueState</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValueState( ?sValueState:sap.ui.core.ValueState):sap.ui.commons.RadioButtonGroup;

	/**
	* Sets a new value for property {@link #getWidth width}.

Defines the width of the RadioButtonGroup.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.ui.commons.RadioButtonGroup;

	/**
	* Unbinds aggregation {@link #getItems items} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindItems( ):sap.ui.commons.RadioButtonGroup;
}

typedef RadioButtonGroupArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the width of the RadioButtonGroup.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Determines the maximum number of RadioButtons displayed in one line.
	*/
	@:optional var columns:haxe.extern.EitherType<String,Int>;

	/**
	* Specifies whether the user can change the selected value of the RadioButtonGroup. When the property is set to false, the control obtains visual styles different from its visual styles for the normal and the disabled state. Additionally the control is no longer interactive, but can receive focus.
	*/
	@:optional var editable:haxe.extern.EitherType<String,Bool>;

	/**
	* The value state to be displayed for the RadioButton. Possible values are: sap.ui.core.ValueState.Error, sap.ui.core.ValueState.Warning, sap.ui.core.ValueState.Success and sap.ui.core.ValueState.None. Note: Setting this attribute to sap.ui.core.ValueState.Error when the accessibility feature is enabled, sets the value of the invalid property for the whole RadioButtonGroup to true.
	*/
	@:optional var valueState:haxe.extern.EitherType<String,sap.ui.core.ValueState>;

	/**
	* The index of the selected/checked RadioButton.
	*/
	@:optional var selectedIndex:haxe.extern.EitherType<String,Int>;

	/**
	* Enables/disables the RadioButtonGroup. If it is disabled all RadioButtons will be displayed as disabled. The enabled property of the Item will not be used in this case. If the RadioButtonGroup is enabled, the enabled property of the Item will define if a RadioButton is enabled or not.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

    /**
    * The RadioButtons of this RadioButtonGroup.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.ui.core.Item>>;

	/**
	* Association to controls / IDs, which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / IDs, which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Fires when selection is changed by user interaction.
	*/
	@:optional var select:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
