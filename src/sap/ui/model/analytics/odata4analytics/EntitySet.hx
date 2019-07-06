package sap.ui.model.analytics.odata4analytics;

@:native("sap.ui.model.analytics.odata4analytics.EntitySet")

/**
* Representation of an OData entity set.
*/
extern class EntitySet
{

	/**
	* 
	* @param	oModel datajs object for the OData model containing this entity set
	* @param	oSchema datajs object for the schema surrounding the container of this entity set
	* @param	oContainer datajs object for the container holding this entity set
	* @param	oEntitySet datajs object for the entity set
	* @param	oEntityType datajs object for the entity type
	* @return	Object
	*/
	public function new( ?oModel:Dynamic, ?oSchema:Dynamic, ?oContainer:Dynamic, ?oEntitySet:Dynamic, ?oEntityType:Dynamic):Void;

	/**
	* Get entity type used for this entity set
	* @return	The datajs object representing the entity type
	*/
	public function getEntityType( ):Dynamic;

	/**
	* Get the fully qualified name for this entity type
	* @return	The fully qualified name
	*/
	public function getQName( ):String;

	/**
	* Get full description for this entity set
	* @return	The datajs object representing the entity set
	*/
	public function getSetDescription( ):Dynamic;

	/**
	* Get names of properties in this entity set that can be updated
	* @return	An object with individual JS properties for each updatable property. For testing whether propertyName is the name of an updatable property, use <code>getUpdatablePropertyNameSet()[propertyName]</code>. The included JS object properties are all set to true.
	*/
	public function getUpdatablePropertyNameSet( ):Dynamic;
}

