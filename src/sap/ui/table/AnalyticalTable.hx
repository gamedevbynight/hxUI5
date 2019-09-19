package sap.ui.table;

@:native("sap.ui.table.AnalyticalTable")

/**
* Table which handles analytical OData backends. The AnalyticalTable only works with an AnalyticalBinding and correctly annotated OData services. Please check on the SAP Annotations for OData Version 2.0 documentation for further details.
*/
extern class AnalyticalTable extends sap.ui.table.Table
{
	@:overload(function(?sId:String, ?mSettings:AnalyticalTableArgs):Void {})
	public function new(?mSettings:AnalyticalTableArgs):Void;

	/**
	* Marks a range of tree nodes as selected, starting with iFromIndex going to iToIndex. The nodes are referenced via their absolute row index. Please be aware that the absolute row index only applies to the tree which is visualized by the <code>AnalyticalTable</code> control. Invisible nodes (collapsed child nodes) will not be taken into account.

Please also take notice of the fact, that "addSelectionInterval" does not change any other selection. To override the current selection, please use "setSelctionInterval" or for a single entry use "setSelectedIndex".
	* @param	iFromIndex The starting index of the range which will be selected.
	* @param	iToIndex The starting index of the range which will be selected.
	* @return	a reference to the <code>AnalyticalTable</code> control, can be used for chaining
	*/
	public function addSelectionInterval( iFromIndex:Int, iToIndex:Int):sap.ui.table.AnalyticalTable;
	@:overload( function(vRowIndex:Int):sap.ui.table.AnalyticalTable{ })

	/**
	* Collapses one or more rows.
	* @param	vRowIndex A single index, or an array of indices of the rows to be collapsed
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function collapse( vRowIndex:Array<Int>):sap.ui.table.AnalyticalTable;

	/**
	* Collapses all nodes (and their child nodes if collapseRecursive is activated).
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function collapseAll( ):sap.ui.table.AnalyticalTable;
	@:overload( function(vRowIndex:Int):sap.ui.table.AnalyticalTable{ })

	/**
	* Expands one or more rows.
	* @param	vRowIndex A single index or an array of indices of the rows to be expanded
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function expand( vRowIndex:Array<Int>):sap.ui.table.AnalyticalTable;

	/**
	* Expands all nodes. The current selection is removed, and the table scrolls back to the top. If this method is called, not all groups might be loaded. If the user then scrolls to the bottom of the table, additional groups are loaded, which increases the scroll range, and the scroll thumb moves up.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function expandAll( ):sap.ui.table.AnalyticalTable;

	/**
	* Creates a new subclass of class sap.ui.table.AnalyticalTable with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.table.Table.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getCollapseRecursive collapseRecursive}.

Setting collapseRecursive to true means, that when collapsing a node all subsequent child nodes will also be collapsed.

Calling the setter of this property only has an effect when the tables <code>rows</code> aggregation is already bound and the binding supports this feature.

Default value is <code>true</code>.
	* @return	Value of property <code>collapseRecursive</code>
	*/
	public function getCollapseRecursive( ):Bool;

	/**
	* Gets current value of property {@link #getColumnVisibilityMenuSorter columnVisibilityMenuSorter}.

Functions which is used to sort the column visibility menu entries e.g.: function(ColumnA, ColumnB) { return 0 = equals, <0 lower, >0 greater }; Other values than functions will be ignored.
	* @return	Value of property <code>columnVisibilityMenuSorter</code>
	*/
	public function getColumnVisibilityMenuSorter( ):Dynamic;

	/**
	* Returns the context of a row by its index.
	* @param	iIndex Index of the row to return the context from.
	* @return	The context of a row by its index
	*/
	public function getContextByIndex( iIndex:Int):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.table.AnalyticalTable.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Retrieves the lead selection index. The lead selection index is, among other things, used to determine the start/end of a selection range, when using Shift-Click to select multiple entries at once.
	* @return	an array containing all selected indices (ascending ordered integers)
	*/
	public function getSelectedIndex( ):Array<Int>;

	/**
	* Returns an array containing the row indices of all selected tree nodes (in ascending order).

Please be aware of the following: Due to performance/network traffic reasons, the getSelectedIndices function returns only all indices of actually selected rows/tree nodes. Unknown rows/nodes (as in "not yet loaded" to the client), will not be returned.
	* @return	an array containing all selected indices
	*/
	public function getSelectedIndices( ):Array<Int>;

	/**
	* Returns the total size of the data entries.
	* @return	The total size of the data entries
	*/
	public function getTotalSize( ):Int;

	/**
	* Checks whether the row is expanded or collapsed.
	* @param	iRowIndex The index of the row to be checked
	* @return	<code>true</code> if the row is expanded, <code>false</code> if it is collapsed
	*/
	public function isExpanded( iRowIndex:Int):Bool;

	/**
	* Checks if the row at the given index is selected.
	* @param	iRowIndex The row index for which the selection state should be retrieved
	* @return	true if the index is selected, false otherwise
	*/
	public function isIndexSelected( iRowIndex:Int):Bool;

	/**
	* All rows/tree nodes inside the range (including boundaries) will be deselected. The nodes are referenced with their absolute row index. Please be aware that the absolute row index only applies to the tree which is visualized by the <code>AnalyticalTable</code> control. Invisible nodes (collapsed child nodes) will not be taken into account.
	* @param	iFromIndex The starting index of the range which will be deselected.
	* @param	iToIndex The starting index of the range which will be deselected.
	* @return	a reference to the <code>AnalyticalTable</code> control, can be used for chaining
	*/
	public function removeSelectionInterval( iFromIndex:Int, iToIndex:Int):sap.ui.table.AnalyticalTable;

	/**
	* Selects all available nodes/rows.

Explanation of the SelectAll function and what to expect from its behavior: All rows/nodes stored locally on the client are selected. In addition all subsequent rows/tree nodes, which will be paged into view are also immediately selected. However, due to obvious performance/network traffic reasons, the SelectAll function will NOT retrieve any data from the backend.
	* @return	a reference to the <code>AnalyticalTable</code> control, can be used for chaining
	*/
	public function selectAll( ):sap.ui.table.AnalyticalTable;

	/**
	* Sets a new value for property {@link #getCollapseRecursive collapseRecursive}.

Setting collapseRecursive to true means, that when collapsing a node all subsequent child nodes will also be collapsed.

Calling the setter of this property only has an effect when the tables <code>rows</code> aggregation is already bound and the binding supports this feature.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bCollapseRecursive New value for property <code>collapseRecursive</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCollapseRecursive( bCollapseRecursive:Bool):sap.ui.table.AnalyticalTable;

	/**
	* Sets a new value for property {@link #getColumnVisibilityMenuSorter columnVisibilityMenuSorter}.

Functions which is used to sort the column visibility menu entries e.g.: function(ColumnA, ColumnB) { return 0 = equals, <0 lower, >0 greater }; Other values than functions will be ignored.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oColumnVisibilityMenuSorter New value for property <code>columnVisibilityMenuSorter</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumnVisibilityMenuSorter( oColumnVisibilityMenuSorter:Dynamic):sap.ui.table.AnalyticalTable;

	/**
	* In an <code>AnalyticalTable</code> control you can only select indices, which correspond to the currently visualized tree. Invisible nodes (e.g. collapsed child nodes) cannot be selected via Index, because they do not correspond to an <code>AnalyticalTable</code> row.
	* @param	iRowIndex The row index which will be selected (in case it exists)
	* @return	a reference to the <code>AnalyticalTable</code> control, can be used for chaining
	*/
	public function setSelectedIndex( iRowIndex:Int):sap.ui.table.AnalyticalTable;

	/**
	* Sets the selection of the <code>AnalyticalTable</code> control to the given range (including boundaries).

<b>Note:</b> The previous selection will be lost/overridden. If this is not the required behavior, please use <code>addSelectionInterval</code> and <code>removeSelectionInterval</code>.
	* @param	iFromIndex the start index of the selection range
	* @param	iToIndex the end index of the selection range
	* @return	a reference to the <code>AnalyticalTable</code> control, can be used for chaining
	*/
	public function setSelectionInterval( iFromIndex:Int, iToIndex:Int):sap.ui.table.AnalyticalTable;
}

typedef AnalyticalTableArgs = sap.ui.table.Table.TableArgs & {

	/**
	* Functions which is used to sort the column visibility menu entries e.g.: function(ColumnA, ColumnB) { return 0 = equals, <0 lower, >0 greater }; Other values than functions will be ignored.
	*/
	@:optional var columnVisibilityMenuSorter:Dynamic;

	/**
	* Setting collapseRecursive to true means, that when collapsing a node all subsequent child nodes will also be collapsed.

Calling the setter of this property only has an effect when the tables <code>rows</code> aggregation is already bound and the binding supports this feature.
	*/
	@:optional var collapseRecursive:haxe.extern.EitherType<String,Bool>;
}
