package sap.ui.model.analytics.odata4analytics;

@:native("sap.ui.model.analytics.odata4analytics.ParameterValueSetRequest")

/**
* Creation of URIs for fetching a query parameter value set.
*/
extern class ParameterValueSetRequest
{

	/**
	* 
	* @param	oParameter Description of a query parameter
	* @return	Object
	*/
	public function new( ?oParameter:sap.ui.model.analytics.odata4analytics.Parameter):Void;

	/**
	* Get the filter expression for this request.

Expressions are represented by separate objects. If none exists so far, a new expression object gets created.
	* @return	The filter object associated to this request.
	*/
	public function getFilterExpression( ):sap.ui.model.analytics.odata4analytics.FilterExpression;

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
	* Get the unescaped URI to fetch the parameter value set.
	* @param	sServiceRootURI (optional) Identifies the root of the OData service
	* @return	The unescaped URI that contains the OData resource path and OData system query options to express the request for the parameter value set..
	*/
	public function getURIToParameterValueSetEntries( sServiceRootURI:String):String;

	/**
	* Specify which components of the parameter shall be included in the value set.
	* @param	bIncludeText Indicator whether or not to include the parameter text (if available) in the value set. Pass null to keep current setting.
	* @return	Void
	*/
	public function includeParameterText( bIncludeText:Bool):Void;

	/**
	* Set the filter expression for this request.

Expressions are represented by separate objects. Calling this method replaces the filter object maintained by this request.
	* @param	oFilter The filter object to be associated with this request.
	* @return	Void
	*/
	public function setFilterExpression( oFilter:sap.ui.model.analytics.odata4analytics.FilterExpression):Void;

	/**
	* Set the sort expression for this request.

Expressions are represented by separate objects. Calling this method replaces the sort object maintained by this request.
	* @param	oSorter The sort object to be associated with this request.
	* @return	Void
	*/
	public function setSortExpression( oSorter:sap.ui.model.analytics.odata4analytics.SortExpression):Void;
}

