package sap.ui.performance;

@:native("module:sap/ui/performance/Measurement")
extern class Measurement
{
	@:overload( function(sId:String, sInfo:String, iStart:Int, iEnd:Int, iTime:Int, iDuration:Int, ?aCategories:String):Dynamic{ })

	/**
	* Adds a performance measurement with all data.

This is useful to add external measurements (e.g. from a backend) to the common measurement UI
	* @param	sId ID of the measurement
	* @param	sInfo Info for the measurement
	* @param	iStart start timestamp
	* @param	iEnd end timestamp
	* @param	iTime time in milliseconds
	* @param	iDuration effective time in milliseconds
	* @param	aCategories An optional list of categories for the measure
	* @return	[] current measurement containing id, info and start-timestamp, end-timestamp, time, duration, categories (false if error)
	*/
	public static function add( sId:String, sInfo:String, iStart:Int, iEnd:Int, iTime:Int, iDuration:Int, ?aCategories:Array<String>):Dynamic;
	@:overload( function(sId:String, sInfo:String, ?aCategories:String):Dynamic{ })

	/**
	* Starts an average performance measure.

The duration of this measure is an avarage of durations measured for each call. Optionally a category or list of categories can be passed to allow filtering of measurements.
	* @param	sId ID of the measurement
	* @param	sInfo Info for the measurement
	* @param	aCategories An optional list of categories for the measure
	* @return	current measurement containing id, info and start-timestamp (false if error)
	*/
	public static function average( sId:String, sInfo:String, ?aCategories:Array<String>):Dynamic;

	/**
	* Clears all performance measurements.
	* @return	Void
	*/
	public static function clear( ):Void;

	/**
	* Ends a performance measure.
	* @param	sId ID of the measurement
	* @return	current measurement containing id, info and start-timestamp, end-timestamp, time, duration (false if error)
	*/
	public static function end( sId:String):Dynamic;
	@:overload( function(?fnFilter:()->Void, ?bCompleted:Bool, ?aCategories:Array<String>):Array<sap.ui.performance.measurement.Entry>{ })

	/**
	* Gets all performance measurements where a provided filter function returns a truthy value.

If neither a filter function nor a category is provided an empty array is returned. To filter for certain properties of measurements a fnFilter can be implemented like this <code> function(oMeasurement) { return oMeasurement.duration > 50; }</code>
	* @param	fnFilter a filter function that returns true if the passed measurement should be added to the result
	* @param	bCompleted Optional parameter to determine if either completed or incomplete measurements should be returned (both if not set or undefined)
	* @param	aCategories The function returns only measurements which match these specified categories
	* @return	filtered array with measurements containing id, info and start-timestamp, end-timestamp, time, duration, categories (false if error)
	*/
	public static function filterMeasurements( ?fnFilter:()->Void, ?bCompleted:Dynamic, ?aCategories:Array<String>):Array<sap.ui.performance.measurement.Entry>;

	/**
	* Gets the current state of the performance measurement functionality.
	* @return	current state of the performance measurement functionality
	*/
	public static function getActive( ):Bool;

	/**
	* Gets all performance measurements.
	* @param	bCompleted Whether only completed measurements should be returned, if explicitly set to false only incomplete measurements are returned
	* @return	current array with measurements containing id, info and start-timestamp, end-timestamp, time, duration, categories
	*/
	public static function getAllMeasurements( ?bCompleted:Bool):sap.ui.performance.measurement.Entry;

	/**
	* Gets a performance measure.
	* @param	sId ID of the measurement
	* @return	current measurement containing id, info and start-timestamp, end-timestamp, time, duration (false if error)
	*/
	public static function getMeasurement( sId:String):sap.ui.performance.measurement.Entry;

	/**
	* Pauses a performance measure.
	* @param	sId ID of the measurement
	* @return	current measurement containing id, info and start-timestamp, pause-timestamp (false if error)
	*/
	public static function pause( sId:String):Dynamic;

	/**
	* Registers an average measurement for a given objects method.
	* @param	sId the id of the measurement
	* @param	oObject the object of the method
	* @param	sMethod the name of the method
	* @param	aCategories An optional categories list for the measurement
	* @return	true if the registration was successful
	*/
	public static function registerMethod( sId:String, oObject:Dynamic, sMethod:String, ?aCategories:Array<String>):Bool;

	/**
	* Removes a performance measure.
	* @param	sId ID of the measurement
	* @return	Void
	*/
	public static function remove( sId:String):Void;

	/**
	* Resumes a performance measure.
	* @param	sId ID of the measurement
	* @return	current measurement containing id, info and start-timestamp, resume-timestamp (false if error)
	*/
	public static function resume( sId:String):Dynamic;
	@:overload( function(bOn:Bool, aCategories:String):Bool{ })

	/**
	* Activates or deactivates the performance measure functionality.

Optionally a category or list of categories can be passed to restrict measurements to certain categories like "javascript", "require", "xmlhttprequest", "render"
	* @param	bOn state of the performance measurement functionality to set
	* @param	aCategories An optional list of categories that should be measured
	* @return	current state of the performance measurement functionality
	*/
	public static function setActive( bOn:Bool, aCategories:Array<String>):Bool;
	@:overload( function(sId:String, sInfo:String, ?aCategories:String):Dynamic{ })

	/**
	* Starts a performance measure.

Optionally a category or list of categories can be passed to allow filtering of measurements.
	* @param	sId ID of the measurement
	* @param	sInfo Info for the measurement
	* @param	aCategories An optional list of categories for the measure
	* @return	current measurement containing id, info and start-timestamp (false if error)
	*/
	public static function start( sId:String, sInfo:String, ?aCategories:Array<String>):Dynamic;

	/**
	* Unregisters all average measurements.
	* @return	Void
	*/
	public static function unregisterAllMethods( ):Void;

	/**
	* Unregisters an average measurement for a given objects method.
	* @param	sId the id of the measurement
	* @param	oObject the object of the method
	* @param	sMethod the name of the method
	* @return	true if the unregistration was successful
	*/
	public static function unregisterMethod( sId:String, oObject:Dynamic, sMethod:String):Bool;
}

