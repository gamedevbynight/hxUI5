package sap.ui.model.odata;

@:native("sap.ui.model.odata.ODataListBinding")

/**
* List binding implementation for OData format.
*/
extern class ODataListBinding extends sap.ui.model.ListBinding
{

	/**
	* 
	* @param	oModel Model that this list binding belongs to
	* @param	sPath Path into the model data, relative to the given <code>oContext</code>
	* @param	oContext Context that the <code>sPath</code> is based on
	* @param	aSorters Initial sort order (can be either a sorter or an array of sorters)
	* @param	aFilters Predefined filter/s (can be either a filter or an array of filters)
	* @param	mParameters A map which contains additional parameters for the binding
	* @return	Object
	*/
	public function new( ?oModel:sap.ui.model.odata.ODataModel, ?sPath:String, ?oContext:sap.ui.model.Context, ?aSorters:Array<Dynamic>, ?aFilters:Array<Dynamic>, ?mParameters:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.odata.ODataListBinding with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.ListBinding.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;
	@:overload( function(aFilters:Array<sap.ui.model.Filter>, sFilterType:sap.ui.model.FilterType):sap.ui.model.ListBinding{ })

	/**
	* Filters the list.

When using sap.ui.model.Filter the filters are first grouped according to their binding path. All filters belonging to a group are combined with OR and after that the results of all groups are combined with AND. Usually this means, all filters applied to a single table column are combined with OR, while filters on different table columns are combined with AND. Please note that a custom filter function is not supported.
	* @param	aFilters Array of filter objects
	* @param	sFilterType Type of the filter which should be adjusted, if it is not given, the standard behaviour applies
	* @return	returns <code>this</code> to facilitate method chaining
	*/
	public function filter( aFilters:Array<sap.ui.model.odata.Filter>, sFilterType:sap.ui.model.FilterType):sap.ui.model.ListBinding;

	/**
	* Get a download URL with the specified format considering the sort/filter/custom parameters.
	* @param	sFormat Value for the $format Parameter
	* @return	URL which can be used for downloading
	*/
	public function getDownloadUrl( sFormat:String):String;

	/**
	* Returns a metadata object for class sap.ui.model.odata.ODataListBinding.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Initialize binding. Fires a change if data is already available ($expand) or a refresh. If metadata is not yet available, do nothing, method will be called again when metadata is loaded.
	* @return	Void
	*/
	public function initialize( ):Void;

	/**
	* Refreshes the binding, checks whether the model data has been changed and fires a change event if this is the case. For server side models this should refetch the data from the server. To update a control, even if no data has been changed, e.g. to reset a control after failed validation, use the parameter <code>bForceUpdate</code>.
	* @param	bForceUpdate Update the bound control even if no data has been changed
	* @return	Void
	*/
	public function refresh( ?bForceUpdate:Bool):Void;
	@:overload( function(aSorters:sap.ui.model.Sorter):sap.ui.model.ListBinding{ })

	/**
	* Sorts the list.
	* @param	aSorters the Sorter or an array of sorter objects object which define the sort order
	* @return	returns <code>this</code> to facilitate method chaining
	*/
	public function sort( aSorters:Array<Dynamic>):sap.ui.model.ListBinding;
}

