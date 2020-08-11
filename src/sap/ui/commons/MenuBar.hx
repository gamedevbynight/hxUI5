package sap.ui.commons;

@:native("sap.ui.commons.MenuBar")

/**
* Represents a user interface area which is the entry point for menus with their menu items. MenuBar is useful for applications which shall offer a set of actions that shall be provided in a structured way. The MenuBar contains the menu titles from where users navigate to the single items. The control supports for example long menu item texts, automated scrolling for menu items when the browser space is not large enough to display all items, defining images for single or all items in a menu, automated layouting of items with or w/o image, and active/non-active items.
*/
extern class MenuBar extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:MenuBarArgs):Void {})
	public function new(?mSettings:MenuBarArgs):Void;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.ui.unified.MenuItem):sap.ui.commons.MenuBar;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.ui.commons.MenuBar;

	/**
	* Creates a new subclass of class sap.ui.commons.MenuBar with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getDesign design}.

Available design options are Header and Standard. Note that design settings are theme-dependent.

Default value is <code>Standard</code>.
	* @return	Value of property <code>design</code>
	*/
	public function getDesign( ):sap.ui.commons.MenuBarDesign;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

When the MenuBar is not enabled, automatically all single menu items are also displayed as 'disabled'.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets content of aggregation {@link #getItems items}.

Aggregation of menu items.
	* @return	null
	*/
	public function getItems( ):Array<sap.ui.unified.MenuItem>;

	/**
	* Returns a metadata object for class sap.ui.commons.MenuBar.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getWidth width}.

Specifies the width of the MenuBar

Default value is <code>100%</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.ui.unified.MenuItem</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.ui.unified.MenuItem):Int;

	/**
	* Inserts a item into the aggregation {@link #getItems items}.
	* @param	oItem The item to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertItem( oItem:sap.ui.unified.MenuItem, iIndex:Int):sap.ui.commons.MenuBar;

	/**
	* Removes all the controls from the aggregation {@link #getItems items}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllItems( ):Array<sap.ui.unified.MenuItem>;
	@:overload( function(vItem:Int):sap.ui.unified.MenuItem{ })
	@:overload( function(vItem:String):sap.ui.unified.MenuItem{ })

	/**
	* Removes a item from the aggregation {@link #getItems items}.
	* @param	vItem The item to remove or its index or id
	* @return	The removed item or <code>null</code>
	*/
	public function removeItem( vItem:sap.ui.unified.MenuItem):sap.ui.unified.MenuItem;

	/**
	* Sets a new value for property {@link #getDesign design}.

Available design options are Header and Standard. Note that design settings are theme-dependent.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Standard</code>.
	* @param	sDesign New value for property <code>design</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDesign( ?sDesign:sap.ui.commons.MenuBarDesign):sap.ui.commons.MenuBar;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

When the MenuBar is not enabled, automatically all single menu items are also displayed as 'disabled'.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( ?bEnabled:Bool):sap.ui.commons.MenuBar;

	/**
	* Sets a new value for property {@link #getWidth width}.

Specifies the width of the MenuBar

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100%</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.ui.commons.MenuBar;
}

typedef MenuBarArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* When the MenuBar is not enabled, automatically all single menu items are also displayed as 'disabled'.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies the width of the MenuBar
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Available design options are Header and Standard. Note that design settings are theme-dependent.
	*/
	@:optional var design:haxe.extern.EitherType<String,sap.ui.commons.MenuBarDesign>;

    /**
    * Aggregation of menu items.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.ui.unified.MenuItem>>;
}
