package sap.ui.table;

@:native("sap.ui.table.RowAction")

/**
* The <code>RowAction</code> control allows to display multiple action items which can be selected by the user. If more action items are available as the available space allows to display an overflow mechanism is provided. This control must only be used in the context of the <code>sap.ui.table.Table</code> control to define row actions.
*/
extern class RowAction extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:RowActionArgs):Void {})
	public function new(?mSettings:RowActionArgs):Void;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.ui.table.RowActionItem):sap.ui.table.RowAction;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.ui.table.RowAction;

	/**
	* Creates a new subclass of class sap.ui.table.RowAction with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets content of aggregation {@link #getItems items}.

The action items which should be displayed.
	* @return	null
	*/
	public function getItems( ):Array<sap.ui.table.RowActionItem>;

	/**
	* Returns a metadata object for class sap.ui.table.RowAction.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getVisible visible}.

Whether the control should be visible on the screen. If set to <code>false</code>, the control is hidden.

Default value is <code>true</code>.
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

	/**
	* Checks for the provided <code>sap.ui.table.RowActionItem</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.ui.table.RowActionItem):Int;

	/**
	* Inserts a item into the aggregation {@link #getItems items}.
	* @param	oItem The item to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertItem( oItem:sap.ui.table.RowActionItem, iIndex:Int):sap.ui.table.RowAction;

	/**
	* Removes all the controls from the aggregation {@link #getItems items}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllItems( ):Array<sap.ui.table.RowActionItem>;
	@:overload( function(vItem:Int):sap.ui.table.RowActionItem{ })
	@:overload( function(vItem:String):sap.ui.table.RowActionItem{ })

	/**
	* Removes a item from the aggregation {@link #getItems items}.
	* @param	vItem The item to remove or its index or id
	* @return	The removed item or <code>null</code>
	*/
	public function removeItem( vItem:sap.ui.table.RowActionItem):sap.ui.table.RowActionItem;

	/**
	* Sets a new value for property {@link #getVisible visible}.

Whether the control should be visible on the screen. If set to <code>false</code>, the control is hidden.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisible New value for property <code>visible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisible( ?bVisible:Bool):sap.ui.table.RowAction;
}

typedef RowActionArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Whether the control should be visible on the screen. If set to <code>false</code>, the control is hidden.
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

    /**
    * The action items which should be displayed.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.ui.table.RowActionItem>>;

    /**
    * null
    */
	@:optional var _icons:Array<haxe.extern.EitherType<String,sap.ui.core.Icon>>;

    /**
    * null
    */
	@:optional var _menu:haxe.extern.EitherType<String,sap.ui.unified.Menu>;
}
