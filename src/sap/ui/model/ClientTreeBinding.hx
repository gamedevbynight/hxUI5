package sap.ui.model;

@:native("sap.ui.model.ClientTreeBinding")

/**
* Tree binding implementation for client models.

Please Note that a hierarchy's "state" (i.e. the information about expanded, collapsed, selected, and deselected nodes) may become inconsistent when the structure of the model data is changed at runtime. This is because each node is identified internally by its index position relative to its parent, plus its parent's ID. Therefore, inserting or removing a node in the model data will likely lead to a shift in the index positions of other nodes, causing them to lose their state and/or to gain the state of another node.
*/
extern class ClientTreeBinding extends sap.ui.model.TreeBinding
{

	/**
	* Creates a new subclass of class sap.ui.model.ClientTreeBinding with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.TreeBinding.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;
	@:overload( function(aFilters:sap.ui.model.Filter, sFilterType:sap.ui.model.FilterType):sap.ui.model.ClientTreeBinding{ })

	/**
	* Filters the tree according to the filter definitions.

The filtering is applied recursively through the tree. The parent nodes of filtered child nodes will also be displayed if they don't match the filter conditions. All filters belonging to a group (=have the same path) are ORed and after that the results of all groups are ANDed.
	* @param	aFilters Single filter object or an array of filter objects
	* @param	sFilterType Type of the filter which should be adjusted, if it is not given, the standard behaviour applies
	* @return	<code>this</code> to facilitate method chaining
	*/
	public function filter( aFilters:Array<sap.ui.model.Filter>, sFilterType:sap.ui.model.FilterType):sap.ui.model.ClientTreeBinding;

	/**
	* Returns a metadata object for class sap.ui.model.ClientTreeBinding.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns if the node has child nodes.
	* @param	oContext the context element of the node
	* @return	true if node has children
	*/
	public function hasChildren( oContext:Dynamic):Bool;

	/**
	* Sorts the contexts of this ClientTreeBinding. The tree will be sorted level by level. So the nodes are NOT sorted absolute, but relative to their parent node, to keep the hierarchy untouched.
	* @param	an array of Sorter instances which will be applied
	* @return	returns <code>this</code> to facilitate method chaining
	*/
	public function sort( an:Array<sap.ui.model.Sorter>):sap.ui.model.ClientTreeBinding;
}

