package sap.ui.layout.form;

@:native("sap.ui.layout.form.GridElementData")

/**
* The <code>GridLayout</code>-specific layout data for <code>FormElement</code> fields.
*/
extern class GridElementData extends sap.ui.core.LayoutData
{
	@:overload(function(?sId:String, ?mSettings:GridElementDataArgs):Void {})
	public function new(?mSettings:GridElementDataArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.layout.form.GridElementData with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.LayoutData.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getHCells hCells}.

Number of cells in horizontal direction.

If set to <code>auto</code>, the size is determined by the number of fields and the available cells. For labels the auto size is 3 cells.

If set to <code>full</code>, only one field is allowed within the <code>FormElement</code>. It gets the full width of the row and the label is displayed above.

<b>Note:</b> For labels, the full size setting has no effect.

Default value is <code>auto</code>.
	* @return	Value of property <code>hCells</code>
	*/
	public function getHCells( ):sap.ui.layout.form.GridElementCells;

	/**
	* Returns a metadata object for class sap.ui.layout.form.GridElementData.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getVCells vCells}.

Number of cells in vertical direction.

<b>Note:</b> This property has no effect on labels.

Default value is <code>1</code>.
	* @return	Value of property <code>vCells</code>
	*/
	public function getVCells( ):Int;

	/**
	* Sets a new value for property {@link #getHCells hCells}.

Number of cells in horizontal direction.

If set to <code>auto</code>, the size is determined by the number of fields and the available cells. For labels the auto size is 3 cells.

If set to <code>full</code>, only one field is allowed within the <code>FormElement</code>. It gets the full width of the row and the label is displayed above.

<b>Note:</b> For labels, the full size setting has no effect.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>auto</code>.
	* @param	sHCells New value for property <code>hCells</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHCells( sHCells:sap.ui.layout.form.GridElementCells):sap.ui.layout.form.GridElementData;

	/**
	* Sets a new value for property {@link #getVCells vCells}.

Number of cells in vertical direction.

<b>Note:</b> This property has no effect on labels.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	iVCells New value for property <code>vCells</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVCells( iVCells:Int):sap.ui.layout.form.GridElementData;
}

typedef GridElementDataArgs = sap.ui.core.LayoutData.LayoutDataArgs & {

	/**
	* Number of cells in horizontal direction.

If set to <code>auto</code>, the size is determined by the number of fields and the available cells. For labels the auto size is 3 cells.

If set to <code>full</code>, only one field is allowed within the <code>FormElement</code>. It gets the full width of the row and the label is displayed above.

<b>Note:</b> For labels, the full size setting has no effect.
	*/
	@:optional var hCells:haxe.extern.EitherType<String,sap.ui.layout.form.GridElementCells>;

	/**
	* Number of cells in vertical direction.

<b>Note:</b> This property has no effect on labels.
	*/
	@:optional var vCells:haxe.extern.EitherType<String,Int>;
}
