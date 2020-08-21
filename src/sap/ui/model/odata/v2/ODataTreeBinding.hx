package sap.ui.model.odata.v2;

@:native("sap.ui.model.odata.v2.ODataTreeBinding")

/**
* Tree binding implementation for OData models.

<h3>Hierarchy Annotations</h3> To use the v2.ODataTreeBinding with an OData service which exposes hierarchy annotations, see the <b>"SAP Annotations for OData Version 2.0"</b> specification. The required property annotations as well as accepted/default values are documented in this specification.

Services which include the <code>hierarchy-node-descendant-count-for</code> annotation and expose the data points sorted in a depth-first, pre-order manner, can use an optimized auto-expand feature by specifying the <code>numberOfExpandedLevels</code> in the binding parameters. This will pre-expand the hierarchy to the given number of levels, with only a single initial OData request.

For services without the <code>hierarchy-node-descendant-count-for</code> annotation, the <code>numberOfExpandedLevels</code> property is not supported and deprecated.

<h3>Navigation Properties</h3> <b>Note:</b> The use of navigation properties to build up the hierarchy structure is deprecated and it is recommended to use the hierarchy annotations mentioned above instead.

In addition to the hierarchy annotations, the <code>ODataTreeBinding</code> also supports (cyclic) references between entities based on navigation properties. They have to be specified with the binding parameter <code>navigation</code>. The value for that parameter has to be structured as a map object where the keys are entity names and the values are names of navigation properties.

Example: <pre>
  oTree.bindItems({

    path: "Employees",
    template: ...

	   parameters: {
      navigation: {
        "Employees": "toColleagues"
      }
    }
  });
</pre>

<h3>Operation Modes</h3> For a full definition and explanation of all OData binding operation modes see {@link sap.ui.model.odata.OperationMode}.

<h4>OperationMode.Server</h4> Filtering on the <code>ODataTreeBinding</code> is only supported with ({@link sap.ui.model.FilterType.Application application filters}). However please be aware that this applies only to filters which do not prevent the creation of a hierarchy. So filtering on a property (e.g. a "Customer") is fine, as long as the application can ensure that the responses from the backend are sufficient to create a valid hierarchy on the client. Subsequent paging requests for sibling and child nodes must also return responses since the filters will be sent with every request. Using control-defined filters ({@link sap.ui.model.FilterType.Control FilterType.Control}) via the <code>filter()</code> function is not supported for the operation mode <code>Server</code>.

<h4>OperationMode.Client and OperationMode.Auto</h4> The ODataTreeBinding supports control-defined filters only in operation modes <code>Client</code> and <code>Auto</code>. In these operation modes, the filters and sorters will be applied on the client, like for the <code>v2.ODataListBinding</code>.

The operation modes <code>Client</code> and <code>Auto</code> are only supported for services which expose the hierarchy annotations mentioned above, but do <b>not</b> expose the <code>hierarchy-node-descendant-count-for</code> annotation. Services with hierarchy annotations including the <code>hierarchy-node-descendant-count-for</code> annotation, do <b>not</b> support the operation modes <code>Client</code> and <code>Auto</code>.
*/
extern class ODataTreeBinding extends sap.ui.model.TreeBinding
{
	@:overload( function(?oModel:sap.ui.model.Model, ?sPath:String, ?oContext:sap.ui.model.Context, ?aApplicationFilters:sap.ui.model.Filter, ?mParameters:Dynamic, ?aSorters:sap.ui.model.Sorter):Void{ })
	@:overload( function(?oModel:sap.ui.model.Model, ?sPath:String, ?oContext:sap.ui.model.Context, ?aApplicationFilters:sap.ui.model.Filter, ?mParameters:Dynamic, ?aSorters:Array<sap.ui.model.Sorter>):Void{ })
	@:overload( function(?oModel:sap.ui.model.Model, ?sPath:String, ?oContext:sap.ui.model.Context, ?aApplicationFilters:Array<sap.ui.model.Filter>, ?mParameters:Dynamic, ?aSorters:sap.ui.model.Sorter):Void{ })

	/**
	* 
	* @param	oModel null
	* @param	sPath null
	* @param	oContext null
	* @param	aApplicationFilters Predefined filter/s (can be either a filter or an array of filters). All these filters will be sent with every request. Filtering on the <code>ODataTreeBinding</code> is only supported with initial filters.
	* @param	mParameters Parameter Object
	* @param	aSorters Predefined sorters, can be either a sorter or an array of sorters
	* @return	Object
	*/
	public function new( ?oModel:sap.ui.model.Model, ?sPath:String, ?oContext:sap.ui.model.Context, ?aApplicationFilters:Array<sap.ui.model.Filter>, ?mParameters:Dynamic, ?aSorters:Array<sap.ui.model.Sorter>):Void;

	/**
	* Expand a nodes subtree to a given level.

This API is only supported in <code>OperationMode.Server</code> and if the OData service implements the full specification of the "hierarchy-node-for" annotation.
	* @param	iIndex Absolute row index
	* @param	iLevel Level to which the data should be expanded
	* @param	bSuppressChange If set to true, no change event will be fired
	* @return	A promise resolving once the expansion process has been completed
	*/
	public function expandNodeToLevel( iIndex:Int, iLevel:Int, bSuppressChange:Bool):js.lib.Promise<ODataTreeBinding>;

	/**
	* Creates a new subclass of class sap.ui.model.odata.v2.ODataTreeBinding with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.TreeBinding.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;
	@:overload( function(aFilters:Array<sap.ui.model.Filter>, sFilterType:sap.ui.model.FilterType):sap.ui.model.odata.v2.ODataTreeBinding{ })

	/**
	* Applies the given filters to the ODataTreeBinding.

Please note that filters of type <code>FilterType.Control</code> are not supported for <code>OperationMode.Server</code>, here only filters of type <code>FilterType.Application</code> are allowed. Filters given via the constructor are always of type <code>Application</code> and will be sent with every backend request. See the constructor documentation for more information.

Since 1.34.0, complete client-side filtering is supported for <code>OperationMode.Client</code> and also in <code>OperationMode.Auto</code> if the backend count is lower than the threshold. In this case, all types of filters will be applied on the client. See also: {@link sap.ui.model.odata.OperationMode.Auto}, {@link sap.ui.model.FilterType}.

For the <code>OperationMode.Client</code> and <code>OperationMode.Auto</code>, you may also specify the binding parameter <code>useServersideApplicationFilters</code> in the constructor. If it is set, the filters of type <code>Application</code> will always be applied on the backend and trigger an OData request. See the constructor documentation for more information.
	* @param	aFilters Filter or array of filters to apply
	* @param	sFilterType Type of the filter which should be adjusted. If it is not given, the type <code>FilterType.Control</code> is assumed
	* @return	Returns <code>this</code> to facilitate method chaining
	*/
	public function filter( aFilters:sap.ui.model.Filter, sFilterType:sap.ui.model.FilterType):sap.ui.model.odata.v2.ODataTreeBinding;

	/**
	* Returns the number of child nodes. This function is not available when the annotation "hierarchy-node-descendant-count-for" is exposed on the service.
	* @param	oContext the context element of the node
	* @return	the number of children
	*/
	public function getChildCount( oContext:Dynamic):Int;

	/**
	* Get a download URL with the specified format considering the sort/filter/custom parameters.
	* @param	sFormat Value for the $format Parameter
	* @return	URL which can be used for downloading
	*/
	public function getDownloadUrl( sFormat:String):String;

	/**
	* Returns a metadata object for class sap.ui.model.odata.v2.ODataTreeBinding.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the contexts of the child nodes for the given context. This function is not available when the annotation "hierarchy-node-descendant-count-for" is exposed on the service.
	* @param	oContext the context for which the child nodes should be retrieved
	* @param	iStartIndex the start index of the requested contexts
	* @param	iLength the requested amount of contexts
	* @param	iThreshold null
	* @return	the contexts array
	*/
	public function getNodeContexts( oContext:sap.ui.model.Context, iStartIndex:Int, iLength:Int, iThreshold:Int):Array<sap.ui.model.Context>;

	/**
	* Returns root contexts for the tree. You can specify the start index and the length for paging requests. This function is not available when the annotation "hierarchy-node-descendant-count-for" is exposed on the service.
	* @param	iStartIndex the start index of the requested contexts
	* @param	iLength the requested amount of contexts. If none given, the default value is the size limit of the underlying sap.ui.model.odata.v2.ODataModel instance.
	* @param	iThreshold the number of entities which should be retrieved in addition to the given length. A higher threshold reduces the number of backend requests, yet these request blow up in size, since more data is loaded.
	* @return	an array containing the contexts for the entities returned by the backend, might be fewer than requested if the backend does not have enough data.
	*/
	public function getRootContexts( ?iStartIndex:Int, ?iLength:Int, ?iThreshold:Int):Array<sap.ui.model.Context>;

	/**
	* Returns the rootLevel
	* @return	null
	*/
	public function getRootLevel( ):Int;

	/**
	* Returns if the node has child nodes. If the ODataTreeBinding is running with hierarchy annotations, a context with the property values "expanded" or "collapsed" for the drilldown state property, returns true. Entities with drilldown state "leaf" return false.

This function is not available when the annotation "hierarchy-node-descendant-count-for" is exposed on the service.
	* @param	oContext the context element of the node
	* @return	true if node has children
	*/
	public function hasChildren( oContext:sap.ui.model.Context):Bool;

	/**
	* Initialize binding. Fires a change if data is already available ($expand) or a refresh. If metadata is not yet available, do nothing, method will be called again when metadata is loaded.
	* @return	The binding instance
	*/
	public function initialize( ):sap.ui.model.odata.v2.ODataTreeBinding;

	/**
	* Refreshes the binding, check whether the model data has been changed and fire change event if this is the case. For server side models this should refetch the data from the server. To update a control, even if no data has been changed, e.g. to reset a control after failed validation, use the parameter <code>bForceUpdate</code>.
	* @param	bForceUpdate Update the bound control even if no data has been changed
	* @param	sGroupId The group Id for the refresh
	* @return	Void
	*/
	public function refresh( ?bForceUpdate:Bool, ?sGroupId:String):Void;

	/**
	* Sets the rootLevel The root level is the level of the topmost tree nodes, which will be used as an entry point for OData services. This is only possible (and necessary) for OData services implementing the hierarchy annotation specification, or when providing the annotation information locally as a binding parameter. See the constructor for API documentation on this.
	* @param	iRootLevel null
	* @return	Void
	*/
	public function setRootLevel( iRootLevel:Int):Void;
	@:overload( function(aSorters:Array<sap.ui.model.Sorter>):sap.ui.model.odata.v2.ODataTreeBinding{ })

	/**
	* Sorts the Tree according to the given Sorter(s). In OperationMode.Client or OperationMode.Auto (if the given threshold is satisfied), the sorters are applied locally on the client.
	* @param	aSorters the Sorter or an Array of sap.ui.model.Sorter instances
	* @return	returns <code>this</code> to facilitate method chaining
	*/
	public function sort( aSorters:sap.ui.model.Sorter):sap.ui.model.odata.v2.ODataTreeBinding;
}

