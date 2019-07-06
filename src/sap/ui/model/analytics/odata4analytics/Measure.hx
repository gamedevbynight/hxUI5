package sap.ui.model.analytics.odata4analytics;

@:native("sap.ui.model.analytics.odata4analytics.Measure")

/**
* Representation of a property annotated with sap:aggregation-role="measure".
*/
extern class Measure
{

	/**
	* 
	* @param	oQueryResult The query result containing this measure
	* @param	oProperty The datajs object object representing the measure
	* @return	Object
	*/
	public function new( ?oQueryResult:sap.ui.model.analytics.odata4analytics.QueryResult, ?oProperty:Dynamic):Void;

	/**
	* Get the text property associated to the raw value property holding the formatted value related to this measure
	* @return	The datajs object representing the property holding the formatted value text of this measure or null if this measure does not have a unit
	*/
	public function getFormattedValueProperty( ):Dynamic;

	/**
	* Get label
	* @return	The (possibly language-dependent) label text for this measure
	*/
	public function getLabelText( ):String;

	/**
	* Get the name of the measure
	* @return	The name of the measure, which is identical to the name of the measure raw value property in the entity type
	*/
	public function getName( ):String;

	/**
	* Get the raw value property
	* @return	The datajs object representing the property holding the raw value of this measure
	*/
	public function getRawValueProperty( ):Dynamic;

	/**
	* Get the unit property related to this measure
	* @return	The datajs object representing the unit property or null if this measure does not have a unit
	*/
	public function getUnitProperty( ):Dynamic;

	/**
	* Get indicator whether or not the measure is updatable
	* @return	True iff the measure is updatable
	*/
	public function isUpdatable( ):Bool;
}

