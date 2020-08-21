package sap.ui.commons.layout;

@:native("sap.ui.commons.layout.MatrixLayoutRow")

/**
* Non-control element used as part of a matrix layout's inner structure.
*/
extern class MatrixLayoutRow extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:MatrixLayoutRowArgs):Void {})
	public function new(?mSettings:MatrixLayoutRowArgs):Void;

	/**
	* Adds some cell to the aggregation {@link #getCells cells}.
	* @param	oCell The cell to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addCell( oCell:sap.ui.commons.layout.MatrixLayoutCell):sap.ui.commons.layout.MatrixLayoutRow;

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
	public function addStyleClass( sStyleClass:String):sap.ui.commons.layout.MatrixLayoutRow;

	/**
	* Destroys all the cells in the aggregation {@link #getCells cells}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyCells( ):sap.ui.commons.layout.MatrixLayoutRow;

	/**
	* Creates a new subclass of class sap.ui.commons.layout.MatrixLayoutRow with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets content of aggregation {@link #getCells cells}.

The matrix layout row's individual cells.
	* @return	null
	*/
	public function getCells( ):Array<sap.ui.commons.layout.MatrixLayoutCell>;

	/**
	* Gets current value of property {@link #getHeight height}.

Height of the row.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.ui.commons.layout.MatrixLayoutRow.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Returns true if the given style class string is valid and if this Element has this style class set via a previous call to addStyleClass().
	* @param	sStyleClass the style to check for
	* @return	null
	*/
	public function hasStyleClass( sStyleClass:String):Bool;

	/**
	* Checks for the provided <code>sap.ui.commons.layout.MatrixLayoutCell</code> in the aggregation {@link #getCells cells}. and returns its index if found or -1 otherwise.
	* @param	oCell The cell whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfCell( oCell:sap.ui.commons.layout.MatrixLayoutCell):Int;

	/**
	* Inserts a cell into the aggregation {@link #getCells cells}.
	* @param	oCell The cell to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the cell should be inserted at; for a negative value of <code>iIndex</code>, the cell is inserted at position 0; for a value greater than the current size of the aggregation, the cell is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertCell( oCell:sap.ui.commons.layout.MatrixLayoutCell, iIndex:Int):sap.ui.commons.layout.MatrixLayoutRow;

	/**
	* Removes all the controls from the aggregation {@link #getCells cells}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllCells( ):Array<sap.ui.commons.layout.MatrixLayoutCell>;
	@:overload( function(vCell:Int):sap.ui.commons.layout.MatrixLayoutCell{ })
	@:overload( function(vCell:String):sap.ui.commons.layout.MatrixLayoutCell{ })

	/**
	* Removes a cell from the aggregation {@link #getCells cells}.
	* @param	vCell The cell to remove or its index or id
	* @return	The removed cell or <code>null</code>
	*/
	public function removeCell( vCell:sap.ui.commons.layout.MatrixLayoutCell):sap.ui.commons.layout.MatrixLayoutCell;

	/**
	* Removes the given string from the list of custom style classes that have been set previously. Regular style classes like "sapUiBtn" cannot be removed.

Returns <code>this</code> to allow method chaining
	* @param	sStyleClass the style to be removed
	* @return	null
	*/
	public function removeStyleClass( sStyleClass:String):sap.ui.commons.layout.MatrixLayoutRow;

	/**
	* Sets a new value for property {@link #getHeight height}.

Height of the row.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( ?sHeight:sap.ui.core.CSSSize):sap.ui.commons.layout.MatrixLayoutRow;
}

typedef MatrixLayoutRowArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Height of the row.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

    /**
    * The matrix layout row's individual cells.
    */
	@:optional var cells:Array<haxe.extern.EitherType<String,sap.ui.commons.layout.MatrixLayoutCell>>;
}
