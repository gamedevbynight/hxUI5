package sap.ui.core.util;

@:native("sap.ui.core.util.Export")

/**
* Export provides the possibility to generate a list of data in a specific format / type, e.g. CSV to use it in other programs / applications.
*/
extern class Export extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ExportArgs):Void {})
	public function new(?mSettings:ExportArgs):Void;

	/**
	* Adds some column to the aggregation {@link #getColumns columns}.
	* @param	oColumn The column to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addColumn( oColumn:sap.ui.core.util.ExportColumn):sap.ui.core.util.Export;

	/**
	* Adds some row to the aggregation {@link #getRows rows}.
	* @param	oRow The row to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addRow( oRow:sap.ui.core.util.ExportRow):sap.ui.core.util.Export;

	/**
	* Binds aggregation {@link #getColumns columns} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindColumns( oBindingInfo:Dynamic):sap.ui.core.util.Export;

	/**
	* Binds aggregation {@link #getRows rows} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindRows( oBindingInfo:Dynamic):sap.ui.core.util.Export;

	/**
	* Destroys all the columns in the aggregation {@link #getColumns columns}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyColumns( ):sap.ui.core.util.Export;

	/**
	* Destroys the exportType in the aggregation {@link #getExportType exportType}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyExportType( ):sap.ui.core.util.Export;

	/**
	* Destroys all the rows in the aggregation {@link #getRows rows}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyRows( ):sap.ui.core.util.Export;

	/**
	* Creates a new subclass of class sap.ui.core.util.Export with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Generates the file content and returns a Promise with the instance as context (this).<br> The promise will be resolved with the generated content as a string.

<p><b>Please note: The return value was changed from jQuery Promises to standard ES6 Promises. jQuery specific Promise methods ('done', 'fail', 'always', 'pipe' and 'state') are still available but should not be used. Please use only the standard methods 'then' and 'catch'!</b></p>
	* @return	Promise object
	*/
	public function generate( ):js.lib.Promise<Export>;

	/**
	* Gets content of aggregation {@link #getColumns columns}.

Columns for the Export.
	* @return	null
	*/
	public function getColumns( ):Array<sap.ui.core.util.ExportColumn>;

	/**
	* Gets content of aggregation {@link #getExportType exportType}.

Type that generates the content.
	* @return	null
	*/
	public function getExportType( ):sap.ui.core.util.ExportType;

	/**
	* Returns a metadata object for class sap.ui.core.util.Export.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets content of aggregation {@link #getRows rows}.

Rows of the Export.
	* @return	null
	*/
	public function getRows( ):Array<sap.ui.core.util.ExportRow>;

	/**
	* Checks for the provided <code>sap.ui.core.util.ExportColumn</code> in the aggregation {@link #getColumns columns}. and returns its index if found or -1 otherwise.
	* @param	oColumn The column whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfColumn( oColumn:sap.ui.core.util.ExportColumn):Int;

	/**
	* Checks for the provided <code>sap.ui.core.util.ExportRow</code> in the aggregation {@link #getRows rows}. and returns its index if found or -1 otherwise.
	* @param	oRow The row whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfRow( oRow:sap.ui.core.util.ExportRow):Int;

	/**
	* Inserts a column into the aggregation {@link #getColumns columns}.
	* @param	oColumn The column to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the column should be inserted at; for a negative value of <code>iIndex</code>, the column is inserted at position 0; for a value greater than the current size of the aggregation, the column is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertColumn( oColumn:sap.ui.core.util.ExportColumn, iIndex:Int):sap.ui.core.util.Export;

	/**
	* Inserts a row into the aggregation {@link #getRows rows}.
	* @param	oRow The row to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the row should be inserted at; for a negative value of <code>iIndex</code>, the row is inserted at position 0; for a value greater than the current size of the aggregation, the row is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertRow( oRow:sap.ui.core.util.ExportRow, iIndex:Int):sap.ui.core.util.Export;

	/**
	* Removes all the controls from the aggregation {@link #getColumns columns}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllColumns( ):Array<sap.ui.core.util.ExportColumn>;

	/**
	* Removes all the controls from the aggregation {@link #getRows rows}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllRows( ):Array<sap.ui.core.util.ExportRow>;
	@:overload( function(vColumn:Int):sap.ui.core.util.ExportColumn{ })
	@:overload( function(vColumn:String):sap.ui.core.util.ExportColumn{ })

	/**
	* Removes a column from the aggregation {@link #getColumns columns}.
	* @param	vColumn The column to remove or its index or id
	* @return	The removed column or <code>null</code>
	*/
	public function removeColumn( vColumn:sap.ui.core.util.ExportColumn):sap.ui.core.util.ExportColumn;
	@:overload( function(vRow:Int):sap.ui.core.util.ExportRow{ })
	@:overload( function(vRow:String):sap.ui.core.util.ExportRow{ })

	/**
	* Removes a row from the aggregation {@link #getRows rows}.
	* @param	vRow The row to remove or its index or id
	* @return	The removed row or <code>null</code>
	*/
	public function removeRow( vRow:sap.ui.core.util.ExportRow):sap.ui.core.util.ExportRow;

	/**
	* Generates the file content, triggers a download / save action and returns a Promise with the instance as context (this).<br> The promise will be resolved with the generated content as a string. <p><b>For information about browser support, see <code>sap.ui.core.util.File.save</code></b></p>

<p><b>Please note: The return value was changed from jQuery Promises to standard ES6 Promises. jQuery specific Promise methods ('done', 'fail', 'always', 'pipe' and 'state') are still available but should not be used. Please use only the standard methods 'then' and 'catch'!</b></p>
	* @param	sFileName The file name
	* @return	Promise object
	*/
	public function saveFile( ?sFileName:String):js.lib.Promise<Export>;

	/**
	* Sets the aggregated {@link #getExportType exportType}.
	* @param	oExportType The exportType to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setExportType( oExportType:sap.ui.core.util.ExportType):sap.ui.core.util.Export;

	/**
	* Unbinds aggregation {@link #getColumns columns} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindColumns( ):sap.ui.core.util.Export;

	/**
	* Unbinds aggregation {@link #getRows rows} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindRows( ):sap.ui.core.util.Export;
}

typedef ExportArgs = sap.ui.core.Control.ControlArgs & {

    /**
    * Type that generates the content.
    */
	@:optional var exportType:haxe.extern.EitherType<String,sap.ui.core.util.ExportType>;

    /**
    * Columns for the Export.
    */
	@:optional var columns:Array<haxe.extern.EitherType<String,sap.ui.core.util.ExportColumn>>;

    /**
    * Rows of the Export.
    */
	@:optional var rows:Array<haxe.extern.EitherType<String,sap.ui.core.util.ExportRow>>;

    /**
    * Template row used for the export
    */
	@:optional var _template:haxe.extern.EitherType<String,sap.ui.core.util.ExportRow>;
}
