package sap.ui.commons;

@:native("sap.ui.commons.ComboBox")

/**
* The control provides a field that allows end users to either enter some text, or to choose an entry out of a list of pre-defined items. The choosable items can be provided in the form of a complete <code>ListBox</code>, single <code>ListItems</code>.
*/
extern class ComboBox extends sap.ui.commons.TextField implements sap.ui.commons.ToolbarItem
{
	@:overload(function(?sId:String, ?mSettings:ComboBoxArgs):Void {})
	public function new(?mSettings:ComboBoxArgs):Void;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.ui.core.ListItem):sap.ui.commons.ComboBox;

	/**
	* Binds aggregation {@link #getItems items} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindItems( oBindingInfo:Dynamic):sap.ui.commons.ComboBox;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.ui.commons.ComboBox;

	/**
	* Creates a new subclass of class sap.ui.commons.ComboBox with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.commons.TextField.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getDisplaySecondaryValues displaySecondaryValues}.

Indicates whether the <code>additionalText</code> property that is available for <code>sap.ui.core.ListItem</code> shall be displayed in the list.

Default value is <code>false</code>.
	* @return	Value of property <code>displaySecondaryValues</code>
	*/
	public function getDisplaySecondaryValues( ):Bool;

	/**
	* Gets content of aggregation {@link #getItems items}.

<code>ListItems</code> (see <code>sap.ui.core.ListBox</code>) that shall be displayed in the list.
	* @return	null
	*/
	public function getItems( ):Array<sap.ui.core.ListItem>;

	/**
	* ID of the element which is the current target of the association {@link #getListBox listBox}, or <code>null</code>.
	* @return	null
	*/
	public function getListBox( ):sap.ui.core.ID;

	/**
	* Gets current value of property {@link #getMaxPopupItems maxPopupItems}.

Defines the number of items that shall be displayed at once. If the overall number of items is higher than this setting, a scrollbar is provided.

Default value is <code>10</code>.
	* @return	Value of property <code>maxPopupItems</code>
	*/
	public function getMaxPopupItems( ):Int;

	/**
	* Returns a metadata object for class sap.ui.commons.ComboBox.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getSelectedItemId selectedItemId}.

Id of the selected item. If the value has no corresponding item, the <code>selectedItemId</code> is empty.

If the <code>selectedItemId</code> is set to a not existing item, it will not be changed.
	* @return	Value of property <code>selectedItemId</code>
	*/
	public function getSelectedItemId( ):String;

	/**
	* Gets current value of property {@link #getSelectedKey selectedKey}.

Key of the selected item.

If the value has no corresponding item the key is empty.

If duplicate keys exists the first item matching the key is used.

If the key is set to a not existing value it will not be changed.
	* @return	Value of property <code>selectedKey</code>
	*/
	public function getSelectedKey( ):String;

	/**
	* Checks for the provided <code>sap.ui.core.ListItem</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.ui.core.ListItem):Int;

	/**
	* Inserts a item into the aggregation {@link #getItems items}.
	* @param	oItem The item to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertItem( oItem:sap.ui.core.ListItem, iIndex:Int):sap.ui.commons.ComboBox;

	/**
	* Removes all the controls from the aggregation {@link #getItems items}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllItems( ):Array<sap.ui.core.ListItem>;
	@:overload( function(vItem:Int):sap.ui.core.ListItem{ })
	@:overload( function(vItem:String):sap.ui.core.ListItem{ })

	/**
	* Removes a item from the aggregation {@link #getItems items}.
	* @param	vItem The item to remove or its index or id
	* @return	The removed item or <code>null</code>
	*/
	public function removeItem( vItem:sap.ui.core.ListItem):sap.ui.core.ListItem;

	/**
	* Sets a new value for property {@link #getDisplaySecondaryValues displaySecondaryValues}.

Indicates whether the <code>additionalText</code> property that is available for <code>sap.ui.core.ListItem</code> shall be displayed in the list.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bDisplaySecondaryValues New value for property <code>displaySecondaryValues</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDisplaySecondaryValues( bDisplaySecondaryValues:Bool):sap.ui.commons.ComboBox;
	@:overload( function(oListBox:sap.ui.core.ID):sap.ui.commons.ComboBox{ })

	/**
	* Sets the associated {@link #getListBox listBox}.
	* @param	oListBox ID of an element which becomes the new target of this listBox association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setListBox( oListBox:sap.ui.commons.ListBox):sap.ui.commons.ComboBox;

	/**
	* Sets a new value for property {@link #getMaxPopupItems maxPopupItems}.

Defines the number of items that shall be displayed at once. If the overall number of items is higher than this setting, a scrollbar is provided.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>10</code>.
	* @param	iMaxPopupItems New value for property <code>maxPopupItems</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxPopupItems( iMaxPopupItems:Int):sap.ui.commons.ComboBox;

	/**
	* Sets a new value for property {@link #getSelectedItemId selectedItemId}.

Id of the selected item. If the value has no corresponding item, the <code>selectedItemId</code> is empty.

If the <code>selectedItemId</code> is set to a not existing item, it will not be changed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sSelectedItemId New value for property <code>selectedItemId</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSelectedItemId( sSelectedItemId:String):sap.ui.commons.ComboBox;

	/**
	* Sets a new value for property {@link #getSelectedKey selectedKey}.

Key of the selected item.

If the value has no corresponding item the key is empty.

If duplicate keys exists the first item matching the key is used.

If the key is set to a not existing value it will not be changed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sSelectedKey New value for property <code>selectedKey</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSelectedKey( sSelectedKey:String):sap.ui.commons.ComboBox;

	/**
	* Unbinds aggregation {@link #getItems items} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindItems( ):sap.ui.commons.ComboBox;
}

typedef ComboBoxArgs = sap.ui.commons.TextField.TextFieldArgs & {

	/**
	* Defines the number of items that shall be displayed at once. If the overall number of items is higher than this setting, a scrollbar is provided.
	*/
	@:optional var maxPopupItems:haxe.extern.EitherType<String,Int>;

	/**
	* Indicates whether the <code>additionalText</code> property that is available for <code>sap.ui.core.ListItem</code> shall be displayed in the list.
	*/
	@:optional var displaySecondaryValues:haxe.extern.EitherType<String,Bool>;

	/**
	* Key of the selected item.

If the value has no corresponding item the key is empty.

If duplicate keys exists the first item matching the key is used.

If the key is set to a not existing value it will not be changed.
	*/
	@:optional var selectedKey:String;

	/**
	* Id of the selected item. If the value has no corresponding item, the <code>selectedItemId</code> is empty.

If the <code>selectedItemId</code> is set to a not existing item, it will not be changed.
	*/
	@:optional var selectedItemId:String;

    /**
    * <code>ListItems</code> (see <code>sap.ui.core.ListBox</code>) that shall be displayed in the list.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.ui.core.ListItem>>;

    /**
    * The hidden <code>ListBox</code> which is only used when no shared <code>ListBox</code> is set via association listBox
    */
	@:optional var myListBox:haxe.extern.EitherType<String,sap.ui.commons.ListBox>;

	/**
	* Using this method, you provide a <code>ListBox</code> control. This allows reuse of item lists in different controls. Either a control id can be used as new target, or a control instance.

<b>Note:</b> The ListBox must not be rendered somewhere in the UI. But if you want to bind the <code>ListBox</code> items to a model it must be in the control tree. So we suggest to add it as dependent somewhere (e.g. to the view or the first used <code>ComboBox</code>). If it is not set as child or dependant to an other control it will be automatically set as dependent to the first ComboBox where it is assigned.
	*/
	@:optional var listBox:haxe.extern.EitherType<String,sap.ui.commons.ListBox>;

	/**
	* Event is fired when the text in the field has changed AND the focus leaves the ComboBox or the Enter key is pressed.
	*/
	@:optional var change:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
