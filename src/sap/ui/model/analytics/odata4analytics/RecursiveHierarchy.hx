package sap.ui.model.analytics.odata4analytics;

@:native("sap.ui.model.analytics.odata4analytics.RecursiveHierarchy")

/**
* Representation of a recursive hierarchy.
*/
extern class RecursiveHierarchy
{

	/**
	* 
	* @param	oEntityType object for the entity type
	* @param	oNodeIDProperty datajs object for the property holding the hierarchy node ID identifying the hierarchy node to which the OData entry belongs
	* @param	oParentNodeIDProperty datajs object for the property holding the node ID of the parent of the hierarchy node pointed to by the value of oNodeIDProperty
	* @param	oNodeLevelProperty datajs object for the property holding the level number for the of the hierarchy node pointed to by the value of oNodeIDProperty
	* @param	oNodeValueProperty datajs object for the property holding the data value for the of the hierarchy node pointed to by the value of oNodeIDProperty
	* @param	oNodeExternalKeyProperty datajs object for the property holding the node external key of the hierarchy node. The external key is a human-readable identification of a node. The value of the <code>hierarchy-node-external-key-for</code> attribute is always the name of another property in the same type. It points to the related property holding the hierarchy node ID.
	* @return	Object
	*/
	public function new( ?oEntityType:sap.ui.model.analytics.odata4analytics.EntityType, ?oNodeIDProperty:Dynamic, ?oParentNodeIDProperty:Dynamic, ?oNodeLevelProperty:Dynamic, ?oNodeValueProperty:Dynamic, ?oNodeExternalKeyProperty:Dynamic):Void;

	/**
	* Get the property holding the node external key of the hierarchy node
	* @return	The datajs object representing this property
	*/
	public function getNodeExternalKeyProperty( ):Dynamic;

	/**
	* Get the property holding the node ID of the hierarchy node
	* @return	The datajs object representing this property
	*/
	public function getNodeIDProperty( ):Dynamic;

	/**
	* Get the property holding the level of the hierarchy node
	* @return	The datajs object representing this property
	*/
	public function getNodeLevelProperty( ):Dynamic;

	/**
	* Get the property holding the value that is structurally organized by the hierarchy
	* @return	The datajs object representing this property
	*/
	public function getNodeValueProperty( ):Dynamic;

	/**
	* Get the property holding the parent node ID of the hierarchy node
	* @return	The datajs object representing this property
	*/
	public function getParentNodeIDProperty( ):Dynamic;

	/**
	* Get indicator if this is a leveled hierarchy
	* @return	False
	*/
	public function isLeveledHierarchy( ):Bool;

	/**
	* Get indicator if this is a recursive hierarchy
	* @return	True
	*/
	public function isRecursiveHierarchy( ):Bool;
}

