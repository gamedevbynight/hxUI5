package sap.ui.layout.form;

@:native("sap.ui.layout.form.ColumnLayout")

/**
* The <code>ColumnLayout</code> control renders a <code>Form</code> control in a column-based responsive way. Depending on its size, the <code>Form</code> control is divided into one or more columns. (XL - max. 4 columns, L - max. 3 columns, M - max. 2 columns and S - 1 column.)

The <code>FormContainer</code> elements are spread out to the columns depending on the number of <code>FormContainer</code> elements and their size. For example, if there are 4 columns and 2 <code>FormContainer</code> elements, each <code>FormContainer</code> element will use 2 columns. If there are 3 columns and 2 <code>FormContainer</code> elements, the larger one will use 2 columns, the smaller one 1 column. The size of a <code>FormContainer</code> element will be determined based on the number of visible <code>FormElement</code> elements assigned to it. If there are more <code>FormContainer</code> elements than columns, every <code>FormContainer</code> element uses only one column. So the last row of the <code>Form</code> control will not be fully used.

The default size of the <code>FormContainer</code> element can be overwritten by using <code>ColumnContainerData</code> as <code>LayoutData</code>. If one <code>FormContainer</code> element has <code>ColumnContainerData</code> set, the size calculation of the other <code>FormContainer</code> elements might not lead to the expected result. In this case, use <code>ColumnContainerData</code> also for the other <code>FormContainer</code> elements.

The <code>FormElement</code> elements are spread out to the columns of a <code>FormContainer</code> element arranged in a newspaper-like order. The position of the labels and fields depends on the size of the used column. If there is enough space, the labels are beside the fields, otherwise above the fields.

The default size of a content control of a <code>FormElement</code> element can be overwritten using <code>ColumnElementData</code> as <code>LayoutData</code>. If one control assigned to a <code>FormElement</code> element has <code>ColumnElementData</code> set, the size calculation of the other controls assigned to the <code>FormElement</code> element might not lead to the expected result. In this case, use <code>ColumnElementData</code> for the other controls, assigned to the <code>FormElement</code> element, too.

The placement of the <code>FormElement</code> elements is made by the browser <code>column-count</code> logic. So this can be different in different browsers and lead in some cases to other results than might be expected.

<b>Note:</b> This control cannot be used stand-alone, it just renders a <code>Form</code> control, so it must be assigned to a <code>Form</code> control using the <code>layout</code> aggregation.
*/
extern class ColumnLayout extends sap.ui.layout.form.FormLayout
{
	@:overload(function(?sId:String, ?mSettings:ColumnLayoutArgs):Void {})
	public function new(?mSettings:ColumnLayoutArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.layout.form.ColumnLayout with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.layout.form.FormLayout.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getColumnsL columnsL}.

Number of columns for large size.

The number of columns for large size must not be smaller than the number of columns for medium size.

Default value is <code>2</code>.
	* @return	Value of property <code>columnsL</code>
	*/
	public function getColumnsL( ):sap.ui.layout.form.ColumnsL;

	/**
	* Gets current value of property {@link #getColumnsM columnsM}.

Number of columns for medium size.

Default value is <code>1</code>.
	* @return	Value of property <code>columnsM</code>
	*/
	public function getColumnsM( ):sap.ui.layout.form.ColumnsM;

	/**
	* Gets current value of property {@link #getColumnsXL columnsXL}.

Number of columns for extra-large size.

The number of columns for extra-large size must not be smaller than the number of columns for large size.

Default value is <code>2</code>.
	* @return	Value of property <code>columnsXL</code>
	*/
	public function getColumnsXL( ):sap.ui.layout.form.ColumnsXL;

	/**
	* Gets current value of property {@link #getEmptyCellsLarge emptyCellsLarge}.

Defines how many cells are empty at the end of a row. This could be used to keep the fields small on large screens.

Default value is <code>0</code>.
	* @return	Value of property <code>emptyCellsLarge</code>
	*/
	public function getEmptyCellsLarge( ):sap.ui.layout.form.EmptyCells;

	/**
	* Gets current value of property {@link #getLabelCellsLarge labelCellsLarge}.

Defines how many cells a label uses if the column is large.

Default value is <code>4</code>.
	* @return	Value of property <code>labelCellsLarge</code>
	*/
	public function getLabelCellsLarge( ):sap.ui.layout.form.ColumnCells;

	/**
	* Returns a metadata object for class sap.ui.layout.form.ColumnLayout.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Sets a new value for property {@link #getColumnsL columnsL}.

Number of columns for large size.

The number of columns for large size must not be smaller than the number of columns for medium size.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>2</code>.
	* @param	sColumnsL New value for property <code>columnsL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumnsL( sColumnsL:sap.ui.layout.form.ColumnsL):sap.ui.layout.form.ColumnLayout;

	/**
	* Sets a new value for property {@link #getColumnsM columnsM}.

Number of columns for medium size.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	sColumnsM New value for property <code>columnsM</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumnsM( sColumnsM:sap.ui.layout.form.ColumnsM):sap.ui.layout.form.ColumnLayout;

	/**
	* Sets a new value for property {@link #getColumnsXL columnsXL}.

Number of columns for extra-large size.

The number of columns for extra-large size must not be smaller than the number of columns for large size.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>2</code>.
	* @param	sColumnsXL New value for property <code>columnsXL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumnsXL( sColumnsXL:sap.ui.layout.form.ColumnsXL):sap.ui.layout.form.ColumnLayout;

	/**
	* Sets a new value for property {@link #getEmptyCellsLarge emptyCellsLarge}.

Defines how many cells are empty at the end of a row. This could be used to keep the fields small on large screens.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	sEmptyCellsLarge New value for property <code>emptyCellsLarge</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEmptyCellsLarge( sEmptyCellsLarge:sap.ui.layout.form.EmptyCells):sap.ui.layout.form.ColumnLayout;

	/**
	* Sets a new value for property {@link #getLabelCellsLarge labelCellsLarge}.

Defines how many cells a label uses if the column is large.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>4</code>.
	* @param	sLabelCellsLarge New value for property <code>labelCellsLarge</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLabelCellsLarge( sLabelCellsLarge:sap.ui.layout.form.ColumnCells):sap.ui.layout.form.ColumnLayout;
}

typedef ColumnLayoutArgs = sap.ui.layout.form.FormLayout.FormLayoutArgs & {

	/**
	* Number of columns for extra-large size.

The number of columns for extra-large size must not be smaller than the number of columns for large size.
	*/
	@:optional var columnsXL:haxe.extern.EitherType<String,sap.ui.layout.form.ColumnsXL>;

	/**
	* Number of columns for large size.

The number of columns for large size must not be smaller than the number of columns for medium size.
	*/
	@:optional var columnsL:haxe.extern.EitherType<String,sap.ui.layout.form.ColumnsL>;

	/**
	* Number of columns for medium size.
	*/
	@:optional var columnsM:haxe.extern.EitherType<String,sap.ui.layout.form.ColumnsM>;

	/**
	* Defines how many cells a label uses if the column is large.
	*/
	@:optional var labelCellsLarge:haxe.extern.EitherType<String,sap.ui.layout.form.ColumnCells>;

	/**
	* Defines how many cells are empty at the end of a row. This could be used to keep the fields small on large screens.
	*/
	@:optional var emptyCellsLarge:haxe.extern.EitherType<String,sap.ui.layout.form.EmptyCells>;
}
