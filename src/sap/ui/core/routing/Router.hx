package sap.ui.core.routing;

@:native("sap.ui.core.routing.Router")

/**
* null
*/
extern class Router extends sap.ui.base.EventProvider
{
	@:overload( function(?oRoutes:Dynamic, ?oConfig:Dynamic, ?oOwner:sap.ui.core.UIComponent, ?oTargetsConfig:Dynamic):Void{ })

	/**
	* 
	* @param	oRoutes may contain many Route configurations as {@link sap.ui.core.routing.Route#constructor}.<br/> Each of the routes contained in the array/object will be added to the router.<br/>

One way of defining routes is an array: <pre>
[
    //Will create a route called 'firstRouter' you can later use this name in navTo to navigate to this route
    {
        name: "firstRoute"
        pattern : "usefulPattern"
    },
    //Will create a route called 'anotherRoute' for displaying the target 'targetView' which is defined in 'oTargets'
    {
        name: "anotherRoute"
        pattern : "anotherPattern",
        target: "targetView"
    },
    //Will create a route for displaying a nested component which is defined in 'oTargets' with the prefix 'componentPrefix'
    {
        pattern: "componentPattern",
        name: "componentRoute",
        target: [
             {
                 name: "subComponent",
                 prefix: "componentPrefix"
             }
        ]
    }
]
</pre>

The alternative way of defining routes is an Object.<br/> If you choose this way, the name attribute is the name of the property. <pre>
{
    //Will create a route called 'firstRouter' you can later use this name in navTo to navigate to this route
    firstRoute : {
        pattern : "usefulPattern"
    },
    //Will create a route called 'anotherRoute' for displaying the target 'targetView' which is defined in 'oTargets'
    anotherRoute : {
        pattern : "anotherPattern",
        target: "targetView"
    },
    //Will create a route for displaying a nested component which is defined in 'oTargets' with the prefix 'componentPrefix'
    componentRoute{
        pattern: "componentPattern",
        target: [
             {
                 name: "subComponent",
                 prefix: "componentPrefix"
             }
        ]
    }
}
</pre> The values that may be provided are the same as in {@link sap.ui.core.routing.Route#constructor}
	* @param	oConfig Default values for route configuration - also takes the same parameters as {@link sap.ui.core.routing.Target#constructor}.<br/> This config will be used for routes and for targets, used in the router<br/> Eg: if the config object specifies: <pre>
{
    viewType: "XML"
}
</pre> The targets look like this: <pre>
{
    xmlTarget : {
        ...
    },
    jsTarget : {
        viewType : "JS"
        ...
    }
}
</pre> Then the effective config will look like this: <pre>
{
    xmlTarget : {
        viewType : "XML"
        ...
    },
    jsTarget : {
        viewType : "JS"
        ...
    }
}
</pre>

Since the xmlTarget does not specify its viewType, XML is taken from the config object. The jsTarget is specifying it, so the viewType will be JS.
	* @param	oOwner the Component of all the views that will be created by this Router,<br/> will get forwarded to the {@link sap.ui.core.routing.Views#constructor}.<br/> If you are using the componentMetadata to define your routes you should skip this parameter.
	* @param	oTargetsConfig available @since 1.28 the target configuration, see {@link sap.ui.core.routing.Targets#constructor} documentation (the options object).<br/> You should use Targets to create and display views. Since 1.28 the route should only contain routing relevant properties.<br/> <b>Example:</b> <pre>
<code>
    new Router(
    // Routes
    [
        {
            // no view creation related properties are in the route
            name: "startRoute",
            //no hash
            pattern: "",
            // you can find this target in the targetConfig
            target: "welcome"
        }
    ],
    // Default values shared by routes and Targets
    {
        path: "my.application.namespace",
        viewType: "XML"
    },
    // You should only use this constructor when you are not using a router with a component.
    // Please use the metadata of a component to define your routes and targets.
    // The documentation can be found here: {@link sap.ui.core.UIComponent.extend}.
    null,
    // Target config
    {
         //same name as in the route called 'startRoute'
         welcome: {
             // All properties for creating and placing a view go here or in the config
             type: "View",
             name: "Welcome",
             controlId: "app",
             controlAggregation: "pages"
         }
    })
</code>
</pre>
	* @return	Object
	*/
	public function new( ?oRoutes:Array<Dynamic>, ?oConfig:Dynamic, ?oOwner:sap.ui.core.UIComponent, ?oTargetsConfig:Dynamic):Void;

	/**
	* Adds a route to the router
	* @param	oConfig configuration object for the route @see sap.ui.core.routing.Route#constructor
	* @param	oParent The parent route - if a parent route is given, the routeMatched event of this route will also trigger the route matched of the parent and it will also create the view of the parent (if provided).
	* @return	Void
	*/
	public function addRoute( oConfig:Dynamic, oParent:sap.ui.core.routing.Route):Void;

	/**
	* Attach event-handler <code>fnFunction</code> to the 'beforeRouteMatched' event of this <code>sap.ui.core.routing.Router</code>.<br/>
	* @param	oData The object, that should be passed along with the event-object when firing the event.
	* @param	fnFunction The function to call, when the event occurs. This function will be called on the oListener-instance (if present) or in a 'static way'.
	* @param	oListener Object on which to call the given function. If empty, this router is used.
	* @return	<code>this</code> to allow method chaining
	*/
	public function attachBeforeRouteMatched( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.routing.Router;

	/**
	* Attach event-handler <code>fnFunction</code> to the 'bypassed' event of this <code>sap.ui.core.routing.Router</code>.<br/> The event will get fired, if none of the routes of the routes is matching. <br/>
	* @param	oData The object, that should be passed along with the event-object when firing the event.
	* @param	fnFunction The function to call, when the event occurs. This function will be called on the oListener-instance (if present) or in a 'static way'.
	* @param	oListener Object on which to call the given function. If empty, this router is used.
	* @return	<code>this</code> to allow method chaining
	*/
	public function attachBypassed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.routing.Router;

	/**
	* Attach event-handler <code>fnFunction</code> to the 'routeMatched' event of this <code>sap.ui.core.routing.Router</code>.<br/>
	* @param	oData The object, that should be passed along with the event-object when firing the event.
	* @param	fnFunction The function to call, when the event occurs. This function will be called on the oListener-instance (if present) or in a 'static way'.
	* @param	oListener Object on which to call the given function. If empty, this router is used.
	* @return	<code>this</code> to allow method chaining
	*/
	public function attachRouteMatched( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.routing.Router;

	/**
	* Attach event-handler <code>fnFunction</code> to the 'routePatternMatched' event of this <code>sap.ui.core.routing.Router</code>.<br/> This event is similar to route matched. But it will only fire for the route that has a matching pattern, not for its parent Routes <br/>
	* @param	oData The object, that should be passed along with the event-object when firing the event.
	* @param	fnFunction The function to call, when the event occurs. This function will be called on the oListener-instance (if present) or in a 'static way'.
	* @param	oListener Object on which to call the given function. If empty, this router is used.
	* @return	<code>this</code> to allow method chaining
	*/
	public function attachRoutePatternMatched( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.routing.Router;

	/**
	* Attach event-handler <code>fnFunction</code> to the 'titleChanged' event of this <code>sap.ui.core.routing.Router</code>.<br/>
	* @param	oData The object, that should be passed along with the event-object when firing the event.
	* @param	fnFunction The function to call, when the event occurs. This function will be called on the oListener-instance (if present) or in a 'static way'.
	* @param	oListener Object on which to call the given function.
	* @return	<code>this</code> to allow method chaining
	*/
	public function attachTitleChanged( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.routing.Router;

	/**
	* Removes the router from the hash changer @see sap.ui.core.routing.HashChanger
	* @return	this for chaining.
	*/
	public function destroy( ):sap.ui.core.routing.Router;

	/**
	* Detach event-handler <code>fnFunction</code> from the 'beforeRouteMatched' event of this <code>sap.ui.core.routing.Router</code>.<br/>

The passed function and listener object must match the ones previously used for event registration.
	* @param	fnFunction The function to call, when the event occurs.
	* @param	oListener Object on which the given function had to be called.
	* @return	<code>this</code> to allow method chaining
	*/
	public function detachBeforeRouteMatched( fnFunction:()->Void, oListener:Dynamic):sap.ui.core.routing.Router;

	/**
	* Detach event-handler <code>fnFunction</code> from the 'bypassed' event of this <code>sap.ui.core.routing.Router</code>.<br/> The event will get fired, if none of the routes of the routes is matching. <br/>

The passed function and listener object must match the ones previously used for event registration.
	* @param	fnFunction The function to call, when the event occurs.
	* @param	oListener Object on which the given function had to be called.
	* @return	<code>this</code> to allow method chaining
	*/
	public function detachBypassed( fnFunction:()->Void, oListener:Dynamic):sap.ui.core.routing.Router;

	/**
	* Detach event-handler <code>fnFunction</code> from the 'routeMatched' event of this <code>sap.ui.core.routing.Router</code>.<br/>

The passed function and listener object must match the ones previously used for event registration.
	* @param	fnFunction The function to call, when the event occurs.
	* @param	oListener Object on which the given function had to be called.
	* @return	<code>this</code> to allow method chaining
	*/
	public function detachRouteMatched( fnFunction:()->Void, oListener:Dynamic):sap.ui.core.routing.Router;

	/**
	* Detach event-handler <code>fnFunction</code> from the 'routePatternMatched' event of this <code>sap.ui.core.routing.Router</code>.<br/> This event is similar to route matched. But it will only fire for the route that has a matching pattern, not for its parent Routes <br/>

The passed function and listener object must match the ones previously used for event registration.
	* @param	fnFunction The function to call, when the event occurs.
	* @param	oListener Object on which the given function had to be called.
	* @return	<code>this</code> to allow method chaining
	*/
	public function detachRoutePatternMatched( fnFunction:()->Void, oListener:Dynamic):sap.ui.core.routing.Router;

	/**
	* Detach event-handler <code>fnFunction</code> from the 'titleChanged' event of this <code>sap.ui.core.routing.Router</code>.<br/>

The passed function and listener object must match the ones previously used for event registration.
	* @param	fnFunction The function to call, when the event occurs.
	* @param	oListener Object on which the given function had to be called.
	* @return	<code>this</code> to allow method chaining
	*/
	public function detachTitleChanged( fnFunction:()->Void, oListener:Dynamic):sap.ui.core.routing.Router;

	/**
	* Creates a new subclass of class sap.ui.core.routing.Router with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.EventProvider.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.core.routing.Router.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the Route with a name, if no route is found undefined is returned
	* @param	sName Name of the route
	* @return	the route with the provided name or undefined.
	*/
	public function getRoute( sName:String):sap.ui.core.routing.Route;

	/**
	* Get a registered router
	* @param	sName Name of the router
	* @return	The router with the specified name, else undefined
	*/
	public static function getRouter( sName:String):sap.ui.core.routing.Router;
	@:overload( function(vName:String):Dynamic{ })

	/**
	* Returns a target by its name (if you pass myTarget: { view: "myView" }) in the config myTarget is the name. See {@link sap.ui.core.routing.Targets#getTarget}
	* @param	vName the name of a single target or the name of multiple targets
	* @return	The target with the corresponding name or undefined. If an array way passed as name this will return an array with all found targets. Non existing targets will not be returned but will log an error.
	*/
	public function getTarget( vName:Array<String>):Dynamic;

	/**
	* Returns the instance of Targets, if you pass a targets config to the router
	* @return	The instance of targets, the router uses to place views or undefined if you did not specify the targets parameter in the router's constructor.
	*/
	public function getTargets( ):Dynamic;

	/**
	* Returns the title history.

History entry example: <code> { title: "TITLE", // The displayed title hash: "HASH" // The url hash isHome: "true/false" // The app home indicator } </code>
	* @return	An array which contains the history entries.
	*/
	public function getTitleHistory( ):Array<Dynamic>;

	/**
	* Returns the URL for the route and replaces the placeholders with the values in oParameters
	* @param	sName Name of the route
	* @param	oParameters Parameters for the route
	* @return	the unencoded pattern with interpolated arguments
	*/
	public function getURL( sName:String, ?oParameters:Dynamic):String;

	/**
	* Returns the views instance created by the router
	* @return	the Views instance
	*/
	public function getViews( ):sap.ui.core.routing.Views;

	/**
	* Attaches the router to the hash changer @see sap.ui.core.routing.HashChanger
	* @param	bIgnoreInitialHash @since 1.48.0 whether the current url hash shouldn't be parsed after the router is initialized
	* @return	this for chaining.
	*/
	public function initialize( ?bIgnoreInitialHash:Bool):sap.ui.core.routing.Router;

	/**
	* Returns whether the router is initialized by calling {@link sap.ui.core.routing.Router#initialize} function
	* @return	whether the router is initialized
	*/
	public function isInitialized( ):Bool;

	/**
	* Returns whether the router is stopped by calling {@link sap.ui.core.routing.Router#stop} function
	* @return	whether the router is stopped
	*/
	public function isStopped( ):Bool;

	/**
	* Returns whether the given hash can be matched by any one of the Route in the Router.
	* @param	hash which will be tested by the Router
	* @return	whether the hash can be matched
	*/
	public function match( hash:String):Bool;

	/**
	* Navigates to a specific route defining a set of parameters. The Parameters will be URI encoded - the characters ; , / ? : @ & = + $ are reserved and will not be encoded. If you want to use special characters in your oParameters, you have to encode them (encodeURIComponent).

IF the given route name can't be found, an error message is logged to the console and the hash will be changed to empty string.
	* @param	sName Name of the route
	* @param	oParameters Parameters for the route
	* @param	bReplace If set to <code>true</code>, the hash is replaced, and there will be no entry in the browser history, if set to <code>false</code>, the hash is set and the entry is stored in the browser history.
	* @return	this for chaining.
	*/
	public function navTo( sName:String, ?oParameters:Dynamic, ?bReplace:Bool):sap.ui.core.routing.Router;

	/**
	* Registers the router to access it from another context. Use sap.ui.routing.Router.getRouter() to receive the instance
	* @param	sName Name of the router
	* @return	Void
	*/
	public function register( sName:String):Void;

	/**
	* Stops to listen to the hashChange of the browser.</br> If you want the router to start again, call initialize again.
	* @return	this for chaining.
	*/
	public function stop( ):sap.ui.core.routing.Router;
}

