package sap.ui.layout.form;

@:native("sap.ui.layout.form.ColumnElementData")

/**
* The <code>ColumnLayout</code>-specific layout data for the <code>FormElement</code> content fields.

One <code>FormElement</code> element contains 12 cells and has two sizes, small and large. Using <code>ColumnElementData</code>, the default calculation of the cells used for a field or label can be overwritten.
*/
extern class ColumnElementData extends sap.ui.core.LayoutData
{
	@:overload(function(?sId:String, ?mSettings:ColumnElementDataArgs):Void {})
	public function new(?mSettings:ColumnElementDataArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.layout.form.ColumnElementData with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.LayoutData.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getCellsLarge cellsLarge}.

Number of cells used by a field if the <code>FormElement</code> element is large. The label is then beside the fields per default.

If set to <code>12</code>, the full size of the <code>FormElement</code> element is used.

Default value is <code>8</code>.
	* @return	Value of property <code>cellsLarge</code>
	*/
	public function getCellsLarge( ):sap.ui.layout.form.ColumnCells;

	/**
	* Gets current value of property {@link #getCellsSmall cellsSmall}.

Number of cells used by a field if the <code>FormElement</code> element is small. The label is then above the fields per default.

If set to <code>12</code>, the full size of the <code>FormElement</code> is used.

Default value is <code>12</code>.
	* @return	Value of property <code>cellsSmall</code>
	*/
	public function getCellsSmall( ):sap.ui.layout.form.ColumnCells;

	/**
	* Returns a metadata object for class sap.ui.layout.form.ColumnElementData.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Sets a new value for property {@link #getCellsLarge cellsLarge}.

Number of cells used by a field if the <code>FormElement</code> element is large. The label is then beside the fields per default.

If set to <code>12</code>, the full size of the <code>FormElement</code> element is used.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>8</code>.
	* @param	sCellsLarge New value for property <code>cellsLarge</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCellsLarge( ?sCellsLarge:sap.ui.layout.form.ColumnCells):sap.ui.layout.form.ColumnElementData;

	/**
	* Sets a new value for property {@link #getCellsSmall cellsSmall}.

Number of cells used by a field if the <code>FormElement</code> element is small. The label is then above the fields per default.

If set to <code>12</code>, the full size of the <code>FormElement</code> is used.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>12</code>.
	* @param	sCellsSmall New value for property <code>cellsSmall</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCellsSmall( ?sCellsSmall:sap.ui.layout.form.ColumnCells):sap.ui.layout.form.ColumnElementData;
}

typedef ColumnElementDataArgs = sap.ui.core.LayoutData.LayoutDataArgs & {

	/**
	* Number of cells used by a field if the <code>FormElement</code> element is large. The label is then beside the fields per default.

If set to <code>12</code>, the full size of the <code>FormElement</code> element is used.
	*/
	@:optional var cellsLarge:haxe.extern.EitherType<String,sap.ui.layout.form.ColumnCells>;

	/**
	* Number of cells used by a field if the <code>FormElement</code> element is small. The label is then above the fields per default.

If set to <code>12</code>, the full size of the <code>FormElement</code> is used.
	*/
	@:optional var cellsSmall:haxe.extern.EitherType<String,sap.ui.layout.form.ColumnCells>;
}
