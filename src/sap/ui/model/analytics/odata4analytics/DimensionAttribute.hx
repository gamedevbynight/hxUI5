package sap.ui.model.analytics.odata4analytics;

@:native("sap.ui.model.analytics.odata4analytics.DimensionAttribute")

/**
* Representation of a dimension attribute.
*/
extern class DimensionAttribute
{

	/**
	* 
	* @param	oQueryResult The query result containing this dimension attribute
	* @param	oProperty The datajs object object representing the dimension attribute
	* @return	Object
	*/
	public function new( ?oQueryResult:sap.ui.model.analytics.odata4analytics.QueryResult, ?oProperty:Dynamic):Void;

	/**
	* Get dimension
	* @return	The dimension object containing this attribute
	*/
	public function getDimension( ):sap.ui.model.analytics.odata4analytics.Dimension;

	/**
	* Get the key property
	* @return	The datajs object representing the property for the key of this dimension attribute
	*/
	public function getKeyProperty( ):Dynamic;

	/**
	* Get label
	* @return	The (possibly language-dependent) label text for this dimension attribute
	*/
	public function getLabelText( ):String;

	/**
	* Get the name of the dimension attribute
	* @return	The name of the dimension attribute, which is identical to the name of the property in the entity type holding the attribute value
	*/
	public function getName( ):String;

	/**
	* Get text property related to this dimension attribute
	* @return	The datajs object representing the text property or null if it does not exist
	*/
	public function getTextProperty( ):Dynamic;
}

