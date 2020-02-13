package sap.ui.layout.cssgrid;

@:native("sap.ui.layout.cssgrid.CSSGrid")

/**
* A layout control, used to create full page layouts or user interface elements.

<h3>Overview</h3>

A two-dimensional layout control based on the native-browser CSS display grid which can handle both columns and rows. The control can be used along with {@link sap.m.FlexBox} which is the one-dimensional alternative for layouting.

With properties it is possible to define: <ul> <li>columns, rows and their sizes in the grid</li> <li>vertical and horizontal gaps between the grid items</li> <li>the flow algorithm when new items are added in the grid</li> </ul>

The dimensions of the grid items are defined on a <code>CSSGrid</code> level. Every item can override its size by specifying how many columns and/or rows it will take in the <code>CSSGrid</code>. Every item can override its position by specifying from which column and/or row it will start. The configuration of a single item is done with {@link sap.ui.layout.cssgrid.GridItemLayoutData GridItemLayoutData}.

<h3>Terminology</h3> <ul> <li>Grid - The container which has all grid settings</li> <li>Gutters - The gap between the rows and columns</li> <li>Grid areas - Items that take more than one row and/or column</li> <li>Grid cells - The items of the Grid</li> <li>Grid lines - The lines around and between the rows and columns</li> <li>Grid tracks - The space between any two lines in the grid</li> <li>"fr" Unit - A special grid unit (short from "fraction") which represents a fraction of the available space in the grid</li> <li>Implicit and Explicit grid - Explicit grid consists of rows and columns defined with <code>gridTemplateColumns</code> and <code>gridTemplateRows</code>. The grid also creates rows and columns on its own when needed. Their dimensions are defined with <code>gridAutoColumns</code> and <code>gridAutoRows</code>.</li> </ul>

<h3>Structure</h3> The <code>CSSGrid</code> has the following elements: <ul> <li><code>items</code> - The items of the <code>CSSGrid</code></li> <li><code>customLayout</code> - An aggregation used to pass the <code>CSSGrid</code> configuration. Used for templating.</li> </ul>

<h3>Usage</h3>

For general cases, use the <code>CSSGrid</code> properties to configure how the layout should look. For Box case (equal sized items), use <code>customLayout</code> aggregation with {@link sap.ui.layout.cssgrid.GridBoxLayout GridBoxLayout} For Grids which need different configurations based on available width, use <code>customLayout</code> aggregation with {@link sap.ui.layout.cssgrid.GridResponsiveLayout GridResponsiveLayout} To set a specific position to an item or define its dimensions in the grid, pass <code>layoutData</code> of type {@link sap.ui.layout.cssgrid.GridItemLayoutData GridItemLayoutData}

<i>When to use</i> <ul> <li>If a two-dimensional layout configuration is needed (both columns and rows are defined)</li> </ul>

<i>When not to use</i> <ul> <li>If the layout needs to be defined only by one dimension (either column or row, not both). Use {@link sap.m.FlexBox FlexBox} instead.</li> </ul>

<h3>Responsive behavior</h3> <ul> <li>Fully configurable by the developer. It is possible to create a "breathing" columns layout which means columns width will grow/shrink depending on grid size.</li> <li>It is possible to pass a {@link sap.ui.layout.cssgrid.GridResponsiveLayout GridResponsiveLayout} to the <code>customLayout</code> aggregation of the <code>CSSGrid</code> and configure how it will look in different breakpoints (S, M, L, XL).</li> </ul>

<h3>Current Limitations</h3> <ul> <li>No support for IE11.</li> <li>No support for Edge version 15.</li> <li>No alignment and ordering</li> <li>No Named grid areas and lines</li> </ul>
*/
extern class CSSGrid extends sap.ui.core.Control implements sap.ui.layout.cssgrid.IGridConfigurable
{
	@:overload(function(?sId:String, ?mSettings:CSSGridArgs):Void {})
	public function new(?mSettings:CSSGridArgs):Void;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.ui.core.Control):sap.ui.layout.cssgrid.CSSGrid;

	/**
	* Destroys the customLayout in the aggregation {@link #getCustomLayout customLayout}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyCustomLayout( ):sap.ui.layout.cssgrid.CSSGrid;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.ui.layout.cssgrid.CSSGrid;

	/**
	* Creates a new subclass of class sap.ui.layout.cssgrid.CSSGrid with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getCustomLayout customLayout}.

Defines a custom Grid layout for the control. If provided, it will override all of the grid properties.
	* @return	null
	*/
	public function getCustomLayout( ):sap.ui.layout.cssgrid.GridLayoutBase;

	/**
	* Gets current value of property {@link #getGridAutoColumns gridAutoColumns}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-auto-columns MDN web docs: grid-auto-columns}

<b>Note:</b> Not supported in IE11, Edge 15.

Default value is <code>empty string</code>.
	* @return	Value of property <code>gridAutoColumns</code>
	*/
	public function getGridAutoColumns( ):sap.ui.layout.cssgrid.CSSGridTrack;

	/**
	* Gets current value of property {@link #getGridAutoFlow gridAutoFlow}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-auto-flow MDN web docs: grid-auto-flow}

<b>Note:</b> Not supported in IE11, Edge 15.

Default value is <code>Row</code>.
	* @return	Value of property <code>gridAutoFlow</code>
	*/
	public function getGridAutoFlow( ):sap.ui.layout.cssgrid.CSSGridAutoFlow;

	/**
	* Gets current value of property {@link #getGridAutoRows gridAutoRows}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-auto-rows MDN web docs: grid-auto-rows}

<b>Note:</b> Not supported in IE11, Edge 15.

Default value is <code>empty string</code>.
	* @return	Value of property <code>gridAutoRows</code>
	*/
	public function getGridAutoRows( ):sap.ui.layout.cssgrid.CSSGridTrack;

	/**
	* Gets current value of property {@link #getGridColumnGap gridColumnGap}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-column-gap MDN web docs: grid-column-gap}

<b>Note:</b> Not supported in IE11, Edge 15.

Default value is <code>empty string</code>.
	* @return	Value of property <code>gridColumnGap</code>
	*/
	public function getGridColumnGap( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getGridGap gridGap}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-gap MDN web docs: grid-gap} It is a shorthand for gridRowGap and gridColumnGap. If some of them is set, the gridGap value will have less priority and will be overwritten.

<b>Note:</b> Not supported in IE11, Edge 15.

Default value is <code>empty string</code>.
	* @return	Value of property <code>gridGap</code>
	*/
	public function getGridGap( ):sap.ui.layout.cssgrid.CSSGridGapShortHand;

	/**
	* Gets current value of property {@link #getGridRowGap gridRowGap}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-row-gap MDN web docs: grid-row-gap}

<b>Note:</b> Not supported in IE11, Edge 15.

Default value is <code>empty string</code>.
	* @return	Value of property <code>gridRowGap</code>
	*/
	public function getGridRowGap( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getGridTemplateColumns gridTemplateColumns}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-template-columns MDN web docs: grid-template-columns}

<b>Note:</b> Not supported in IE11, Edge 15.

Default value is <code>empty string</code>.
	* @return	Value of property <code>gridTemplateColumns</code>
	*/
	public function getGridTemplateColumns( ):sap.ui.layout.cssgrid.CSSGridTrack;

	/**
	* Gets current value of property {@link #getGridTemplateRows gridTemplateRows}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-template-rows MDN web docs: grid-template-rows}

<b>Note:</b> Not supported in IE11, Edge 15.

Default value is <code>empty string</code>.
	* @return	Value of property <code>gridTemplateRows</code>
	*/
	public function getGridTemplateRows( ):sap.ui.layout.cssgrid.CSSGridTrack;

	/**
	* Gets content of aggregation {@link #getItems items}.

The items contained by the control.
	* @return	null
	*/
	public function getItems( ):Array<sap.ui.core.Control>;

	/**
	* Returns a metadata object for class sap.ui.layout.cssgrid.CSSGrid.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getWidth width}.

The width of the control

Default value is <code>100%</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.ui.core.Control):Int;

	/**
	* Inserts a item into the aggregation {@link #getItems items}.
	* @param	oItem The item to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertItem( oItem:sap.ui.core.Control, iIndex:Int):sap.ui.layout.cssgrid.CSSGrid;

	/**
	* Removes all the controls from the aggregation {@link #getItems items}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllItems( ):Array<sap.ui.core.Control>;
	@:overload( function(vItem:Int):sap.ui.core.Control{ })
	@:overload( function(vItem:String):sap.ui.core.Control{ })

	/**
	* Removes a item from the aggregation {@link #getItems items}.
	* @param	vItem The item to remove or its index or id
	* @return	The removed item or <code>null</code>
	*/
	public function removeItem( vItem:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Sets the aggregated {@link #getCustomLayout customLayout}.
	* @param	oCustomLayout The customLayout to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCustomLayout( oCustomLayout:sap.ui.layout.cssgrid.GridLayoutBase):sap.ui.layout.cssgrid.CSSGrid;

	/**
	* Sets a new value for property {@link #getGridAutoColumns gridAutoColumns}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-auto-columns MDN web docs: grid-auto-columns}

<b>Note:</b> Not supported in IE11, Edge 15.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sGridAutoColumns New value for property <code>gridAutoColumns</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGridAutoColumns( sGridAutoColumns:sap.ui.layout.cssgrid.CSSGridTrack):sap.ui.layout.cssgrid.CSSGrid;

	/**
	* Sets a new value for property {@link #getGridAutoFlow gridAutoFlow}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-auto-flow MDN web docs: grid-auto-flow}

<b>Note:</b> Not supported in IE11, Edge 15.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Row</code>.
	* @param	sGridAutoFlow New value for property <code>gridAutoFlow</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGridAutoFlow( sGridAutoFlow:sap.ui.layout.cssgrid.CSSGridAutoFlow):sap.ui.layout.cssgrid.CSSGrid;

	/**
	* Sets a new value for property {@link #getGridAutoRows gridAutoRows}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-auto-rows MDN web docs: grid-auto-rows}

<b>Note:</b> Not supported in IE11, Edge 15.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sGridAutoRows New value for property <code>gridAutoRows</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGridAutoRows( sGridAutoRows:sap.ui.layout.cssgrid.CSSGridTrack):sap.ui.layout.cssgrid.CSSGrid;

	/**
	* Sets a new value for property {@link #getGridColumnGap gridColumnGap}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-column-gap MDN web docs: grid-column-gap}

<b>Note:</b> Not supported in IE11, Edge 15.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sGridColumnGap New value for property <code>gridColumnGap</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGridColumnGap( sGridColumnGap:sap.ui.core.CSSSize):sap.ui.layout.cssgrid.CSSGrid;

	/**
	* Sets a new value for property {@link #getGridGap gridGap}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-gap MDN web docs: grid-gap} It is a shorthand for gridRowGap and gridColumnGap. If some of them is set, the gridGap value will have less priority and will be overwritten.

<b>Note:</b> Not supported in IE11, Edge 15.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sGridGap New value for property <code>gridGap</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGridGap( sGridGap:sap.ui.layout.cssgrid.CSSGridGapShortHand):sap.ui.layout.cssgrid.CSSGrid;

	/**
	* Sets a new value for property {@link #getGridRowGap gridRowGap}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-row-gap MDN web docs: grid-row-gap}

<b>Note:</b> Not supported in IE11, Edge 15.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sGridRowGap New value for property <code>gridRowGap</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGridRowGap( sGridRowGap:sap.ui.core.CSSSize):sap.ui.layout.cssgrid.CSSGrid;

	/**
	* Sets a new value for property {@link #getGridTemplateColumns gridTemplateColumns}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-template-columns MDN web docs: grid-template-columns}

<b>Note:</b> Not supported in IE11, Edge 15.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sGridTemplateColumns New value for property <code>gridTemplateColumns</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGridTemplateColumns( sGridTemplateColumns:sap.ui.layout.cssgrid.CSSGridTrack):sap.ui.layout.cssgrid.CSSGrid;

	/**
	* Sets a new value for property {@link #getGridTemplateRows gridTemplateRows}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-template-rows MDN web docs: grid-template-rows}

<b>Note:</b> Not supported in IE11, Edge 15.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sGridTemplateRows New value for property <code>gridTemplateRows</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGridTemplateRows( sGridTemplateRows:sap.ui.layout.cssgrid.CSSGridTrack):sap.ui.layout.cssgrid.CSSGrid;

	/**
	* Sets the width of the grid.
	* @param	sWidth The width of the Grid as CSS size.
	* @return	Pointer to the control instance to allow method chaining.
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.layout.cssgrid.CSSGrid;
}

typedef CSSGridArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The width of the control
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-template-columns MDN web docs: grid-template-columns}

<b>Note:</b> Not supported in IE11, Edge 15.
	*/
	@:optional var gridTemplateColumns:haxe.extern.EitherType<String,sap.ui.layout.cssgrid.CSSGridTrack>;

	/**
	* Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-template-rows MDN web docs: grid-template-rows}

<b>Note:</b> Not supported in IE11, Edge 15.
	*/
	@:optional var gridTemplateRows:haxe.extern.EitherType<String,sap.ui.layout.cssgrid.CSSGridTrack>;

	/**
	* Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-row-gap MDN web docs: grid-row-gap}

<b>Note:</b> Not supported in IE11, Edge 15.
	*/
	@:optional var gridRowGap:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-column-gap MDN web docs: grid-column-gap}

<b>Note:</b> Not supported in IE11, Edge 15.
	*/
	@:optional var gridColumnGap:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-gap MDN web docs: grid-gap} It is a shorthand for gridRowGap and gridColumnGap. If some of them is set, the gridGap value will have less priority and will be overwritten.

<b>Note:</b> Not supported in IE11, Edge 15.
	*/
	@:optional var gridGap:haxe.extern.EitherType<String,sap.ui.layout.cssgrid.CSSGridGapShortHand>;

	/**
	* Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-auto-rows MDN web docs: grid-auto-rows}

<b>Note:</b> Not supported in IE11, Edge 15.
	*/
	@:optional var gridAutoRows:haxe.extern.EitherType<String,sap.ui.layout.cssgrid.CSSGridTrack>;

	/**
	* Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-auto-columns MDN web docs: grid-auto-columns}

<b>Note:</b> Not supported in IE11, Edge 15.
	*/
	@:optional var gridAutoColumns:haxe.extern.EitherType<String,sap.ui.layout.cssgrid.CSSGridTrack>;

	/**
	* Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-auto-flow MDN web docs: grid-auto-flow}

<b>Note:</b> Not supported in IE11, Edge 15.
	*/
	@:optional var gridAutoFlow:haxe.extern.EitherType<String,sap.ui.layout.cssgrid.CSSGridAutoFlow>;

    /**
    * Defines a custom Grid layout for the control. If provided, it will override all of the grid properties.
    */
	@:optional var customLayout:haxe.extern.EitherType<String,sap.ui.layout.cssgrid.GridLayoutBase>;

    /**
    * The items contained by the control.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;
}
