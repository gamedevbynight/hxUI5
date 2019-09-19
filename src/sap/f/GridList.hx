package sap.f;

@:native("sap.f.GridList")

/**
* A list-based control with grid layout capabilities.

<h3>Overview</h3>

The control is based on {@link sap.m.ListBase} and adds the flexibility to configure different grid layouts. The layout used is based on the CSS display grid and the control has a default configuration.

With <code>customLayout</code> aggregation it is possible to use: <ul> <li>Predefined simple grid layouts such as {@link sap.ui.layout.cssgrid.GridBoxLayout GridBoxLayout}</li> <li>Flexible grid layouts, such as {@link sap.ui.layout.cssgrid.GridBasicLayout GridBasicLayout} or {@link sap.ui.layout.cssgrid.GridResponsiveLayout GridResponsiveLayout} which reveal the native-browser CSS display grid APIs. For more information, see {@link https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout MDN web docs: CSS Grid Layout}</li> </ul>

Every item can override its size by specifying the number of columns and/or rows it will take in the grid. This is done using {@link sap.ui.layout.cssgrid.GridItemLayoutData GridItemLayoutData}.

For best visualization, items of type {@link sap.f.GridListItem sap.f.GridListItem} should be used inside the <code>items</code> aggregation.

<h3>Usage</h3>

For general cases, use the default grid configuration of the <code>GridList</code>. For Box case (equal sized items), use <code>customLayout</code> aggregation with {@link sap.ui.layout.cssgrid.GridBoxLayout GridBoxLayout} For Grids which need different configurations based on available width, use <code>customLayout</code> aggregation with {@link sap.ui.layout.cssgrid.GridResponsiveLayout GridResponsiveLayout} To set a specific position to an item or define its dimensions in the grid, pass <code>layoutData</code> of type {@link sap.ui.layout.cssgrid.GridItemLayoutData GridItemLayoutData}

<i>When to use</i> <ul> <li>If {@link sap.m.ListBase} features are required and the items must be positioned in a grid layout</li> </ul>

<i>When not to use</i> <ul> <li>If a list layout is required, use {@link sap.m.List} instead. <li>If only the layout is required, use {@link sap.ui.layout.cssgrid.CSSGrid} instead. </ul>

<h3>Drag and drop:</h3> Drag and drop is enabled for the <code>GridList</code> with enhanced visualization and interaction, better suited for grid items. This is configured by using the <code>{@link sap.f.dnd.GridDropInfo}</code>.

Similar to the <code>{@link sap.ui.core.dnd.DropInfo}</code>, <code>{@link sap.f.dnd.GridDropInfo}</code> has to be added to the <code>dragDropConfig</code> aggregation, by using <code>{@link sap.ui.core.Element#addDragDropConfig}</code>.

Both <code>{@link sap.ui.core.dnd.DropInfo}</code> and <code>{@link sap.f.dnd.GridDropInfo}</code> can be used to configure drag and drop. The difference is that the <code>{@link sap.f.dnd.GridDropInfo}</code> will provide a drop indicator, which mimics the size of the dragged item and shows the potential drop position inside the grid.

<h3>Current Limitations</h3> <ul> <li>For Microsoft Internet Explorer some layouts are not supported, due to browser specifics.</li> <li>For Microsoft Edge 15 and older versions some layouts are not supported, due to browser specifics.</li> </ul>
*/
extern class GridList extends sap.m.ListBase implements sap.ui.layout.cssgrid.IGridConfigurable implements sap.f.dnd.IGridDroppable
{
	@:overload(function(?sId:String, ?mSettings:GridListArgs):Void {})
	public function new(?mSettings:GridListArgs):Void;

	/**
	* Destroys the customLayout in the aggregation {@link #getCustomLayout customLayout}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyCustomLayout( ):sap.f.GridList;

	/**
	* Creates a new subclass of class sap.f.GridList with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.ListBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getCustomLayout customLayout}.

Defines a custom grid layout
	* @return	null
	*/
	public function getCustomLayout( ):sap.ui.layout.cssgrid.GridLayoutBase;

	/**
	* Returns a metadata object for class sap.f.GridList.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Sets the aggregated {@link #getCustomLayout customLayout}.
	* @param	oCustomLayout The customLayout to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCustomLayout( oCustomLayout:sap.ui.layout.cssgrid.GridLayoutBase):sap.f.GridList;
}

typedef GridListArgs = sap.m.ListBase.ListBaseArgs & {

    /**
    * Defines a custom grid layout
    */
	@:optional var customLayout:haxe.extern.EitherType<String,sap.ui.layout.cssgrid.GridLayoutBase>;
}
