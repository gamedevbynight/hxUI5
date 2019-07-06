package sap.ui.commons;

@:native("sap.ui.commons.Toolbar")

/**
* A horizontal row of items where in many cases the single toolbar items are buttons containing icons. Note that all controls with the sap.ui.commons.ToolbarItem interface can be used as item: Button, ComboBox, TextField.
*/
extern class Toolbar extends sap.ui.core.Control implements sap.ui.core.Toolbar
{
	@:overload(function(?sId:String, ?mSettings:ToolbarArgs):Void {})
	public function new(?mSettings:ToolbarArgs):Void;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.ui.commons.ToolbarItem):sap.ui.commons.Toolbar;

	/**
	* Adds some rightItem to the aggregation {@link #getRightItems rightItems}.
	* @param	oRightItem The rightItem to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addRightItem( oRightItem:sap.ui.commons.ToolbarItem):sap.ui.commons.Toolbar;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.ui.commons.Toolbar;

	/**
	* Destroys all the rightItems in the aggregation {@link #getRightItems rightItems}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyRightItems( ):sap.ui.commons.Toolbar;

	/**
	* Creates a new subclass of class sap.ui.commons.Toolbar with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getDesign design}.

Design settings are theme-dependent.

Default value is <code>Flat</code>.
	* @return	Value of property <code>design</code>
	*/
	public function getDesign( ):sap.ui.commons.ToolbarDesign;

	/**
	* Gets content of aggregation {@link #getItems items}.

Aggregating the tool bar items.
	* @return	null
	*/
	public function getItems( ):Array<sap.ui.commons.ToolbarItem>;

	/**
	* Returns a metadata object for class sap.ui.commons.Toolbar.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets content of aggregation {@link #getRightItems rightItems}.

Aggregating the right side tool bar items.
	* @return	null
	*/
	public function getRightItems( ):Array<sap.ui.commons.ToolbarItem>;

	/**
	* Gets current value of property {@link #getStandalone standalone}.

Per default, tool bars have the stand alone status. Alternatively, they can be nested in other controls and then inherit the design from their parent control.

Default value is <code>true</code>.
	* @return	Value of property <code>standalone</code>
	*/
	public function getStandalone( ):Bool;

	/**
	* Gets current value of property {@link #getWidth width}.

When there is not enough space for the toolbar to display all items, the rightmost items are overflowing into a drop-down menu.

Default value is <code>auto</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.ui.commons.ToolbarItem</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.ui.commons.ToolbarItem):Int;

	/**
	* Checks for the provided <code>sap.ui.commons.ToolbarItem</code> in the aggregation {@link #getRightItems rightItems}. and returns its index if found or -1 otherwise.
	* @param	oRightItem The rightItem whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfRightItem( oRightItem:sap.ui.commons.ToolbarItem):Int;

	/**
	* Inserts a item into the aggregation {@link #getItems items}.
	* @param	oItem The item to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertItem( oItem:sap.ui.commons.ToolbarItem, iIndex:Int):sap.ui.commons.Toolbar;

	/**
	* Inserts a rightItem into the aggregation {@link #getRightItems rightItems}.
	* @param	oRightItem The rightItem to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the rightItem should be inserted at; for a negative value of <code>iIndex</code>, the rightItem is inserted at position 0; for a value greater than the current size of the aggregation, the rightItem is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertRightItem( oRightItem:sap.ui.commons.ToolbarItem, iIndex:Int):sap.ui.commons.Toolbar;

	/**
	* Removes all the controls from the aggregation {@link #getItems items}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllItems( ):Array<sap.ui.commons.ToolbarItem>;

	/**
	* Removes all the controls from the aggregation {@link #getRightItems rightItems}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllRightItems( ):Array<sap.ui.commons.ToolbarItem>;
	@:overload( function(vItem:Int):sap.ui.commons.ToolbarItem{ })
	@:overload( function(vItem:String):sap.ui.commons.ToolbarItem{ })

	/**
	* Removes a item from the aggregation {@link #getItems items}.
	* @param	vItem The item to remove or its index or id
	* @return	The removed item or <code>null</code>
	*/
	public function removeItem( vItem:sap.ui.commons.ToolbarItem):sap.ui.commons.ToolbarItem;
	@:overload( function(vRightItem:Int):sap.ui.commons.ToolbarItem{ })
	@:overload( function(vRightItem:String):sap.ui.commons.ToolbarItem{ })

	/**
	* Removes a rightItem from the aggregation {@link #getRightItems rightItems}.
	* @param	vRightItem The rightItem to remove or its index or id
	* @return	The removed rightItem or <code>null</code>
	*/
	public function removeRightItem( vRightItem:sap.ui.commons.ToolbarItem):sap.ui.commons.ToolbarItem;

	/**
	* Sets a new value for property {@link #getDesign design}.

Design settings are theme-dependent.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Flat</code>.
	* @param	sDesign New value for property <code>design</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDesign( sDesign:sap.ui.commons.ToolbarDesign):sap.ui.commons.Toolbar;

	/**
	* Sets a new value for property {@link #getStandalone standalone}.

Per default, tool bars have the stand alone status. Alternatively, they can be nested in other controls and then inherit the design from their parent control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bStandalone New value for property <code>standalone</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setStandalone( bStandalone:Bool):sap.ui.commons.Toolbar;

	/**
	* Sets a new value for property {@link #getWidth width}.

When there is not enough space for the toolbar to display all items, the rightmost items are overflowing into a drop-down menu.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>auto</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.commons.Toolbar;
}

typedef ToolbarArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* When there is not enough space for the toolbar to display all items, the rightmost items are overflowing into a drop-down menu.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Design settings are theme-dependent.
	*/
	@:optional var design:haxe.extern.EitherType<String,sap.ui.commons.ToolbarDesign>;

	/**
	* Per default, tool bars have the stand alone status. Alternatively, they can be nested in other controls and then inherit the design from their parent control.
	*/
	@:optional var standalone:haxe.extern.EitherType<String,Bool>;

    /**
    * Aggregating the tool bar items.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.ui.commons.ToolbarItem>>;

    /**
    * Aggregating the right side tool bar items.
    */
	@:optional var rightItems:Array<haxe.extern.EitherType<String,sap.ui.commons.ToolbarItem>>;
}
