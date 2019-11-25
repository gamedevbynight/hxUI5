package sap.m;

@:native("sap.m.MultiComboBox")

/**
* The MultiComboBox control provides a list box with items and a text field allowing the user to either type a value directly into the control or choose from the list of existing items.

A drop-down list for selecting and filtering values. <h3>Overview</h3> The MultiComboBox control is commonly used to enable users to select one or more options from a predefined list. The control provides an editable input field to filter the list, and a dropdown arrow of available options. The select options in the list have checkboxes that permit multi-selection. Entered values are displayed as {@link sap.m.Token tokens}.

When an invalid character is typed into the text field of the MultiComboBox control, the value state is changed to <code>sap.ui.core.ValueState.Error</code> only for a second, as the invalid value is immediately deleted from the input field. <h3>Structure</h3> The MultiComboBox consists of the following elements: <ul> <li> Input field - displays the selected option/s as token/s. Users can type to filter the list. <li> Drop-down arrow - expands\collapses the option list.</li> <li> Option list - the list of available options.</li> </ul> <h3>Usage</h3> <h4>When to use:</h4> <ul> <li>The user needs to select one or more options from a long list of options (maximum of approximately 200).</li> </ul> <h4>When not to use:</h4> <ul> <li>The user needs to choose between two options such as ON or OFF and YES or NO. In this case, consider using a {@link sap.m.Switch switch} control instead</li> <li>You need to display more that one attribute. In this case, consider using the {@link sap.m.SelectDialog select dialog} or value help dialog instead.</li> <li>The user needs to search on multiple attributes. In this case, consider using the {@link sap.m.SelectDialog select dialog} or value help dialog instead.</li> <li>Your use case requires all available options to be displayed right away, without any user interaction. In this case, consider using the {@link sap.m.CheckBox checkboxes} instead.</li> </ul> <h3>Responsive Behavior</h3> If there are many tokens, the control shows only the last selected tokens that fit and for the others a label N-more is provided. In case the length of the last selected token is exceeding the width of the control, only a label N-Items is shown. In both cases, pressing on the label will show the tokens in a popup. <u>On Phones:</u> <ul> <li>A new full-screen dialog opens where all items from the option list are shown.</li> <li>You can select and deselect items from the option list.</li> <li>With the help of a toggle button you can switch between showing all tokens and only selected ones.</li> <li>You can filter the option list by entering a value in the input.</li> </ul> <u>On Tablets:</u> <ul> <li>The auto-complete suggestions appear below or above the input field.</li> <li>You can review the tokens by swiping them to left or right.</li> </ul> <u>On Desktop:</u> <ul> <li>The auto-complete suggestions appear below or above the input field.</li> <li>You can review the tokens by pressing the right or left arrows on the keyboard.</li> <li>You can select single tokens or a range of tokens and you can copy/cut/delete them.</li> </ul>
*/
extern class MultiComboBox extends sap.m.ComboBoxBase
{
	@:overload(function(?sId:String, ?mSettings:MultiComboBoxArgs):Void {})
	public function new(?mSettings:MultiComboBoxArgs):Void;

	/**
	* Adds some item <code>oItem</code> to the association named <code>selectedItems</code>.
	* @param	oItem The selected item to add; if empty, nothing is added.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function addSelectedItem( oItem:sap.ui.core.Item):sap.m.MultiComboBox;

	/**
	* Adds selected items. Only items with valid keys are added as selected.
	* @param	aKeys An array of item keys that identifies the items to be added as selected
	* @return	<code>this</code> to allow method chaining.
	*/
	public function addSelectedKeys( aKeys:Array<String>):sap.m.MultiComboBox;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:selectionChange selectionChange} event of this <code>sap.m.MultiComboBox</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.MultiComboBox</code> itself.

Event is fired when selection of an item is changed. Note: please do not use the "change" event inherited from sap.m.InputBase
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.MultiComboBox</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelectionChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.MultiComboBox;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:selectionFinish selectionFinish} event of this <code>sap.m.MultiComboBox</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.MultiComboBox</code> itself.

Event is fired when user has finished a selection of items in a list box and list box has been closed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.MultiComboBox</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelectionFinish( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.MultiComboBox;

	/**
	* Destroys all the items in the aggregation named <code>items</code>.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function destroyItems( ):sap.m.MultiComboBox;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:selectionChange selectionChange} event of this <code>sap.m.MultiComboBox</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelectionChange( fnFunction:()->Void, ?oListener:Dynamic):sap.m.MultiComboBox;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:selectionFinish selectionFinish} event of this <code>sap.m.MultiComboBox</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelectionFinish( fnFunction:()->Void, ?oListener:Dynamic):sap.m.MultiComboBox;

	/**
	* Creates a new subclass of class sap.m.MultiComboBox with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.ComboBoxBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.m.MultiComboBox.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Retrieves the selected item objects from the association named <code>selectedItems</code>.
	* @return	Array of sap.ui.core.Item instances. The current target of the <code>selectedItems</code> association.
	*/
	public function getSelectedItems( ):Array<sap.ui.core.Item>;

	/**
	* Gets current value of property {@link #getSelectedKeys selectedKeys}.

Keys of the selected items. If the key has no corresponding item, no changes will apply. If duplicate keys exists the first item matching the key is used.

Default value is <code>[]</code>.
	* @return	Value of property <code>selectedKeys</code>
	*/
	public function getSelectedKeys( ):Array<String>;

	/**
	* Inserts an item into the aggregation named <code>items</code>.
	* @param	oItem The item to insert; if empty, nothing is inserted.
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function insertItem( oItem:sap.ui.core.Item, iIndex:Int):sap.m.MultiComboBox;

	/**
	* Checks whether an item is selected.
	* @param	oItem The item to check.
	* @return	True if the item is selected.
	*/
	public function isItemSelected( oItem:sap.ui.core.Item):Bool;

	/**
	* Removes all the items in the aggregation named <code>items</code>.
	* @return	An array of sap.ui.core.Item of the removed items (might be empty).
	*/
	public function removeAllItems( ):Array<sap.ui.core.Item>;

	/**
	* Removes all the controls in the association named selectedItems.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllSelectedItems( ):Array<sap.ui.core.ID>;
	@:overload( function(oItem:Int):sap.ui.core.Item{ })
	@:overload( function(oItem:String):sap.ui.core.Item{ })

	/**
	* Removes an item from the aggregation named <code>items</code>.
	* @param	oItem The item to remove or its index or id.
	* @return	The removed item or null.
	*/
	public function removeItem( oItem:sap.ui.core.Item):sap.ui.core.Item;
	@:overload( function(oItem:sap.ui.core.Item):Dynamic{ })
	@:overload( function(oItem:sap.ui.core.ID):Dynamic{ })

	/**
	* Removes an selectedItem from the association named <code>selectedItems</code>.
	* @param	oItem The item to be removed
	* @return	The removed selectedItem or null
	*/
	public function removeSelectedItem( oItem:String):Dynamic;

	/**
	* Removes selected items. Only items with valid keys are removed.
	* @param	aKeys An array of item keys that identifies the items to be removed
	* @return	<code>this</code> to allow method chaining.
	*/
	public function removeSelectedKeys( aKeys:Array<String>):sap.m.MultiComboBox;
	@:overload( function(aItems:Array<String>):sap.m.MultiComboBox{ })
	@:overload( function(aItems:Array<sap.ui.core.Item>):sap.m.MultiComboBox{ })

	/**
	* Setter for association <code>selectedItems</code>.
	* @param	aItems new values for association <code>selectedItems</code>. Array of sap.ui.core.Item Id which becomes the new target of this <code>selectedItems</code> association. Alternatively, an array of sap.ui.core.Item instance may be given or null.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setSelectedItems( aItems:Dynamic):sap.m.MultiComboBox;

	/**
	* Sets a new value for property <code>selectedKeys</code>. Keys of the selected items. If the key has no corresponding item, no changes will apply. If duplicate keys exists the first item matching the key is used. When called with a value of null or undefined, the default value of the property will be restored. Default value is [].
	* @param	aKeys Keys of items to be set as selected
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setSelectedKeys( aKeys:Array<String>):sap.m.MultiComboBox;

	/**
	* Sets the value state text
	* @param	sValueStateText The new value state text
	* @return	this for chaining
	*/
	public function setValueStateText( ?sValueStateText:String):sap.m.MultiComboBox;
}

typedef MultiComboBoxArgs = sap.m.ComboBoxBase.ComboBoxBaseArgs & {

	/**
	* Keys of the selected items. If the key has no corresponding item, no changes will apply. If duplicate keys exists the first item matching the key is used.
	*/
	@:optional var selectedKeys:Array<String>;

	/**
	* Provides getter and setter for the selected items from the aggregation named items.
	*/
	@:optional var selectedItems:Array<haxe.extern.EitherType<String,sap.ui.core.Item>>;

	/**
	* Event is fired when selection of an item is changed. Note: please do not use the "change" event inherited from sap.m.InputBase
	*/
	@:optional var selectionChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event is fired when user has finished a selection of items in a list box and list box has been closed.
	*/
	@:optional var selectionFinish:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
