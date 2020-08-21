package sap.m;

@:native("sap.m.ColumnListItem")

/**
* <code>sap.m.ColumnListItem</code> can be used with the <code>cells</code> aggregation to create rows for the <code>sap.m.Table</code> control. The <code>columns</code> aggregation of the <code>sap.m.Table</code> should match with the cells aggregation.

<b>Note:</b> This control should only be used within the <code>sap.m.Table</code> control. The inherited <code>counter</code> property of <code>sap.m.ListItemBase</code> is not supported.
*/
extern class ColumnListItem extends sap.m.ListItemBase
{
	@:overload(function(?sId:String, ?mSettings:ColumnListItemArgs):Void {})
	public function new(?mSettings:ColumnListItemArgs):Void;

	/**
	* Adds some cell to the aggregation {@link #getCells cells}.
	* @param	oCell The cell to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addCell( oCell:sap.ui.core.Control):sap.m.ColumnListItem;

	/**
	* Binds aggregation {@link #getCells cells} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindCells( oBindingInfo:Dynamic):sap.m.ColumnListItem;

	/**
	* Destroys all the cells in the aggregation {@link #getCells cells}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyCells( ):sap.m.ColumnListItem;

	/**
	* Creates a new subclass of class sap.m.ColumnListItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.ListItemBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets content of aggregation {@link #getCells cells}.

Every <code>control</code> inside the <code>cells</code> aggregation defines one cell of the row. <b>Note:</b> The order of the <code>cells</code> aggregation must match the order of the <code>columns</code> aggregation of <code>sap.m.Table</code>.
	* @return	null
	*/
	public function getCells( ):Array<sap.ui.core.Control>;

	/**
	* Returns a metadata object for class sap.m.ColumnListItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getVAlign vAlign}.

Sets the vertical alignment of all the cells within the table row (including selection and navigation). <b>Note:</b> <code>vAlign</code> property of <code>sap.m.Column</code> overrides the property for cell vertical alignment if both are set.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>vAlign</code>
	*/
	public function getVAlign( ):sap.ui.core.VerticalAlign;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getCells cells}. and returns its index if found or -1 otherwise.
	* @param	oCell The cell whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfCell( oCell:sap.ui.core.Control):Int;

	/**
	* Inserts a cell into the aggregation {@link #getCells cells}.
	* @param	oCell The cell to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the cell should be inserted at; for a negative value of <code>iIndex</code>, the cell is inserted at position 0; for a value greater than the current size of the aggregation, the cell is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertCell( oCell:sap.ui.core.Control, iIndex:Int):sap.m.ColumnListItem;

	/**
	* Removes all the controls from the aggregation {@link #getCells cells}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllCells( ):Array<sap.ui.core.Control>;
	@:overload( function(vCell:Int):sap.ui.core.Control{ })
	@:overload( function(vCell:String):sap.ui.core.Control{ })

	/**
	* Removes a cell from the aggregation {@link #getCells cells}.
	* @param	vCell The cell to remove or its index or id
	* @return	The removed cell or <code>null</code>
	*/
	public function removeCell( vCell:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Sets a new value for property {@link #getVAlign vAlign}.

Sets the vertical alignment of all the cells within the table row (including selection and navigation). <b>Note:</b> <code>vAlign</code> property of <code>sap.m.Column</code> overrides the property for cell vertical alignment if both are set.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sVAlign New value for property <code>vAlign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVAlign( ?sVAlign:sap.ui.core.VerticalAlign):sap.m.ColumnListItem;

	/**
	* Unbinds aggregation {@link #getCells cells} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindCells( ):sap.m.ColumnListItem;
}

typedef ColumnListItemArgs = sap.m.ListItemBase.ListItemBaseArgs & {

	/**
	* Sets the vertical alignment of all the cells within the table row (including selection and navigation). <b>Note:</b> <code>vAlign</code> property of <code>sap.m.Column</code> overrides the property for cell vertical alignment if both are set.
	*/
	@:optional var vAlign:haxe.extern.EitherType<String,sap.ui.core.VerticalAlign>;

    /**
    * Every <code>control</code> inside the <code>cells</code> aggregation defines one cell of the row. <b>Note:</b> The order of the <code>cells</code> aggregation must match the order of the <code>columns</code> aggregation of <code>sap.m.Table</code>.
    */
	@:optional var cells:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;
}
