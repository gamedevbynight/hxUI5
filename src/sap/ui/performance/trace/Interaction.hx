package sap.ui.performance.trace;

@:native("module:sap/ui/performance/trace/Interaction")
extern class Interaction
{

	/**
	* Gets all interaction measurements for which a provided filter function returns a truthy value.

To filter for certain categories of measurements a fnFilter can be implemented like this <code> function(InteractionMeasurement) { return InteractionMeasurement.duration > 0 }</code>
	* @param	fnFilter a filter function that returns true if the passed measurement should be added to the result
	* @return	all interaction measurements passing the filter function successfully
	*/
	public static function filter( fnFilter:(Dynamic)->Void):Array<Dynamic>;

	/**
	* Returns true if the interaction detection was enabled explicitly, or implicitly along with fesr.
	* @return	bActive State of the interaction detection
	*/
	public static function getActive( ):Bool;

	/**
	* Gets all interaction measurements.
	* @param	bFinalize finalize the current pending interaction so that it is contained in the returned array
	* @return	all interaction measurements
	*/
	public static function getAll( bFinalize:Bool):Array<Dynamic>;

	/**
	* Enables the interaction tracking.
	* @param	bActive State of the interaction detection
	* @return	Void
	*/
	public static function setActive( bActive:Bool):Void;
}

