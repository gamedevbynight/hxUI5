package sap.ui.core.routing;

@:native("sap.ui.core.routing.Route")

/**
* null
*/
extern class Route extends sap.ui.base.EventProvider
{

	/**
	* 
	* @param	oRouter The router instance to which the route will be added
	* @param	oConfig configuration object for the route
	* @param	oParent The parent route - if a parent route is given, the routeMatched event of this route will also trigger the route matched of the parent and it will also create the view of the parent(if provided).
	* @return	Object
	*/
	public function new( ?oRouter:sap.ui.core.routing.Router, ?oConfig:Dynamic, ?oParent:sap.ui.core.routing.Route):Void;

	/**
	* Attach event-handler <code>fnFunction</code> to the 'beforeMatched' event of this <code>sap.ui.core.routing.Route</code>.<br/>
	* @param	oData The object, that should be passed along with the event-object when firing the event.
	* @param	fnFunction The function to call, when the event occurs. This function will be called on the oListener-instance (if present) or in a 'static way'.
	* @param	oListener Object on which to call the given function. If empty, this route is used.
	* @return	<code>this</code> to allow method chaining
	*/
	public function attachBeforeMatched( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.routing.Route;

	/**
	* Attach event-handler <code>fnFunction</code> to the 'matched' event of this <code>sap.ui.core.routing.Route</code>.<br/>
	* @param	oData The object, that should be passed along with the event-object when firing the event.
	* @param	fnFunction The function to call, when the event occurs. This function will be called on the oListener-instance (if present) or in a 'static way'.
	* @param	oListener Object on which to call the given function. If empty, this route is used.
	* @return	<code>this</code> to allow method chaining
	*/
	public function attachMatched( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.routing.Route;

	/**
	* Attach event-handler <code>fnFunction</code> to the 'patternMatched' event of this <code>sap.ui.core.routing.Route</code>.<br/>
	* @param	oData The object, that should be passed along with the event-object when firing the event.
	* @param	fnFunction The function to call, when the event occurs. This function will be called on the oListener-instance (if present) or in a 'static way'.
	* @param	oListener Object on which to call the given function. If empty, this route is used.
	* @return	<code>this</code> to allow method chaining
	*/
	public function attachPatternMatched( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.routing.Route;

	/**
	* Destroys a route
	* @return	this for chaining.
	*/
	public function destroy( ):sap.ui.core.routing.Route;

	/**
	* Detach event-handler <code>fnFunction</code> from the 'beforeMatched' event of this <code>sap.ui.core.routing.Route</code>.<br/>

The passed function and listener object must match the ones previously used for event registration.
	* @param	fnFunction The function to call, when the event occurs.
	* @param	oListener Object on which the given function had to be called.
	* @return	<code>this</code> to allow method chaining
	*/
	public function detachBeforeMatched( fnFunction:()->Void, oListener:Dynamic):sap.ui.core.routing.Route;

	/**
	* Detach event-handler <code>fnFunction</code> from the 'matched' event of this <code>sap.ui.core.routing.Route</code>.<br/>

The passed function and listener object must match the ones previously used for event registration.
	* @param	fnFunction The function to call, when the event occurs.
	* @param	oListener Object on which the given function had to be called.
	* @return	<code>this</code> to allow method chaining
	*/
	public function detachMatched( fnFunction:()->Void, oListener:Dynamic):sap.ui.core.routing.Route;

	/**
	* Detach event-handler <code>fnFunction</code> from the 'patternMatched' event of this <code>sap.ui.core.routing.Route</code>.<br/>

The passed function and listener object must match the ones previously used for event registration.
	* @param	fnFunction The function to call, when the event occurs.
	* @param	oListener Object on which the given function had to be called.
	* @return	<code>this</code> to allow method chaining
	*/
	public function detachPatternMatched( fnFunction:()->Void, oListener:Dynamic):sap.ui.core.routing.Route;

	/**
	* Creates a new subclass of class sap.ui.core.routing.Route with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.EventProvider.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.core.routing.Route.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the pattern of the route. If there are multiple patterns, the first pattern is returned
	* @return	the routes pattern
	*/
	public function getPattern( ):String;

	/**
	* Returns the URL for the route and replaces the placeholders with the values in oParameters
	* @param	oParameters Parameters for the route
	* @return	the unencoded pattern with interpolated arguments
	*/
	public function getURL( oParameters:Dynamic):String;

	/**
	* Returns whether the given hash can be matched by the Route
	* @param	hash which will be tested by the Route
	* @return	whether the hash can be matched
	*/
	public function match( hash:String):Bool;
}
