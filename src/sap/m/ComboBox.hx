package sap.m;

@:native("sap.m.ComboBox")

/**
* A drop-down list for selecting and filtering values. <h3>Overview</h3> The control represents a drop-down menu with a list of the available options and a text input field to narrow down the options. <h3>Structure</h3> The combo-box consists of the following elements: <ul> <li> Input field - displays the selected option or a custom user entry. Users can type to narrow down the list or enter their own value.</li> <li> Drop-down arrow - expands\collapses the option list.</li> <li> Option list - the list of available options.</li> </ul> By setting the <code>showSecondaryValues</code> property, the combo box can display an additional value for each option (if there is one). <b>Note:</b> The typeahead feature is not available on Android devices due to a OS specific issue. <h3>Usage</h3> <h4>When to use:</h4> <ul> <li>You need to select only one item in a long list of options (between 13 and 200) or your custom user input.</li> </ul> <h4>When not to use:</h4> <ul> <li>You need to select between only two options. Use a {@link sap.m.Switch switch} control instead.</li> <li>You need to select between up to 12 options. Use a {@link sap.m.Select select} control instead.</li> <li>You need to select between more than 200 options. Use a {@link sap.m.Input input} control with value help instead.</li> </ul> <h3>Responsive Behavior</h3> <ul> <li>The width of the option list adapts to its content. The minimum width is the input field plus the drop-down arrow.</li> <li>There is no horizontal scrolling in the option list. Entries in the list that are too long will be truncated.</li> <li>On phone devices the combo box option list opens a dialog.</li> </ul>
*/
extern class ComboBox extends sap.m.ComboBoxBase
{
	@:overload(function(?sId:String, ?mSettings:ComboBoxArgs):Void {})
	public function new(?mSettings:ComboBoxArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:change change} event of this <code>sap.m.ComboBox</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ComboBox</code> itself.

This event is fired when the value in the text input field is changed in combination with one of the following actions:

<ul> <li>The focus leaves the text input field</li> <li>The <i>Enter</i> key is pressed</li> <li>An item in the list is selected</li> </ul>
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ComboBox</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.ComboBox;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:selectionChange selectionChange} event of this <code>sap.m.ComboBox</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ComboBox</code> itself.

This event is fired when the user types something that matches with an item in the list; it is also fired when the user presses on a list item, or when navigating via keyboard.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ComboBox</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelectionChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.ComboBox;

	/**
	* Clones the <code>sap.m.ComboBox</code> control.
	* @param	sIdSuffix Suffix to be added to the ids of the new control and its internal objects.
	* @return	The cloned <code>sap.m.ComboBox</code> control.
	*/
	public function clone( sIdSuffix:String):sap.m.ComboBox;

	/**
	* Closes the control's picker popup and focus input field.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function close( ):sap.m.ComboBox;

	/**
	* Destroys all the items in the aggregation named <code>items</code>.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function destroyItems( ):sap.m.ComboBox;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:change change} event of this <code>sap.m.ComboBox</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachChange( fnFunction:()->Void, ?oListener:Dynamic):sap.m.ComboBox;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:selectionChange selectionChange} event of this <code>sap.m.ComboBox</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelectionChange( fnFunction:()->Void, ?oListener:Dynamic):sap.m.ComboBox;

	/**
	* Creates a new subclass of class sap.m.ComboBox with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.ComboBoxBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getFilterSecondaryValues filterSecondaryValues}.

Indicates whether the filter should check in both the <code>text</code> and the <code>additionalText</code> property of the {@link sap.ui.core.ListItem} for the suggestion.

Default value is <code>false</code>.
	* @return	Value of property <code>filterSecondaryValues</code>
	*/
	public function getFilterSecondaryValues( ):Bool;

	/**
	* Returns a metadata object for class sap.m.ComboBox.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets the selected item object from the aggregation named <code>items</code>.
	* @return	The current target of the <code>selectedItem</code> association, or <code>null</code>.
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

<b>Note:</b> If duplicate keys exist, the first item matching the key is used.

Default value is <code>empty string</code>.
	* @return	Value of property <code>selectedKey</code>
	*/
	public function getSelectedKey( ):String;

	/**
	* Removes all the controls in the aggregation named <code>items</code>. Additionally unregisters them from the hosting UIArea and clears the selection.
	* @return	An array of the removed items (might be empty).
	*/
	public function removeAllItems( ):Array<sap.ui.core.Item>;
	@:overload( function(vItem:Int):sap.ui.core.Item{ })
	@:overload( function(vItem:String):sap.ui.core.Item{ })

	/**
	* Removes an item from the aggregation named <code>items</code>.
	* @param	vItem The item to be removed or its index or ID.
	* @return	The removed item or <code>null</code>.
	*/
	public function removeItem( vItem:sap.ui.core.Item):sap.ui.core.Item;

	/**
	* Sets a new value for property {@link #getFilterSecondaryValues filterSecondaryValues}.

Indicates whether the filter should check in both the <code>text</code> and the <code>additionalText</code> property of the {@link sap.ui.core.ListItem} for the suggestion.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bFilterSecondaryValues New value for property <code>filterSecondaryValues</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFilterSecondaryValues( bFilterSecondaryValues:Bool):sap.m.ComboBox;
	@:overload( function(vItem:String):sap.m.ComboBox{ })
	@:overload( function(vItem:sap.ui.core.Item):sap.m.ComboBox{ })

	/**
	* Sets the <code>selectedItem</code> association.

Default value is <code>null</code>.
	* @param	vItem New value for the <code>selectedItem</code> association. If an ID of a <code>sap.ui.core.Item</code> is given, the item with this ID becomes the <code>selectedItem</code> association. Alternatively, a <code>sap.ui.core.Item</code> instance may be given or <code>null</code> to clear the selection.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setSelectedItem( vItem:Dynamic):sap.m.ComboBox;
	@:overload( function(vItem:String):sap.m.ComboBox{ })

	/**
	* Sets the <code>selectedItemId</code> property.

Default value is an empty string <code>""</code> or <code>undefined</code>.
	* @param	vItem New value for property <code>selectedItemId</code>. If the provided <code>vItem</code> is an empty string <code>""</code> or <code>undefined</code>, the selection is cleared. If the ID has no corresponding aggregated item, the selected item is not changed.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setSelectedItemId( vItem:Dynamic):sap.m.ComboBox;

	/**
	* Sets the <code>selectedKey</code> property.

Default value is an empty string <code>""</code> or <code>undefined</code>.
	* @param	sKey New value for property <code>selectedKey</code>. If the provided <code>sKey</code> is an empty string <code>""</code> or <code>undefined</code>, the selection is cleared. If duplicate keys exist, the first item matching the key is selected. If a key is set and no item exists with that key, the visual selection remains the same.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setSelectedKey( sKey:String):sap.m.ComboBox;
}

typedef ComboBoxArgs = sap.m.ComboBoxBase.ComboBoxBaseArgs & {

	/**
	* Key of the selected item.

<b>Note:</b> If duplicate keys exist, the first item matching the key is used.
	*/
	@:optional var selectedKey:String;

	/**
	* ID of the selected item.
	*/
	@:optional var selectedItemId:String;

	/**
	* Indicates whether the filter should check in both the <code>text</code> and the <code>additionalText</code> property of the {@link sap.ui.core.ListItem} for the suggestion.
	*/
	@:optional var filterSecondaryValues:haxe.extern.EitherType<String,Bool>;

	/**
	* Sets or retrieves the selected item from the aggregation named items.
	*/
	@:optional var selectedItem:haxe.extern.EitherType<String,sap.ui.core.Item>;

	/**
	* This event is fired when the value in the text input field is changed in combination with one of the following actions:

<ul> <li>The focus leaves the text input field</li> <li>The <i>Enter</i> key is pressed</li> <li>An item in the list is selected</li> </ul>
	*/
	@:optional var change:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is fired when the user types something that matches with an item in the list; it is also fired when the user presses on a list item, or when navigating via keyboard.
	*/
	@:optional var selectionChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
