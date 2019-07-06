package sap.ui.model.analytics.odata4analytics;

@:native("sap.ui.model.analytics.odata4analytics.Parameter")

/**
* Representation of a property annotated with sap:parameter.
*/
extern class Parameter
{

	/**
	* 
	* @param	oParameterization The parameterization containing this parameter
	* @param	oProperty The datajs object object representing the text property
	* @return	Object
	*/
	public function new( ?oParameterization:sap.ui.model.analytics.odata4analytics.Parameterization, ?oProperty:Dynamic):Void;

	/**
	* Get parameterization containing this parameter
	* @return	The parameterization object
	*/
	public function getContainingParameterization( ):sap.ui.model.analytics.odata4analytics.Parameterization;

	/**
	* Get label
	* @return	The (possibly language-dependent) label text for this parameter
	*/
	public function getLabelText( ):String;

	/**
	* Get the name of the parameter
	* @return	The name of the parameter, which is identical with the name of the property representing the parameter in the parameterization entity type
	*/
	public function getName( ):String;

	/**
	* Get property for the parameter representing the peer boundary of the same interval
	* @return	The parameter representing the peer boundary of the same interval. This means that if *this* parameter is a lower boundary, the returned object
	*/
	public function getPeerIntervalBoundaryParameter( ):sap.ui.model.analytics.odata4analytics.Parameter;

	/**
	* Get property
	* @return	The datajs object representing the property of this parameter
	*/
	public function getProperty( ):Dynamic;

	/**
	* Get text property related to this parameter
	* @return	The datajs object representing the text property or null if it does not exist
	*/
	public function getTextProperty( ):Dynamic;

	/**
	* Get the URI to locate the entity set holding the value set, if it is available.
	* @param	sServiceRootURI (optional) Identifies the root of the OData service
	* @return	The resource path of the URI pointing to the entity set. It is a relative URI unless a service root is given, which would then prefixed in order to return a complete URL.
	*/
	public function getURIToValueEntitySet( sServiceRootURI:String):Dynamic;

	/**
	* Get indicator if the parameter represents an interval boundary
	* @return	True iff it represents an interval boundary, otherwise false
	*/
	public function isIntervalBoundary( ):Bool;

	/**
	* Get indicator if the parameter represents the lower boundary of an interval
	* @return	True iff it represents the lower boundary of an interval, otherwise false
	*/
	public function isLowerIntervalBoundary( ):Bool;

	/**
	* Get indicator whether or not the parameter is optional
	* @return	True iff the parameter is optional
	*/
	public function isOptional( ):Bool;

	/**
	* Get indicator if a set of values is available for this parameter. Typically, this is true for parameters with a finite set of known values such as products, business partners in different roles, organization units, and false for integer or date parameters
	* @return	True iff a value set is available, otherwise false
	*/
	public function isValueSetAvailable( ):Bool;
}

