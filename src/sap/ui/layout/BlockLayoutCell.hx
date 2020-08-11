package sap.ui.layout;

@:native("sap.ui.layout.BlockLayoutCell")

/**
* The BlockLayoutCell is used as an aggregation of the BlockLayoutRow. It contains Controls. The BlockLayoutCell should be used only as aggregation of the BlockLayoutRow.
*/
extern class BlockLayoutCell extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:BlockLayoutCellArgs):Void {})
	public function new(?mSettings:BlockLayoutCellArgs):Void;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.ui.layout.BlockLayoutCell;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.ui.layout.BlockLayoutCell;

	/**
	* Destroys the titleLink in the aggregation {@link #getTitleLink titleLink}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyTitleLink( ):sap.ui.layout.BlockLayoutCell;

	/**
	* Creates a new subclass of class sap.ui.layout.BlockLayoutCell with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getBackgroundColorSet backgroundColorSet}.

The Background color set from which the background color will be selected. By using background colors from the predefined sets your colors could later be customized from the Theme Designer. <b>Note:</b> backgroundColorSet should be used only in combination with backgroundColorShade.
	* @return	Value of property <code>backgroundColorSet</code>
	*/
	public function getBackgroundColorSet( ):sap.ui.layout.BlockLayoutCellColorSet;

	/**
	* Gets current value of property {@link #getBackgroundColorShade backgroundColorShade}.

The index of the background color in the color set from which the color will be selected. By using background colors from the predefined sets your colors could later be customized from the Theme Designer. <b>Note:</b> backgroundColorShade should be used only in combination with backgroundColorSet.
	* @return	Value of property <code>backgroundColorShade</code>
	*/
	public function getBackgroundColorShade( ):sap.ui.layout.BlockLayoutCellColorShade;

	/**
	* Gets content of aggregation {@link #getContent content}.

The content to be included inside the cell
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Returns a metadata object for class sap.ui.layout.BlockLayoutCell.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getTitle title}.

Defines the title of the cell. <b>Note:</b> When the <code>titleLink</code> aggregation is provided, the title of the cell will be replaced with the text from the <code>titleLink</code>.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Gets current value of property {@link #getTitleAlignment titleAlignment}.

Defines the alignment of the cell title

Default value is <code>Begin</code>.
	* @return	Value of property <code>titleAlignment</code>
	*/
	public function getTitleAlignment( ):sap.ui.core.HorizontalAlign;

	/**
	* Gets current value of property {@link #getTitleLevel titleLevel}.

Defines the aria level of the title This information is e.g. used by assistive technologies like screenreaders to create a hierarchical site map for faster navigation.

Default value is <code>Auto</code>.
	* @return	Value of property <code>titleLevel</code>
	*/
	public function getTitleLevel( ):sap.ui.core.TitleLevel;

	/**
	* Gets content of aggregation {@link #getTitleLink titleLink}.

The link that will replace the title of the cell. <b>Note:</b> The only possible value is the <code>sap.m.Link</code> control.
	* @return	null
	*/
	public function getTitleLink( ):sap.ui.core.Control;

	/**
	* Gets current value of property {@link #getWidth width}.

Defines the width of the cell. Depending on the context of the cell - whether it's in scrollable, or non scrollable row, this property is interpreted in two different ways. If the cell is placed inside a scrollable row - this property defines the width of the cell in percentages. If no value is provided - the default is 40%. If the cell is placed inside a non scrollable row - this property defines the grow factor of the cell compared to the whole row. <b>For example:</b> If you have 2 cells, each with width of 1, this means that they should be of equal size, and they need to fill the whole row. This results in 50% width for each cell. If you have 2 cells, one with width of 1, the other with width of 3, this means that the whole row width is 4, so the first cell will have a width of 25%, the second - 75%. According to the visual guidelines, it is suggested that you only use 25%, 50%, 75% or 100% cells in you applications. For example, 12,5% width is not desirable (1 cell with width 1, and another with width 7)

Default value is <code>0</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):Int;

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
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.ui.layout.BlockLayoutCell;

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
	* Sets a new value for property {@link #getBackgroundColorSet backgroundColorSet}.

The Background color set from which the background color will be selected. By using background colors from the predefined sets your colors could later be customized from the Theme Designer. <b>Note:</b> backgroundColorSet should be used only in combination with backgroundColorShade.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sBackgroundColorSet New value for property <code>backgroundColorSet</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundColorSet( sBackgroundColorSet:sap.ui.layout.BlockLayoutCellColorSet):sap.ui.layout.BlockLayoutCell;

	/**
	* Sets a new value for property {@link #getBackgroundColorShade backgroundColorShade}.

The index of the background color in the color set from which the color will be selected. By using background colors from the predefined sets your colors could later be customized from the Theme Designer. <b>Note:</b> backgroundColorShade should be used only in combination with backgroundColorSet.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sBackgroundColorShade New value for property <code>backgroundColorShade</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundColorShade( sBackgroundColorShade:sap.ui.layout.BlockLayoutCellColorShade):sap.ui.layout.BlockLayoutCell;

	/**
	* Sets a new value for property {@link #getTitle title}.

Defines the title of the cell. <b>Note:</b> When the <code>titleLink</code> aggregation is provided, the title of the cell will be replaced with the text from the <code>titleLink</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( sTitle:String):sap.ui.layout.BlockLayoutCell;

	/**
	* Sets a new value for property {@link #getTitleAlignment titleAlignment}.

Defines the alignment of the cell title

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Begin</code>.
	* @param	sTitleAlignment New value for property <code>titleAlignment</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleAlignment( ?sTitleAlignment:sap.ui.core.HorizontalAlign):sap.ui.layout.BlockLayoutCell;

	/**
	* Sets a new value for property {@link #getTitleLevel titleLevel}.

Defines the aria level of the title This information is e.g. used by assistive technologies like screenreaders to create a hierarchical site map for faster navigation.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Auto</code>.
	* @param	sTitleLevel New value for property <code>titleLevel</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleLevel( ?sTitleLevel:sap.ui.core.TitleLevel):sap.ui.layout.BlockLayoutCell;

	/**
	* Sets the aggregated {@link #getTitleLink titleLink}.
	* @param	oTitleLink The titleLink to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleLink( oTitleLink:sap.ui.core.Control):sap.ui.layout.BlockLayoutCell;

	/**
	* Sets the Width.
	* @param	iWidth value.
	* @return	this BlockLayoutCell reference for chaining.
	*/
	public function setWidth( iWidth:String):sap.ui.layout.BlockLayoutCell;
}

typedef BlockLayoutCellArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the title of the cell. <b>Note:</b> When the <code>titleLink</code> aggregation is provided, the title of the cell will be replaced with the text from the <code>titleLink</code>.
	*/
	@:optional var title:String;

	/**
	* Defines the alignment of the cell title
	*/
	@:optional var titleAlignment:haxe.extern.EitherType<String,sap.ui.core.HorizontalAlign>;

	/**
	* Defines the aria level of the title This information is e.g. used by assistive technologies like screenreaders to create a hierarchical site map for faster navigation.
	*/
	@:optional var titleLevel:haxe.extern.EitherType<String,sap.ui.core.TitleLevel>;

	/**
	* Defines the width of the cell. Depending on the context of the cell - whether it's in scrollable, or non scrollable row, this property is interpreted in two different ways. If the cell is placed inside a scrollable row - this property defines the width of the cell in percentages. If no value is provided - the default is 40%. If the cell is placed inside a non scrollable row - this property defines the grow factor of the cell compared to the whole row. <b>For example:</b> If you have 2 cells, each with width of 1, this means that they should be of equal size, and they need to fill the whole row. This results in 50% width for each cell. If you have 2 cells, one with width of 1, the other with width of 3, this means that the whole row width is 4, so the first cell will have a width of 25%, the second - 75%. According to the visual guidelines, it is suggested that you only use 25%, 50%, 75% or 100% cells in you applications. For example, 12,5% width is not desirable (1 cell with width 1, and another with width 7)
	*/
	@:optional var width:haxe.extern.EitherType<String,Int>;

	/**
	* The Background color set from which the background color will be selected. By using background colors from the predefined sets your colors could later be customized from the Theme Designer. <b>Note:</b> backgroundColorSet should be used only in combination with backgroundColorShade.
	*/
	@:optional var backgroundColorSet:haxe.extern.EitherType<String,sap.ui.layout.BlockLayoutCellColorSet>;

	/**
	* The index of the background color in the color set from which the color will be selected. By using background colors from the predefined sets your colors could later be customized from the Theme Designer. <b>Note:</b> backgroundColorShade should be used only in combination with backgroundColorSet.
	*/
	@:optional var backgroundColorShade:haxe.extern.EitherType<String,sap.ui.layout.BlockLayoutCellColorShade>;

    /**
    * The content to be included inside the cell
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * The link that will replace the title of the cell. <b>Note:</b> The only possible value is the <code>sap.m.Link</code> control.
    */
	@:optional var titleLink:haxe.extern.EitherType<String,sap.ui.core.Control>;
}
