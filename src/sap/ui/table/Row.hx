package sap.ui.table;

@:native("sap.ui.table.Row")

/**
* The row.
*/
extern class Row extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:RowArgs):Void {})
	public function new(?mSettings:RowArgs):Void;

	/**
	* Adds some cell to the aggregation {@link #getCells cells}.
	* @param	oCell The cell to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addCell( oCell:sap.ui.core.Control):sap.ui.table.Row;

	/**
	* Destroys all the cells in the aggregation {@link #getCells cells}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyCells( ):sap.ui.table.Row;

	/**
	* Creates a new subclass of class sap.ui.table.Row with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getCells cells}.

The actual cells are a table-internal construct. The controls in this aggregation are the content of the cells. This aggregation is managed by the table and must not be manipulated. Only read access is allowed.
	* @return	null
	*/
	public function getCells( ):Array<sap.ui.core.Control>;

	/**
	* Returns the index of the row in the table or -1 if not added to a table. This function considers the scroll position of the table and also takes fixed rows and fixed bottom rows into account.
	* @return	index of the row (considers scroll position and fixed rows)
	*/
	public function getIndex( ):Int;

	/**
	* Returns a metadata object for class sap.ui.table.Row.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

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
	public function insertCell( oCell:sap.ui.core.Control, iIndex:Int):sap.ui.table.Row;

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
}

typedef RowArgs = sap.ui.core.Element.ElementArgs & {

    /**
    * The actual cells are a table-internal construct. The controls in this aggregation are the content of the cells. This aggregation is managed by the table and must not be manipulated. Only read access is allowed.
    */
	@:optional var cells:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * null
    */
	@:optional var _rowAction:haxe.extern.EitherType<String,sap.ui.table.RowAction>;

    /**
    * null
    */
	@:optional var _settings:haxe.extern.EitherType<String,sap.ui.table.RowSettings>;
}
