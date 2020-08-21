package sap.m;

@:native("sap.m.Menu")

/**
* The <code>sap.m.Menu</code> control represents a hierarchical menu. When opened on mobile devices it occupies the whole screen.
*/
extern class Menu extends sap.ui.core.Control implements sap.ui.core.IContextMenu
{
	@:overload(function(?sId:String, ?mSettings:MenuArgs):Void {})
	public function new(?mSettings:MenuArgs):Void;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.m.MenuItem):sap.m.Menu;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:closed closed} event of this <code>sap.m.Menu</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Menu</code> itself.

Fired when the menu is closed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Menu</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachClosed( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.Menu;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:itemSelected itemSelected} event of this <code>sap.m.Menu</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Menu</code> itself.

Fired when a <code>MenuItem</code> is selected.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Menu</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachItemSelected( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.Menu;

	/**
	* Binds aggregation {@link #getItems items} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindItems( oBindingInfo:Dynamic):sap.m.Menu;

	/**
	* Closes the <code>Menu</code>.
	* @return	Void
	*/
	public function close( ):Void;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.m.Menu;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:closed closed} event of this <code>sap.m.Menu</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachClosed( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.Menu;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:itemSelected itemSelected} event of this <code>sap.m.Menu</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachItemSelected( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.Menu;

	/**
	* Creates a new subclass of class sap.m.Menu with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets content of aggregation {@link #getItems items}.

Defines the items contained within this control.
	* @return	null
	*/
	public function getItems( ):Array<sap.m.MenuItem>;

	/**
	* Returns a metadata object for class sap.m.Menu.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getTitle title}.

Defines the <code>Menu</code> title.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Checks for the provided <code>sap.m.MenuItem</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.m.MenuItem):Int;

	/**
	* Initializes the control.
	* @return	Void
	*/
	public function init( ):Void;

	/**
	* Inserts a item into the aggregation {@link #getItems items}.
	* @param	oItem The item to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertItem( oItem:sap.m.MenuItem, iIndex:Int):sap.m.Menu;
	@:overload( function(oEvent:jquery.Event, oOpenerRef:Dynamic):Void{ })

	/**
	* Opens the menu as a context menu.
	* @param	oEvent The event object or an object containing offsetX, offsetY values and left, top values of the element's position
	* @param	oOpenerRef The reference of the opener
	* @return	Void
	*/
	public function openAsContextMenu( oEvent:Dynamic, oOpenerRef:Dynamic):Void;

	/**
	* Opens the <code>Menu</code> next to the given control.
	* @param	oControl The control that defines the position for the menu
	* @param	bWithKeyboard Whether the menu is opened with a shortcut or not
	* @param	sDockMy The reference docking location of the <code>Menu</code> for positioning the menu on the screen
	* @param	sDockAt The <code>oControl</code> reference docking location for positioning the menu on the screen
	* @param	sOffset The offset relative to the docking point, specified as a string with space-separated pixel values (e.g. "0 10" to move the popup 10 pixels to the right). If the docking of both "my" and "at" is RTL-sensitive ("begin" or "end"), this offset is automatically mirrored in the RTL case as well.
	* @return	Void
	*/
	public function openBy( oControl:Dynamic, bWithKeyboard:Bool, ?sDockMy:sap.ui.core.Dock, ?sDockAt:sap.ui.core.Dock, ?sOffset:String):Void;

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
	* Sets the title of the <code>Menu</code>.
	* @param	sTitle The new title of the <code>Menu</code>
	* @return	<code>this</code> to allow method chaining
	*/
	public function setTitle( sTitle:String):sap.m.Menu;

	/**
	* Unbinds aggregation {@link #getItems items} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindItems( ):sap.m.Menu;
}

typedef MenuArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the <code>Menu</code> title.
	*/
	@:optional var title:String;

    /**
    * Defines the items contained within this control.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.m.MenuItem>>;

    /**
    * Internal aggregation that contains the inner <code>sap.m.Dialog</code> for mobile.
    */
	@:optional var _dialog:haxe.extern.EitherType<String,sap.m.Dialog>;

    /**
    * Internal aggregation that contains the inner <code>sap.ui.unified.Menu</code> for desktop and tablet.
    */
	@:optional var _menu:haxe.extern.EitherType<String,sap.ui.unified.Menu>;

	/**
	* Fired when the menu is closed.
	*/
	@:optional var closed:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when a <code>MenuItem</code> is selected.
	*/
	@:optional var itemSelected:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
