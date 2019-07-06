package sap.ui.table;

@:native("sap.ui.table.Table")

/**
* <p> Provides a comprehensive set of features for displaying and dealing with vast amounts of data. The Table control supports desktop PCs and tablet devices. On tablets, special consideration should be given to the number of visible columns and rows due to the limited performance of some devices. </p> <p> In order to keep the document DOM as lean as possible, the Table control reuses its DOM elements of the rows. When the user scrolls, only the row contexts are changed but the rendered controls remain the same. This allows the Table control to handle huge amounts of data. Nevertheless, restrictions apply regarding the number of displayed columns. Keep the number as low as possible to improve performance. Due to the nature of tables, the used control for column templates also has a big influence on the performance. </p> <p> The Table control relies completely on data binding, and its supported feature set is tightly coupled to the data model and binding being used. </p>
*/
extern class Table extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:TableArgs):Void {})
	public function new(?mSettings:TableArgs):Void;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.table.Table{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.table.Table;

	/**
	* Adds some column to the aggregation {@link #getColumns columns}.
	* @param	oColumn The column to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addColumn( oColumn:sap.ui.table.Column):sap.ui.table.Table;

	/**
	* Adds some extension to the aggregation {@link #getExtension extension}.
	* @param	oExtension The extension to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addExtension( oExtension:sap.ui.core.Control):sap.ui.table.Table;

	/**
	* Adds some plugin to the aggregation {@link #getPlugins plugins}.
	* @param	oPlugin The plugin to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addPlugin( oPlugin:sap.ui.table.plugins.SelectionPlugin):sap.ui.table.Table;

	/**
	* Adds some row to the aggregation {@link #getRows rows}.
	* @param	oRow The row to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addRow( oRow:sap.ui.table.Row):sap.ui.table.Table;

	/**
	* Adds the given selection interval to the selection. In case of a single selection, only <code>iIndexTo</code> is added to the selection.
	* @param	iIndexFrom Index from which the selection starts
	* @param	iIndexTo Index up to which to select
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addSelectionInterval( iIndexFrom:Int, iIndexTo:Int):sap.ui.table.Table;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeOpenContextMenu beforeOpenContextMenu} event of this <code>sap.ui.table.Table</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.table.Table</code> itself.

Fired when the user requests the context menu for a table cell.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.table.Table</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforeOpenContextMenu( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Table;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:busyStateChanged busyStateChanged} event of this <code>sap.ui.table.Table</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.table.Table</code> itself.

This event gets fired when the busy state of the table changes. It should only be used by composite controls.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.table.Table</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBusyStateChanged( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Table;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:cellClick cellClick} event of this <code>sap.ui.table.Table</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.table.Table</code> itself.

fired when the user clicks a cell of the table (experimental!).
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.table.Table</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachCellClick( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Table;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:columnFreeze columnFreeze} event of this <code>sap.ui.table.Table</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.table.Table</code> itself.

fired when a column of the table should be freezed
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.table.Table</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachColumnFreeze( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Table;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:columnMove columnMove} event of this <code>sap.ui.table.Table</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.table.Table</code> itself.

fired when a table column is moved.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.table.Table</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachColumnMove( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Table;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:columnResize columnResize} event of this <code>sap.ui.table.Table</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.table.Table</code> itself.

fired when a table column is resized.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.table.Table</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachColumnResize( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Table;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:columnSelect columnSelect} event of this <code>sap.ui.table.Table</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.table.Table</code> itself.

fired when a column of the table has been selected
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.table.Table</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachColumnSelect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Table;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:columnVisibility columnVisibility} event of this <code>sap.ui.table.Table</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.table.Table</code> itself.

fired when the visibility of a table column is changed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.table.Table</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachColumnVisibility( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Table;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:customFilter customFilter} event of this <code>sap.ui.table.Table</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.table.Table</code> itself.

This event is triggered when the custom filter item of the column menu is pressed. The column on which the event was triggered is passed as parameter.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.table.Table</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachCustomFilter( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Table;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:filter filter} event of this <code>sap.ui.table.Table</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.table.Table</code> itself.

fired when the table is filtered.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.table.Table</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachFilter( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Table;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:firstVisibleRowChanged firstVisibleRowChanged} event of this <code>sap.ui.table.Table</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.table.Table</code> itself.

This event gets fired when the first visible row is changed. It should only be used by composite controls. The event even is fired when setFirstVisibleRow is called programmatically.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.table.Table</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachFirstVisibleRowChanged( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Table;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:group group} event of this <code>sap.ui.table.Table</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.table.Table</code> itself.

fired when the table is grouped (experimental!).
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.table.Table</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachGroup( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Table;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:paste paste} event of this <code>sap.ui.table.Table</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.table.Table</code> itself.

This event gets fired when the user pastes content from the clipboard to the table. Pasting can be done via the context menu or the standard paste keyboard shortcut, if the focus is inside the table.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.table.Table</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPaste( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Table;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:rowSelectionChange rowSelectionChange} event of this <code>sap.ui.table.Table</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.table.Table</code> itself.

fired when the row selection of the table has been changed (the event parameters can be used to determine selection changes - to find out the selected rows you should better use the table selection API)

<b>Note:</b> When a selection plugin is applied to the table, this event won't be fired.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.table.Table</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachRowSelectionChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Table;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:sort sort} event of this <code>sap.ui.table.Table</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.table.Table</code> itself.

fired when the table is sorted.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.table.Table</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSort( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Table;

	/**
	* Triggers automatic resizing of a column to the widest content.
	* @param	iColIndex The index of the column in the list of visible columns.
	* @return	Void
	*/
	public function autoResizeColumn( iColIndex:Int):Void;

	/**
	* Binds aggregation {@link #getColumns columns} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindColumns( oBindingInfo:Dynamic):sap.ui.table.Table;

	/**
	* Binds aggregation {@link #getRows rows} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindRows( oBindingInfo:Dynamic):sap.ui.table.Table;

	/**
	* Removes complete selection.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function clearSelection( ):sap.ui.table.Table;

	/**
	* Destroys all the columns in the aggregation {@link #getColumns columns}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyColumns( ):sap.ui.table.Table;

	/**
	* Destroys the contextMenu in the aggregation {@link #getContextMenu contextMenu}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContextMenu( ):sap.ui.table.Table;

	/**
	* Destroys all the extension in the aggregation {@link #getExtension extension}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyExtension( ):sap.ui.table.Table;

	/**
	* Destroys the footer in the aggregation {@link #getFooter footer}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyFooter( ):sap.ui.table.Table;

	/**
	* Destroys the noData in the aggregation {@link #getNoData noData}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyNoData( ):sap.ui.table.Table;

	/**
	* Destroys all the plugins in the aggregation {@link #getPlugins plugins}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyPlugins( ):sap.ui.table.Table;

	/**
	* Destroys the rowActionTemplate in the aggregation {@link #getRowActionTemplate rowActionTemplate}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyRowActionTemplate( ):sap.ui.table.Table;

	/**
	* Destroys all the rows in the aggregation {@link #getRows rows}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyRows( ):sap.ui.table.Table;

	/**
	* Destroys the rowSettingsTemplate in the aggregation {@link #getRowSettingsTemplate rowSettingsTemplate}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyRowSettingsTemplate( ):sap.ui.table.Table;

	/**
	* Destroys the title in the aggregation {@link #getTitle title}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyTitle( ):sap.ui.table.Table;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeOpenContextMenu beforeOpenContextMenu} event of this <code>sap.ui.table.Table</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforeOpenContextMenu( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Table;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:busyStateChanged busyStateChanged} event of this <code>sap.ui.table.Table</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBusyStateChanged( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Table;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:cellClick cellClick} event of this <code>sap.ui.table.Table</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachCellClick( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Table;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:columnFreeze columnFreeze} event of this <code>sap.ui.table.Table</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachColumnFreeze( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Table;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:columnMove columnMove} event of this <code>sap.ui.table.Table</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachColumnMove( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Table;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:columnResize columnResize} event of this <code>sap.ui.table.Table</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachColumnResize( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Table;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:columnSelect columnSelect} event of this <code>sap.ui.table.Table</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachColumnSelect( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Table;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:columnVisibility columnVisibility} event of this <code>sap.ui.table.Table</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachColumnVisibility( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Table;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:customFilter customFilter} event of this <code>sap.ui.table.Table</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachCustomFilter( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Table;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:filter filter} event of this <code>sap.ui.table.Table</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachFilter( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Table;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:firstVisibleRowChanged firstVisibleRowChanged} event of this <code>sap.ui.table.Table</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachFirstVisibleRowChanged( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Table;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:group group} event of this <code>sap.ui.table.Table</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachGroup( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Table;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:paste paste} event of this <code>sap.ui.table.Table</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPaste( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Table;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:rowSelectionChange rowSelectionChange} event of this <code>sap.ui.table.Table</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachRowSelectionChange( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Table;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:sort sort} event of this <code>sap.ui.table.Table</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSort( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Table;

	/**
	* Creates a new subclass of class sap.ui.table.Table with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Filter the given column by the given value.
	* @param	oColumn Column to be filtered
	* @param	sValue Filter value as string (will be converted)
	* @return	Void
	*/
	public function filter( oColumn:sap.ui.table.Column, sValue:String):Void;

	/**
	* Gets current value of property {@link #getAlternateRowColors alternateRowColors}.

Enables alternating table row colors. Alternate row coloring is not available for the tree mode.

Default value is <code>false</code>.
	* @return	Value of property <code>alternateRowColors</code>
	*/
	public function getAlternateRowColors( ):Bool;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets current value of property {@link #getColumnHeaderHeight columnHeaderHeight}.

Header row height in pixel. If a value greater than 0 is set, it overrides the height defined in the <code>rowHeight</code> property for the rows in the table's header. The value defines the minimum height, but it cannot be less than the default height based on the content density configuration. The actual height can increase based on the content.

<b>Note</b>: In a {@link sap.ui.table.Column#getMultiLabels MultiLabel} scenario, the height is applied to each individual row of the table's header.
	* @return	Value of property <code>columnHeaderHeight</code>
	*/
	public function getColumnHeaderHeight( ):Int;

	/**
	* Gets current value of property {@link #getColumnHeaderVisible columnHeaderVisible}.

Flag whether the column header is visible or not.

Default value is <code>true</code>.
	* @return	Value of property <code>columnHeaderVisible</code>
	*/
	public function getColumnHeaderVisible( ):Bool;

	/**
	* Gets content of aggregation {@link #getColumns columns}.

Columns of the Table
	* @return	null
	*/
	public function getColumns( ):Array<sap.ui.table.Column>;

	/**
	* Returns the context of a row by its index. Please note that for server-based models like OData, the supplied index might not have been loaded yet. If the context is not available at the client, the binding will trigger a backend request and request this single context. Although this API looks synchronous it may not return a context but load it and fire a change event on the binding.

For server-based models you should consider to only make this API call when the index is within the currently visible scroll area.
	* @param	iIndex Index of the row to return the context from.
	* @return	The context at this index or null
	*/
	public function getContextByIndex( iIndex:Int):Dynamic;

	/**
	* Gets content of aggregation {@link #getContextMenu contextMenu}.

Defines the context menu for the table.

<b>Note:</b> The context menu will also be available for the row selectors as well as in the row actions cell of the table control.

The custom context menu will not be shown in the group header rows and the sum row of the <code>AnalyticalTable</code> control.

If this aggregation is set, then the <code>enableCellFilter</code> property will have no effect.
	* @return	null
	*/
	public function getContextMenu( ):sap.ui.core.IContextMenu;

	/**
	* Gets content of aggregation <code>dragDropConfig</code> which defines the drag-and-drop configuration.

The following restrictions apply: <ul> <li>Columns cannot be configured to be draggable.</li> <li>The following rows are not draggable: <ul> <li>Empty rows</li> <li>Group header rows</li> <li>Sum rows</li> </ul> </li> <li>Columns cannot be configured to be droppable.</li> <li>The following rows are not droppable: <ul> <li>The dragged row itself</li> <li>Empty rows</li> <li>Group header rows</li> <li>Sum rows</li> </ul> </li> </ul>
	* @return	sap.ui.core.dnd.DragDropBase[]
	*/
	public function getDragDropConfig( ):Dynamic;

	/**
	* Gets current value of property {@link #getEditable editable}.

Flag whether the controls of the Table are editable or not (currently this only controls the background color in certain themes!)

Default value is <code>true</code>.
	* @return	Value of property <code>editable</code>
	*/
	public function getEditable( ):Bool;

	/**
	* Gets current value of property {@link #getEnableBusyIndicator enableBusyIndicator}.

If set to <code>true</code>, the table changes its busy state, resulting in showing or hiding the busy indicator. The table will switch to busy as soon as data is retrieved to be displayed in the currently visible rows. This happens, for example, during scrolling, filtering, or sorting. As soon as the data has been retrieved, the table switches back to not busy. The busy state of the table can still be set manually by calling {@link sap.ui.core.Control#setBusy}.

Default value is <code>false</code>.
	* @return	Value of property <code>enableBusyIndicator</code>
	*/
	public function getEnableBusyIndicator( ):Bool;

	/**
	* Gets current value of property {@link #getEnableCellFilter enableCellFilter}.

Flag whether to enable or disable the context menu on cells to trigger a filtering with the cell value.

Default value is <code>false</code>.
	* @return	Value of property <code>enableCellFilter</code>
	*/
	public function getEnableCellFilter( ):Bool;

	/**
	* Gets current value of property {@link #getEnableColumnFreeze enableColumnFreeze}.

Flag whether to show or hide the column menu item to freeze or unfreeze a column.

Default value is <code>false</code>.
	* @return	Value of property <code>enableColumnFreeze</code>
	*/
	public function getEnableColumnFreeze( ):Bool;

	/**
	* Gets current value of property {@link #getEnableColumnReordering enableColumnReordering}.

Flag to enable or disable column reordering

Default value is <code>true</code>.
	* @return	Value of property <code>enableColumnReordering</code>
	*/
	public function getEnableColumnReordering( ):Bool;

	/**
	* Gets current value of property {@link #getEnableCustomFilter enableCustomFilter}.

Set this parameter to true to implement your own filter behaviour. Instead of the filter input box a button will be rendered for which' press event (customFilter) you can register an event handler.

Default value is <code>false</code>.
	* @return	Value of property <code>enableCustomFilter</code>
	*/
	public function getEnableCustomFilter( ):Bool;

	/**
	* Gets current value of property {@link #getEnableGrouping enableGrouping}.

Enables or disables grouping. If grouping is enabled, the table is grouped by the column which is defined in the <code>groupBy</code> association.

The following restrictions apply: <ul> <li>Only client models are supported (e.g. {@link sap.ui.model.json.JSONModel}). Grouping does not work with OData models.</li> <li>The table can only be grouped by <b>one</b> column at a time. Grouping by another column will remove the current grouping.</li> <li>For the grouping to work correctly, {@link sap.ui.table.Column#getSortProperty sortProperty} must be set for the grouped column.</li> <li>If grouping has been done, sorting and filtering is not possible. Any existing sorting and filtering rules do no longer apply. The UI is not updated accordingly (e.g. menu items, sort and filter icons).</li> <li>The column, by which the table is grouped, is not visible. It will become visible again only if the table is grouped by another column or grouping is disabled.</li> </ul>

Default value is <code>false</code>.
	* @return	Value of property <code>enableGrouping</code>
	*/
	public function getEnableGrouping( ):Bool;

	/**
	* Gets current value of property {@link #getEnableSelectAll enableSelectAll}.

Specifies if a select all button should be displayed in the top left corner. This button is only displayed if the row selector is visible and the selection mode is set to any kind of multi selection.

Default value is <code>true</code>.
	* @return	Value of property <code>enableSelectAll</code>
	*/
	public function getEnableSelectAll( ):Bool;

	/**
	* Gets content of aggregation {@link #getExtension extension}.

Extension section of the Table. If not set, no extension area will be rendered. Note: In case a <code>sap.m.Toolbar</code> is used as header the CSS class sapMTBHeader-CTX should be applied on this toolbar.
	* @return	null
	*/
	public function getExtension( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getFirstVisibleRow firstVisibleRow}.

First visible row.

Default value is <code>0</code>.
	* @return	Value of property <code>firstVisibleRow</code>
	*/
	public function getFirstVisibleRow( ):Int;

	/**
	* Gets current value of property {@link #getFixedBottomRowCount fixedBottomRowCount}.

Number of rows that are fix on the bottom. When you use a vertical scrollbar, only the rows which are not fixed, will scroll.

Default value is <code>0</code>.
	* @return	Value of property <code>fixedBottomRowCount</code>
	*/
	public function getFixedBottomRowCount( ):Int;

	/**
	* Gets current value of property {@link #getFixedColumnCount fixedColumnCount}.

Number of columns that are fixed on the left. Only columns which are not fixed can be scrolled horizontally.

<b>Note</b> <ul> <li>Fixed columns need a defined width for the feature to work.</li> <li>The aggregated width of all fixed columns must not exceed the table width. Otherwise the table ignores the value of the property and adapts the behavior in an appropriate way to ensure that the user is still able to scroll horizontally.</li> </ul>

Default value is <code>0</code>.
	* @return	Value of property <code>fixedColumnCount</code>
	*/
	public function getFixedColumnCount( ):Int;

	/**
	* Gets current value of property {@link #getFixedRowCount fixedRowCount}.

Number of rows that are fix on the top. When you use a vertical scrollbar, only the rows which are not fixed, will scroll.

Default value is <code>0</code>.
	* @return	Value of property <code>fixedRowCount</code>
	*/
	public function getFixedRowCount( ):Int;

	/**
	* Gets content of aggregation {@link #getFooter footer}.

Control or text of footer section of the Table (if not set it will be hidden)
	* @return	null
	*/
	public function getFooter( ):Dynamic;

	/**
	* ID of the element which is the current target of the association {@link #getGroupBy groupBy}, or <code>null</code>.
	* @return	null
	*/
	public function getGroupBy( ):sap.ui.core.ID;

	/**
	* Returns a metadata object for class sap.ui.table.Table.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getMinAutoRowCount minAutoRowCount}.

This property is used to set the minimum count of visible rows when the property visibleRowCountMode is set to Auto or Interactive. For any other visibleRowCountMode, it is ignored.

Default value is <code>5</code>.
	* @return	Value of property <code>minAutoRowCount</code>
	*/
	public function getMinAutoRowCount( ):Int;

	/**
	* Gets content of aggregation {@link #getNoData noData}.

The value for the noData aggregation can be either a string value or a control instance. The control is shown, in case there is no data for the Table available. In case of a string value this will simply replace the no data text.
	* @return	null
	*/
	public function getNoData( ):Dynamic;

	/**
	* Gets content of aggregation {@link #getPlugins plugins}.

Plugin section of the table. Multiple plugins are possible, but always only <b>one</b> of a certain type.

The following restrictions apply: <ul> <li>If a selection plugin is applied to the table, the table's selection API must not be used. Instead, use the API of the plugin.</li> <li>Only one MultiSelectionPlugin can be applied. No other plugins can be applied.</li> </ul>
	* @return	null
	*/
	public function getPlugins( ):Array<sap.ui.table.plugins.SelectionPlugin>;

	/**
	* Gets current value of property {@link #getRowActionCount rowActionCount}.

Number of row actions made visible which determines the width of the row action column. The values <code>0</code>, <code>1</code> and <code>2</code> are possible.

Default value is <code>0</code>.
	* @return	Value of property <code>rowActionCount</code>
	*/
	public function getRowActionCount( ):Int;

	/**
	* Gets content of aggregation {@link #getRowActionTemplate rowActionTemplate}.

Template for row actions. A template is decoupled from the row or table. Each time the template's properties or aggregations are changed, the template has to be applied again via <code>setRowActionTemplate</code> for the changes to take effect.
	* @return	null
	*/
	public function getRowActionTemplate( ):sap.ui.table.RowAction;

	/**
	* Gets current value of property {@link #getRowHeight rowHeight}.

Row height in pixel.

In the table's header, it defines the minimum height of the row, but it cannot be less than the default height based on the content density configuration. The actual height can increase based on the content.

In the table's body, it defines the height of the row content. The actual row height is also influenced by other factors, such as the border width. If the <code>visibleRowCountMode</code> property is set to {@link sap.ui.table.VisibleRowCountMode Fixed} or {@link sap.ui.table.VisibleRowCountMode Interactive}, the value defines the minimum height, and the actual height can increase based on the content. If the mode is {@link sap.ui.table.VisibleRowCountMode Auto}, the value defines the actual height, and any content that doesn't fit is cut off.

If no value is set (includes 0), a default height is applied based on the content density configuration. In any <code>visibleRowCountMode</code>, the actual height can increase based on the content.
	* @return	Value of property <code>rowHeight</code>
	*/
	public function getRowHeight( ):Int;

	/**
	* Gets content of aggregation {@link #getRows rows}.

Rows of the Table
	* @return	null
	*/
	public function getRows( ):Array<sap.ui.table.Row>;

	/**
	* Gets content of aggregation {@link #getRowSettingsTemplate rowSettingsTemplate}.

Template for row settings. A template is decoupled from the row or table. Each time the template's properties or aggregations are changed, the template has to be applied again via <code>setRowSettingsTemplate</code> for the changes to take effect.
	* @return	null
	*/
	public function getRowSettingsTemplate( ):sap.ui.table.RowSettings;

	/**
	* Gets current value of property {@link #getSelectedIndex selectedIndex}.

Zero-based index of selected item. Index value for no selection is -1. When multi-selection is enabled and multiple items are selected, the method returns the lead selected item. Sets the zero-based index of the currently selected item. This method removes any previous selections. When the given index is invalid, the call is ignored.

Default value is <code>-1</code>.
	* @return	Value of property <code>selectedIndex</code>
	*/
	public function getSelectedIndex( ):Int;

	/**
	* Zero-based indices of selected items, wrapped in an array. An empty array means "no selection".
	* @return	Selected indices
	*/
	public function getSelectedIndices( ):Array<Int>;

	/**
	* Gets current value of property {@link #getSelectionBehavior selectionBehavior}.

Selection behavior of the Table. This property defines whether the row selector is displayed and whether the row, the row selector or both can be clicked to select a row. <b>Note:</b> Since the group header visualization relies on the row selectors, the row selectors are always shown if the grouping functionality (depends on table type) is enabled, even if <code>sap.ui.table.SelectionBehavior.RowOnly</code> is set.

Default value is <code>RowSelector</code>.
	* @return	Value of property <code>selectionBehavior</code>
	*/
	public function getSelectionBehavior( ):sap.ui.table.SelectionBehavior;

	/**
	* Gets current value of property {@link #getSelectionMode selectionMode}.

Selection mode of the Table. This property controls whether single or multiple rows can be selected and how the selection can be extended. It may also influence the visual appearance. When the selection mode is changed, the current selection is removed. <b>Note:</b> Since the group header visualization relies on the row selectors, the row selectors are always shown if the grouping functionality (depends on table type) is enabled, even if <code>sap.ui.table.SelectionMode.None</code> is set. <b>Note:</b> When a selection plugin is applied to the table, the selection mode is controlled by the plugin and cannot be changed manually.

Default value is <code>MultiToggle</code>.
	* @return	Value of property <code>selectionMode</code>
	*/
	public function getSelectionMode( ):sap.ui.table.SelectionMode;

	/**
	* Gets current value of property {@link #getShowColumnVisibilityMenu showColumnVisibilityMenu}.

Flag to show or hide the column visibility menu. This menu will get displayed in each generated column header menu. It allows to show or hide columns

Default value is <code>false</code>.
	* @return	Value of property <code>showColumnVisibilityMenu</code>
	*/
	public function getShowColumnVisibilityMenu( ):Bool;

	/**
	* Gets current value of property {@link #getShowNoData showNoData}.

Flag whether to show the no data overlay or not once the table is empty. If set to false the table will just show a grid of empty cells

Default value is <code>true</code>.
	* @return	Value of property <code>showNoData</code>
	*/
	public function getShowNoData( ):Bool;

	/**
	* Gets current value of property {@link #getShowOverlay showOverlay}.

Setting this property to true will show an overlay on top of the Table content and users cannot click anymore on the Table content.

Default value is <code>false</code>.
	* @return	Value of property <code>showOverlay</code>
	*/
	public function getShowOverlay( ):Bool;

	/**
	* Gets the sorted columns in the order in which sorting was performed through the {@link sap.ui.table.Table#sort} method and menus. Does not reflect sorting at binding level or the columns sort visualization set with {@link sap.ui.table.Column#setSorted} and {@link sap.ui.table.Column#setSortOrder}.
	* @return	Array of sorted columns
	*/
	public function getSortedColumns( ):Array<sap.ui.table.Column>;

	/**
	* Gets current value of property {@link #getThreshold threshold}.

The <code>threshold</code> defines how many additional (not yet visible records) shall be pre-fetched to enable smooth scrolling. The threshold is always added to the <code>visibleRowCount</code>. If the <code>visibleRowCount</code> is 10 and the <code>threshold</code> is 100, there will be 110 records fetched with the initial load. If the <code>threshold</code> is lower than the <code>visibleRowCount</code>, the <code>visibleRowCount</code> will be used as the <code>threshold</code>. If the value is 0 then the thresholding is disabled.

Default value is <code>100</code>.
	* @return	Value of property <code>threshold</code>
	*/
	public function getThreshold( ):Int;

	/**
	* Gets content of aggregation {@link #getTitle title}.

Control or text of title section of the Table (if not set it will be hidden)
	* @return	null
	*/
	public function getTitle( ):Dynamic;

	/**
	* Gets current value of property {@link #getVisibleRowCount visibleRowCount}.

Number of visible rows of the table.

Default value is <code>10</code>.
	* @return	Value of property <code>visibleRowCount</code>
	*/
	public function getVisibleRowCount( ):Int;

	/**
	* Gets current value of property {@link #getVisibleRowCountMode visibleRowCountMode}.

Defines how the table handles the visible rows in the table.

In the <code>"Fixed"</code> mode, the table always has as many rows as defined in the <code>visibleRowCount</code> property.

In the <code>"Auto"</code> mode, the <code>visibleRowCount</code> property is changed by the table automatically. It will then adjust its row count to the space it is allowed to cover (limited by the surrounding container), but it cannot have less than defined in the <code>minAutoRowCount</code> property. The <code>visibleRowCount</code> property cannot be set manually. <h3>Limitations</h3> <ul> <li>All rows need to have the same height.</li> <li>The table must be rendered without siblings in its parent DOM element. The only exception is if the parent element is a CSS flex container, and the table is a CSS flex item allowed to grow and shrink.</li> </ul>

In the <code>"Interactive"</code> mode, the table has as many rows as defined in the <code>visibleRowCount</code> property after rendering. The user can change the <code>visibleRowCount</code> by dragging a resizer.

Default value is <code>Fixed</code>.
	* @return	Value of property <code>visibleRowCountMode</code>
	*/
	public function getVisibleRowCountMode( ):sap.ui.table.VisibleRowCountMode;

	/**
	* Gets current value of property {@link #getWidth width}.

Width of the Table.

Default value is <code>auto</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.ui.table.Column</code> in the aggregation {@link #getColumns columns}. and returns its index if found or -1 otherwise.
	* @param	oColumn The column whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfColumn( oColumn:sap.ui.table.Column):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getExtension extension}. and returns its index if found or -1 otherwise.
	* @param	oExtension The extension whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfExtension( oExtension:sap.ui.core.Control):Int;

	/**
	* Checks for the provided <code>sap.ui.table.plugins.SelectionPlugin</code> in the aggregation {@link #getPlugins plugins}. and returns its index if found or -1 otherwise.
	* @param	oPlugin The plugin whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfPlugin( oPlugin:sap.ui.table.plugins.SelectionPlugin):Int;

	/**
	* Checks for the provided <code>sap.ui.table.Row</code> in the aggregation {@link #getRows rows}. and returns its index if found or -1 otherwise.
	* @param	oRow The row whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfRow( oRow:sap.ui.table.Row):Int;

	/**
	* Inserts a column into the aggregation {@link #getColumns columns}.
	* @param	oColumn The column to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the column should be inserted at; for a negative value of <code>iIndex</code>, the column is inserted at position 0; for a value greater than the current size of the aggregation, the column is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertColumn( oColumn:sap.ui.table.Column, iIndex:Int):sap.ui.table.Table;

	/**
	* Inserts a extension into the aggregation {@link #getExtension extension}.
	* @param	oExtension The extension to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the extension should be inserted at; for a negative value of <code>iIndex</code>, the extension is inserted at position 0; for a value greater than the current size of the aggregation, the extension is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertExtension( oExtension:sap.ui.core.Control, iIndex:Int):sap.ui.table.Table;

	/**
	* Inserts a plugin into the aggregation {@link #getPlugins plugins}.
	* @param	oPlugin The plugin to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the plugin should be inserted at; for a negative value of <code>iIndex</code>, the plugin is inserted at position 0; for a value greater than the current size of the aggregation, the plugin is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertPlugin( oPlugin:sap.ui.table.plugins.SelectionPlugin, iIndex:Int):sap.ui.table.Table;

	/**
	* Inserts a row into the aggregation {@link #getRows rows}.
	* @param	oRow The row to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the row should be inserted at; for a negative value of <code>iIndex</code>, the row is inserted at position 0; for a value greater than the current size of the aggregation, the row is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertRow( oRow:sap.ui.table.Row, iIndex:Int):sap.ui.table.Table;

	/**
	* Checks whether an index is selected.
	* @param	iIndex Index to check for selection
	* @return	Whether the index is selected
	*/
	public function isIndexSelected( iIndex:Int):Bool;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Removes all the controls from the aggregation {@link #getColumns columns}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllColumns( ):Array<sap.ui.table.Column>;

	/**
	* Removes all the controls from the aggregation {@link #getExtension extension}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllExtension( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls from the aggregation {@link #getPlugins plugins}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllPlugins( ):Array<sap.ui.table.plugins.SelectionPlugin>;

	/**
	* Removes all the controls from the aggregation {@link #getRows rows}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllRows( ):Array<sap.ui.table.Row>;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;
	@:overload( function(vColumn:Int):sap.ui.table.Column{ })
	@:overload( function(vColumn:String):sap.ui.table.Column{ })

	/**
	* Removes a column from the aggregation {@link #getColumns columns}.
	* @param	vColumn The column to remove or its index or id
	* @return	The removed column or <code>null</code>
	*/
	public function removeColumn( vColumn:sap.ui.table.Column):sap.ui.table.Column;
	@:overload( function(vExtension:Int):sap.ui.core.Control{ })
	@:overload( function(vExtension:String):sap.ui.core.Control{ })

	/**
	* Removes a extension from the aggregation {@link #getExtension extension}.
	* @param	vExtension The extension to remove or its index or id
	* @return	The removed extension or <code>null</code>
	*/
	public function removeExtension( vExtension:sap.ui.core.Control):sap.ui.core.Control;
	@:overload( function(vPlugin:Int):sap.ui.table.plugins.SelectionPlugin{ })
	@:overload( function(vPlugin:String):sap.ui.table.plugins.SelectionPlugin{ })

	/**
	* Removes a plugin from the aggregation {@link #getPlugins plugins}.
	* @param	vPlugin The plugin to remove or its index or id
	* @return	The removed plugin or <code>null</code>
	*/
	public function removePlugin( vPlugin:sap.ui.table.plugins.SelectionPlugin):sap.ui.table.plugins.SelectionPlugin;
	@:overload( function(vRow:Int):sap.ui.table.Row{ })
	@:overload( function(vRow:String):sap.ui.table.Row{ })

	/**
	* Removes a row from the aggregation {@link #getRows rows}.
	* @param	vRow The row to remove or its index or id
	* @return	The removed row or <code>null</code>
	*/
	public function removeRow( vRow:sap.ui.table.Row):sap.ui.table.Row;

	/**
	* Removes the given selection interval from the selection. In case of single selection, only <code>iIndexTo</code> is removed from the selection.
	* @param	iIndexFrom Index from which the deselection should start
	* @param	iIndexTo Index up to which to deselect
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function removeSelectionInterval( iIndexFrom:Int, iIndexTo:Int):sap.ui.table.Table;

	/**
	* Adds all rows to the selection. Please note that for server based models like OData the indices which are considered to be selected might not be available at the client yet. Calling getContextByIndex might not return a result but trigger a roundtrip to request this single entity.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function selectAll( ):sap.ui.table.Table;

	/**
	* Sets a new value for property {@link #getAlternateRowColors alternateRowColors}.

Enables alternating table row colors. Alternate row coloring is not available for the tree mode.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bAlternateRowColors New value for property <code>alternateRowColors</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAlternateRowColors( bAlternateRowColors:Bool):sap.ui.table.Table;

	/**
	* Sets a new value for property {@link #getColumnHeaderHeight columnHeaderHeight}.

Header row height in pixel. If a value greater than 0 is set, it overrides the height defined in the <code>rowHeight</code> property for the rows in the table's header. The value defines the minimum height, but it cannot be less than the default height based on the content density configuration. The actual height can increase based on the content.

<b>Note</b>: In a {@link sap.ui.table.Column#getMultiLabels MultiLabel} scenario, the height is applied to each individual row of the table's header.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iColumnHeaderHeight New value for property <code>columnHeaderHeight</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumnHeaderHeight( iColumnHeaderHeight:Int):sap.ui.table.Table;

	/**
	* Sets a new value for property {@link #getColumnHeaderVisible columnHeaderVisible}.

Flag whether the column header is visible or not.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bColumnHeaderVisible New value for property <code>columnHeaderVisible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumnHeaderVisible( bColumnHeaderVisible:Bool):sap.ui.table.Table;

	/**
	* Sets the aggregated {@link #getContextMenu contextMenu}.
	* @param	oContextMenu The contextMenu to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContextMenu( oContextMenu:sap.ui.core.IContextMenu):sap.ui.table.Table;

	/**
	* Sets a new value for property {@link #getEditable editable}.

Flag whether the controls of the Table are editable or not (currently this only controls the background color in certain themes!)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEditable New value for property <code>editable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEditable( bEditable:Bool):sap.ui.table.Table;

	/**
	* Sets a new value for property {@link #getEnableBusyIndicator enableBusyIndicator}.

If set to <code>true</code>, the table changes its busy state, resulting in showing or hiding the busy indicator. The table will switch to busy as soon as data is retrieved to be displayed in the currently visible rows. This happens, for example, during scrolling, filtering, or sorting. As soon as the data has been retrieved, the table switches back to not busy. The busy state of the table can still be set manually by calling {@link sap.ui.core.Control#setBusy}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bEnableBusyIndicator New value for property <code>enableBusyIndicator</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableBusyIndicator( bEnableBusyIndicator:Bool):sap.ui.table.Table;

	/**
	* Sets a new value for property {@link #getEnableCellFilter enableCellFilter}.

Flag whether to enable or disable the context menu on cells to trigger a filtering with the cell value.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bEnableCellFilter New value for property <code>enableCellFilter</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableCellFilter( bEnableCellFilter:Bool):sap.ui.table.Table;

	/**
	* Sets a new value for property {@link #getEnableColumnFreeze enableColumnFreeze}.

Flag whether to show or hide the column menu item to freeze or unfreeze a column.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bEnableColumnFreeze New value for property <code>enableColumnFreeze</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableColumnFreeze( bEnableColumnFreeze:Bool):sap.ui.table.Table;

	/**
	* Sets a new value for property {@link #getEnableColumnReordering enableColumnReordering}.

Flag to enable or disable column reordering

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnableColumnReordering New value for property <code>enableColumnReordering</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableColumnReordering( bEnableColumnReordering:Bool):sap.ui.table.Table;

	/**
	* Sets a new value for property {@link #getEnableCustomFilter enableCustomFilter}.

Set this parameter to true to implement your own filter behaviour. Instead of the filter input box a button will be rendered for which' press event (customFilter) you can register an event handler.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bEnableCustomFilter New value for property <code>enableCustomFilter</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableCustomFilter( bEnableCustomFilter:Bool):sap.ui.table.Table;

	/**
	* Sets a new value for property {@link #getEnableGrouping enableGrouping}.

Enables or disables grouping. If grouping is enabled, the table is grouped by the column which is defined in the <code>groupBy</code> association.

The following restrictions apply: <ul> <li>Only client models are supported (e.g. {@link sap.ui.model.json.JSONModel}). Grouping does not work with OData models.</li> <li>The table can only be grouped by <b>one</b> column at a time. Grouping by another column will remove the current grouping.</li> <li>For the grouping to work correctly, {@link sap.ui.table.Column#getSortProperty sortProperty} must be set for the grouped column.</li> <li>If grouping has been done, sorting and filtering is not possible. Any existing sorting and filtering rules do no longer apply. The UI is not updated accordingly (e.g. menu items, sort and filter icons).</li> <li>The column, by which the table is grouped, is not visible. It will become visible again only if the table is grouped by another column or grouping is disabled.</li> </ul>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bEnableGrouping New value for property <code>enableGrouping</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableGrouping( bEnableGrouping:Bool):sap.ui.table.Table;

	/**
	* Sets a new value for property {@link #getEnableSelectAll enableSelectAll}.

Specifies if a select all button should be displayed in the top left corner. This button is only displayed if the row selector is visible and the selection mode is set to any kind of multi selection.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnableSelectAll New value for property <code>enableSelectAll</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableSelectAll( bEnableSelectAll:Bool):sap.ui.table.Table;

	/**
	* Sets a new value for property {@link #getFirstVisibleRow firstVisibleRow}.

First visible row.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iFirstVisibleRow New value for property <code>firstVisibleRow</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFirstVisibleRow( iFirstVisibleRow:Int):sap.ui.table.Table;

	/**
	* Sets a new value for property {@link #getFixedBottomRowCount fixedBottomRowCount}.

Number of rows that are fix on the bottom. When you use a vertical scrollbar, only the rows which are not fixed, will scroll.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iFixedBottomRowCount New value for property <code>fixedBottomRowCount</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFixedBottomRowCount( iFixedBottomRowCount:Int):sap.ui.table.Table;

	/**
	* Sets a new value for property {@link #getFixedColumnCount fixedColumnCount}.

Number of columns that are fixed on the left. Only columns which are not fixed can be scrolled horizontally.

<b>Note</b> <ul> <li>Fixed columns need a defined width for the feature to work.</li> <li>The aggregated width of all fixed columns must not exceed the table width. Otherwise the table ignores the value of the property and adapts the behavior in an appropriate way to ensure that the user is still able to scroll horizontally.</li> </ul>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iFixedColumnCount New value for property <code>fixedColumnCount</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFixedColumnCount( iFixedColumnCount:Int):sap.ui.table.Table;

	/**
	* Sets a new value for property {@link #getFixedRowCount fixedRowCount}.

Number of rows that are fix on the top. When you use a vertical scrollbar, only the rows which are not fixed, will scroll.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iFixedRowCount New value for property <code>fixedRowCount</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFixedRowCount( iFixedRowCount:Int):sap.ui.table.Table;
	@:overload( function(vFooter:sap.ui.core.Control):sap.ui.table.Table{ })

	/**
	* Sets the aggregated {@link #getFooter footer}.
	* @param	vFooter The footer to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFooter( vFooter:String):sap.ui.table.Table;
	@:overload( function(oGroupBy:sap.ui.core.ID):sap.ui.table.Table{ })

	/**
	* Sets the associated {@link #getGroupBy groupBy}.
	* @param	oGroupBy ID of an element which becomes the new target of this groupBy association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGroupBy( oGroupBy:sap.ui.table.Column):sap.ui.table.Table;

	/**
	* Sets a new value for property {@link #getMinAutoRowCount minAutoRowCount}.

This property is used to set the minimum count of visible rows when the property visibleRowCountMode is set to Auto or Interactive. For any other visibleRowCountMode, it is ignored.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>5</code>.
	* @param	iMinAutoRowCount New value for property <code>minAutoRowCount</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMinAutoRowCount( iMinAutoRowCount:Int):sap.ui.table.Table;
	@:overload( function(vNoData:sap.ui.core.Control):sap.ui.table.Table{ })

	/**
	* Sets the aggregated {@link #getNoData noData}.
	* @param	vNoData The noData to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNoData( vNoData:String):sap.ui.table.Table;

	/**
	* Sets a new value for property {@link #getRowActionCount rowActionCount}.

Number of row actions made visible which determines the width of the row action column. The values <code>0</code>, <code>1</code> and <code>2</code> are possible.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iRowActionCount New value for property <code>rowActionCount</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRowActionCount( iRowActionCount:Int):sap.ui.table.Table;

	/**
	* Sets the aggregated {@link #getRowActionTemplate rowActionTemplate}.
	* @param	oRowActionTemplate The rowActionTemplate to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRowActionTemplate( oRowActionTemplate:sap.ui.table.RowAction):sap.ui.table.Table;

	/**
	* Sets a new value for property {@link #getRowHeight rowHeight}.

Row height in pixel.

In the table's header, it defines the minimum height of the row, but it cannot be less than the default height based on the content density configuration. The actual height can increase based on the content.

In the table's body, it defines the height of the row content. The actual row height is also influenced by other factors, such as the border width. If the <code>visibleRowCountMode</code> property is set to {@link sap.ui.table.VisibleRowCountMode Fixed} or {@link sap.ui.table.VisibleRowCountMode Interactive}, the value defines the minimum height, and the actual height can increase based on the content. If the mode is {@link sap.ui.table.VisibleRowCountMode Auto}, the value defines the actual height, and any content that doesn't fit is cut off.

If no value is set (includes 0), a default height is applied based on the content density configuration. In any <code>visibleRowCountMode</code>, the actual height can increase based on the content.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iRowHeight New value for property <code>rowHeight</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRowHeight( iRowHeight:Int):sap.ui.table.Table;

	/**
	* Sets the aggregated {@link #getRowSettingsTemplate rowSettingsTemplate}.
	* @param	oRowSettingsTemplate The rowSettingsTemplate to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRowSettingsTemplate( oRowSettingsTemplate:sap.ui.table.RowSettings):sap.ui.table.Table;

	/**
	* Sets a new value for property {@link #getSelectedIndex selectedIndex}.

Zero-based index of selected item. Index value for no selection is -1. When multi-selection is enabled and multiple items are selected, the method returns the lead selected item. Sets the zero-based index of the currently selected item. This method removes any previous selections. When the given index is invalid, the call is ignored.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>-1</code>.
	* @param	iSelectedIndex New value for property <code>selectedIndex</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSelectedIndex( iSelectedIndex:Int):sap.ui.table.Table;

	/**
	* Sets a new value for property {@link #getSelectionBehavior selectionBehavior}.

Selection behavior of the Table. This property defines whether the row selector is displayed and whether the row, the row selector or both can be clicked to select a row. <b>Note:</b> Since the group header visualization relies on the row selectors, the row selectors are always shown if the grouping functionality (depends on table type) is enabled, even if <code>sap.ui.table.SelectionBehavior.RowOnly</code> is set.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>RowSelector</code>.
	* @param	sSelectionBehavior New value for property <code>selectionBehavior</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSelectionBehavior( sSelectionBehavior:sap.ui.table.SelectionBehavior):sap.ui.table.Table;

	/**
	* Sets the given selection interval as selection. In case of a single selection, only <code>iIndexTo</code> is selected.
	* @param	iIndexFrom Index from which the selection starts
	* @param	iIndexTo Index up to which to select
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSelectionInterval( iIndexFrom:Int, iIndexTo:Int):sap.ui.table.Table;

	/**
	* Sets the selection mode. The current selection is lost.
	* @param	sSelectionMode the selection mode, see sap.ui.table.SelectionMode
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSelectionMode( sSelectionMode:sap.ui.table.SelectionMode):sap.ui.table.Table;

	/**
	* Sets a new value for property {@link #getShowColumnVisibilityMenu showColumnVisibilityMenu}.

Flag to show or hide the column visibility menu. This menu will get displayed in each generated column header menu. It allows to show or hide columns

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowColumnVisibilityMenu New value for property <code>showColumnVisibilityMenu</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowColumnVisibilityMenu( bShowColumnVisibilityMenu:Bool):sap.ui.table.Table;

	/**
	* Sets a new value for property {@link #getShowNoData showNoData}.

Flag whether to show the no data overlay or not once the table is empty. If set to false the table will just show a grid of empty cells

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowNoData New value for property <code>showNoData</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowNoData( bShowNoData:Bool):sap.ui.table.Table;

	/**
	* Sets a new value for property {@link #getShowOverlay showOverlay}.

Setting this property to true will show an overlay on top of the Table content and users cannot click anymore on the Table content.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowOverlay New value for property <code>showOverlay</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowOverlay( bShowOverlay:Bool):sap.ui.table.Table;

	/**
	* Sets the threshold value, which will be added to all data requests in case the Table is bound against an OData service.
	* @param	iThreshold The threshold
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setThreshold( iThreshold:Int):sap.ui.table.Table;
	@:overload( function(vTitle:sap.ui.core.Control):sap.ui.table.Table{ })

	/**
	* Sets the aggregated {@link #getTitle title}.
	* @param	vTitle The title to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( vTitle:String):sap.ui.table.Table;
	@:overload( function(vTooltip:String):sap.ui.table.Table{ })

	/**
	* Sets a new tooltip for this object. The tooltip can either be a simple string (which in most cases will be rendered as the <code>title</code> attribute of this Element) or an instance of {@link sap.ui.core.TooltipBase}.

If a new tooltip is set, any previously set tooltip is deactivated.

Please note that tooltips are not rendered for the table. The tooltip property will be set but it won't effect the DOM.
	* @param	vTooltip The tooltip
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTooltip( vTooltip:sap.ui.core.TooltipBase):sap.ui.table.Table;

	/**
	* Sets a new value for property {@link #getVisibleRowCount visibleRowCount}.

Number of visible rows of the table.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>10</code>.
	* @param	iVisibleRowCount New value for property <code>visibleRowCount</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisibleRowCount( iVisibleRowCount:Int):sap.ui.table.Table;

	/**
	* Sets a new value for property {@link #getVisibleRowCountMode visibleRowCountMode}.

Defines how the table handles the visible rows in the table.

In the <code>"Fixed"</code> mode, the table always has as many rows as defined in the <code>visibleRowCount</code> property.

In the <code>"Auto"</code> mode, the <code>visibleRowCount</code> property is changed by the table automatically. It will then adjust its row count to the space it is allowed to cover (limited by the surrounding container), but it cannot have less than defined in the <code>minAutoRowCount</code> property. The <code>visibleRowCount</code> property cannot be set manually. <h3>Limitations</h3> <ul> <li>All rows need to have the same height.</li> <li>The table must be rendered without siblings in its parent DOM element. The only exception is if the parent element is a CSS flex container, and the table is a CSS flex item allowed to grow and shrink.</li> </ul>

In the <code>"Interactive"</code> mode, the table has as many rows as defined in the <code>visibleRowCount</code> property after rendering. The user can change the <code>visibleRowCount</code> by dragging a resizer.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Fixed</code>.
	* @param	sVisibleRowCountMode New value for property <code>visibleRowCountMode</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisibleRowCountMode( sVisibleRowCountMode:sap.ui.table.VisibleRowCountMode):sap.ui.table.Table;

	/**
	* Sets a new value for property {@link #getWidth width}.

Width of the Table.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>auto</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.table.Table;
	@:overload( function(oColumn:sap.ui.table.Column, oSortOrder:sap.ui.table.SortOrder, bAdd:Bool):Void{ })

	/**
	* Sorts the given column ascending or descending.
	* @param	oColumn Column to be sorted or undefined to clear sorting
	* @param	oSortOrder Sort order of the column (if undefined the default will be ascending)
	* @param	bAdd Set to true to add the new sort criterion to the existing sort criteria
	* @return	Void
	*/
	public function sort( oColumn:Dynamic, oSortOrder:sap.ui.table.SortOrder, bAdd:Bool):Void;

	/**
	* Unbinds aggregation {@link #getColumns columns} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindColumns( ):sap.ui.table.Table;

	/**
	* Unbinds aggregation {@link #getRows rows} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindRows( ):sap.ui.table.Table;
}

typedef TableArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Width of the Table.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Row height in pixel.

In the table's header, it defines the minimum height of the row, but it cannot be less than the default height based on the content density configuration. The actual height can increase based on the content.

In the table's body, it defines the height of the row content. The actual row height is also influenced by other factors, such as the border width. If the <code>visibleRowCountMode</code> property is set to {@link sap.ui.table.VisibleRowCountMode Fixed} or {@link sap.ui.table.VisibleRowCountMode Interactive}, the value defines the minimum height, and the actual height can increase based on the content. If the mode is {@link sap.ui.table.VisibleRowCountMode Auto}, the value defines the actual height, and any content that doesn't fit is cut off.

If no value is set (includes 0), a default height is applied based on the content density configuration. In any <code>visibleRowCountMode</code>, the actual height can increase based on the content.
	*/
	@:optional var rowHeight:haxe.extern.EitherType<String,Int>;

	/**
	* Header row height in pixel. If a value greater than 0 is set, it overrides the height defined in the <code>rowHeight</code> property for the rows in the table's header. The value defines the minimum height, but it cannot be less than the default height based on the content density configuration. The actual height can increase based on the content.

<b>Note</b>: In a {@link sap.ui.table.Column#getMultiLabels MultiLabel} scenario, the height is applied to each individual row of the table's header.
	*/
	@:optional var columnHeaderHeight:haxe.extern.EitherType<String,Int>;

	/**
	* Flag whether the column header is visible or not.
	*/
	@:optional var columnHeaderVisible:haxe.extern.EitherType<String,Bool>;

	/**
	* Number of visible rows of the table.
	*/
	@:optional var visibleRowCount:haxe.extern.EitherType<String,Int>;

	/**
	* First visible row.
	*/
	@:optional var firstVisibleRow:haxe.extern.EitherType<String,Int>;

	/**
	* Selection mode of the Table. This property controls whether single or multiple rows can be selected and how the selection can be extended. It may also influence the visual appearance. When the selection mode is changed, the current selection is removed. <b>Note:</b> Since the group header visualization relies on the row selectors, the row selectors are always shown if the grouping functionality (depends on table type) is enabled, even if <code>sap.ui.table.SelectionMode.None</code> is set. <b>Note:</b> When a selection plugin is applied to the table, the selection mode is controlled by the plugin and cannot be changed manually.
	*/
	@:optional var selectionMode:haxe.extern.EitherType<String,sap.ui.table.SelectionMode>;

	/**
	* Selection behavior of the Table. This property defines whether the row selector is displayed and whether the row, the row selector or both can be clicked to select a row. <b>Note:</b> Since the group header visualization relies on the row selectors, the row selectors are always shown if the grouping functionality (depends on table type) is enabled, even if <code>sap.ui.table.SelectionBehavior.RowOnly</code> is set.
	*/
	@:optional var selectionBehavior:haxe.extern.EitherType<String,sap.ui.table.SelectionBehavior>;

	/**
	* Zero-based index of selected item. Index value for no selection is -1. When multi-selection is enabled and multiple items are selected, the method returns the lead selected item. Sets the zero-based index of the currently selected item. This method removes any previous selections. When the given index is invalid, the call is ignored.
	*/
	@:optional var selectedIndex:haxe.extern.EitherType<String,Int>;

	/**
	* Flag whether the controls of the Table are editable or not (currently this only controls the background color in certain themes!)
	*/
	@:optional var editable:haxe.extern.EitherType<String,Bool>;

	/**
	* The <code>threshold</code> defines how many additional (not yet visible records) shall be pre-fetched to enable smooth scrolling. The threshold is always added to the <code>visibleRowCount</code>. If the <code>visibleRowCount</code> is 10 and the <code>threshold</code> is 100, there will be 110 records fetched with the initial load. If the <code>threshold</code> is lower than the <code>visibleRowCount</code>, the <code>visibleRowCount</code> will be used as the <code>threshold</code>. If the value is 0 then the thresholding is disabled.
	*/
	@:optional var threshold:haxe.extern.EitherType<String,Int>;

	/**
	* Flag to enable or disable column reordering
	*/
	@:optional var enableColumnReordering:haxe.extern.EitherType<String,Bool>;

	/**
	* Enables or disables grouping. If grouping is enabled, the table is grouped by the column which is defined in the <code>groupBy</code> association.

The following restrictions apply: <ul> <li>Only client models are supported (e.g. {@link sap.ui.model.json.JSONModel}). Grouping does not work with OData models.</li> <li>The table can only be grouped by <b>one</b> column at a time. Grouping by another column will remove the current grouping.</li> <li>For the grouping to work correctly, {@link sap.ui.table.Column#getSortProperty sortProperty} must be set for the grouped column.</li> <li>If grouping has been done, sorting and filtering is not possible. Any existing sorting and filtering rules do no longer apply. The UI is not updated accordingly (e.g. menu items, sort and filter icons).</li> <li>The column, by which the table is grouped, is not visible. It will become visible again only if the table is grouped by another column or grouping is disabled.</li> </ul>
	*/
	@:optional var enableGrouping:haxe.extern.EitherType<String,Bool>;

	/**
	* Flag to show or hide the column visibility menu. This menu will get displayed in each generated column header menu. It allows to show or hide columns
	*/
	@:optional var showColumnVisibilityMenu:haxe.extern.EitherType<String,Bool>;

	/**
	* Flag whether to show the no data overlay or not once the table is empty. If set to false the table will just show a grid of empty cells
	*/
	@:optional var showNoData:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines how the table handles the visible rows in the table.

In the <code>"Fixed"</code> mode, the table always has as many rows as defined in the <code>visibleRowCount</code> property.

In the <code>"Auto"</code> mode, the <code>visibleRowCount</code> property is changed by the table automatically. It will then adjust its row count to the space it is allowed to cover (limited by the surrounding container), but it cannot have less than defined in the <code>minAutoRowCount</code> property. The <code>visibleRowCount</code> property cannot be set manually. <h3>Limitations</h3> <ul> <li>All rows need to have the same height.</li> <li>The table must be rendered without siblings in its parent DOM element. The only exception is if the parent element is a CSS flex container, and the table is a CSS flex item allowed to grow and shrink.</li> </ul>

In the <code>"Interactive"</code> mode, the table has as many rows as defined in the <code>visibleRowCount</code> property after rendering. The user can change the <code>visibleRowCount</code> by dragging a resizer.
	*/
	@:optional var visibleRowCountMode:haxe.extern.EitherType<String,sap.ui.table.VisibleRowCountMode>;

	/**
	* This property is used to set the minimum count of visible rows when the property visibleRowCountMode is set to Auto or Interactive. For any other visibleRowCountMode, it is ignored.
	*/
	@:optional var minAutoRowCount:haxe.extern.EitherType<String,Int>;

	/**
	* Number of columns that are fixed on the left. Only columns which are not fixed can be scrolled horizontally.

<b>Note</b> <ul> <li>Fixed columns need a defined width for the feature to work.</li> <li>The aggregated width of all fixed columns must not exceed the table width. Otherwise the table ignores the value of the property and adapts the behavior in an appropriate way to ensure that the user is still able to scroll horizontally.</li> </ul>
	*/
	@:optional var fixedColumnCount:haxe.extern.EitherType<String,Int>;

	/**
	* Number of rows that are fix on the top. When you use a vertical scrollbar, only the rows which are not fixed, will scroll.
	*/
	@:optional var fixedRowCount:haxe.extern.EitherType<String,Int>;

	/**
	* Number of rows that are fix on the bottom. When you use a vertical scrollbar, only the rows which are not fixed, will scroll.
	*/
	@:optional var fixedBottomRowCount:haxe.extern.EitherType<String,Int>;

	/**
	* Flag whether to show or hide the column menu item to freeze or unfreeze a column.
	*/
	@:optional var enableColumnFreeze:haxe.extern.EitherType<String,Bool>;

	/**
	* Flag whether to enable or disable the context menu on cells to trigger a filtering with the cell value.
	*/
	@:optional var enableCellFilter:haxe.extern.EitherType<String,Bool>;

	/**
	* Setting this property to true will show an overlay on top of the Table content and users cannot click anymore on the Table content.
	*/
	@:optional var showOverlay:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies if a select all button should be displayed in the top left corner. This button is only displayed if the row selector is visible and the selection mode is set to any kind of multi selection.
	*/
	@:optional var enableSelectAll:haxe.extern.EitherType<String,Bool>;

	/**
	* Set this parameter to true to implement your own filter behaviour. Instead of the filter input box a button will be rendered for which' press event (customFilter) you can register an event handler.
	*/
	@:optional var enableCustomFilter:haxe.extern.EitherType<String,Bool>;

	/**
	* If set to <code>true</code>, the table changes its busy state, resulting in showing or hiding the busy indicator. The table will switch to busy as soon as data is retrieved to be displayed in the currently visible rows. This happens, for example, during scrolling, filtering, or sorting. As soon as the data has been retrieved, the table switches back to not busy. The busy state of the table can still be set manually by calling {@link sap.ui.core.Control#setBusy}.
	*/
	@:optional var enableBusyIndicator:haxe.extern.EitherType<String,Bool>;

	/**
	* Number of row actions made visible which determines the width of the row action column. The values <code>0</code>, <code>1</code> and <code>2</code> are possible.
	*/
	@:optional var rowActionCount:haxe.extern.EitherType<String,Int>;

	/**
	* Enables alternating table row colors. Alternate row coloring is not available for the tree mode.
	*/
	@:optional var alternateRowColors:haxe.extern.EitherType<String,Bool>;

    /**
    * Control or text of title section of the Table (if not set it will be hidden)
    */
	@:optional var title:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * Control or text of footer section of the Table (if not set it will be hidden)
    */
	@:optional var footer:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * Extension section of the Table. If not set, no extension area will be rendered. Note: In case a <code>sap.m.Toolbar</code> is used as header the CSS class sapMTBHeader-CTX should be applied on this toolbar.
    */
	@:optional var extension:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * Columns of the Table
    */
	@:optional var columns:Array<haxe.extern.EitherType<String,sap.ui.table.Column>>;

    /**
    * Rows of the Table
    */
	@:optional var rows:Array<haxe.extern.EitherType<String,sap.ui.table.Row>>;

    /**
    * This row can be used for user input to create new data. Like in any other row, the cells of this row are also managed by the table and must not be modified. The cell content is defined via the <code>creationTemplate</code> aggregation of the {@link sap.ui.table.Column}. If the creation row is set, the busy indicator will no longer cover the horizontal scrollbar, even if the creation row is invisible.
    */
	@:optional var creationRow:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * The value for the noData aggregation can be either a string value or a control instance. The control is shown, in case there is no data for the Table available. In case of a string value this will simply replace the no data text.
    */
	@:optional var noData:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * Template for row actions. A template is decoupled from the row or table. Each time the template's properties or aggregations are changed, the template has to be applied again via <code>setRowActionTemplate</code> for the changes to take effect.
    */
	@:optional var rowActionTemplate:haxe.extern.EitherType<String,sap.ui.table.RowAction>;

    /**
    * Template for row settings. A template is decoupled from the row or table. Each time the template's properties or aggregations are changed, the template has to be applied again via <code>setRowSettingsTemplate</code> for the changes to take effect.
    */
	@:optional var rowSettingsTemplate:haxe.extern.EitherType<String,sap.ui.table.RowSettings>;

    /**
    * Defines the context menu for the table.

<b>Note:</b> The context menu will also be available for the row selectors as well as in the row actions cell of the table control.

The custom context menu will not be shown in the group header rows and the sum row of the <code>AnalyticalTable</code> control.

If this aggregation is set, then the <code>enableCellFilter</code> property will have no effect.
    */
	@:optional var contextMenu:haxe.extern.EitherType<String,sap.ui.core.IContextMenu>;

    /**
    * Plugin section of the table. Multiple plugins are possible, but always only <b>one</b> of a certain type.

The following restrictions apply: <ul> <li>If a selection plugin is applied to the table, the table's selection API must not be used. Instead, use the API of the plugin.</li> <li>Only one MultiSelectionPlugin can be applied. No other plugins can be applied.</li> </ul>
    */
	@:optional var plugins:Array<haxe.extern.EitherType<String,sap.ui.table.plugins.SelectionPlugin>>;

	/**
	* The column by which the table is grouped. Grouping will only be performed if <code>enableGrouping</code> is set to <code>true</code>. Setting <code>groupBy</code> in the view does not work and throws an error. It can only be set if the column by which the table is grouped is already part of the <code>columns</code> aggregation of the table.
	*/
	@:optional var groupBy:haxe.extern.EitherType<String,sap.ui.table.Column>;

	/**
	* Association to controls / ids which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Fired when the user requests the context menu for a table cell.
	*/
	@:optional var beforeOpenContextMenu:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event gets fired when the busy state of the table changes. It should only be used by composite controls.
	*/
	@:optional var busyStateChanged:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* fired when the user clicks a cell of the table (experimental!).
	*/
	@:optional var cellClick:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* fired when a column of the table should be freezed
	*/
	@:optional var columnFreeze:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* fired when a table column is moved.
	*/
	@:optional var columnMove:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* fired when a table column is resized.
	*/
	@:optional var columnResize:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* fired when a column of the table has been selected
	*/
	@:optional var columnSelect:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* fired when the visibility of a table column is changed.
	*/
	@:optional var columnVisibility:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is triggered when the custom filter item of the column menu is pressed. The column on which the event was triggered is passed as parameter.
	*/
	@:optional var customFilter:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* fired when the table is filtered.
	*/
	@:optional var filter:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event gets fired when the first visible row is changed. It should only be used by composite controls. The event even is fired when setFirstVisibleRow is called programmatically.
	*/
	@:optional var firstVisibleRowChanged:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* fired when the table is grouped (experimental!).
	*/
	@:optional var group:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event gets fired when the user pastes content from the clipboard to the table. Pasting can be done via the context menu or the standard paste keyboard shortcut, if the focus is inside the table.
	*/
	@:optional var paste:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* fired when the row selection of the table has been changed (the event parameters can be used to determine selection changes - to find out the selected rows you should better use the table selection API)

<b>Note:</b> When a selection plugin is applied to the table, this event won't be fired.
	*/
	@:optional var rowSelectionChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* fired when the table is sorted.
	*/
	@:optional var sort:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
