package sap.ui.model.analytics.odata4analytics;

@:native("sap.ui.model.analytics.odata4analytics.FilterExpression")

/**
* Representation of a $filter expression for an OData entity type.
*/
extern class FilterExpression
{

	/**
	* 
	* @param	oModel datajs object for the OData model containing this entity type
	* @param	oSchema datajs object for the schema containing this entity type
	* @param	oEntityType object for the entity type
	* @return	Object
	*/
	public function new( ?oModel:Dynamic, ?oSchema:Dynamic, ?oEntityType:sap.ui.model.analytics.odata4analytics.EntityType):Void;

	/**
	* Add a condition to the filter expression.

Multiple conditions on the same property are combined with a logical OR first, and in a second step conditions for different properties are combined with a logical AND.
	* @param	sPropertyName The name of the property bound in the condition
	* @param	sOperator operator used for the condition
	* @param	oValue value to be used for this condition
	* @param	oValue2 (optional) as second value to be used for this condition
	* @return	This object for method chaining
	*/
	public function addCondition( sPropertyName:String, sOperator:sap.ui.model.FilterOperator, oValue:Dynamic, oValue2:Dynamic):sap.ui.model.analytics.odata4analytics.FilterExpression;

	/**
	* Add a set condition to the filter expression.

A set condition tests if the value of a property is included in a set of given values. It is a convenience method for this particular use case eliminating the need for multiple API calls.
	* @param	sPropertyName The name of the property bound in the condition
	* @param	aValues values defining the set
	* @return	This object for method chaining
	*/
	public function addSetCondition( sPropertyName:String, aValues:Array<Dynamic>):sap.ui.model.analytics.odata4analytics.FilterExpression;

	/**
	* Add an array of UI5 filter conditions to the filter expression.

The UI5 filter condition is combined with the other given conditions using a logical AND. This method is particularly useful for passing forward already created UI5 filter arrays.
	* @param	aUI5Filter Array of UI5 filter objects
	* @return	This object for method chaining
	*/
	public function addUI5FilterConditions( aUI5Filter:Array<sap.ui.model.Filter>):sap.ui.model.analytics.odata4analytics.FilterExpression;

	/**
	* Check if request is compliant with basic filter constraints expressed in metadata:

(a) all properties required in the filter expression have been referenced (b) the single-value filter restrictions have been obeyed
	* @return	The value true. In case the expression violates some of the rules, an exception with some explanatory message is thrown
	*/
	public function checkValidity( ):Bool;

	/**
	* Clear expression from any conditions that may have been set previously
	* @return	Void
	*/
	public function clear( ):Void;

	/**
	* Get description for this entity type
	* @return	The object representing the entity type
	*/
	public function getEntityType( ):sap.ui.model.analytics.odata4analytics.EntityType;

	/**
	* Get an array of SAPUI5 Filter objects corresponding to this expression.
	* @return	List of filter objects representing this expression
	*/
	public function getExpressionAsUI5FilterArray( ):Array<sap.ui.model.Filter>;

	/**
	* Get the value for the OData system query option $filter corresponding to this expression.
	* @return	The $filter value for the filter expression
	*/
	public function getURIFilterOptionValue( ):String;

	/**
	* Remove all conditions for some property from the filter expression.

All previously set conditions for some property are removed from the filter expression.
	* @param	sPropertyName The name of the property bound in the condition
	* @return	This object for method chaining
	*/
	public function removeConditions( sPropertyName:String):sap.ui.model.analytics.odata4analytics.FilterExpression;
}

