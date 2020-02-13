package sap.m;

@:native("sap.m.Table")

/**
* The <code>sap.m.Table</code> control provides a set of sophisticated and convenience functions for responsive table design.

To render the <code>sap.m.Table</code> control properly, the order of the <code>columns</code> aggregation should match with the order of the <code>cells</code> aggregation (<code>sap.m.ColumnListItem</code>).

The <code>sap.m.Table</code> control requires at least one visible <code>sap.m.Column</code> in the <code>columns</code> aggregation, therefore applications must avoid configuring all columns to be shown in the pop-in. If such a conflict is detected, then the table prevents one column from moving to the pop-in.

For mobile devices, the recommended limit of table rows is 100 (based on 4 columns) to assure proper performance. To improve initial rendering of large tables, use the <code>growing</code> feature.

See section "{@link topic:5eb6f63e0cc547d0bdc934d3652fdc9b Creating Tables}" and "{@link topic:38855e06486f4910bfa6f4485f7c2bac Configuring Responsive Behavior of a Table}" in the documentation for an introduction to <code>sap.m.Table</code> control.
*/
extern class Table extends sap.m.ListBase
{
	@:overload(function(?sId:String, ?mSettings:TableArgs):Void {})
	public function new(?mSettings:TableArgs):Void;

	/**
	* Adds some column to the aggregation {@link #getColumns columns}.
	* @param	oColumn The column to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addColumn( oColumn:sap.m.Column):sap.m.Table;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeOpenContextMenu beforeOpenContextMenu} event of this <code>sap.m.Table</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Table</code> itself.

Fired when the context menu is opened. When the context menu is opened, the binding context of the item is set to the given <code>contextMenu</code>.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Table</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforeOpenContextMenu( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Table;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:paste paste} event of this <code>sap.m.Table</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Table</code> itself.

This event gets fired when the user pastes content from the clipboard to the table. Pasting can be done via the context menu or the standard paste keyboard shortcut, if the focus is inside the table.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Table</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPaste( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Table;

	/**
	* Destroys all the columns in the aggregation {@link #getColumns columns}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyColumns( ):sap.m.Table;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeOpenContextMenu beforeOpenContextMenu} event of this <code>sap.m.Table</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforeOpenContextMenu( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Table;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:paste paste} event of this <code>sap.m.Table</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPaste( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Table;

	/**
	* Creates a new subclass of class sap.m.Table with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.ListBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAlternateRowColors alternateRowColors}.

Enables alternating table row colors. <b>Note:</b> This property can only be used with the Belize and Belize Deep themes. Alternate row coloring is not available for the High Contrast Black/White themes.

Default value is <code>false</code>.
	* @return	Value of property <code>alternateRowColors</code>
	*/
	public function getAlternateRowColors( ):Bool;

	/**
	* Gets current value of property {@link #getBackgroundDesign backgroundDesign}.

Sets the background style of the table. Depending on the theme, you can change the state of the background from <code>Solid</code> to <code>Translucent</code> or to <code>Transparent</code>.

Default value is <code>Translucent</code>.
	* @return	Value of property <code>backgroundDesign</code>
	*/
	public function getBackgroundDesign( ):sap.m.BackgroundDesign;

	/**
	* Getter for aggregation columns.
	* @param	bSort set true to get the columns in an order that respects personalization settings
	* @return	columns of the Table
	*/
	public function getColumns( ?bSort:Bool):Array<sap.m.Column>;

	/**
	* Gets current value of property {@link #getContextualWidth contextualWidth}.

Defines the contextual width for the <code>sap.m.Table</code> control. By defining this property the table adapts the pop-in behavior based on the container in which the table is placed or the configured contextual width. By default, <code>sap.m.Table</code> renders in pop-in behavior only depending on the window size or device.

For example, by setting the <code>contextualWidth</code> property to 600px or Tablet, the table can be placed in a container with 600px width, where the pop-in is used. You can use specific CSS sizes (for example, 600px or 600), you can also use the <code>sap.m.ScreenSize</code> enumeration (for example, Phone, Tablet, Desktop, Small, Medium, Large, ....). If this property is set to <code>Auto</code>, the <code>ResizeHandler</code> will manage the contextual width of the table. <b>Note:</b> Only "Inherit", "Auto", and pixel-based CSS sizes (for example, 200, 200px) can be applied to the <code>contextualWidth</code> property. Due to the rendering cost, we recommend to use the valid value mentioned before except for "Auto".

Default value is <code>Inherit</code>.
	* @return	Value of property <code>contextualWidth</code>
	*/
	public function getContextualWidth( ):String;

	/**
	* Gets current value of property {@link #getFixedLayout fixedLayout}.

Defines the algorithm to be used to layout the table cells, rows, and columns. By default, a table is rendered with fixed layout algorithm. This means the horizontal layout only depends on the table's width and the width of the columns, not the contents of the cells. Cells in subsequent rows do not affect column widths. This allows a browser to layout the table faster than the auto table layout since the browser can begin to display the table once the first row has been analyzed.

When this property is set to <code>false</code>, <code>sap.m.Table</code> is rendered with auto layout algorithm. This means, the width of the table and its cells depends on the contents of the cells. The column width is set by the widest unbreakable content inside the cells. This can make the rendering slow, since the browser needs to read through all the content in the table before determining the final layout. <b>Note:</b> Since <code>sap.m.Table</code> does not have its own scrollbars, setting <code>fixedLayout</code> to false can force the table to overflow, which may cause visual problems. It is suggested to use this property when a table has a few columns in wide screens or within the horizontal scroll container (e.g <code>sap.m.Dialog</code>) to handle overflow. In auto layout mode the <code>width</code> property of <code>sap.m.Column</code> is taken into account as a minimum width.

Default value is <code>true</code>.
	* @return	Value of property <code>fixedLayout</code>
	*/
	public function getFixedLayout( ):Bool;

	/**
	* Returns a metadata object for class sap.m.Table.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getPopinLayout popinLayout}.

Defines the layout in which the table pop-in rows are rendered. <b>Note:</b> The <code>demandPopin</code> and <code>minScreenWidth</code> properties of the <code>Column</code> control must be configured appropriately.

Default value is <code>Block</code>.
	* @return	Value of property <code>popinLayout</code>
	*/
	public function getPopinLayout( ):sap.m.PopinLayout;

	/**
	* Gets current value of property {@link #getShowOverlay showOverlay}.

Setting this property to <code>true</code> will show an overlay on top of the table content and prevents the user interaction with it.

Default value is <code>false</code>.
	* @return	Value of property <code>showOverlay</code>
	*/
	public function getShowOverlay( ):Bool;

	/**
	* Checks for the provided <code>sap.m.Column</code> in the aggregation {@link #getColumns columns}. and returns its index if found or -1 otherwise.
	* @param	oColumn The column whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfColumn( oColumn:sap.m.Column):Int;

	/**
	* Inserts a column into the aggregation {@link #getColumns columns}.
	* @param	oColumn The column to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the column should be inserted at; for a negative value of <code>iIndex</code>, the column is inserted at position 0; for a value greater than the current size of the aggregation, the column is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertColumn( oColumn:sap.m.Column, iIndex:Int):sap.m.Table;

	/**
	* Removes all the controls from the aggregation {@link #getColumns columns}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllColumns( ):Array<sap.m.Column>;
	@:overload( function(vColumn:Int):sap.m.Column{ })
	@:overload( function(vColumn:String):sap.m.Column{ })

	/**
	* Removes a column from the aggregation {@link #getColumns columns}.
	* @param	vColumn The column to remove or its index or id
	* @return	The removed column or <code>null</code>
	*/
	public function removeColumn( vColumn:sap.m.Column):sap.m.Column;

	/**
	* Sets a new value for property {@link #getAlternateRowColors alternateRowColors}.

Enables alternating table row colors. <b>Note:</b> This property can only be used with the Belize and Belize Deep themes. Alternate row coloring is not available for the High Contrast Black/White themes.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bAlternateRowColors New value for property <code>alternateRowColors</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAlternateRowColors( bAlternateRowColors:Bool):sap.m.Table;

	/**
	* Sets a new value for property {@link #getBackgroundDesign backgroundDesign}.

Sets the background style of the table. Depending on the theme, you can change the state of the background from <code>Solid</code> to <code>Translucent</code> or to <code>Transparent</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Translucent</code>.
	* @param	sBackgroundDesign New value for property <code>backgroundDesign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundDesign( sBackgroundDesign:sap.m.BackgroundDesign):sap.m.Table;

	/**
	* Sets a new value for property {@link #getContextualWidth contextualWidth}.

Defines the contextual width for the <code>sap.m.Table</code> control. By defining this property the table adapts the pop-in behavior based on the container in which the table is placed or the configured contextual width. By default, <code>sap.m.Table</code> renders in pop-in behavior only depending on the window size or device.

For example, by setting the <code>contextualWidth</code> property to 600px or Tablet, the table can be placed in a container with 600px width, where the pop-in is used. You can use specific CSS sizes (for example, 600px or 600), you can also use the <code>sap.m.ScreenSize</code> enumeration (for example, Phone, Tablet, Desktop, Small, Medium, Large, ....). If this property is set to <code>Auto</code>, the <code>ResizeHandler</code> will manage the contextual width of the table. <b>Note:</b> Only "Inherit", "Auto", and pixel-based CSS sizes (for example, 200, 200px) can be applied to the <code>contextualWidth</code> property. Due to the rendering cost, we recommend to use the valid value mentioned before except for "Auto".

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sContextualWidth New value for property <code>contextualWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContextualWidth( sContextualWidth:String):sap.m.Table;

	/**
	* Sets a new value for property {@link #getFixedLayout fixedLayout}.

Defines the algorithm to be used to layout the table cells, rows, and columns. By default, a table is rendered with fixed layout algorithm. This means the horizontal layout only depends on the table's width and the width of the columns, not the contents of the cells. Cells in subsequent rows do not affect column widths. This allows a browser to layout the table faster than the auto table layout since the browser can begin to display the table once the first row has been analyzed.

When this property is set to <code>false</code>, <code>sap.m.Table</code> is rendered with auto layout algorithm. This means, the width of the table and its cells depends on the contents of the cells. The column width is set by the widest unbreakable content inside the cells. This can make the rendering slow, since the browser needs to read through all the content in the table before determining the final layout. <b>Note:</b> Since <code>sap.m.Table</code> does not have its own scrollbars, setting <code>fixedLayout</code> to false can force the table to overflow, which may cause visual problems. It is suggested to use this property when a table has a few columns in wide screens or within the horizontal scroll container (e.g <code>sap.m.Dialog</code>) to handle overflow. In auto layout mode the <code>width</code> property of <code>sap.m.Column</code> is taken into account as a minimum width.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bFixedLayout New value for property <code>fixedLayout</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFixedLayout( bFixedLayout:Bool):sap.m.Table;

	/**
	* Sets a new value for property {@link #getPopinLayout popinLayout}.

Defines the layout in which the table pop-in rows are rendered. <b>Note:</b> The <code>demandPopin</code> and <code>minScreenWidth</code> properties of the <code>Column</code> control must be configured appropriately.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Block</code>.
	* @param	sPopinLayout New value for property <code>popinLayout</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPopinLayout( sPopinLayout:sap.m.PopinLayout):sap.m.Table;

	/**
	* Sets a new value for property {@link #getShowOverlay showOverlay}.

Setting this property to <code>true</code> will show an overlay on top of the table content and prevents the user interaction with it.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowOverlay New value for property <code>showOverlay</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowOverlay( bShowOverlay:Bool):sap.m.Table;
}

typedef TableArgs = sap.m.ListBase.ListBaseArgs & {

	/**
	* Sets the background style of the table. Depending on the theme, you can change the state of the background from <code>Solid</code> to <code>Translucent</code> or to <code>Transparent</code>.
	*/
	@:optional var backgroundDesign:haxe.extern.EitherType<String,sap.m.BackgroundDesign>;

	/**
	* Defines the algorithm to be used to layout the table cells, rows, and columns. By default, a table is rendered with fixed layout algorithm. This means the horizontal layout only depends on the table's width and the width of the columns, not the contents of the cells. Cells in subsequent rows do not affect column widths. This allows a browser to layout the table faster than the auto table layout since the browser can begin to display the table once the first row has been analyzed.

When this property is set to <code>false</code>, <code>sap.m.Table</code> is rendered with auto layout algorithm. This means, the width of the table and its cells depends on the contents of the cells. The column width is set by the widest unbreakable content inside the cells. This can make the rendering slow, since the browser needs to read through all the content in the table before determining the final layout. <b>Note:</b> Since <code>sap.m.Table</code> does not have its own scrollbars, setting <code>fixedLayout</code> to false can force the table to overflow, which may cause visual problems. It is suggested to use this property when a table has a few columns in wide screens or within the horizontal scroll container (e.g <code>sap.m.Dialog</code>) to handle overflow. In auto layout mode the <code>width</code> property of <code>sap.m.Column</code> is taken into account as a minimum width.
	*/
	@:optional var fixedLayout:haxe.extern.EitherType<String,Bool>;

	/**
	* Setting this property to <code>true</code> will show an overlay on top of the table content and prevents the user interaction with it.
	*/
	@:optional var showOverlay:haxe.extern.EitherType<String,Bool>;

	/**
	* Enables alternating table row colors. <b>Note:</b> This property can only be used with the Belize and Belize Deep themes. Alternate row coloring is not available for the High Contrast Black/White themes.
	*/
	@:optional var alternateRowColors:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the layout in which the table pop-in rows are rendered. <b>Note:</b> The <code>demandPopin</code> and <code>minScreenWidth</code> properties of the <code>Column</code> control must be configured appropriately.
	*/
	@:optional var popinLayout:haxe.extern.EitherType<String,sap.m.PopinLayout>;

	/**
	* Defines the contextual width for the <code>sap.m.Table</code> control. By defining this property the table adapts the pop-in behavior based on the container in which the table is placed or the configured contextual width. By default, <code>sap.m.Table</code> renders in pop-in behavior only depending on the window size or device.

For example, by setting the <code>contextualWidth</code> property to 600px or Tablet, the table can be placed in a container with 600px width, where the pop-in is used. You can use specific CSS sizes (for example, 600px or 600), you can also use the <code>sap.m.ScreenSize</code> enumeration (for example, Phone, Tablet, Desktop, Small, Medium, Large, ....). If this property is set to <code>Auto</code>, the <code>ResizeHandler</code> will manage the contextual width of the table. <b>Note:</b> Only "Inherit", "Auto", and pixel-based CSS sizes (for example, 200, 200px) can be applied to the <code>contextualWidth</code> property. Due to the rendering cost, we recommend to use the valid value mentioned before except for "Auto".
	*/
	@:optional var contextualWidth:String;

    /**
    * Defines the columns of the table.
    */
	@:optional var columns:Array<haxe.extern.EitherType<String,sap.m.Column>>;

	/**
	* Fired when the context menu is opened. When the context menu is opened, the binding context of the item is set to the given <code>contextMenu</code>.
	*/
	@:optional var beforeOpenContextMenu:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event gets fired when the user pastes content from the clipboard to the table. Pasting can be done via the context menu or the standard paste keyboard shortcut, if the focus is inside the table.
	*/
	@:optional var paste:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
