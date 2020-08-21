package sap.f;

@:native("sap.f.ProductSwitch")

/**
* A layout control that provides specific configuration about how the items should be displayed.
*/
extern class ProductSwitch extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ProductSwitchArgs):Void {})
	public function new(?mSettings:ProductSwitchArgs):Void;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.f.ProductSwitchItem):sap.f.ProductSwitch;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:change change} event of this <code>sap.f.ProductSwitch</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.f.ProductSwitch</code> itself.

Fires when an unselected item is pressed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.f.ProductSwitch</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachChange( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.f.ProductSwitch;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.f.ProductSwitch;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:change change} event of this <code>sap.f.ProductSwitch</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachChange( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.f.ProductSwitch;

	/**
	* Creates a new subclass of class sap.f.ProductSwitch with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets content of aggregation {@link #getItems items}.

<code>ProductSwitch</code> content.
	* @return	null
	*/
	public function getItems( ):Array<sap.f.ProductSwitchItem>;

	/**
	* Returns a metadata object for class sap.f.ProductSwitch.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* ID of the element which is the current target of the association {@link #getSelectedItem selectedItem}, or <code>null</code>.
	* @return	null
	*/
	public function getSelectedItem( ):sap.ui.core.ID;

	/**
	* Checks for the provided <code>sap.f.ProductSwitchItem</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.f.ProductSwitchItem):Int;

	/**
	* Inserts a item into the aggregation {@link #getItems items}.
	* @param	oItem The item to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertItem( oItem:sap.f.ProductSwitchItem, iIndex:Int):sap.f.ProductSwitch;

	/**
	* Removes all the controls from the aggregation {@link #getItems items}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllItems( ):Array<sap.f.ProductSwitchItem>;
	@:overload( function(vItem:Int):sap.f.ProductSwitchItem{ })
	@:overload( function(vItem:String):sap.f.ProductSwitchItem{ })

	/**
	* Removes a item from the aggregation {@link #getItems items}.
	* @param	vItem The item to remove or its index or id
	* @return	The removed item or <code>null</code>
	*/
	public function removeItem( vItem:sap.f.ProductSwitchItem):sap.f.ProductSwitchItem;
	@:overload( function(vItem:String):sap.f.ProductSwitch{ })
	@:overload( function(vItem:sap.f.ProductSwitchItem):sap.f.ProductSwitch{ })

	/**
	* Sets the <code>selectedItem</code> association.
	* @param	vItem New value for the <code>selectedItem</code> association. If an ID of a <code>sap.f.ProductSwitchItem</code> instance is given, the item with this ID becomes the <code>selectedItem</code> association. Alternatively, a <code>sap.f.ProductSwitchItem</code> instance may be given or <code>null</code> to clear the selection.
	* @return	<code>this</code> to allow method chaining
	*/
	public function setSelectedItem( vItem:Dynamic):sap.f.ProductSwitch;
}

typedef ProductSwitchArgs = sap.ui.core.Control.ControlArgs & {

    /**
    * Holds the internally created GridContainer.
    */
	@:optional var _gridContainer:haxe.extern.EitherType<String,sap.f.GridContainer>;

    /**
    * <code>ProductSwitch</code> content.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.f.ProductSwitchItem>>;

	/**
	* Sets or retrieves the selected item from the <code>items</code> aggregation.
	*/
	@:optional var selectedItem:haxe.extern.EitherType<String,sap.f.ProductSwitchItem>;

	/**
	* Fires when an unselected item is pressed.
	*/
	@:optional var change:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
