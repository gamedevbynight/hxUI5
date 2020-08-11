package sap.f;

@:native("sap.f.GridContainer")

/**
* A layout container control used for aligning items with various sizes in a simple grid.

<h3>Overview</h3>

The control is used to align tiles, cards and other controls in configuration, such as a home page or a dashboard. It represents a grid layout with specific row and column sizes, in which the items can take any number of rows and columns.

The number of columns and rows each item takes can be configured with the use of the <code>{@link sap.f.GridContainerItemLayoutData}</code>.

All rows have the same height and all columns have the same width. Their sizes can be configured with the use of the <code>layout</code> aggregation and <code>{@link sap.f.GridContainerSettings}</code>.

<h3>Usage</h3>

<i>When to use</i> <ul> <li>For aligning home page and dashboard items like Tiles and Cards in a simple grid system with equally sized rows and columns.</li> </ul>

<i>When not to use</i> <ul> <li>If a more complex layout grid system, where columns and rows may vary in size, is needed.</li> </ul>

<h3>Example:</h3> <pre>
&lt;f:GridContainer&gt;
	&lt;f:layout&gt;
		&lt;f:GridContainerSettings rowSize=&quot;5rem&quot; columnSize=&quot;5rem&quot; gap=&quot;1rem&quot; /&gt;
	&lt;/f:layout&gt;
	&lt;f:layoutS&gt;
		&lt;f:GridContainerSettings rowSize=&quot;4rem&quot; columnSize=&quot;4rem&quot; gap=&quot;0.5rem&quot; /&gt;
	&lt;/f:layoutS&gt;
	&lt;f:items&gt;
		&lt;GenericTile header=&quot;Sales Fulfillment&quot;&gt;
			&lt;layoutData&gt;
				&lt;f:GridContainerItemLayoutData rows=&quot;2&quot; columns=&quot;2&quot; /&gt;
			&lt;/layoutData&gt;
		&lt;/GenericTile&gt;
		&lt;w:Card manifest=&quot;url-to-manifest&quot;&gt;
			&lt;w:layoutData&gt;
				&lt;f:GridContainerItemLayoutData rows=&quot;6&quot; columns=&quot;3&quot; /&gt;
			&lt;/w:layoutData&gt;
		&lt;/w:Card&gt;
		&lt;Panel&gt;
			&lt;layoutData&gt;
				&lt;f:GridContainerItemLayoutData columns=&quot;4&quot; /&gt;
			&lt;/layoutData&gt;
			&lt;Text text=&quot;Sales information&quot; /&gt;
		&lt;/Panel&gt;
	&lt;/f:items&gt;
&lt;/f:GridContainer&gt;
</pre>

<h3>Drag and drop:</h3> Drag and drop is enabled for the <code>GridContainer</code> with enhanced visualization and interaction, better suited for grid items. This is configured by using the <code>{@link sap.f.dnd.GridDropInfo}</code>.

Similar to the <code>{@link sap.ui.core.dnd.DropInfo}</code>, <code>{@link sap.f.dnd.GridDropInfo}</code> has to be added to the <code>dragDropConfig</code> aggregation, by using <code>{@link sap.ui.core.Element#addDragDropConfig}</code>.

Both <code>{@link sap.ui.core.dnd.DropInfo}</code> and <code>{@link sap.f.dnd.GridDropInfo}</code> can be used to configure drag and drop. The difference is that the <code>{@link sap.f.dnd.GridDropInfo}</code> will provide a drop indicator, which mimics the size of the dragged item and shows the potential drop position inside the grid.
*/
extern class GridContainer extends sap.ui.core.Control implements sap.f.dnd.IGridDroppable
{
	@:overload(function(?sId:String, ?mSettings:GridContainerArgs):Void {})
	public function new(?mSettings:GridContainerArgs):Void;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.ui.core.Control):sap.f.GridContainer;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:borderReached borderReached} event of this <code>sap.f.GridContainer</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.f.GridContainer</code> itself.

Fires if the border of the visualizations is reached so that an application can react on this.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.f.GridContainer</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBorderReached( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.f.GridContainer;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:layoutChange layoutChange} event of this <code>sap.f.GridContainer</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.f.GridContainer</code> itself.

Fired when the currently active GridSettings change.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.f.GridContainer</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachLayoutChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.f.GridContainer;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.f.GridContainer;

	/**
	* Destroys the layout in the aggregation {@link #getLayout layout}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyLayout( ):sap.f.GridContainer;

	/**
	* Destroys the layoutL in the aggregation {@link #getLayoutL layoutL}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyLayoutL( ):sap.f.GridContainer;

	/**
	* Destroys the layoutM in the aggregation {@link #getLayoutM layoutM}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyLayoutM( ):sap.f.GridContainer;

	/**
	* Destroys the layoutS in the aggregation {@link #getLayoutS layoutS}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyLayoutS( ):sap.f.GridContainer;

	/**
	* Destroys the layoutXL in the aggregation {@link #getLayoutXL layoutXL}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyLayoutXL( ):sap.f.GridContainer;

	/**
	* Destroys the layoutXS in the aggregation {@link #getLayoutXS layoutXS}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyLayoutXS( ):sap.f.GridContainer;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:borderReached borderReached} event of this <code>sap.f.GridContainer</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBorderReached( fnFunction:()->Void, ?oListener:Dynamic):sap.f.GridContainer;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:layoutChange layoutChange} event of this <code>sap.f.GridContainer</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachLayoutChange( fnFunction:()->Void, ?oListener:Dynamic):sap.f.GridContainer;

	/**
	* Creates a new subclass of class sap.f.GridContainer with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets the <code>GridContainerSettings</code> for the current layout breakpoint.
	* @return	The settings for the current layout
	*/
	public function getActiveLayoutSettings( ):sap.f.GridContainerSettings;

	/**
	* Gets current value of property {@link #getAllowDenseFill allowDenseFill}.

Increases the density when arranging the items. Smaller items will take up all of the available space, ignoring their order.

<b>Note:</b> The order of the items is ignored. An item which is normally at the bottom, can appear on top.

Default value is <code>false</code>.
	* @return	Value of property <code>allowDenseFill</code>
	*/
	public function getAllowDenseFill( ):Bool;

	/**
	* Gets current value of property {@link #getContainerQuery containerQuery}.

If set to <code>true</code> the current range (large, medium or small) is defined by the size of the container surrounding the <code>GridContainer</code>, instead of the device screen size (media Query).

Default value is <code>false</code>.
	* @return	Value of property <code>containerQuery</code>
	*/
	public function getContainerQuery( ):Bool;

	/**
	* Gets current value of property {@link #getInlineBlockLayout inlineBlockLayout}.

Makes the grid items act like an inline-block elements. They will be arranged in rows with height equal to the highest item in the row.

<b>Note:</b> If set to <code>true</code> the properties <code>rowSize</code> for grid layout, and <code>minRows</code> and <code>rows</code> per item will be ignored.

<b>Note:</b> Not supported in IE11, Edge 15.

Default value is <code>false</code>.
	* @return	Value of property <code>inlineBlockLayout</code>
	*/
	public function getInlineBlockLayout( ):Bool;

	/**
	* Gets content of aggregation {@link #getItems items}.

The items contained by the control.
	* @return	null
	*/
	public function getItems( ):Array<sap.ui.core.Control>;

	/**
	* Gets content of aggregation {@link #getLayout layout}.

The sap.f.GridContainerSettings applied if no settings are provided for a specific size.

If no layout is given, a default layout will be used. See the default values for <code>sap.f.GridContainerSettings</code>.

<b>Note:</b> It is not possible to reuse the same instance of <code>GridContainerSettings</code> for several layouts. New instance has to be created for each of them. This is caused by the fact that one object can exist in only a single aggregation.
	* @return	null
	*/
	public function getLayout( ):sap.f.GridContainerSettings;

	/**
	* Gets content of aggregation {@link #getLayoutL layoutL}.

The sap.f.GridContainerSettings applied for size "L". Range: 1023px - 1439px.
	* @return	null
	*/
	public function getLayoutL( ):sap.f.GridContainerSettings;

	/**
	* Gets content of aggregation {@link #getLayoutM layoutM}.

The sap.f.GridContainerSettings applied for size "M". Range: 600px - 1023px.
	* @return	null
	*/
	public function getLayoutM( ):sap.f.GridContainerSettings;

	/**
	* Gets content of aggregation {@link #getLayoutS layoutS}.

The sap.f.GridContainerSettings applied for size "S". Range: 375px - 599px.
	* @return	null
	*/
	public function getLayoutS( ):sap.f.GridContainerSettings;

	/**
	* Gets content of aggregation {@link #getLayoutXL layoutXL}.

The sap.f.GridContainerSettings applied for size "XL". Range: from 1440px.
	* @return	null
	*/
	public function getLayoutXL( ):sap.f.GridContainerSettings;

	/**
	* Gets content of aggregation {@link #getLayoutXS layoutXS}.

The sap.f.GridContainerSettings applied for size "XS". Range: up to 374px.
	* @return	null
	*/
	public function getLayoutXS( ):sap.f.GridContainerSettings;

	/**
	* Returns a metadata object for class sap.f.GridContainer.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getSnapToRow snapToRow}.

Should the items stretch to fill the rows that they occupy, or not.

If set to <code>true</code> the items will stretch.

Default value is <code>false</code>.
	* @return	Value of property <code>snapToRow</code>
	*/
	public function getSnapToRow( ):Bool;

	/**
	* Gets current value of property {@link #getWidth width}.

Defines the width of the control.

Default value is <code>empty string</code>.
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
	* Inserts an item into the aggregation named <code>items</code>.
	* @param	oItem The item to be inserted; if empty, nothing is inserted.
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function insertItem( oItem:sap.ui.core.Item, iIndex:Int):sap.f.GridContainer;

	/**
	* Removes all the controls from the aggregation {@link #getItems items}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllItems( ):Array<sap.ui.core.Control>;
	@:overload( function(vItem:Int):sap.ui.core.Control{ })
	@:overload( function(vItem:String):sap.ui.core.Control{ })

	/**
	* Removes an item from the aggregation named <code>items</code>.
	* @param	vItem The item to remove or its index or ID.
	* @return	The removed item or null.
	*/
	public function removeItem( vItem:sap.ui.core.Item):sap.ui.core.Control;

	/**
	* Sets a new value for property {@link #getAllowDenseFill allowDenseFill}.

Increases the density when arranging the items. Smaller items will take up all of the available space, ignoring their order.

<b>Note:</b> The order of the items is ignored. An item which is normally at the bottom, can appear on top.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bAllowDenseFill New value for property <code>allowDenseFill</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAllowDenseFill( ?bAllowDenseFill:Bool):sap.f.GridContainer;

	/**
	* Sets a new value for property {@link #getContainerQuery containerQuery}.

If set to <code>true</code> the current range (large, medium or small) is defined by the size of the container surrounding the <code>GridContainer</code>, instead of the device screen size (media Query).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bContainerQuery New value for property <code>containerQuery</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContainerQuery( ?bContainerQuery:Bool):sap.f.GridContainer;

	/**
	* Sets a new value for property {@link #getInlineBlockLayout inlineBlockLayout}.

Makes the grid items act like an inline-block elements. They will be arranged in rows with height equal to the highest item in the row.

<b>Note:</b> If set to <code>true</code> the properties <code>rowSize</code> for grid layout, and <code>minRows</code> and <code>rows</code> per item will be ignored.

<b>Note:</b> Not supported in IE11, Edge 15.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bInlineBlockLayout New value for property <code>inlineBlockLayout</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInlineBlockLayout( ?bInlineBlockLayout:Bool):sap.f.GridContainer;

	/**
	* Sets the aggregated {@link #getLayout layout}.
	* @param	oLayout The layout to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLayout( oLayout:sap.f.GridContainerSettings):sap.f.GridContainer;

	/**
	* Sets the aggregated {@link #getLayoutL layoutL}.
	* @param	oLayoutL The layoutL to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLayoutL( oLayoutL:sap.f.GridContainerSettings):sap.f.GridContainer;

	/**
	* Sets the aggregated {@link #getLayoutM layoutM}.
	* @param	oLayoutM The layoutM to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLayoutM( oLayoutM:sap.f.GridContainerSettings):sap.f.GridContainer;

	/**
	* Sets the aggregated {@link #getLayoutS layoutS}.
	* @param	oLayoutS The layoutS to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLayoutS( oLayoutS:sap.f.GridContainerSettings):sap.f.GridContainer;

	/**
	* Sets the aggregated {@link #getLayoutXL layoutXL}.
	* @param	oLayoutXL The layoutXL to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLayoutXL( oLayoutXL:sap.f.GridContainerSettings):sap.f.GridContainer;

	/**
	* Sets the aggregated {@link #getLayoutXS layoutXS}.
	* @param	oLayoutXS The layoutXS to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLayoutXS( oLayoutXS:sap.f.GridContainerSettings):sap.f.GridContainer;

	/**
	* Sets a new value for property {@link #getSnapToRow snapToRow}.

Should the items stretch to fill the rows that they occupy, or not.

If set to <code>true</code> the items will stretch.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bSnapToRow New value for property <code>snapToRow</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSnapToRow( ?bSnapToRow:Bool):sap.f.GridContainer;

	/**
	* Sets a new value for property {@link #getWidth width}.

Defines the width of the control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sWidth= New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.f.GridContainer;
}

typedef GridContainerArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the width of the control.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* If set to <code>true</code> the current range (large, medium or small) is defined by the size of the container surrounding the <code>GridContainer</code>, instead of the device screen size (media Query).
	*/
	@:optional var containerQuery:haxe.extern.EitherType<String,Bool>;

	/**
	* Should the items stretch to fill the rows that they occupy, or not.

If set to <code>true</code> the items will stretch.
	*/
	@:optional var snapToRow:haxe.extern.EitherType<String,Bool>;

	/**
	* Increases the density when arranging the items. Smaller items will take up all of the available space, ignoring their order.

<b>Note:</b> The order of the items is ignored. An item which is normally at the bottom, can appear on top.
	*/
	@:optional var allowDenseFill:haxe.extern.EitherType<String,Bool>;

	/**
	* Makes the grid items act like an inline-block elements. They will be arranged in rows with height equal to the highest item in the row.

<b>Note:</b> If set to <code>true</code> the properties <code>rowSize</code> for grid layout, and <code>minRows</code> and <code>rows</code> per item will be ignored.

<b>Note:</b> Not supported in IE11, Edge 15.
	*/
	@:optional var inlineBlockLayout:haxe.extern.EitherType<String,Bool>;

    /**
    * The items contained by the control.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * The sap.f.GridContainerSettings applied if no settings are provided for a specific size.

If no layout is given, a default layout will be used. See the default values for <code>sap.f.GridContainerSettings</code>.

<b>Note:</b> It is not possible to reuse the same instance of <code>GridContainerSettings</code> for several layouts. New instance has to be created for each of them. This is caused by the fact that one object can exist in only a single aggregation.
    */
	@:optional var layout:haxe.extern.EitherType<String,sap.f.GridContainerSettings>;

    /**
    * The sap.f.GridContainerSettings applied for size "XS". Range: up to 374px.
    */
	@:optional var layoutXS:haxe.extern.EitherType<String,sap.f.GridContainerSettings>;

    /**
    * The sap.f.GridContainerSettings applied for size "S". Range: 375px - 599px.
    */
	@:optional var layoutS:haxe.extern.EitherType<String,sap.f.GridContainerSettings>;

    /**
    * The sap.f.GridContainerSettings applied for size "M". Range: 600px - 1023px.
    */
	@:optional var layoutM:haxe.extern.EitherType<String,sap.f.GridContainerSettings>;

    /**
    * The sap.f.GridContainerSettings applied for size "L". Range: 1023px - 1439px.
    */
	@:optional var layoutL:haxe.extern.EitherType<String,sap.f.GridContainerSettings>;

    /**
    * The sap.f.GridContainerSettings applied for size "XL". Range: from 1440px.
    */
	@:optional var layoutXL:haxe.extern.EitherType<String,sap.f.GridContainerSettings>;

    /**
    * Default sap.f.GridContainerSettings
    */
	@:optional var _defaultLayout:haxe.extern.EitherType<String,sap.f.GridContainerSettings>;

	/**
	* Fires if the border of the visualizations is reached so that an application can react on this.
	*/
	@:optional var borderReached:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when the currently active GridSettings change.
	*/
	@:optional var layoutChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
