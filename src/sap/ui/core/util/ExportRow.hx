package sap.ui.core.util;

@:native("sap.ui.core.util.ExportRow")

/**
* Internally used in {@link sap.ui.core.util.Export Export}.
*/
extern class ExportRow extends sap.ui.base.ManagedObject
{
	@:overload(function(?sId:String, ?mSettings:ExportRowArgs):Void {})
	public function new(?mSettings:ExportRowArgs):Void;

	/**
	* Adds some cell to the aggregation {@link #getCells cells}.
	* @param	oCell The cell to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addCell( oCell:sap.ui.core.util.ExportCell):sap.ui.core.util.ExportRow;

	/**
	* Destroys all the cells in the aggregation {@link #getCells cells}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyCells( ):sap.ui.core.util.ExportRow;

	/**
	* Creates a new subclass of class sap.ui.core.util.ExportRow with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.ManagedObject.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getCells cells}.

Cells for the Export.
	* @return	null
	*/
	public function getCells( ):Array<sap.ui.core.util.ExportCell>;

	/**
	* Returns a metadata object for class sap.ui.core.util.ExportRow.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Checks for the provided <code>sap.ui.core.util.ExportCell</code> in the aggregation {@link #getCells cells}. and returns its index if found or -1 otherwise.
	* @param	oCell The cell whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfCell( oCell:sap.ui.core.util.ExportCell):Int;

	/**
	* Inserts a cell into the aggregation {@link #getCells cells}.
	* @param	oCell The cell to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the cell should be inserted at; for a negative value of <code>iIndex</code>, the cell is inserted at position 0; for a value greater than the current size of the aggregation, the cell is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertCell( oCell:sap.ui.core.util.ExportCell, iIndex:Int):sap.ui.core.util.ExportRow;

	/**
	* Removes all the controls from the aggregation {@link #getCells cells}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllCells( ):Array<sap.ui.core.util.ExportCell>;
	@:overload( function(vCell:Int):sap.ui.core.util.ExportCell{ })
	@:overload( function(vCell:String):sap.ui.core.util.ExportCell{ })

	/**
	* Removes a cell from the aggregation {@link #getCells cells}.
	* @param	vCell The cell to remove or its index or id
	* @return	The removed cell or <code>null</code>
	*/
	public function removeCell( vCell:sap.ui.core.util.ExportCell):sap.ui.core.util.ExportCell;
}

typedef ExportRowArgs = sap.ui.base.ManagedObject.ManagedObjectArgs & {

    /**
    * Cells for the Export.
    */
	@:optional var cells:Array<haxe.extern.EitherType<String,sap.ui.core.util.ExportCell>>;
}
