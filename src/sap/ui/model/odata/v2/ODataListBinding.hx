package sap.ui.model.odata.v2;

@:native("sap.ui.model.odata.v2.ODataListBinding")

/**
* List binding implementation for OData format.
*/
extern class ODataListBinding extends sap.ui.model.ListBinding
{
	@:overload( function(?oModel:sap.ui.model.odata.v2.ODataModel, ?sPath:String, ?oContext:sap.ui.model.Context, ?aSorters:sap.ui.model.Sorter, ?aFilters:sap.ui.model.Filter, ?mParameters:Dynamic):Void{ })
	@:overload( function(?oModel:sap.ui.model.odata.v2.ODataModel, ?sPath:String, ?oContext:sap.ui.model.Context, ?aSorters:sap.ui.model.Sorter, ?aFilters:Array<sap.ui.model.Filter>, ?mParameters:Dynamic):Void{ })
	@:overload( function(?oModel:sap.ui.model.odata.v2.ODataModel, ?sPath:String, ?oContext:sap.ui.model.Context, ?aSorters:Array<sap.ui.model.Sorter>, ?aFilters:sap.ui.model.Filter, ?mParameters:Dynamic):Void{ })

	/**
	* 
	* @param	oModel Model that this list binding belongs to
	* @param	sPath Path into the model data, relative to the given <code>oContext</code>
	* @param	oContext Context that the <code>sPath</code> is based on
	* @param	aSorters Initial sort order, can be either a sorter or an array of sorters
	* @param	aFilters Predefined filters, can be either a filter or an array of filters
	* @param	mParameters A map which contains additional parameters for the binding
	* @return	Object
	*/
	public function new( ?oModel:sap.ui.model.odata.v2.ODataModel, ?sPath:String, ?oContext:sap.ui.model.Context, ?aSorters:Array<sap.ui.model.Sorter>, ?aFilters:Array<sap.ui.model.Filter>, ?mParameters:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.odata.v2.ODataListBinding with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.ListBinding.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;
	@:overload( function(aFilters:sap.ui.model.Filter, ?sFilterType:sap.ui.model.FilterType, ?bReturnSuccess:Bool):sap.ui.model.ListBinding{ })

	/**
	* Filters the list.

When using <code>sap.ui.model.Filter</code> the filters are first grouped according to their binding path. All filters belonging to the same group are combined with OR and after that the results of all groups are combined with AND. Usually this means, all filters applied to a single table column are combined with OR, while filters on different table columns are combined with AND. Please note that a custom filter function is only supported with operation mode <code>sap.ui.model.odata.OperationMode.Client</code>.
	* @param	aFilters Single filter or array of filter objects
	* @param	sFilterType Type of the filter which should be adjusted. If it is not given, type <code>Control</code> is assumed
	* @param	bReturnSuccess Whether the success indicator should be returned instead of <code>this</code>
	* @return	Reference to <code>this</code> to facilitate method chaining or a boolean success indicator
	*/
	public function filter( aFilters:Array<sap.ui.model.Filter>, ?sFilterType:sap.ui.model.FilterType, ?bReturnSuccess:Bool):sap.ui.model.ListBinding;

	/**
	* Get a download URL with the specified format considering the sort/filter/custom parameters.
	* @param	sFormat Value for the $format Parameter
	* @return	URL which can be used for downloading
	*/
	public function getDownloadUrl( sFormat:String):String;

	/**
	* Return the length of the list.

In case the final length is unknown (e.g. when searching on a large dataset), this will return an estimated length.
	* @return	The length
	*/
	public function getLength( ):Int;

	/**
	* Returns a metadata object for class sap.ui.model.odata.v2.ODataListBinding.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Initialize binding.

Fires a change if data is already available ($expand) or a refresh. If metadata is not yet available, do nothing, method will be called again when metadata is loaded.
	* @return	oBinding The binding instance
	*/
	public function initialize( ):sap.ui.model.odata.v2.ODataListBinding;

	/**
	* Refreshes the binding, check whether the model data has been changed and fire change event if this is the case. For server side models this should refetch the data from the server. To update a control, even if no data has been changed, e.g. to reset a control after failed validation, use the parameter <code>bForceUpdate</code>.
	* @param	bForceUpdate Update the bound control even if no data has been changed
	* @param	sGroupId The group Id for the refresh
	* @return	Void
	*/
	public function refresh( ?bForceUpdate:Bool, ?sGroupId:String):Void;
	@:overload( function(aSorters:sap.ui.model.Sorter, ?bReturnSuccess:Bool):sap.ui.model.ListBinding{ })

	/**
	* Sorts the list.
	* @param	aSorters A new sorter or an array of sorters which define the sort order
	* @param	bReturnSuccess Whether the success indicator should be returned instead of <code>this</code>
	* @return	Reference to <code>this</code> to facilitate method chaining or the success indicator
	*/
	public function sort( aSorters:Array<sap.ui.model.Sorter>, ?bReturnSuccess:Bool):sap.ui.model.ListBinding;
}

