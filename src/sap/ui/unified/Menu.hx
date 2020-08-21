package sap.ui.unified;

@:native("sap.ui.unified.Menu")

/**
* A menu is an interactive element which provides a choice of different actions to the user. These actions (items) can also be organized in submenus. Like other dialog-like controls, the menu is not rendered within the control hierarchy. Instead it can be opened at a specified position via a function call.
*/
extern class Menu extends sap.ui.core.Control implements sap.ui.core.IContextMenu
{
	@:overload(function(?sId:String, ?mSettings:MenuArgs):Void {})
	public function new(?mSettings:MenuArgs):Void;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.unified.Menu{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.unified.Menu;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.ui.unified.MenuItemBase):sap.ui.unified.Menu;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:itemSelect itemSelect} event of this <code>sap.ui.unified.Menu</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.Menu</code> itself.

Fired on the root menu of a menu hierarchy whenever a user selects an item within the menu or within one of its direct or indirect submenus. <b>Note:</b> There is also a select event available for each single menu item. This event and the event of the menu items are redundant.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.Menu</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachItemSelect( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.unified.Menu;

	/**
	* Closes the menu.
	* @return	Void
	*/
	public function close( ):Void;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.ui.unified.Menu;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:itemSelect itemSelect} event of this <code>sap.ui.unified.Menu</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachItemSelect( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.unified.Menu;

	/**
	* Creates a new subclass of class sap.ui.unified.Menu with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

When a menu is disabled none of its items can be selected by the user. The enabled property of an item (@link sap.ui.unified.MenuItemBase#getEnabled) has no effect when the menu of the item is disabled.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets content of aggregation {@link #getItems items}.

The available actions to be displayed as items of the menu.
	* @return	null
	*/
	public function getItems( ):Array<sap.ui.unified.MenuItemBase>;

	/**
	* Gets current value of property {@link #getMaxVisibleItems maxVisibleItems}.

The maximum number of items which are displayed before an overflow mechanism takes effect. A value smaller than 1 means an infinite number of visible items. The overall height of the menu is limited by the height of the screen. If the maximum possible height is reached, an overflow takes effect, even if the maximum number of visible items is not yet reached.

Default value is <code>0</code>.
	* @return	Value of property <code>maxVisibleItems</code>
	*/
	public function getMaxVisibleItems( ):Int;

	/**
	* Returns a metadata object for class sap.ui.unified.Menu.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getPageSize pageSize}.

The keyboard can be used to navigate through the items of a menu. Beside the arrow keys for single steps and the <i>Home</i> / <i>End</i> keys for jumping to the first / last item, the <i>Page Up</i> / <i>Page Down</i> keys can be used to jump an arbitrary number of items up or down. This number can be defined via the <code>pageSize</code> property. For values smaller than 1, paging behaves in a similar way to when using the <i>Home</i> / <i>End</i> keys. If the value equals 1, the paging behavior is similar to that of the arrow keys.

Default value is <code>5</code>.
	* @return	Value of property <code>pageSize</code>
	*/
	public function getPageSize( ):Int;

	/**
	* Checks for the provided <code>sap.ui.unified.MenuItemBase</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.ui.unified.MenuItemBase):Int;

	/**
	* Inserts a item into the aggregation {@link #getItems items}.
	* @param	oItem The item to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertItem( oItem:sap.ui.unified.MenuItemBase, iIndex:Int):sap.ui.unified.Menu;
	@:overload( function(bWithKeyboard:Bool, oOpenerRef:sap.ui.core.Element, my:sap.ui.core.Dock, at:sap.ui.core.Dock, of:sap.ui.core.Element, ?offset:String, ?collision:sap.ui.core.Collision):Void{ })
	@:overload( function(bWithKeyboard:Bool, oOpenerRef:sap.ui.core.Element, my:sap.ui.core.Dock, at:sap.ui.core.Dock, of:js.html.Element, ?offset:String, ?collision:sap.ui.core.Collision):Void{ })
	@:overload( function(bWithKeyboard:Bool, oOpenerRef:js.html.Element, my:sap.ui.core.Dock, at:sap.ui.core.Dock, of:sap.ui.core.Element, ?offset:String, ?collision:sap.ui.core.Collision):Void{ })

	/**
	* Opens the menu at the specified position.

The position of the menu is defined relative to an element in the visible DOM by specifying the docking location of the menu and of the related element.

See {@link sap.ui.core.Popup#open Popup#open} for further details about popup positioning.
	* @param	bWithKeyboard Indicates whether or not the first item shall be highlighted when the menu is opened (keyboard case)
	* @param	oOpenerRef The element which will get the focus back again after the menu was closed
	* @param	my The reference docking location of the menu for positioning the menu on the screen
	* @param	at The 'of' element's reference docking location for positioning the menu on the screen
	* @param	of The menu is positioned relatively to this element based on the given dock locations
	* @param	offset The offset relative to the docking point, specified as a string with space-separated pixel values (e.g. "10 0" to move the popup 10 pixels to the right)
	* @param	collision The collision defines how the position of the menu should be adjusted in case it overflows the window in some direction
	* @return	Void
	*/
	public function open( bWithKeyboard:Bool, oOpenerRef:js.html.Element, my:sap.ui.core.Dock, at:sap.ui.core.Dock, of:js.html.Element, ?offset:String, ?collision:sap.ui.core.Collision):Void;
	@:overload( function(oEvent:jquery.Event, oOpenerRef:sap.ui.core.Element):Void{ })
	@:overload( function(oEvent:jquery.Event, oOpenerRef:js.html.HtmlElement):Void{ })
	@:overload( function(oEvent:Dynamic, oOpenerRef:sap.ui.core.Element):Void{ })

	/**
	* Opens the menu as a context menu.
	* @param	oEvent The event object or an object containing offsetX, offsetY values and left, top values of the element's position
	* @param	oOpenerRef Might be UI5 Element or DOM Element
	* @return	Void
	*/
	public function openAsContextMenu( oEvent:Dynamic, oOpenerRef:js.html.HtmlElement):Void;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Removes all the controls from the aggregation {@link #getItems items}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllItems( ):Array<sap.ui.unified.MenuItemBase>;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;
	@:overload( function(vItem:Int):sap.ui.unified.MenuItemBase{ })
	@:overload( function(vItem:String):sap.ui.unified.MenuItemBase{ })

	/**
	* Removes a item from the aggregation {@link #getItems items}.
	* @param	vItem The item to remove or its index or id
	* @return	The removed item or <code>null</code>
	*/
	public function removeItem( vItem:sap.ui.unified.MenuItemBase):sap.ui.unified.MenuItemBase;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

When a menu is disabled none of its items can be selected by the user. The enabled property of an item (@link sap.ui.unified.MenuItemBase#getEnabled) has no effect when the menu of the item is disabled.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( ?bEnabled:Bool):sap.ui.unified.Menu;

	/**
	* Sets a new value for property {@link #getMaxVisibleItems maxVisibleItems}.

The maximum number of items which are displayed before an overflow mechanism takes effect. A value smaller than 1 means an infinite number of visible items. The overall height of the menu is limited by the height of the screen. If the maximum possible height is reached, an overflow takes effect, even if the maximum number of visible items is not yet reached.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iMaxVisibleItems New value for property <code>maxVisibleItems</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxVisibleItems( ?iMaxVisibleItems:Int):sap.ui.unified.Menu;

	/**
	* Sets a new value for property {@link #getPageSize pageSize}.

The keyboard can be used to navigate through the items of a menu. Beside the arrow keys for single steps and the <i>Home</i> / <i>End</i> keys for jumping to the first / last item, the <i>Page Up</i> / <i>Page Down</i> keys can be used to jump an arbitrary number of items up or down. This number can be defined via the <code>pageSize</code> property. For values smaller than 1, paging behaves in a similar way to when using the <i>Home</i> / <i>End</i> keys. If the value equals 1, the paging behavior is similar to that of the arrow keys.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>5</code>.
	* @param	iPageSize New value for property <code>pageSize</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPageSize( ?iPageSize:Int):sap.ui.unified.Menu;
}

typedef MenuArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* When a menu is disabled none of its items can be selected by the user. The enabled property of an item (@link sap.ui.unified.MenuItemBase#getEnabled) has no effect when the menu of the item is disabled.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* The maximum number of items which are displayed before an overflow mechanism takes effect. A value smaller than 1 means an infinite number of visible items. The overall height of the menu is limited by the height of the screen. If the maximum possible height is reached, an overflow takes effect, even if the maximum number of visible items is not yet reached.
	*/
	@:optional var maxVisibleItems:haxe.extern.EitherType<String,Int>;

	/**
	* The keyboard can be used to navigate through the items of a menu. Beside the arrow keys for single steps and the <i>Home</i> / <i>End</i> keys for jumping to the first / last item, the <i>Page Up</i> / <i>Page Down</i> keys can be used to jump an arbitrary number of items up or down. This number can be defined via the <code>pageSize</code> property. For values smaller than 1, paging behaves in a similar way to when using the <i>Home</i> / <i>End</i> keys. If the value equals 1, the paging behavior is similar to that of the arrow keys.
	*/
	@:optional var pageSize:haxe.extern.EitherType<String,Int>;

    /**
    * The available actions to be displayed as items of the menu.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.ui.unified.MenuItemBase>>;

	/**
	* Reference to accessible labels (ids of existing DOM elements or controls) for assistive technologies like screenreaders.
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Fired on the root menu of a menu hierarchy whenever a user selects an item within the menu or within one of its direct or indirect submenus. <b>Note:</b> There is also a select event available for each single menu item. This event and the event of the menu items are redundant.
	*/
	@:optional var itemSelect:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
