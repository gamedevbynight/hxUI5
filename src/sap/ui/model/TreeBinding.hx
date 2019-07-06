package sap.ui.model;

@:native("sap.ui.model.TreeBinding")

/**
* The TreeBinding is a specific binding for trees in the model, which can be used to populate Trees.
*/
extern class TreeBinding extends sap.ui.model.Binding
{
	@:overload( function(?oModel:sap.ui.model.Model, ?sPath:String, ?oContext:Dynamic, ?aFilters:sap.ui.model.Filter, ?mParameters:String, ?aSorters:sap.ui.model.Sorter):Void{ })
	@:overload( function(?oModel:sap.ui.model.Model, ?sPath:String, ?oContext:Dynamic, ?aFilters:sap.ui.model.Filter, ?mParameters:String, ?aSorters:Array<sap.ui.model.Sorter>):Void{ })
	@:overload( function(?oModel:sap.ui.model.Model, ?sPath:String, ?oContext:Dynamic, ?aFilters:Array<sap.ui.model.Filter>, ?mParameters:String, ?aSorters:sap.ui.model.Sorter):Void{ })

	/**
	* 
	* @param	oModel Model instance that this binding is created for and that it belongs to
	* @param	sPath Path pointing to the tree / array that should be bound
	* @param	oContext Context object for this binding (optional)
	* @param	aFilters Predefined filter or an array of filters (optional)
	* @param	mParameters Additional model specific parameters (optional)
	* @param	aSorters Predefined sorter or an array of sorters (optional)
	* @return	Object
	*/
	public function new( ?oModel:sap.ui.model.Model, ?sPath:String, ?oContext:Dynamic, ?aFilters:Array<sap.ui.model.Filter>, ?mParameters:String, ?aSorters:Array<sap.ui.model.Sorter>):Void;

	/**
	* Creates a new subclass of class sap.ui.model.TreeBinding with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.Binding.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Filters the tree according to the filter definitions.
	* @param	aFilters Array of sap.ui.model.Filter objects
	* @param	sFilterType Type of the filter which should be adjusted, if it is not given, the standard behaviour applies
	* @return	Void
	*/
	public function filter( aFilters:Array<sap.ui.model.Filter>, sFilterType:sap.ui.model.FilterType):Void;

	/**
	* Returns the number of child nodes of a specific context
	* @param	oContext the context element of the node
	* @return	the number of children
	*/
	public function getChildCount( oContext:Dynamic):Int;

	/**
	* Returns a metadata object for class sap.ui.model.TreeBinding.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the current value of the bound target
	* @param	oContext the context element of the node
	* @param	iStartIndex the startIndex where to start the retrieval of contexts
	* @param	iLength determines how many contexts to retrieve beginning from the start index.
	* @return	the array of child contexts for the given node
	*/
	public function getNodeContexts( oContext:Dynamic, iStartIndex:Int, iLength:Int):Array<Dynamic>;

	/**
	* Returns the current value of the bound target
	* @param	iStartIndex the startIndex where to start the retrieval of contexts
	* @param	iLength determines how many contexts to retrieve beginning from the start index.
	* @return	the array of child contexts for the root node
	*/
	public function getRootContexts( iStartIndex:Int, iLength:Int):Array<Dynamic>;

	/**
	* Returns if the node has child nodes
	* @param	oContext the context element of the node
	* @return	true if node has children
	*/
	public function hasChildren( oContext:Dynamic):Bool;

	/**
	* Sorts the tree according to the sorter definitions.
	* @param	aSorters Array of sap.ui.model.Sorter objects
	* @return	Void
	*/
	public function sort( aSorters:Array<sap.ui.model.Sorter>):Void;
}

