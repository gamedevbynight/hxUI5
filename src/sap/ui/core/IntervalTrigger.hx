package sap.ui.core;

@:native("sap.ui.core.IntervalTrigger")

/**
* Provides a trigger that triggers in a set interval and calls all registered listeners. If the interval is <= 0 the trigger is switched off and won't trigger at all.
*/
extern class IntervalTrigger extends sap.ui.base.Object
{

	/**
	* 
	* @param	iInterval is the interval the trigger should be used. If the trigger is >0 triggering starts/runs and if the interval is set to <=0 triggering stops.
	* @return	Object
	*/
	public function new( ?iInterval:Int):Void;

	/**
	* Adds a listener to the list that should be triggered.
	* @param	fnFunction is the called function that should be called when the trigger want to trigger the listener.
	* @param	oListener that should be triggered.
	* @return	Void
	*/
	public static function addListener( fnFunction:()->Void, ?oListener:Dynamic):Void;

	/**
	* Destructor method for objects.
	* @return	Void
	*/
	public function destroy( ):Void;

	/**
	* Creates a new subclass of class sap.ui.core.IntervalTrigger with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.core.IntervalTrigger.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Removes corresponding listener from list.
	* @param	fnFunction is the previously registered function
	* @param	oListener that should be removed
	* @return	Void
	*/
	public static function removeListener( fnFunction:()->Void, ?oListener:Dynamic):Void;

	/**
	* Sets the trigger interval. If the value is >0 triggering will start if there are any registered listeners. If the interval is set to <=0 triggering will stop.
	* @param	iInterval sets the interval in milliseconds when a new triggering should occur.
	* @return	Void
	*/
	public function setInterval( iInterval:Int):Void;
}

