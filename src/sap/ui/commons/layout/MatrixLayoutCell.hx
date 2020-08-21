package sap.ui.commons.layout;

@:native("sap.ui.commons.layout.MatrixLayoutCell")

/**
* Non-control element used as part of a matrix layout's inner structure.
*/
extern class MatrixLayoutCell extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:MatrixLayoutCellArgs):Void {})
	public function new(?mSettings:MatrixLayoutCellArgs):Void;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.ui.commons.layout.MatrixLayoutCell;

	/**
	* The string given as "sStyleClass" will be added to the "class" attribute of this element's root HTML element.

This method is intended to be used to mark controls as being of a special type for which special styling can be provided using CSS selectors that reference this style class name.

<pre>
Example:
myButton.addStyleClass("myRedTextButton"); // add a CSS class to one button instance

...and in CSS:
.myRedTextButton {
color: red;
}
</pre>

This will add the CSS class "myRedTextButton" to the Button HTML and the CSS code above will then make the text in this particular button red.

Only characters allowed inside HTML attributes are allowed. Quotes are not allowed and this method will ignore any strings containing quotes. Strings containing spaces are interpreted as ONE custom style class (even though CSS selectors interpret them as different classes) and can only removed later by calling removeStyleClass() with exactly the same (space-containing) string as parameter. Multiple calls with the same sStyleClass will have no different effect than calling once. If sStyleClass is null, the call is ignored.

Returns <code>this</code> to allow method chaining
	* @param	sStyleClass the CSS class name to be added
	* @return	null
	*/
	public function addStyleClass( sStyleClass:String):sap.ui.commons.layout.MatrixLayoutCell;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.ui.commons.layout.MatrixLayoutCell;

	/**
	* Creates a new subclass of class sap.ui.commons.layout.MatrixLayoutCell with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getBackgroundDesign backgroundDesign}.

Determines the matrix layout cell's background design.

Default value is <code>'Transparent'</code>.
	* @return	Value of property <code>backgroundDesign</code>
	*/
	public function getBackgroundDesign( ):sap.ui.commons.layout.BackgroundDesign;

	/**
	* Gets current value of property {@link #getColSpan colSpan}.

Determines how many columns of the underlying grid structure are occupied by this matrix layout cell.

Default value is <code>1</code>.
	* @return	Value of property <code>colSpan</code>
	*/
	public function getColSpan( ):Int;

	/**
	* Gets content of aggregation {@link #getContent content}.

The matrix layout cell's content (arbitrary controls).

If the matrix row has a defined height and the matrix has layoutFixed = true, the controls inside of a cell should all use the same unit for its height property.
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getHAlign hAlign}.

Determines the horizontal alignment of the matrix layout cell's content with the cell's borders.

Default value is <code>'Begin'</code>.
	* @return	Value of property <code>hAlign</code>
	*/
	public function getHAlign( ):sap.ui.commons.layout.HAlign;

	/**
	* Returns a metadata object for class sap.ui.commons.layout.MatrixLayoutCell.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getPadding padding}.

Determines the padding of the matrix layout cell's content within the cell's borders. The default value is appropriate for all cells in a form-like layout. Consider to remove the padding on the outer layout in case of nesting.

Default value is <code>'End'</code>.
	* @return	Value of property <code>padding</code>
	*/
	public function getPadding( ):sap.ui.commons.layout.Padding;

	/**
	* Gets current value of property {@link #getRowSpan rowSpan}.

Determines how many rows of the underlying grid structure are occupied by this matrix layout cell. In case a row-height is used, all rows affected by the RowSpan must have the same unit.

Default value is <code>1</code>.
	* @return	Value of property <code>rowSpan</code>
	*/
	public function getRowSpan( ):Int;

	/**
	* Gets current value of property {@link #getSeparation separation}.

Determines how a matrix layout cell is separated from its predecessor, via a vertical gutter of variable width, with or without a vertical line.

Default value is <code>'None'</code>.
	* @return	Value of property <code>separation</code>
	*/
	public function getSeparation( ):sap.ui.commons.layout.Separation;

	/**
	* Gets current value of property {@link #getVAlign vAlign}.

Determines the vertical alignment of the matrix layout cell's content with the cell's borders.

Default value is <code>'Middle'</code>.
	* @return	Value of property <code>vAlign</code>
	*/
	public function getVAlign( ):sap.ui.commons.layout.VAlign;

	/**
	* Returns true if the given style class string is valid and if this Element has this style class set via a previous call to addStyleClass().
	* @param	sStyleClass the style to check for
	* @return	null
	*/
	public function hasStyleClass( sStyleClass:String):Bool;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getContent content}. and returns its index if found or -1 otherwise.
	* @param	oContent The content whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfContent( oContent:sap.ui.core.Control):Int;

	/**
	* Inserts a content into the aggregation {@link #getContent content}.
	* @param	oContent The content to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the content should be inserted at; for a negative value of <code>iIndex</code>, the content is inserted at position 0; for a value greater than the current size of the aggregation, the content is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.ui.commons.layout.MatrixLayoutCell;

	/**
	* Removes all the controls from the aggregation {@link #getContent content}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllContent( ):Array<sap.ui.core.Control>;
	@:overload( function(vContent:Int):sap.ui.core.Control{ })
	@:overload( function(vContent:String):sap.ui.core.Control{ })

	/**
	* Removes a content from the aggregation {@link #getContent content}.
	* @param	vContent The content to remove or its index or id
	* @return	The removed content or <code>null</code>
	*/
	public function removeContent( vContent:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Removes the given string from the list of custom style classes that have been set previously. Regular style classes like "sapUiBtn" cannot be removed.

Returns <code>this</code> to allow method chaining
	* @param	sStyleClass the style to be removed
	* @return	null
	*/
	public function removeStyleClass( sStyleClass:String):sap.ui.commons.layout.MatrixLayoutCell;

	/**
	* Sets a new value for property {@link #getBackgroundDesign backgroundDesign}.

Determines the matrix layout cell's background design.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>'Transparent'</code>.
	* @param	sBackgroundDesign New value for property <code>backgroundDesign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundDesign( ?sBackgroundDesign:sap.ui.commons.layout.BackgroundDesign):sap.ui.commons.layout.MatrixLayoutCell;

	/**
	* Sets a new value for property {@link #getColSpan colSpan}.

Determines how many columns of the underlying grid structure are occupied by this matrix layout cell.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	iColSpan New value for property <code>colSpan</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColSpan( ?iColSpan:Int):sap.ui.commons.layout.MatrixLayoutCell;

	/**
	* Sets a new value for property {@link #getHAlign hAlign}.

Determines the horizontal alignment of the matrix layout cell's content with the cell's borders.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>'Begin'</code>.
	* @param	sHAlign New value for property <code>hAlign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHAlign( ?sHAlign:sap.ui.commons.layout.HAlign):sap.ui.commons.layout.MatrixLayoutCell;

	/**
	* Sets a new value for property {@link #getPadding padding}.

Determines the padding of the matrix layout cell's content within the cell's borders. The default value is appropriate for all cells in a form-like layout. Consider to remove the padding on the outer layout in case of nesting.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>'End'</code>.
	* @param	sPadding New value for property <code>padding</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPadding( ?sPadding:sap.ui.commons.layout.Padding):sap.ui.commons.layout.MatrixLayoutCell;

	/**
	* Sets a new value for property {@link #getRowSpan rowSpan}.

Determines how many rows of the underlying grid structure are occupied by this matrix layout cell. In case a row-height is used, all rows affected by the RowSpan must have the same unit.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	iRowSpan New value for property <code>rowSpan</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRowSpan( ?iRowSpan:Int):sap.ui.commons.layout.MatrixLayoutCell;

	/**
	* Sets a new value for property {@link #getSeparation separation}.

Determines how a matrix layout cell is separated from its predecessor, via a vertical gutter of variable width, with or without a vertical line.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>'None'</code>.
	* @param	sSeparation New value for property <code>separation</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSeparation( ?sSeparation:sap.ui.commons.layout.Separation):sap.ui.commons.layout.MatrixLayoutCell;

	/**
	* Sets a new value for property {@link #getVAlign vAlign}.

Determines the vertical alignment of the matrix layout cell's content with the cell's borders.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>'Middle'</code>.
	* @param	sVAlign New value for property <code>vAlign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVAlign( ?sVAlign:sap.ui.commons.layout.VAlign):sap.ui.commons.layout.MatrixLayoutCell;
}

typedef MatrixLayoutCellArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Determines the matrix layout cell's background design.
	*/
	@:optional var backgroundDesign:haxe.extern.EitherType<String,sap.ui.commons.layout.BackgroundDesign>;

	/**
	* Determines how many columns of the underlying grid structure are occupied by this matrix layout cell.
	*/
	@:optional var colSpan:haxe.extern.EitherType<String,Int>;

	/**
	* Determines the horizontal alignment of the matrix layout cell's content with the cell's borders.
	*/
	@:optional var hAlign:haxe.extern.EitherType<String,sap.ui.commons.layout.HAlign>;

	/**
	* Determines the padding of the matrix layout cell's content within the cell's borders. The default value is appropriate for all cells in a form-like layout. Consider to remove the padding on the outer layout in case of nesting.
	*/
	@:optional var padding:haxe.extern.EitherType<String,sap.ui.commons.layout.Padding>;

	/**
	* Determines how many rows of the underlying grid structure are occupied by this matrix layout cell. In case a row-height is used, all rows affected by the RowSpan must have the same unit.
	*/
	@:optional var rowSpan:haxe.extern.EitherType<String,Int>;

	/**
	* Determines how a matrix layout cell is separated from its predecessor, via a vertical gutter of variable width, with or without a vertical line.
	*/
	@:optional var separation:haxe.extern.EitherType<String,sap.ui.commons.layout.Separation>;

	/**
	* Determines the vertical alignment of the matrix layout cell's content with the cell's borders.
	*/
	@:optional var vAlign:haxe.extern.EitherType<String,sap.ui.commons.layout.VAlign>;

    /**
    * The matrix layout cell's content (arbitrary controls).

If the matrix row has a defined height and the matrix has layoutFixed = true, the controls inside of a cell should all use the same unit for its height property.
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;
}
