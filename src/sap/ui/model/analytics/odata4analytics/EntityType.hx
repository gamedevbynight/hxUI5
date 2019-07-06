package sap.ui.model.analytics.odata4analytics;

@:native("sap.ui.model.analytics.odata4analytics.EntityType")

/**
* Representation of an OData entity type.
*/
extern class EntityType
{

	/**
	* 
	* @param	oModel datajs object for the OData model containing this entity type
	* @param	oSchema datajs object for the schema containing this entity type
	* @param	oEntityType datajs object for the entity type
	* @return	Object
	*/
	public function new( ?oModel:Dynamic, ?oSchema:Dynamic, ?oEntityType:Dynamic):Void;

	/**
	* Find property by name
	* @param	sPropertyName Property name
	* @return	The datajs object representing the property or null if it does not exist
	*/
	public function findPropertyByName( sPropertyName:String):Dynamic;

	/**
	* Get the names of all properties with an associated hierarchy
	* @return	List of all property names
	*/
	public function getAllHierarchyPropertyNames( ):Array<String>;

	/**
	* Get names of properties that can be filtered, that is they can be used in $filter expressions
	* @return	Array with names of properties that can be filtered.
	*/
	public function getFilterablePropertyNames( ):Array<String>;

	/**
	* Get heading of the property with specified name (identified by property metadata annotation sap:heading)
	* @param	sPropertyName Property name
	* @return	The heading string
	*/
	public function getHeadingOfProperty( sPropertyName:String):String;

	/**
	* Get the hierarchy associated to a given property Based on the current specification, hierarchies are always recursive. TODO: Extend behavior when leveled hierarchies get in scope
	* @param	sName Parameter name
	* @return	The hierarchy object or null if it does not exist
	*/
	public function getHierarchy( sName:String):sap.ui.model.analytics.odata4analytics.RecursiveHierarchy;

	/**
	* Get key properties of this type
	* @return	The list of key property names
	*/
	public function getKeyProperties( ):Array<String>;

	/**
	* Get label of the property with specified name (identified by property metadata annotation sap:label)
	* @param	sPropertyName Property name
	* @return	The label string
	*/
	public function getLabelOfProperty( sPropertyName:String):String;

	/**
	* Get all properties
	* @return	Object with (JavaScript) properties, one for each (OData entity type) property. These (JavaScript) properties hold the datajs object representing the property
	*/
	public function getProperties( ):Dynamic;

	/**
	* Get properties for which filter restrictions have been specified
	* @return	Object with (JavaScript) properties, one for each (OData entity type) property. The property value is from odata4analytics.EntityType.propertyFilterRestriction and indicates the filter restriction for this property.
	*/
	public function getPropertiesWithFilterRestrictions( ):Dynamic;

	/**
	* Get the fully qualified name for this entity type
	* @return	The fully qualified name
	*/
	public function getQName( ):String;

	/**
	* Get quick info of the property with specified name (identified by property metadata annotation sap:quickinfo)
	* @param	sPropertyName Property name
	* @return	The quick info string
	*/
	public function getQuickInfoOfProperty( sPropertyName:String):String;

	/**
	* Get names of properties that must be filtered, that is they must appear in every $filter expression
	* @return	Array with names of properties that must be filtered.
	*/
	public function getRequiredFilterPropertyNames( ):Array<String>;

	/**
	* Get names of properties that can be sorted, that is they can be used in $orderby expressions
	* @return	Array with names of properties that can be sorted.
	*/
	public function getSortablePropertyNames( ):Array<String>;

	/**
	* Get the super-ordinate property related to the property with specified name (identified by property metadata annotation sap:super-ordinate)
	* @param	sPropertyName Property name
	* @return	The datajs object representing the super-ordinate property or null if it does not exist
	*/
	public function getSuperOrdinatePropertyOfProperty( sPropertyName:String):Dynamic;

	/**
	* Get the text property related to the property with specified name (identified by property metadata annotation sap:text)
	* @param	sPropertyName Property name
	* @return	The datajs object representing the text property or null if it does not exist
	*/
	public function getTextPropertyOfProperty( sPropertyName:String):Dynamic;

	/**
	* Get full description for this entity type
	* @return	The datajs object representing the entity type
	*/
	public function getTypeDescription( ):Dynamic;
}

