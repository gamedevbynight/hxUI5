package sap.m;

@:native("sap.m.MenuItem")

/**
* The <code>MenuItem</code> control is used for creating items for the <code>sap.m.Menu</code>. It is derived from a core <code>sap.ui.core.Item</code>.
*/
extern class MenuItem extends sap.ui.core.Item
{
	@:overload(function(?sId:String, ?mSettings:MenuItemArgs):Void {})
	public function new(?mSettings:MenuItemArgs):Void;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.m.MenuItem):sap.m.MenuItem;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:aggregationChanged aggregationChanged} event of this <code>sap.m.MenuItem</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.MenuItem</code> itself.

Fired when aggregation of the item changes.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.MenuItem</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAggregationChanged( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.MenuItem;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.m.MenuItem</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.MenuItem</code> itself.

Fired after the item has been pressed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.MenuItem</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.MenuItem;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:propertyChanged propertyChanged} event of this <code>sap.m.MenuItem</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.MenuItem</code> itself.

Fired when a property of the item changes.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.MenuItem</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPropertyChanged( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.MenuItem;

	/**
	* Binds aggregation {@link #getItems items} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindItems( oBindingInfo:Dynamic):sap.m.MenuItem;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.m.MenuItem;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:aggregationChanged aggregationChanged} event of this <code>sap.m.MenuItem</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAggregationChanged( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.MenuItem;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.m.MenuItem</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.MenuItem;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:propertyChanged propertyChanged} event of this <code>sap.m.MenuItem</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPropertyChanged( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.MenuItem;

	/**
	* Creates a new subclass of class sap.m.MenuItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Item.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getIcon icon}.

Defines the icon, which belongs to the item. This can be a URI to an image or an icon font URI.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):String;

	/**
	* Gets content of aggregation {@link #getItems items}.

Defines the sub-items contained within this element.
	* @return	null
	*/
	public function getItems( ):Array<sap.m.MenuItem>;

	/**
	* Returns a metadata object for class sap.m.MenuItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getStartsSection startsSection}.

Defines whether a visual separator should be rendered before the item. <b>Note:</b> If an item is invisible its separator is also not displayed.

Default value is <code>false</code>.
	* @return	Value of property <code>startsSection</code>
	*/
	public function getStartsSection( ):Bool;

	/**
	* Gets current value of property {@link #getVisible visible}.

Defines whether the item should be visible on the screen. If set to <code>false</code>, a placeholder is rendered instead of the real item.

Default value is <code>true</code>.
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

	/**
	* Checks for the provided <code>sap.m.MenuItem</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.m.MenuItem):Int;

	/**
	* Inserts a item into the aggregation {@link #getItems items}.
	* @param	oItem The item to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertItem( oItem:sap.m.MenuItem, iIndex:Int):sap.m.MenuItem;

	/**
	* Removes all the controls from the aggregation {@link #getItems items}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllItems( ):Array<sap.m.MenuItem>;
	@:overload( function(vItem:Int):sap.m.MenuItem{ })
	@:overload( function(vItem:String):sap.m.MenuItem{ })

	/**
	* Removes a item from the aggregation {@link #getItems items}.
	* @param	vItem The item to remove or its index or id
	* @return	The removed item or <code>null</code>
	*/
	public function removeItem( vItem:sap.m.MenuItem):sap.m.MenuItem;

	/**
	* Sets a new value for property {@link #getIcon icon}.

Defines the icon, which belongs to the item. This can be a URI to an image or an icon font URI.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( ?sIcon:String):sap.m.MenuItem;

	/**
	* Sets a new value for property {@link #getStartsSection startsSection}.

Defines whether a visual separator should be rendered before the item. <b>Note:</b> If an item is invisible its separator is also not displayed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bStartsSection New value for property <code>startsSection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setStartsSection( ?bStartsSection:Bool):sap.m.MenuItem;

	/**
	* Sets a new value for property {@link #getVisible visible}.

Defines whether the item should be visible on the screen. If set to <code>false</code>, a placeholder is rendered instead of the real item.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisible New value for property <code>visible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisible( ?bVisible:Bool):sap.m.MenuItem;

	/**
	* Unbinds aggregation {@link #getItems items} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindItems( ):sap.m.MenuItem;
}

typedef MenuItemArgs = sap.ui.core.Item.ItemArgs & {

	/**
	* Defines the icon, which belongs to the item. This can be a URI to an image or an icon font URI.
	*/
	@:optional var icon:String;

	/**
	* Defines whether the item should be visible on the screen. If set to <code>false</code>, a placeholder is rendered instead of the real item.
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines whether a visual separator should be rendered before the item. <b>Note:</b> If an item is invisible its separator is also not displayed.
	*/
	@:optional var startsSection:haxe.extern.EitherType<String,Bool>;

    /**
    * Defines the sub-items contained within this element.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.m.MenuItem>>;

	/**
	* Fired when aggregation of the item changes.
	*/
	@:optional var aggregationChanged:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired after the item has been pressed.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when a property of the item changes.
	*/
	@:optional var propertyChanged:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
