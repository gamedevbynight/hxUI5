package sap.ui.model.analytics.odata4analytics;

@:native("sap.ui.model.analytics.odata4analytics.Parameterization")

/**
* Representation of an entity type annotated with sap:semantics="parameters".
*/
extern class Parameterization
{

	/**
	* 
	* @param	oEntityType The OData entity type for this parameterization
	* @param	oEntitySet The OData entity set for this parameterization offered by the OData service
	* @return	Object
	*/
	public function new( ?oEntityType:sap.ui.model.analytics.odata4analytics.EntityType, ?oEntitySet:sap.ui.model.analytics.odata4analytics.EntitySet):Void;

	/**
	* Find parameter by name
	* @param	sName Parameter name
	* @return	The parameter object with this name or null if it does not exist
	*/
	public function findParameterByName( sName:String):sap.ui.model.analytics.odata4analytics.Parameter;

	/**
	* Get the names of all parameters part of the parameterization
	* @return	List of all parameter names
	*/
	public function getAllParameterNames( ):Array<String>;

	/**
	* Get all parameters included in this parameterization
	* @return	An object with individual JS properties for each parameter included in the query result. The JS object properties all are objects of type odata4analytics.Parameter. The names of the JS object properties are given by the OData entity type property names representing the parameter keys.
	*/
	public function getAllParameters( ):Dynamic;

	/**
	* Get the entity set representing this query result in the OData model
	* @return	The OData entity set representing this query result
	*/
	public function getEntitySet( ):sap.ui.model.analytics.odata4analytics.EntitySet;

	/**
	* Get the entity type defining the type of this query result in the OData model
	* @return	The OData entity type for this query result
	*/
	public function getEntityType( ):sap.ui.model.analytics.odata4analytics.EntityType;

	/**
	* Get the name of the parameter
	* @return	The name of the parameterization, which is identical with the name of the entity set representing the parameterization in the OData service
	*/
	public function getName( ):String;

	/**
	* Get navigation property to query result
	* @return	The parameter object with this name or null if it does not exist
	*/
	public function getNavigationPropertyToQueryResult( ):sap.ui.model.analytics.odata4analytics.QueryResult;
}

