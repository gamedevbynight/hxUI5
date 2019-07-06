package sap.tnt;

@:native("sap.tnt.NavigationListItem")

/**
* The NavigationListItem control represents an action, which can be selected by the user. It can provide sub items.
*/
extern class NavigationListItem extends sap.ui.core.Item
{
	@:overload(function(?sId:String, ?mSettings:NavigationListItemArgs):Void {})
	public function new(?mSettings:NavigationListItemArgs):Void;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.tnt.NavigationListItem):sap.tnt.NavigationListItem;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:select select} event of this <code>sap.tnt.NavigationListItem</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.tnt.NavigationListItem</code> itself.

Fired when this item is selected.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.tnt.NavigationListItem</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.tnt.NavigationListItem;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.tnt.NavigationListItem;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:select select} event of this <code>sap.tnt.NavigationListItem</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelect( fnFunction:()->Void, ?oListener:Dynamic):sap.tnt.NavigationListItem;

	/**
	* Creates a new subclass of class sap.tnt.NavigationListItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Item.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getExpanded expanded}.

Specifies if the item is expanded.

Default value is <code>true</code>.
	* @return	Value of property <code>expanded</code>
	*/
	public function getExpanded( ):Bool;

	/**
	* Gets current value of property {@link #getHasExpander hasExpander}.

Specifies if the item has an expander.

Default value is <code>true</code>.
	* @return	Value of property <code>hasExpander</code>
	*/
	public function getHasExpander( ):Bool;

	/**
	* Gets current value of property {@link #getIcon icon}.

Specifies the icon for the item.

Default value is <code>empty string</code>.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* Gets content of aggregation {@link #getItems items}.

The sub items.
	* @return	null
	*/
	public function getItems( ):Array<sap.tnt.NavigationListItem>;

	/**
	* Returns a metadata object for class sap.tnt.NavigationListItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getVisible visible}.

Specifies if the item should be shown.

Default value is <code>true</code>.
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

	/**
	* Checks for the provided <code>sap.tnt.NavigationListItem</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.tnt.NavigationListItem):Int;

	/**
	* Inserts a item into the aggregation {@link #getItems items}.
	* @param	oItem The item to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertItem( oItem:sap.tnt.NavigationListItem, iIndex:Int):sap.tnt.NavigationListItem;

	/**
	* Removes all the controls from the aggregation {@link #getItems items}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllItems( ):Array<sap.tnt.NavigationListItem>;
	@:overload( function(vItem:Int):sap.tnt.NavigationListItem{ })
	@:overload( function(vItem:String):sap.tnt.NavigationListItem{ })

	/**
	* Removes a item from the aggregation {@link #getItems items}.
	* @param	vItem The item to remove or its index or id
	* @return	The removed item or <code>null</code>
	*/
	public function removeItem( vItem:sap.tnt.NavigationListItem):sap.tnt.NavigationListItem;

	/**
	* Sets a new value for property {@link #getExpanded expanded}.

Specifies if the item is expanded.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bExpanded New value for property <code>expanded</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setExpanded( bExpanded:Bool):sap.tnt.NavigationListItem;

	/**
	* Sets a new value for property {@link #getHasExpander hasExpander}.

Specifies if the item has an expander.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bHasExpander New value for property <code>hasExpander</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHasExpander( bHasExpander:Bool):sap.tnt.NavigationListItem;

	/**
	* Sets a new value for property {@link #getIcon icon}.

Specifies the icon for the item.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( sIcon:sap.ui.core.URI):sap.tnt.NavigationListItem;

	/**
	* Sets a new value for property {@link #getVisible visible}.

Specifies if the item should be shown.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisible New value for property <code>visible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisible( bVisible:Bool):sap.tnt.NavigationListItem;
}

typedef NavigationListItemArgs = sap.ui.core.Item.ItemArgs & {

	/**
	* Specifies the icon for the item.
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Specifies if the item is expanded.
	*/
	@:optional var expanded:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies if the item has an expander.
	*/
	@:optional var hasExpander:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies if the item should be shown.
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

    /**
    * The sub items.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.tnt.NavigationListItem>>;

    /**
    * null
    */
	@:optional var _expandIconControl:haxe.extern.EitherType<String,sap.ui.core.Icon>;

	/**
	* Fired when this item is selected.
	*/
	@:optional var select:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
