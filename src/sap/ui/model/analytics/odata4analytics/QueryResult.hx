package sap.ui.model.analytics.odata4analytics;

@:native("sap.ui.model.analytics.odata4analytics.QueryResult")

/**
* Representation of an entity type annotated with sap:semantics="aggregate".
*/
extern class QueryResult
{

	/**
	* 
	* @param	oModel The analytical model containing this query result entity set
	* @param	oEntityType The OData entity type for this query
	* @param	oEntitySet The OData entity set for this query offered by the OData service
	* @param	oParameterization The parameterization of this query, if any
	* @return	Object
	*/
	public function new( ?oModel:sap.ui.model.analytics.odata4analytics.Model, ?oEntityType:sap.ui.model.analytics.odata4analytics.EntityType, ?oEntitySet:sap.ui.model.analytics.odata4analytics.EntitySet, ?oParameterization:sap.ui.model.analytics.odata4analytics.Parameterization):Void;

	/**
	* Find dimension by name
	* @param	sName Dimension name
	* @return	The dimension object with this name or null if it does not exist
	*/
	public function findDimensionByName( sName:String):sap.ui.model.analytics.odata4analytics.Dimension;

	/**
	* Find dimension by property name
	* @param	sName Property name
	* @return	The dimension object to which the given property name is related, because the property holds the dimension key, its text, or is an attribute of this dimension. If no such dimension exists, null is returned.
	*/
	public function findDimensionByPropertyName( sName:String):sap.ui.model.analytics.odata4analytics.Dimension;

	/**
	* Find measure by name
	* @param	sName Measure name
	* @return	The measure object with this name or null if it does not exist
	*/
	public function findMeasureByName( sName:String):sap.ui.model.analytics.odata4analytics.Measure;

	/**
	* Find measure by property name
	* @param	sName Property name
	* @return	The measure object to which the given property name is related, because the property holds the raw measure value or its formatted value. If no such measure exists, null is returned.
	*/
	public function findMeasureByPropertyName( sName:String):sap.ui.model.analytics.odata4analytics.Measure;

	/**
	* Get the names of all dimensions included in the query result
	* @return	List of all dimension names
	*/
	public function getAllDimensionNames( ):Array<String>;

	/**
	* Get all dimensions included in this query result
	* @return	An object with individual JS properties for each dimension included in the query result. The JS object properties all are objects of type odata4analytics.Dimension. The names of the JS object properties are given by the OData entity type property names representing the dimension keys.
	*/
	public function getAllDimensions( ):Dynamic;

	/**
	* Get the names of all measures included in the query result
	* @return	List of all measure names
	*/
	public function getAllMeasureNames( ):Array<String>;

	/**
	* Get all measures included in this query result
	* @return	An object with individual JS properties for each measure included in the query result. The JS object properties all are objects of type odata4analytics.Measure. The names of the JS object properties are given by the OData entity type property names representing the measure raw values.
	*/
	public function getAllMeasures( ):Dynamic;

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
	* Get the analytical model containing the entity set for this query result
	* @return	The analytical representation of the OData model
	*/
	public function getModel( ):Dynamic;

	/**
	* Get the name of the query result
	* @return	The fully qualified name of the query result, which is identical with the name of the entity set representing the query result in the OData service
	*/
	public function getName( ):String;

	/**
	* Get the parameterization of this query result
	* @return	The object for the parameterization or null if the query result is not parameterized
	*/
	public function getParameterization( ):sap.ui.model.analytics.odata4analytics.Parameterization;

	/**
	* Get property holding the totaled property list
	* @return	The datajs object representing this property
	*/
	public function getTotaledPropertiesListProperty( ):Dynamic;
}

