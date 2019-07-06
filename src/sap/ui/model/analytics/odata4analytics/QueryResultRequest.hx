package sap.ui.model.analytics.odata4analytics;

@:native("sap.ui.model.analytics.odata4analytics.QueryResultRequest")

/**
* Creation of URIs for fetching query results.
*/
extern class QueryResultRequest
{

	/**
	* 
	* @param	oQueryResult Description of a query parameterization
	* @param	oParameterizationRequest Request object for interactions with the parameterization of this query. Only required if the query service includes parameters.
	* @return	Object
	*/
	public function new( ?oQueryResult:sap.ui.model.analytics.odata4analytics.QueryResult, ?oParameterizationRequest:sap.ui.model.analytics.odata4analytics.ParameterizationRequest):Void;

	/**
	* Adds a recursive hierarchy to the aggregation level.
	* @param	sHierarchyDimensionName Name of dimension whose hierarchy shall be part of the aggregation level
	* @param	bIncludeExternalKey Indicator whether or not to include the external node key (if available) in the query result
	* @param	bIncludeText Indicator whether or not to include the node text (if available) in the query result
	* @return	Void
	*/
	public function addRecursiveHierarchy( sHierarchyDimensionName:String, bIncludeExternalKey:Bool, bIncludeText:Bool):Void;

	/**
	* Add one or more dimensions to the aggregation level
	* @param	aDimensionName Array of dimension names to be added to the already defined aggregation level.
	* @return	Void
	*/
	public function addToAggregationLevel( aDimensionName:Dynamic):Void;

	/**
	* Get the names of the dimensions included in the aggregation level
	* @return	The dimension names included in the aggregation level
	*/
	public function getAggregationLevel( ):Array<Dynamic>;

	/**
	* Get details about a dimensions included in the aggregation level
	* @param	sDImensionName Name of a dimension included in the aggregation level of this request, for which details shall be returned
	* @return	An object with three properties named key and text, both with Boolean values indicating whether the key and text of this dimension are included in this request. The third property named attributes is an array of attribute names of this dimension included in this request, or null, if there are none.
	*/
	public function getAggregationLevelDetails( sDImensionName:Dynamic):Dynamic;

	/**
	* Get the filter expression for this request.

Expressions are represented by separate objects. If none exists so far, a new expression object gets created.
	* @return	The filter object associated to this request.
	*/
	public function getFilterExpression( ):sap.ui.model.analytics.odata4analytics.FilterExpression;

	/**
	* Get the names of the measures included in the query result request
	* @return	The measure names included in the query result request
	*/
	public function getMeasureNames( ):Array<Dynamic>;

	/**
	* Retrieves the current parametrization request
	* @return	null
	*/
	public function getParameterizationRequest( ):sap.ui.model.analytics.odata4analytics.ParameterizationRequest;

	/**
	* Get the description of the query result on which this request operates on
	* @return	Description of a query result
	*/
	public function getQueryResult( ):sap.ui.model.analytics.odata4analytics.QueryResult;

	/**
	* Returns the current page boundaries as object with properties <code>start</code> and <code>end</code>. If the end of the page is unbounded, <code>end</code> is null.
	* @return	the current page boundaries as object
	*/
	public function getResultPageBoundaries( ):Dynamic;

	/**
	* Get the sort expression for this request.

Expressions are represented by separate objects. If none exists so far, a new expression object gets created.
	* @return	The sort object associated to this request.
	*/
	public function getSortExpression( ):sap.ui.model.analytics.odata4analytics.SortExpression;

	/**
	* Get the value of a query option for the OData request URI corresponding to this request.
	* @param	sQueryOptionName Identifies the query option: $select, $filter,$orderby ... or any custom query option
	* @return	The value of the requested query option or null, if this option is not used for the OData request.
	*/
	public function getURIQueryOptionValue( sQueryOptionName:String):String;

	/**
	* Get the URI to locate the entity set for the query result.
	* @param	sServiceRootURI (optional) Identifies the root of the OData service
	* @return	The resource path of the URI pointing to the entity set. It is a relative URI unless a service root is given, which would then prefixed in order to return a complete URL.
	*/
	public function getURIToQueryResultEntitySet( sServiceRootURI:String):String;

	/**
	* Get the unescaped URI to fetch the query result.
	* @param	sServiceRootURI (optional) Identifies the root of the OData service
	* @param	sResourcePath (optional) OData resource path to be considered. If provided, it overwrites any parameterization object that might have been specified separately.
	* @return	The unescaped URI that contains the OData resource path and OData system query options to express the aggregation level, filter expression and further options.
	*/
	public function getURIToQueryResultEntries( sServiceRootURI:String, sResourcePath:String):String;

	/**
	* Specify which dimension components shall be included in the query result. The settings get applied to the currently defined aggregation level.
	* @param	sDimensionName Name of the dimension for which the settings get applied. Specify null to apply the settings to all dimensions in the aggregation level.
	* @param	bIncludeKey Indicator whether or not to include the dimension key in the query result. Pass null to keep current setting.
	* @param	bIncludeText Indicator whether or not to include the dimension text (if available) in the query result. Pass null to keep current setting.
	* @param	aAttributeName Array of dimension attribute names to be included in the result. Pass null to keep current setting. This argument is ignored if sDimensionName is null.
	* @return	Void
	*/
	public function includeDimensionKeyTextAttributes( sDimensionName:String, bIncludeKey:Bool, bIncludeText:Bool, aAttributeName:Dynamic):Void;

	/**
	* Specify which measure components shall be included in the query result. The settings get applied to the currently set measures.
	* @param	sMeasureName Name of the measure for which the settings get applied. Specify null to apply the settings to all currently set measures.
	* @param	bIncludeRawValue Indicator whether or not to include the raw value in the query result. Pass null to keep current setting.
	* @param	bIncludeFormattedValue Indicator whether or not to include the formatted value (if available) in the query result. Pass null to keep current setting.
	* @param	bIncludeUnit Indicator whether or not to include the unit (if available) in the query result. Pass null to keep current setting.
	* @return	Void
	*/
	public function includeMeasureRawFormattedValueUnit( sMeasureName:String, bIncludeRawValue:Bool, bIncludeFormattedValue:Bool, bIncludeUnit:Bool):Void;

	/**
	* Remove one or more dimensions from the aggregation level. The method also removed a potential sort expression on the dimension.
	* @param	aDimensionName Array of dimension names to be removed from the already defined aggregation level.
	* @return	Void
	*/
	public function removeFromAggregationLevel( aDimensionName:Dynamic):Void;

	/**
	* Set the aggregation level for the query result request. By default, the query result will include the properties holding the keys of the given dimensions. This setting can be changed using includeDimensionKeyTextAttributes.
	* @param	aDimensionName Array of dimension names to be part of the aggregation level. If null, the aggregation level includes all dimensions, if empty, no dimension is included.
	* @return	Void
	*/
	public function setAggregationLevel( aDimensionName:Dynamic):Void;

	/**
	* Set the filter expression for this request.

Expressions are represented by separate objects. Calling this method replaces the filter object maintained by this request.
	* @param	oFilter The filter object to be associated with this request.
	* @return	Void
	*/
	public function setFilterExpression( oFilter:sap.ui.model.analytics.odata4analytics.FilterExpression):Void;

	/**
	* Set the measures to be included in the query result request. By default, the query result will include the properties holding the raw values of the given measures. This setting can be changed using includeMeasureRawFormattedValueUnit.
	* @param	aMeasureName Array of measure names to be part of the query result request. If null, the request includes all measures, if empty, no measure is included.
	* @return	Void
	*/
	public function setMeasures( aMeasureName:Dynamic):Void;

	/**
	* Set the parameterization request required for interactions with the query result of parameterized queries. This method provides an alternative way to assign a parameterization request to a query result request.
	* @param	oParameterizationRequest Request object for interactions with the parameterization of this query
	* @return	Void
	*/
	public function setParameterizationRequest( oParameterizationRequest:Dynamic):Void;

	/**
	* Set further options to be applied for the OData request to fetch the query result
	* @param	bIncludeEntityKey Indicates whether or not the entity key should be returned for every entry in the query result. Default is not to include it. Pass null to keep current setting.
	* @param	bIncludeCount Indicates whether or not the result shall include a count for the returned entities. Default is not to include it. Pass null to keep current setting.
	* @param	bReturnNoEntities Indicates whether or not the result shall be empty. This will translate to $top=0 in the OData request and override any setting done with setResultPageBoundaries. The default is not to suppress entities in the result. Pass null to keep current setting. The main use case for this option is to create a request with $inlinecount returning an entity count.
	* @return	Void
	*/
	public function setRequestOptions( bIncludeEntityKey:Bool, bIncludeCount:Bool, bReturnNoEntities:Bool):Void;

	/**
	* Set the resource path to be considered for the OData request URI of this query request object. This method provides an alternative way to assign a path comprising a parameterization. If a path is provided, it overwrites any parameterization object that might have been specified separately.
	* @param	sResourcePath Resource path pointing to the entity set of the query result. Must include a valid parameterization if query contains parameters.
	* @return	Void
	*/
	public function setResourcePath( sResourcePath:String):Void;

	/**
	* Specify that only a page of the query result shall be returned. A page is described by its boundaries, that are row numbers for the first and last rows in the query result to be returned.
	* @param	start The first row of the query result to be returned. Numbering starts at 1. Passing null is equivalent to start with the first row.
	* @param	end The last row of the query result to be returned. Passing null is equivalent to get all rows up to the end of the query result.
	* @return	Void
	*/
	public function setResultPageBoundaries( start:Number, end:Number):Void;

	/**
	* Set the sort expression for this request.

Expressions are represented by separate objects. Calling this method replaces the sort object maintained by this request.
	* @param	oSorter The sort object to be associated with this request.
	* @return	Void
	*/
	public function setSortExpression( oSorter:sap.ui.model.analytics.odata4analytics.SortExpression):Void;
}

