package sap.ui.model.analytics.odata4analytics;

@:native("sap.ui.model.analytics.odata4analytics.SortExpression")

/**
* Representation of a $orderby expression for an OData entity type.
*/
extern class SortExpression
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
	* Add a condition to the order by expression. It replaces any previously specified sort order for the property.
	* @param	sPropertyName The name of the property bound in the condition
	* @param	sSortOrder sorting order used for the condition
	* @return	This object for method chaining
	*/
	public function addSorter( sPropertyName:String, sSortOrder:sap.ui.model.analytics.odata4analytics.SortOrder):sap.ui.model.analytics.odata4analytics.SortExpression;

	/**
	* Clear expression from any sort conditions that may have been set previously
	* @return	Void
	*/
	public function clear( ):Void;

	/**
	* Get description for this entity type
	* @return	The object representing the entity type
	*/
	public function getEntityType( ):sap.ui.model.analytics.odata4analytics.EntityType;

	/**
	* Get the first SAPUI5 Sorter object.
	* @return	first sorter object or null if empty
	*/
	public function getExpressionAsUI5Sorter( ):sap.ui.model.Sorter;

	/**
	* Get an array of SAPUI5 Sorter objects corresponding to this expression.
	* @return	List of sorter objects representing this expression
	*/
	public function getExpressionsAsUI5SorterArray( ):Array<sap.ui.model.Sorter>;

	/**
	* Get the value for the OData system query option $orderby corresponding to this expression.
	* @param	oSelectedPropertyNames Object with properties requested for $select
	* @return	The $orderby value for the sort expressions
	*/
	public function getURIOrderByOptionValue( oSelectedPropertyNames:Dynamic):String;

	/**
	* Removes the order by expression for the given property name from the list of order by expression. If no order by expression with this property name exists the method does nothing.
	* @param	sPropertyName The name of the property to be removed from the condition
	* @return	Void
	*/
	public function removeSorter( sPropertyName:String):Void;
}

