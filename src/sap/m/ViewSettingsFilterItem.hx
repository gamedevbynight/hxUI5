package sap.m;

@:native("sap.m.ViewSettingsFilterItem")

/**
* A ViewSettingsFilterItem control is used for modelling filter behaviour in the ViewSettingsDialog. It is derived from a core Item, but does not support the base class properties like textDirection and enabled. Setting these properties will not have any effects.
*/
extern class ViewSettingsFilterItem extends sap.m.ViewSettingsItem
{
	@:overload(function(?sId:String, ?mSettings:ViewSettingsFilterItemArgs):Void {})
	public function new(?mSettings:ViewSettingsFilterItemArgs):Void;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.m.ViewSettingsItem):sap.m.ViewSettingsFilterItem;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:filterDetailItemsAggregationChange filterDetailItemsAggregationChange} event of this <code>sap.m.ViewSettingsFilterItem</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ViewSettingsFilterItem</code> itself.

Let the outside world know that the filter detail aggregation was changed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ViewSettingsFilterItem</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachFilterDetailItemsAggregationChange( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ViewSettingsFilterItem;

	/**
	* Binds aggregation {@link #getItems items} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindItems( oBindingInfo:Dynamic):sap.m.ViewSettingsFilterItem;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.m.ViewSettingsFilterItem;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:filterDetailItemsAggregationChange filterDetailItemsAggregationChange} event of this <code>sap.m.ViewSettingsFilterItem</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachFilterDetailItemsAggregationChange( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ViewSettingsFilterItem;

	/**
	* Creates a new subclass of class sap.m.ViewSettingsFilterItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.ViewSettingsItem.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets content of aggregation {@link #getItems items}.

Items with key and value that are logically grouped under this filter item. They are used to display filter details in the ViewSettingsDialog.
	* @return	null
	*/
	public function getItems( ):Array<sap.m.ViewSettingsItem>;

	/**
	* Returns a metadata object for class sap.m.ViewSettingsFilterItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getMultiSelect multiSelect}.

If set to (true), multi selection will be allowed for the items aggregation.

Default value is <code>true</code>.
	* @return	Value of property <code>multiSelect</code>
	*/
	public function getMultiSelect( ):Bool;

	/**
	* Checks for the provided <code>sap.m.ViewSettingsItem</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.m.ViewSettingsItem):Int;

	/**
	* Inserts a item into the aggregation {@link #getItems items}.
	* @param	oItem The item to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertItem( oItem:sap.m.ViewSettingsItem, iIndex:Int):sap.m.ViewSettingsFilterItem;

	/**
	* Removes all the controls from the aggregation {@link #getItems items}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllItems( ):Array<sap.m.ViewSettingsItem>;
	@:overload( function(vItem:Int):sap.m.ViewSettingsItem{ })
	@:overload( function(vItem:String):sap.m.ViewSettingsItem{ })

	/**
	* Removes a item from the aggregation {@link #getItems items}.
	* @param	vItem The item to remove or its index or id
	* @return	The removed item or <code>null</code>
	*/
	public function removeItem( vItem:sap.m.ViewSettingsItem):sap.m.ViewSettingsItem;

	/**
	* Sets a new value for property {@link #getMultiSelect multiSelect}.

If set to (true), multi selection will be allowed for the items aggregation.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bMultiSelect New value for property <code>multiSelect</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMultiSelect( ?bMultiSelect:Bool):sap.m.ViewSettingsFilterItem;

	/**
	* Unbinds aggregation {@link #getItems items} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindItems( ):sap.m.ViewSettingsFilterItem;
}

typedef ViewSettingsFilterItemArgs = sap.m.ViewSettingsItem.ViewSettingsItemArgs & {

	/**
	* If set to (true), multi selection will be allowed for the items aggregation.
	*/
	@:optional var multiSelect:haxe.extern.EitherType<String,Bool>;

    /**
    * Items with key and value that are logically grouped under this filter item. They are used to display filter details in the ViewSettingsDialog.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.m.ViewSettingsItem>>;

	/**
	* Let the outside world know that the filter detail aggregation was changed.
	*/
	@:optional var filterDetailItemsAggregationChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
