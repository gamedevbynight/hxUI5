package sap.ui.model.analytics.odata4analytics;

@:native("sap.ui.model.analytics.odata4analytics.Dimension")

/**
* Representation of a property annotated with sap:aggregation-role="dimension".
*/
extern class Dimension
{

	/**
	* 
	* @param	oQueryResult The query result containing this dimension
	* @param	oProperty The datajs object object representing the dimension
	* @return	Object
	*/
	public function new( ?oQueryResult:sap.ui.model.analytics.odata4analytics.QueryResult, ?oProperty:Dynamic):Void;

	/**
	* Find attribute by name
	* @param	sName Attribute name
	* @return	The dimension attribute object with this name or null if it does not exist
	*/
	public function findAttributeByName( sName:String):sap.ui.model.analytics.odata4analytics.Dimension;

	/**
	* Get the names of all attributes included in this dimension
	* @return	List of all attribute names
	*/
	public function getAllAttributeNames( ):Array<String>;

	/**
	* Get all attributes of this dimension
	* @return	An object with individual JS properties for each attribute of this dimension. The JS object properties all are objects of type odata4analytics.DimensionAttribute. The names of the JS object properties are given by the OData entity type property names representing the dimension attribute keys.
	*/
	public function getAllAttributes( ):Dynamic;

	/**
	* Get query result containing this dimension
	* @return	The query result object
	*/
	public function getContainingQueryResult( ):sap.ui.model.analytics.odata4analytics.QueryResult;

	/**
	* Get associated hierarchy
	* @return	The hierarchy object or null if there is none. It can be an instance of class odata4analytics.RecursiveHierarchy (TODO later: or a leveled hierarchy). Use methods isLeveledHierarchy and isRecursiveHierarchy to determine object type.
	*/
	public function getHierarchy( ):Dynamic;

	/**
	* Get the key property
	* @return	The datajs object representing the property for the dimension key
	*/
	public function getKeyProperty( ):Dynamic;

	/**
	* Get label
	* @return	The (possibly language-dependent) label text for this dimension
	*/
	public function getLabelText( ):String;

	/**
	* Get master data entity set for this dimension
	* @return	The master data entity set for this dimension, or null, if it does not exist
	*/
	public function getMasterDataEntitySet( ):sap.ui.model.analytics.odata4analytics.EntitySet;

	/**
	* Get the name of the dimension
	* @return	The name of this dimension, which is identical to the name of the dimension key property in the entity type
	*/
	public function getName( ):String;

	/**
	* Get super-ordinate dimension
	* @return	The super-ordinate dimension or null if there is none
	*/
	public function getSuperOrdinateDimension( ):Dynamic;

	/**
	* Get text property related to this dimension
	* @return	The datajs object representing the text property or null if it does not exist
	*/
	public function getTextProperty( ):Dynamic;

	/**
	* Get indicator whether or not master data is available for this dimension
	* @return	True iff master data is available
	*/
	public function hasMasterData( ):Bool;
}

