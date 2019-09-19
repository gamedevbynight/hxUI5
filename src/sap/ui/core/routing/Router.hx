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
</pre>
	* @return	Object
	*/
	public function new( ?oRoutes:Array<Dynamic>, ?oConfig:Dynamic, ?oOwner:sap.ui.core.UIComponent, ?oTargetsConfig:Dynamic):Void;

	/**
	* Adds a route to the router.
	* @param	oConfig Configuration object for the route @see sap.ui.core.routing.Route#constructor
	* @param	oParent The parent route - if a parent route is given, the <code>routeMatched</code> event of this route will also trigger the <code>routeMatched</code> of the parent and it will also create the view of the parent (if provided).
	* @return	Void
	*/
	public function addRoute( oConfig:Dynamic, oParent:sap.ui.core.routing.Route):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeRouteMatched beforeRouteMatched} event of this <code>sap.ui.core.routing.Router</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.core.routing.Router</code> itself.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with, defaults to this <code>sap.ui.core.routing.Router</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforeRouteMatched( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.routing.Router;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:bypassed bypassed} event of this <code>sap.ui.core.routing.Router</code>.

The event will get fired, if none of the routes of the router is matching.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.core.routing.Router</code> itself.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with, defaults to this <code>sap.ui.core.routing.Router</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBypassed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.routing.Router;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:routeMatched routeMatched} event of this <code>sap.ui.core.routing.Router</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.core.routing.Router</code> itself.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with, defaults to this <code>sap.ui.core.routing.Router</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachRouteMatched( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.routing.Router;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:routePatternMatched routePatternMatched} event of this <code>sap.ui.core.routing.Router</code>.

This event is similar to <code>routeMatched</code>. But it will only fire for the route that has a matching pattern, not for its parent routes.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.core.routing.Router</code> itself.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with, defaults to this <code>sap.ui.core.routing.Router</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachRoutePatternMatched( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.routing.Router;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:titleChanged titleChanged} event of this <code>sap.ui.core.routing.Router</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.core.routing.Router</code> itself.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with, defaults to this <code>sap.ui.core.routing.Router</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachTitleChanged( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.routing.Router;

	/**
	* Removes the router from the hash changer.

See {@link sap.ui.core.routing.HashChanger}.
	* @return	this for chaining.
	*/
	public function destroy( ):sap.ui.core.routing.Router;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeRouteMatched beforeRouteMatched} event of this <code>sap.ui.core.routing.Router</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforeRouteMatched( fnFunction:()->Void, oListener:Dynamic):sap.ui.core.routing.Router;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:bypassed bypassed} event of this <code>sap.ui.core.routing.Router</code>.

The passed function and listener object must match the ones used for event registration.

The event will get fired, if none of the routes of the router is matching.
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBypassed( fnFunction:()->Void, oListener:Dynamic):sap.ui.core.routing.Router;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:routeMatched routeMatched} event of this <code>sap.ui.core.routing.Router</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachRouteMatched( fnFunction:()->Void, oListener:Dynamic):sap.ui.core.routing.Router;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:routePatternMatched routePatternMatched} event of this <code>sap.ui.core.routing.Router</code>.

The passed function and listener object must match the ones used for event registration.

This event is similar to <code>routeMatched</code>. But it will only fire for the route that has a matching pattern, not for its parent routes.
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachRoutePatternMatched( fnFunction:()->Void, oListener:Dynamic):sap.ui.core.routing.Router;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:titleChanged titleChanged} event of this <code>sap.ui.core.routing.Router</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
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
	* Returns the route with the given name or <code>undefined</code> if no route is found.
	* @param	sName Name of the route
	* @return	Route with the provided name or <code>undefined</code>.
	*/
	public function getRoute( sName:String):sap.ui.core.routing.Route;

	/**
	* Get a registered router.
	* @param	sName Name of the router
	* @return	The router with the specified name, else undefined
	*/
	public static function getRouter( sName:String):sap.ui.core.routing.Router;
	@:overload( function(vName:String):Dynamic{ })

	/**
	* Returns a target by its name.

If you pass <code>myTarget: { view: "myView" })</code> in the config, <code>myTarget</code> is the name. See {@link sap.ui.core.routing.Targets#getTarget}.
	* @param	vName Name of a single target or an array of names of multiple targets
	* @return	Target with the corresponding name or <code>undefined</code>. If an array of names was passed, this will return an array with all found targets. Non existing targets will not be returned but will log an error.
	*/
	public function getTarget( vName:Array<String>):Dynamic;

	/**
	* Returns the instance of <code>sap.ui.core.routing.Targets</code>, if you passed a <code>targets</code> configuration to the router.
	* @return	Instance of <code>Targets</code> which the router uses to place views or <code>undefined</code> if you did not specify the <code>targets</code> parameter in the router's constructor.
	*/
	public function getTargets( ):Dynamic;

	/**
	* Returns the title history.

History entry example: <pre>
	{
		title: "TITLE", // The displayed title
		hash: "HASH" // The url hash
		isHome: "true/false" // The app home indicator
	}
</pre>
	* @return	An array which contains the history entries.
	*/
	public function getTitleHistory( ):Array<Dynamic>;

	/**
	* Returns the URL for the route and replaces the placeholders with the values in <code>oParameters</code>.
	* @param	sName Name of the route
	* @param	oParameters Parameters for the route
	* @return	The unencoded pattern with interpolated arguments
	*/
	public function getURL( sName:String, ?oParameters:Dynamic):String;

	/**
	* Returns the <code>sap.ui.core.routing.Views</code> instance created by the router.
	* @return	the Views instance
	*/
	public function getViews( ):sap.ui.core.routing.Views;

	/**
	* Attaches the router to the hash changer.

See {@link sap.ui.core.routing.HashChanger}.
	* @param	bIgnoreInitialHash @since 1.48.0 Whether the current URL hash shouldn't be parsed after the router is initialized
	* @return	this for chaining.
	*/
	public function initialize( ?bIgnoreInitialHash:Bool):sap.ui.core.routing.Router;

	/**
	* Returns whether the router is initialized by calling {@link sap.ui.core.routing.Router#initialize} function.
	* @return	Whether the router is initialized
	*/
	public function isInitialized( ):Bool;

	/**
	* Returns whether the router is stopped by calling {@link sap.ui.core.routing.Router#stop} function.
	* @return	Whether the router is stopped
	*/
	public function isStopped( ):Bool;

	/**
	* Returns whether the given hash can be matched by any of the routes in the router.
	* @param	Hash which will be tested by the Router
	* @return	Whether the hash can be matched
	*/
	public function match( Hash:String):Bool;

	/**
	* Navigates to a specific route defining a set of parameters.

The parameters will be URI encoded - the characters ; , / ? : @ & = + $ are reserved and will not be encoded. If you want to use special characters in your <code>oParameters</code>, you have to encode them (encodeURIComponent).

If the given route name can't be found, an error message is logged to the console and the hash will be changed to the empty string.
	* @param	sName Name of the route
	* @param	oParameters Parameters for the route
	* @param	bReplace If set to <code>true</code>, the hash is replaced, and there will be no entry in the browser history, if set to <code>false</code>, the hash is set and the entry is stored in the browser history.
	* @return	this for chaining.
	*/
	public function navTo( sName:String, ?oParameters:Dynamic, ?bReplace:Bool):sap.ui.core.routing.Router;

	/**
	* Registers the router to access it from another context.

Use <code>sap.ui.routing.Router.getRouter()</code> to receive the instance.
	* @param	sName Name of the router
	* @return	Void
	*/
	public function register( sName:String):Void;

	/**
	* Stops to listen to the <code>hashChange</code> of the browser.

If you want the router to start again, call {@link #initialize} again.
	* @return	this for chaining.
	*/
	public function stop( ):sap.ui.core.routing.Router;
}

