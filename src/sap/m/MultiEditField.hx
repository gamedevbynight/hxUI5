package sap.m;

@:native("sap.m.MultiEditField")

/**
* This control allows you to add items to a sap.m.Select instance. In addition, based on the property set, a set of pre-filled entries is added.
*/
extern class MultiEditField extends sap.ui.core.XMLComposite implements sap.ui.core.IFormContent
{
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.MultiEditField{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.MultiEditField;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.ui.core.Item):sap.m.MultiEditField;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:change change} event of this <code>sap.m.MultiEditField</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.MultiEditField</code> itself.

This event is fired when the item of items aggregation in the selection field is changed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.MultiEditField</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.MultiEditField;

	/**
	* Binds aggregation {@link #getItems items} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindItems( oBindingInfo:Dynamic):sap.m.MultiEditField;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.m.MultiEditField;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:change change} event of this <code>sap.m.MultiEditField</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachChange( fnFunction:()->Void, ?oListener:Dynamic):sap.m.MultiEditField;

	/**
	* Creates a new subclass of class sap.m.MultiEditField with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.XMLComposite.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets content of aggregation {@link #getItems items}.

The items that should be displayed after the predefined special items in the selection field.
	* @return	null
	*/
	public function getItems( ):Array<sap.ui.core.Item>;

	/**
	* Returns a metadata object for class sap.m.MultiEditField.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getNullable nullable}.

Defines whether the 'Leave blank' item should be available in the selection field.

Default value is <code>true</code>.
	* @return	Value of property <code>nullable</code>
	*/
	public function getNullable( ):Bool;

	/**
	* Gets current value of property {@link #getRequired required}.

Defines whether the 'Label' is required for the selection field.

Default value is <code>false</code>.
	* @return	Value of property <code>required</code>
	*/
	public function getRequired( ):Bool;

	/**
	* Gets current value of property {@link #getSelectedItem selectedItem}.

The selected item from <code>items</code> aggregation. This can be <code>null</code> if no valid item or special item is selected.
	* @return	Value of property <code>selectedItem</code>
	*/
	public function getSelectedItem( ):sap.ui.core.Item;

	/**
	* Gets current value of property {@link #getShowValueHelp showValueHelp}.

Defines whether the 'Select new value' item should be available in the selection field. Please note that upon selecting this item, the previously selected item is restored. As a consequence, the <code>selectedItem</code> property never contains this item.

Default value is <code>true</code>.
	* @return	Value of property <code>showValueHelp</code>
	*/
	public function getShowValueHelp( ):Bool;

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
	public function insertItem( oItem:sap.ui.core.Item, iIndex:Int):sap.m.MultiEditField;

	/**
	* Checks if the 'Leave blank' item is selected.
	* @return	True if the 'Leave blank' item is selected.
	*/
	public function isBlankSelected( ):Bool;

	/**
	* Checks if the 'Keep existing value' item is selected.
	* @return	True if the 'Keep existing value' item is selected.
	*/
	public function isKeepExistingSelected( ):Bool;

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
	* Sets a new value for property {@link #getNullable nullable}.

Defines whether the 'Leave blank' item should be available in the selection field.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bNullable New value for property <code>nullable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNullable( bNullable:Bool):sap.m.MultiEditField;

	/**
	* Sets a new value for property {@link #getRequired required}.

Defines whether the 'Label' is required for the selection field.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bRequired New value for property <code>required</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRequired( bRequired:Bool):sap.m.MultiEditField;

	/**
	* Sets a new value for property {@link #getSelectedItem selectedItem}.

The selected item from <code>items</code> aggregation. This can be <code>null</code> if no valid item or special item is selected.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sSelectedItem New value for property <code>selectedItem</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSelectedItem( sSelectedItem:sap.ui.core.Item):sap.m.MultiEditField;

	/**
	* Sets a new value for property {@link #getShowValueHelp showValueHelp}.

Defines whether the 'Select new value' item should be available in the selection field. Please note that upon selecting this item, the previously selected item is restored. As a consequence, the <code>selectedItem</code> property never contains this item.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowValueHelp New value for property <code>showValueHelp</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowValueHelp( bShowValueHelp:Bool):sap.m.MultiEditField;

	/**
	* Unbinds aggregation {@link #getItems items} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindItems( ):sap.m.MultiEditField;
}

typedef MultiEditFieldArgs = sap.ui.core.XMLComposite.XMLCompositeArgs & {

	/**
	* The selected item from <code>items</code> aggregation. This can be <code>null</code> if no valid item or special item is selected.
	*/
	@:optional var selectedItem:haxe.extern.EitherType<String,sap.ui.core.Item>;

	/**
	* Defines whether the 'Select new value' item should be available in the selection field. Please note that upon selecting this item, the previously selected item is restored. As a consequence, the <code>selectedItem</code> property never contains this item.
	*/
	@:optional var showValueHelp:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines whether the 'Leave blank' item should be available in the selection field.
	*/
	@:optional var nullable:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines whether the 'Label' is required for the selection field.
	*/
	@:optional var required:haxe.extern.EitherType<String,Bool>;

    /**
    * The items that should be displayed after the predefined special items in the selection field.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.ui.core.Item>>;

	/**
	* The label that should be displayed before the field.
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* This event is fired when the item of items aggregation in the selection field is changed.
	*/
	@:optional var change:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
