package sap.m;

@:native("sap.m.SelectList")

/**
* The <code>sap.m.SelectList</code> displays a list of items that allows the user to select an item.
*/
extern class SelectList extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:SelectListArgs):Void {})
	public function new(?mSettings:SelectListArgs):Void;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.SelectList{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.SelectList;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.ui.core.Item):sap.m.SelectList;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:itemPress itemPress} event of this <code>sap.m.SelectList</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SelectList</code> itself.

This event is fired when an item is pressed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SelectList</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachItemPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SelectList;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:selectionChange selectionChange} event of this <code>sap.m.SelectList</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SelectList</code> itself.

This event is fired when the selection has changed.

<b>Note: </b> The selection can be changed by pressing a non-selected item or via keyboard and after the enter or space key is pressed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SelectList</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelectionChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SelectList;

	/**
	* Binds aggregation {@link #getItems items} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindItems( oBindingInfo:Dynamic):sap.m.SelectList;

	/**
	* Destroys all the items in the aggregation named <code>items</code>.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function destroyItems( ):sap.m.SelectList;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:itemPress itemPress} event of this <code>sap.m.SelectList</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachItemPress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SelectList;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:selectionChange selectionChange} event of this <code>sap.m.SelectList</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelectionChange( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SelectList;

	/**
	* Creates a new subclass of class sap.m.SelectList with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Indicates whether the user can change the selection.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets the enabled items from the aggregation named <code>items</code>.
	* @param	aItems items to filter
	* @return	An array containing the enabled items.
	*/
	public function getEnabledItems( ?aItems:Array<sap.ui.core.Item>):Array<sap.ui.core.Item>;

	/**
	* Gets the first item from the aggregation named <code>items</code>.
	* @return	The first item, or null if there are no items.
	*/
	public function getFirstItem( ):Dynamic;

	/**
	* Gets the item from the aggregation named <code>items</code> at the given 0-based index.
	* @param	iIndex Index of the item to return.
	* @return	Item at the given index, or null if none.
	*/
	public function getItemAt( iIndex:Int):Dynamic;

	/**
	* Gets the item with the given key from the aggregation named <code>items</code>.

<b>Note: </b> If duplicate keys exists, the first item matching the key is returned.
	* @param	sKey An item key that specifies the item to retrieve.
	* @return	The matched item or null
	*/
	public function getItemByKey( sKey:String):Dynamic;

	/**
	* Gets content of aggregation {@link #getItems items}.

Defines the items contained within this control.
	* @return	null
	*/
	public function getItems( ):Array<sap.ui.core.Item>;

	/**
	* Gets current value of property {@link #getKeyboardNavigationMode keyboardNavigationMode}.

Defines the keyboard navigation mode.

<b>Note:</b> The <code>sap.m.SelectListKeyboardNavigationMode.None</code> enumeration value, is only intended for use in some composite controls that handles keyboard navigation by themselves.

Default value is <code>Delimited</code>.
	* @return	Value of property <code>keyboardNavigationMode</code>
	*/
	public function getKeyboardNavigationMode( ):sap.m.SelectListKeyboardNavigationMode;

	/**
	* Gets the enabled items from the aggregation named <code>items</code>.
	* @return	The last item, or null if there are no items.
	*/
	public function getLastItem( ):Dynamic;

	/**
	* Gets current value of property {@link #getMaxWidth maxWidth}.

Sets the maximum width of the control.

Default value is <code>100%</code>.
	* @return	Value of property <code>maxWidth</code>
	*/
	public function getMaxWidth( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.m.SelectList.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets the selected item object from the aggregation named <code>items</code>.
	* @return	The current target of the <code>selectedItem</code> association, or null.
	*/
	public function getSelectedItem( ):Dynamic;

	/**
	* Gets current value of property {@link #getSelectedItemId selectedItemId}.

ID of the selected item.

Default value is <code>empty string</code>.
	* @return	Value of property <code>selectedItemId</code>
	*/
	public function getSelectedItemId( ):String;

	/**
	* Gets current value of property {@link #getSelectedKey selectedKey}.

Key of the selected item.

<b>Note: </b> If duplicate keys exist, the first item matching the key is used.

Default value is <code>empty string</code>.
	* @return	Value of property <code>selectedKey</code>
	*/
	public function getSelectedKey( ):String;

	/**
	* Gets current value of property {@link #getShowSecondaryValues showSecondaryValues}.

Indicates whether the text values of the <code>additionalText</code> property of a {@link sap.ui.core.ListItem} are shown.

Default value is <code>false</code>.
	* @return	Value of property <code>showSecondaryValues</code>
	*/
	public function getShowSecondaryValues( ):Bool;

	/**
	* Gets current value of property {@link #getWidth width}.

Sets the width of the control.

Default value is <code>auto</code>.
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
	public function insertItem( oItem:sap.ui.core.Item, iIndex:Int):sap.m.SelectList;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Removes all the items in the aggregation named <code>items</code>. Additionally unregisters them from the hosting UIArea.
	* @return	An array of the removed items (might be empty).
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
	* Removes an item from the aggregation named <code>items</code>.
	* @param	vItem The item to remove or its index or id.
	* @return	The removed item or null.
	*/
	public function removeItem( vItem:sap.ui.core.Item):sap.ui.core.Item;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Indicates whether the user can change the selection.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( ?bEnabled:Bool):sap.m.SelectList;

	/**
	* Sets a new value for property {@link #getKeyboardNavigationMode keyboardNavigationMode}.

Defines the keyboard navigation mode.

<b>Note:</b> The <code>sap.m.SelectListKeyboardNavigationMode.None</code> enumeration value, is only intended for use in some composite controls that handles keyboard navigation by themselves.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Delimited</code>.
	* @param	sKeyboardNavigationMode New value for property <code>keyboardNavigationMode</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setKeyboardNavigationMode( ?sKeyboardNavigationMode:sap.m.SelectListKeyboardNavigationMode):sap.m.SelectList;

	/**
	* Sets a new value for property {@link #getMaxWidth maxWidth}.

Sets the maximum width of the control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100%</code>.
	* @param	sMaxWidth New value for property <code>maxWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxWidth( ?sMaxWidth:sap.ui.core.CSSSize):sap.m.SelectList;
	@:overload( function(vItem:String):sap.m.SelectList{ })
	@:overload( function(vItem:sap.ui.core.Item):sap.m.SelectList{ })

	/**
	* Sets the <code>selectedItem</code> association.
	* @param	vItem New value for the <code>selectedItem</code> association. If an ID of a <code>sap.ui.core.Item</code> is given, the item with this ID becomes the <code>selectedItem</code> association. Alternatively, a <code>sap.ui.core.Item</code> instance may be given or <code>null</code> to clear the selection.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setSelectedItem( vItem:Dynamic):sap.m.SelectList;
	@:overload( function(vItem:String):sap.m.SelectList{ })

	/**
	* Sets property <code>selectedItemId</code>.

Default value is an empty string <code>""</code> or <code>undefined</code>.
	* @param	vItem New value for property <code>selectedItemId</code>.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setSelectedItemId( vItem:Dynamic):sap.m.SelectList;

	/**
	* Sets property <code>selectedKey</code>.

Default value is an empty string <code>""</code> or <code>undefined</code>.
	* @param	sKey New value for property <code>selectedKey</code>.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setSelectedKey( sKey:String):sap.m.SelectList;

	/**
	* Sets a new value for property {@link #getShowSecondaryValues showSecondaryValues}.

Indicates whether the text values of the <code>additionalText</code> property of a {@link sap.ui.core.ListItem} are shown.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowSecondaryValues New value for property <code>showSecondaryValues</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowSecondaryValues( ?bShowSecondaryValues:Bool):sap.m.SelectList;

	/**
	* Sets a new value for property {@link #getWidth width}.

Sets the width of the control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>auto</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.m.SelectList;

	/**
	* Unbinds aggregation {@link #getItems items} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindItems( ):sap.m.SelectList;
}

typedef SelectListArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Indicates whether the user can change the selection.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Sets the width of the control.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Sets the maximum width of the control.
	*/
	@:optional var maxWidth:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Key of the selected item.

<b>Note: </b> If duplicate keys exist, the first item matching the key is used.
	*/
	@:optional var selectedKey:String;

	/**
	* ID of the selected item.
	*/
	@:optional var selectedItemId:String;

	/**
	* Indicates whether the text values of the <code>additionalText</code> property of a {@link sap.ui.core.ListItem} are shown.
	*/
	@:optional var showSecondaryValues:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the keyboard navigation mode.

<b>Note:</b> The <code>sap.m.SelectListKeyboardNavigationMode.None</code> enumeration value, is only intended for use in some composite controls that handles keyboard navigation by themselves.
	*/
	@:optional var keyboardNavigationMode:haxe.extern.EitherType<String,sap.m.SelectListKeyboardNavigationMode>;

    /**
    * Defines the items contained within this control.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.ui.core.Item>>;

	/**
	* Sets or retrieves the selected item from the aggregation named items.
	*/
	@:optional var selectedItem:haxe.extern.EitherType<String,sap.ui.core.Item>;

	/**
	* Association to controls / IDs which label this control (see WAI-ARIA attribute <code>aria-labelledby</code>).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* This event is fired when an item is pressed.
	*/
	@:optional var itemPress:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is fired when the selection has changed.

<b>Note: </b> The selection can be changed by pressing a non-selected item or via keyboard and after the enter or space key is pressed.
	*/
	@:optional var selectionChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
