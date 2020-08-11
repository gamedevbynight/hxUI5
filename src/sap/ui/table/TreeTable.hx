package sap.ui.table;

@:native("sap.ui.table.TreeTable")

/**
* The TreeTable control provides a comprehensive set of features to display hierarchical data.
*/
extern class TreeTable extends sap.ui.table.Table
{
	@:overload(function(?sId:String, ?mSettings:TreeTableArgs):Void {})
	public function new(?mSettings:TreeTableArgs):Void;

	/**
	* Adds the given selection interval to the selection. In case of single selection, only <code>iIndexTo</code> is added to the selection. Invisible nodes (collapsed child nodes) will not be regarded.

Please also take notice of the fact, that "addSelectionInterval" does not change any other selection. To override the current selection, please use "setSelctionInterval" or for a single entry use "setSelectedIndex".
	* @param	iIndexFrom Index from which the selection should start
	* @param	iIndexTo Index up to which to select
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addSelectionInterval( iIndexFrom:Int, iIndexTo:Int):sap.ui.table.Table;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:toggleOpenState toggleOpenState} event of this <code>sap.ui.table.TreeTable</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.table.TreeTable</code> itself.

Fired when a row has been expanded or collapsed by user interaction. Only available in hierarchical mode.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.table.TreeTable</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachToggleOpenState( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.TreeTable;
	@:overload( function(vRowIndex:Int):sap.ui.table.TreeTable{ })

	/**
	* Collapses one or more rows.
	* @param	vRowIndex A single index or an array of indices of the rows to be collapsed
	* @return	<code>this</code> to allow method chaining
	*/
	public function collapse( vRowIndex:Array<Int>):sap.ui.table.TreeTable;

	/**
	* Collapses all nodes (and lower if collapseRecursive is activated)
	* @return	<code>this</code> to allow method chaining
	*/
	public function collapseAll( ):sap.ui.table.TreeTable;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:toggleOpenState toggleOpenState} event of this <code>sap.ui.table.TreeTable</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachToggleOpenState( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.TreeTable;
	@:overload( function(vRowIndex:Int):sap.ui.table.TreeTable{ })

	/**
	* Expands one or more rows.
	* @param	vRowIndex A single index or an array of indices of the rows to be expanded
	* @return	<code>this</code> to allow method chaining
	*/
	public function expand( vRowIndex:Array<Int>):sap.ui.table.TreeTable;

	/**
	* Expands all nodes starting from the root level to the given level 'iLevel'.

Only supported with ODataModel v2, when running in OperationMode.Client or OperationMode.Auto. Fully supported for <code>sap.ui.model.ClientTreeBinding</code>, e.g. if you are using a <code>sap.ui.model.json.JSONModel</code>.

Please also see <code>sap.ui.model.odata.OperationMode</code>.
	* @param	iLevel the level to which the trees shall be expanded
	* @return	a reference on the TreeTable control, can be used for chaining
	*/
	public function expandToLevel( iLevel:Int):sap.ui.table.TreeTable;

	/**
	* Creates a new subclass of class sap.ui.table.TreeTable with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.table.Table.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getGroupHeaderProperty groupHeaderProperty}.

The property name of the rows data which will be displayed as a group header if the group mode is enabled
	* @return	Value of property <code>groupHeaderProperty</code>
	*/
	public function getGroupHeaderProperty( ):String;

	/**
	* Returns a metadata object for class sap.ui.table.TreeTable.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
<<<<<<< HEAD
=======

	/**
	* Gets current value of property {@link #getRootLevel rootLevel}.

The root level is the level of the topmost tree nodes, which will be used as an entry point for OData services. This property is only supported when the TreeTable uses an underlying odata services with hierarchy annotations. This property is only supported with sap.ui.model.odata.v2.ODataModel The hierarchy annotations may also be provided locally as a parameter for the ODataTreeBinding.

Default value is <code>0</code>.
	* @return	Value of property <code>rootLevel</code>
	*/
	public function getRootLevel( ):Int;
>>>>>>> bd78e88ba76c5bd0a95baa0cbb72c1713c532a11

	/**
	* Returns an array containing the row indices of all selected tree nodes (ordered ascending).

Please be aware of the following: Due to performance/network traffic reasons, the getSelectedIndices function returns only all indices of actually selected rows/tree nodes. Unknown rows/nodes (as in "not yet loaded" to the client), will not be returned.
	* @return	an array containing all selected indices
	*/
	public function getSelectedIndices( ):Array<Int>;

	/**
	* Gets current value of property {@link #getUseGroupMode useGroupMode}.

If group mode is enabled nodes with subitems are rendered as if they were group headers. This can be used to do the grouping for an OData service on the backend and visualize this in a table.

Default value is <code>false</code>.
	* @return	Value of property <code>useGroupMode</code>
	*/
	public function getUseGroupMode( ):Bool;

	/**
	* Checks whether the row is expanded or collapsed.
	* @param	iRowIndex The index of the row to be checked
	* @return	<code>true</code> if the row is expanded, <code>false</code> if it is collapsed
	*/
	public function isExpanded( iRowIndex:Int):Bool;

	/**
	* Removes the given selection interval from the selection. In case of single selection, only <code>iIndexTo</code> is removed from the selection. Invisible nodes (collapsed child nodes) will not be regarded.
	* @param	iIndexFrom Index from which the deselection should start
	* @param	iIndexTo Index up to which to deselect
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function removeSelectionInterval( iIndexFrom:Int, iIndexTo:Int):sap.ui.table.Table;

	/**
	* Selects all available nodes/rows.

All rows/tree nodes that are locally stored on the client and that are part of the currently visible tree are selected. Additional rows or tree nodes that come into view through scrolling or paging are also selected immediately as soon as they get visible. However, <code>SelectAll</code> does not retrieve any data from the back end in order to improve performance and reduce the network traffic.
	* @return	a reference on the TreeTable control, can be used for chaining
	*/
	public function selectAll( ):sap.ui.table.TreeTable;

	/**
	* Setter for property <code>fixedRowCount</code>.

<b>This property is not supportd for the TreeTable and will be ignored!</b>

Default value is <code>0</code>
	* @param	iRowCount New value for property <code>fixedRowCount</code>
	* @return	<code>this</code> to allow method chaining
	*/
	public function setFixedRowCount( iRowCount:Int):sap.ui.table.TreeTable;

	/**
	* Sets a new value for property {@link #getGroupHeaderProperty groupHeaderProperty}.

The property name of the rows data which will be displayed as a group header if the group mode is enabled

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sGroupHeaderProperty New value for property <code>groupHeaderProperty</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGroupHeaderProperty( sGroupHeaderProperty:String):sap.ui.table.TreeTable;

	/**
	* Sets the selected index In a TreeTable you can only select indices, which correspond to the currently visualized tree. Invisible tree nodes (e.g. collapsed child nodes) can not be selected via Index, because they do not correspond to a TreeTable row.
	* @param	iRowIndex The row index which will be selected (if existing)
	* @return	a reference on the TreeTable control, can be used for chaining
	*/
	public function setSelectedIndex( iRowIndex:Int):sap.ui.table.TreeTable;

	/**
	* Sets the selection of the TreeTable to the given range (including boundaries). Beware: The previous selection will be lost/overridden. If this is not wanted, please use "addSelectionInterval" and "removeSelectionInterval". Please be aware, that the absolute row index only applies to the tree which is visualized by the TreeTable.
	* @param	iFromIndex the start index of the selection range
	* @param	iToIndex the end index of the selection range
	* @return	a reference on the TreeTable control, can be used for chaining
	*/
	public function setSelectionInterval( iFromIndex:Int, iToIndex:Int):sap.ui.table.TreeTable;

	/**
	* Sets a new value for property {@link #getUseGroupMode useGroupMode}.

If group mode is enabled nodes with subitems are rendered as if they were group headers. This can be used to do the grouping for an OData service on the backend and visualize this in a table.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bUseGroupMode New value for property <code>useGroupMode</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUseGroupMode( ?bUseGroupMode:Bool):sap.ui.table.TreeTable;
}

typedef TreeTableArgs = sap.ui.table.Table.TableArgs & {

	/**
	* If group mode is enabled nodes with subitems are rendered as if they were group headers. This can be used to do the grouping for an OData service on the backend and visualize this in a table.
	*/
	@:optional var useGroupMode:haxe.extern.EitherType<String,Bool>;

	/**
	* The property name of the rows data which will be displayed as a group header if the group mode is enabled
	*/
	@:optional var groupHeaderProperty:String;

	/**
	* Fired when a row has been expanded or collapsed by user interaction. Only available in hierarchical mode.
	*/
	@:optional var toggleOpenState:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
