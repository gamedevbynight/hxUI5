package sap.ui.commons.layout;

@:native("sap.ui.commons.layout.MatrixLayout")

/**
* <p> A matrix layout arranges controls in a grid structure, using rows which need not have the same number of cells. </p>

<p> It uses predefined cell classes that guarantee appropriate distances between cells in the grid. The cell's <code>vGutter</code> property lets you specify additional horizontal distances easily. You can set these additional distances (known as gutters) with or without separators. The distance for each cell is specified by assigning a specific enumeration value of the class <code>LayoutCellSeparator</code> of the matrix data object. </p>

<p> You should <b>avoid nesting</b> matrix layouts. You should only use a matrix layout if you need to align controls horizontally across rows. </p>
*/
extern class MatrixLayout extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:MatrixLayoutArgs):Void {})
	public function new(?mSettings:MatrixLayoutArgs):Void;

	/**
	* Adds some row to the aggregation {@link #getRows rows}.
	* @param	oRow The row to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addRow( oRow:sap.ui.commons.layout.MatrixLayoutRow):sap.ui.commons.layout.MatrixLayout;

	/**
	* Creates a new matrix layout row and appends it to this matrix layout.

Each argument must be either a matrix layout cell, which is added to the row "as is", or an arbitrary content control, which is wrapped with a new (default) matrix layout cell first and then added to the row.
	* @return	<code>this</code> to allow method chaining
	*/
	public function createRow( ):sap.ui.commons.layout.MatrixLayout;

	/**
	* Destroys all the rows in the aggregation {@link #getRows rows}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyRows( ):sap.ui.commons.layout.MatrixLayout;

	/**
	* Creates a new subclass of class sap.ui.commons.layout.MatrixLayout with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getColumns columns}.

Number of columns. If not specified, the number of columns will be determined from the given cells.
	* @return	Value of property <code>columns</code>
	*/
	public function getColumns( ):Int;

	/**
	* Gets current value of property {@link #getHeight height}.

CSS height of the matrix layout.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getLayoutFixed layoutFixed}.

Sets the table layout. If fixed the width parameter of a column has priority, if not the width of the content of the colums has priority. The default is "fixed". If the fixed layout is used an adequate width of the MatrixLayout should be provided. Otherwise the column width displayed could be different than the given ones because of browser dependend optimazations.

Default value is <code>true</code>.
	* @return	Value of property <code>layoutFixed</code>
	*/
	public function getLayoutFixed( ):Bool;

	/**
	* Returns a metadata object for class sap.ui.commons.layout.MatrixLayout.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets content of aggregation {@link #getRows rows}.

The matrix layout's individual rows.
	* @return	null
	*/
	public function getRows( ):Array<sap.ui.commons.layout.MatrixLayoutRow>;

	/**
	* Gets current value of property {@link #getWidth width}.

CSS width of the matrix layout. If the LayoutFixed = true an adequate width should be provided.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getWidths widths}.

Widths of the columns. Use an array to define the widths of the columns. If a column shall have an automatical sizing enter "auto" for this column width.
	* @return	Value of property <code>widths</code>
	*/
	public function getWidths( ):Array<sap.ui.core.CSSSize>;

	/**
	* Checks for the provided <code>sap.ui.commons.layout.MatrixLayoutRow</code> in the aggregation {@link #getRows rows}. and returns its index if found or -1 otherwise.
	* @param	oRow The row whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfRow( oRow:sap.ui.commons.layout.MatrixLayoutRow):Int;

	/**
	* Inserts a row into the aggregation {@link #getRows rows}.
	* @param	oRow The row to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the row should be inserted at; for a negative value of <code>iIndex</code>, the row is inserted at position 0; for a value greater than the current size of the aggregation, the row is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertRow( oRow:sap.ui.commons.layout.MatrixLayoutRow, iIndex:Int):sap.ui.commons.layout.MatrixLayout;

	/**
	* Removes all the controls from the aggregation {@link #getRows rows}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllRows( ):Array<sap.ui.commons.layout.MatrixLayoutRow>;
	@:overload( function(vRow:Int):sap.ui.commons.layout.MatrixLayoutRow{ })
	@:overload( function(vRow:String):sap.ui.commons.layout.MatrixLayoutRow{ })

	/**
	* Removes a row from the aggregation {@link #getRows rows}.
	* @param	vRow The row to remove or its index or id
	* @return	The removed row or <code>null</code>
	*/
	public function removeRow( vRow:sap.ui.commons.layout.MatrixLayoutRow):sap.ui.commons.layout.MatrixLayoutRow;

	/**
	* Sets a new value for property {@link #getColumns columns}.

Number of columns. If not specified, the number of columns will be determined from the given cells.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iColumns New value for property <code>columns</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumns( ?iColumns:Int):sap.ui.commons.layout.MatrixLayout;

	/**
	* Sets a new value for property {@link #getHeight height}.

CSS height of the matrix layout.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( ?sHeight:sap.ui.core.CSSSize):sap.ui.commons.layout.MatrixLayout;

	/**
	* Sets a new value for property {@link #getLayoutFixed layoutFixed}.

Sets the table layout. If fixed the width parameter of a column has priority, if not the width of the content of the colums has priority. The default is "fixed". If the fixed layout is used an adequate width of the MatrixLayout should be provided. Otherwise the column width displayed could be different than the given ones because of browser dependend optimazations.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bLayoutFixed New value for property <code>layoutFixed</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLayoutFixed( ?bLayoutFixed:Bool):sap.ui.commons.layout.MatrixLayout;

	/**
	* Sets a new value for property {@link #getWidth width}.

CSS width of the matrix layout. If the LayoutFixed = true an adequate width should be provided.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.ui.commons.layout.MatrixLayout;

	/**
	* Sets a new value for property {@link #getWidths widths}.

Widths of the columns. Use an array to define the widths of the columns. If a column shall have an automatical sizing enter "auto" for this column width.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidths New value for property <code>widths</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidths( ?sWidths:Array<sap.ui.core.CSSSize>):sap.ui.commons.layout.MatrixLayout;
}

typedef MatrixLayoutArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* CSS width of the matrix layout. If the LayoutFixed = true an adequate width should be provided.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* CSS height of the matrix layout.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Sets the table layout. If fixed the width parameter of a column has priority, if not the width of the content of the colums has priority. The default is "fixed". If the fixed layout is used an adequate width of the MatrixLayout should be provided. Otherwise the column width displayed could be different than the given ones because of browser dependend optimazations.
	*/
	@:optional var layoutFixed:haxe.extern.EitherType<String,Bool>;

	/**
	* Number of columns. If not specified, the number of columns will be determined from the given cells.
	*/
	@:optional var columns:haxe.extern.EitherType<String,Int>;

	/**
	* Widths of the columns. Use an array to define the widths of the columns. If a column shall have an automatical sizing enter "auto" for this column width.
	*/
	@:optional var widths:Array<haxe.extern.EitherType<String,sap.ui.core.CSSSize>>;

    /**
    * The matrix layout's individual rows.
    */
	@:optional var rows:Array<haxe.extern.EitherType<String,sap.ui.commons.layout.MatrixLayoutRow>>;
}
