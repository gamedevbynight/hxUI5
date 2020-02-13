package sap.m;

@:native("sap.m.ComboBoxBase")

/**
* An abstract class for combo boxes.
*/
extern class ComboBoxBase extends sap.m.ComboBoxTextField
{
	@:overload(function(?sId:String, ?mSettings:ComboBoxBaseArgs):Void {})
	public function new(?mSettings:ComboBoxBaseArgs):Void;

	/**
	* Adds an item to the aggregation named <code>items</code>.
	* @param	oItem The item to be added; if empty, nothing is added.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function addItem( oItem:sap.ui.core.Item):sap.m.ComboBoxBase;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:loadItems loadItems} event of this <code>sap.m.ComboBoxBase</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ComboBoxBase</code> itself.

This event is fired when the end user clicks the combo box button to open the dropdown list and the data used to display items is not already loaded. Alternatively, it is fired after the user moves the cursor to the combo box text field and perform an action that requires data to be loaded. For example, pressing F4 to open the dropdown list or typing something in the text field fires the event.

<b>Note:</b> Use this feature in performance critical scenarios only. Loading the data lazily (on demand) to defer initialization has several implications for the end user experience. For example, the busy indicator has to be shown while the items are being loaded and assistive technology software also has to announce the state changes (which may be confusing for some screen reader users).

<b>Note</b>: Currently the <code>sap.m.MultiComboBox</code> does not support this event.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ComboBoxBase</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachLoadItems( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.ComboBoxBase;

	/**
	* Binds aggregation {@link #getItems items} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindItems( oBindingInfo:Dynamic):sap.m.ComboBoxBase;

	/**
	* Closes the control's picker popup.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function close( ):sap.m.ComboBoxBase;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.m.ComboBoxBase;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:loadItems loadItems} event of this <code>sap.m.ComboBoxBase</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachLoadItems( fnFunction:()->Void, ?oListener:Dynamic):sap.m.ComboBoxBase;

	/**
	* Creates a new subclass of class sap.m.ComboBoxBase with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.ComboBoxTextField.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets the enabled items from the aggregation named <code>items</code>.
	* @param	aItems Items to filter.
	* @return	An array containing the enabled items.
	*/
	public function getEnabledItems( ?aItems:Array<sap.ui.core.Item>):Array<sap.ui.core.Item>;

	/**
	* Gets the first item from the aggregation named <code>items</code>.
	* @return	The first item, or null if there are no items.
	*/
	public function getFirstItem( ):sap.ui.core.Item;

	/**
	* Gets the item from the aggregation named <code>items</code> at the given 0-based index.
	* @param	iIndex Index of the item to return.
	* @return	Item at the given index, or null if none.
	*/
	public function getItemAt( iIndex:Int):sap.ui.core.Item;

	/**
	* Gets the item with the given key from the aggregation named <code>items</code>.<br> <b>Note:</b> If duplicate keys exist, the first item matching the key is returned.
	* @param	sKey An item key that specifies the item to retrieve.
	* @return	The matching item
	*/
	public function getItemByKey( sKey:String):sap.ui.core.Item;

	/**
	* Gets content of aggregation {@link #getItems items}.

Defines the items contained within this control.
	* @return	null
	*/
	public function getItems( ):Array<sap.ui.core.Item>;

	/**
	* Gets the last item from the aggregation named <code>items</code>.
	* @return	The last item, or null if there are no items.
	*/
	public function getLastItem( ):sap.ui.core.Item;

	/**
	* Returns a metadata object for class sap.m.ComboBoxBase.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getShowSecondaryValues showSecondaryValues}.

Indicates whether the text values of the <code>additionalText</code> property of a {@link sap.ui.core.ListItem} are shown.

Default value is <code>false</code>.
	* @return	Value of property <code>showSecondaryValues</code>
	*/
	public function getShowSecondaryValues( ):Bool;

	/**
	* Checks for the provided <code>sap.ui.core.Item</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.ui.core.Item):Int;

	/**
	* Inserts an item into the aggregation named <code>items</code>.
	* @param	oItem The item to be inserted; if empty, nothing is inserted.
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function insertItem( oItem:sap.ui.core.Item, iIndex:Int):sap.m.ComboBoxBase;

	/**
	* Indicates whether the control's picker popup is open.
	* @return	Determines whether the control's picker popup is currently open (this includes opening and closing animations).
	*/
	public function isOpen( ):Bool;

	/**
	* Removes all the controls in the aggregation named <code>items</code>. Additionally unregisters them from the hosting UIArea and clears the selection.
	* @return	An array of the removed items (might be empty).
	*/
	public function removeAllItems( ):Array<sap.ui.core.Item>;
	@:overload( function(vItem:Int):sap.ui.core.Item{ })
	@:overload( function(vItem:String):sap.ui.core.Item{ })

	/**
	* Removes an item from the aggregation named <code>items</code>.
	* @param	vItem The item to remove or its index or ID.
	* @return	The removed item or null.
	*/
	public function removeItem( vItem:sap.ui.core.Item):sap.ui.core.Item;

	/**
	* Sets a custom filter function for items. The function accepts two parameters: - currenly typed value in the input field - item to be matched The function should return a Boolean value (true or false) which represents whether an item will be shown in the dropdown or not.
	* @param	fnFilter A callback function called when typing in a ComboBoxBase control or ancestor.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setFilterFunction( fnFilter:()->Void):sap.m.ComboBoxBase;

	/**
	* Sets a new value for property {@link #getShowSecondaryValues showSecondaryValues}.

Indicates whether the text values of the <code>additionalText</code> property of a {@link sap.ui.core.ListItem} are shown.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowSecondaryValues New value for property <code>showSecondaryValues</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowSecondaryValues( bShowSecondaryValues:Bool):sap.m.ComboBoxBase;

	/**
	* Sets whether the value state message should be shown or not
	* @param	bShow The new value state text
	* @return	this for chaining
	*/
	public function setShowValueStateMessage( ?bShow:Bool):sap.m.InputBase;

	/**
	* Sets the visualization of the validation state of the control, e.g. <code>Error</code>, <code>Warning</code>, <code>Success</code>.
	* @param	sValueState The new value state
	* @return	this for chaining
	*/
	public function setValueState( ?sValueState:sap.ui.core.ValueState):sap.m.InputBase;

	/**
	* Sets the value state text
	* @param	sValueStateText The new value state text
	* @return	this for chaining
	*/
	public function setValueStateText( ?sValueStateText:String):sap.m.InputBase;

	/**
	* Opens the <code>SuggestionsPopover</code> with the available items.
	* @param	fnFilter Function to filter the items shown in the SuggestionsPopover
	* @return	Void
	*/
	public function showItems( fnFilter:()->Void):Void;

	/**
	* Unbinds aggregation {@link #getItems items} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindItems( ):sap.m.ComboBoxBase;
}

typedef ComboBoxBaseArgs = sap.m.ComboBoxTextField.ComboBoxTextFieldArgs & {

	/**
	* Indicates whether the text values of the <code>additionalText</code> property of a {@link sap.ui.core.ListItem} are shown.
	*/
	@:optional var showSecondaryValues:haxe.extern.EitherType<String,Bool>;

    /**
    * Defines the items contained within this control.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.ui.core.Item>>;

    /**
    * Internal aggregation to hold the inner picker popup.
    */
	@:optional var picker:haxe.extern.EitherType<String,sap.ui.core.PopupInterface>;

	/**
	* This event is fired when the end user clicks the combo box button to open the dropdown list and the data used to display items is not already loaded. Alternatively, it is fired after the user moves the cursor to the combo box text field and perform an action that requires data to be loaded. For example, pressing F4 to open the dropdown list or typing something in the text field fires the event.

<b>Note:</b> Use this feature in performance critical scenarios only. Loading the data lazily (on demand) to defer initialization has several implications for the end user experience. For example, the busy indicator has to be shown while the items are being loaded and assistive technology software also has to announce the state changes (which may be confusing for some screen reader users).

<b>Note</b>: Currently the <code>sap.m.MultiComboBox</code> does not support this event.
	*/
	@:optional var loadItems:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
