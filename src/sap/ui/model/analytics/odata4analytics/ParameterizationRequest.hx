package sap.ui.model.analytics.odata4analytics;

@:native("sap.ui.model.analytics.odata4analytics.ParameterizationRequest")

/**
* Creation of URIs for query parameterizations.
*/
extern class ParameterizationRequest
{

	/**
	* 
	* @param	oParameterization Description of a query parameterization
	* @return	Object
	*/
	public function new( ?oParameterization:sap.ui.model.analytics.odata4analytics.Parameterization):Void;

	/**
	* Get the description of the parameterization on which this request operates on
	* @return	Description of a query parameterization
	*/
	public function getParameterization( ):sap.ui.model.analytics.odata4analytics.Parameterization;

	/**
	* Get the URI to locate the entity set for the query parameterization.
	* @param	sServiceRootURI (optional) Identifies the root of the OData service
	* @return	The resource path of the URI pointing to the entity set. It is a relative URI unless a service root is given, which would then prefixed in order to return a complete URL.
	*/
	public function getURIToParameterizationEntitySet( sServiceRootURI:String):Dynamic;

	/**
	* Get the URI to locate the parameterization entity for the values assigned to all parameters beforehand. Notice that a value must be supplied for every parameter including those marked as optional. For optional parameters, assign the special value that the service provider uses as an "omitted" value. For example, for services based on BW Easy Queries, this would be an empty string.
	* @param	sServiceRootURI (optional) Identifies the root of the OData service
	* @return	The resource path of the URI pointing to the entity set. It is a relative URI unless a service root is given, which would then prefixed in order to return a complete URL.
	*/
	public function getURIToParameterizationEntry( sServiceRootURI:String):Dynamic;

	/**
	* Assign a value to a parameter
	* @param	sParameterName Name of the parameter. In case of a range value, provide the name of the lower boundary parameter.
	* @param	sValue Assigned value. Pass null to remove a value assignment.
	* @param	sToValue Omit it or set it to null for single values. If set, it will be assigned to the upper boundary parameter
	* @return	Void
	*/
	public function setParameterValue( sParameterName:String, sValue:String, sToValue:String):Void;
}

