package sap.ui.model.analytics.odata4analytics;

@:native("sap.ui.model.analytics.odata4analytics.DimensionMemberSetRequest")

/**
* Creation of URIs for fetching a query dimension value set.
*/
extern class DimensionMemberSetRequest
{

	/**
	* 
	* @param	oDimension Description of a dimension
	* @param	oParameterizationRequest (optional) Request object for interactions with the parameterization of the query result or (not yet supported) master data entity set Such an object is required if the entity set holding the dimension members includes parameters.
	* @param	bUseMasterData (optional) Indicates use of master data for determining the dimension members.
	* @return	Object
	*/
	public function new( ?oDimension:sap.ui.model.analytics.odata4analytics.Dimension, ?oParameterizationRequest:sap.ui.model.analytics.odata4analytics.ParameterizationRequest, ?bUseMasterData:Bool):Void;

	/**
	* Get the filter expression for this request.

Expressions are represented by separate objects. If none exists so far, a new expression object gets created.
	* @return	The filter object associated to this request.
	*/
	public function getFilterExpression( ):sap.ui.model.analytics.odata4analytics.FilterExpression;

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
	* @param	sQueryOptionName Identifies the query option: $select, $filter,... or any custom query option
	* @return	The value of the requested query option or null, if this option is not used for the OData request.
	*/
	public function getURIQueryOptionValue( sQueryOptionName:String):String;

	/**
	* Get the URI to locate the entity set for the dimension memebers.
	* @param	sServiceRootURI (optional) Identifies the root of the OData service
	* @return	The resource path of the URI pointing to the entity set. It is a relative URI unless a service root is given, which would then prefixed in order to return a complete URL.
	*/
	public function getURIToDimensionMemberEntitySet( sServiceRootURI:String):String;

	/**
	* Get the unescaped URI to fetch the dimension members, optionally augmented by text and attributes.
	* @param	sServiceRootURI (optional) Identifies the root of the OData service
	* @return	The unescaped URI that contains the OData resource path and OData system query options to express the request for the parameter value set..
	*/
	public function getURIToDimensionMemberEntries( sServiceRootURI:String):String;

	/**
	* Set the filter expression for this request.

Expressions are represented by separate objects. Calling this method replaces the filter object maintained by this request.
	* @param	oFilter The filter object to be associated with this request.
	* @return	Void
	*/
	public function setFilterExpression( oFilter:sap.ui.model.analytics.odata4analytics.FilterExpression):Void;

	/**
	* Set the parameterization request required for retrieving dimension members directly from the query result, if it is parameterized.
	* @param	oParameterizationRequest Request object for interactions with the parameterization of this query result
	* @return	Void
	*/
	public function setParameterizationRequest( oParameterizationRequest:Dynamic):Void;

	/**
	* Set further options to be applied for the OData request
	* @param	bIncludeCount Indicates whether or not the result shall include a count for the returned entities. Default is not to include it. Pass null to keep current setting.
	* @return	Void
	*/
	public function setRequestOptions( bIncludeCount:Bool):Void;

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

