package sap.m.routing;

@:native("sap.m.routing.Router")

/**
* SAPUI5 mobile <code>Router</code>. The difference to the {@link sap.ui.core.routing.Router} are the <code>viewLevel</code>, <code>transition</code>, and <code>transitionParameters</code> properties that you can specify in every Route or Target created by this router.
*/
extern class Router extends sap.ui.core.routing.Router
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
    //Will create a route called 'anotherRoute'
    {
        name: "anotherRoute"
        pattern : "anotherPattern"
    },
    //Will create a route for a nested component with the prefix 'componentPrefix'
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
    //Will create a route called 'anotherRoute'
    anotherRoute : {
        pattern : "anotherPattern"
    },
    //Will create a route for a nested component with the prefix 'componentPrefix'
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
	* @param	oConfig Default values for route configuration - also takes the same parameters as {@link sap.ui.core.routing.Target#constructor}.<br/> This config will be used for routes and for targets, used in the router<br/> Eg: if the config object specifies : <pre>
<code>
{ viewType : "XML" }
</code>
</pre> The targets look like this: <pre>
{
    xmlTarget : {
        ...
    },
    jsTarget : {
        viewType : "JS"
        ...
    },
    componentTarget: {
        type: "Component",
        name: "subComponent",
        id: "mySubComponent",
        options: {
            // the Component configuration:
            manifest: true
            ...
        },
        controlId: "myRootView",
        controlAggregation: "content"
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
    },
	   componentTarget: {
        type: "Component",
        name: "subComponent",
        id: "mySubComponent",
        options: {
            // the Component configuration:
            manifest: true
            ...
        },
        controlId: "myRootView",
        controlAggregation: "content"
    }
}
</pre>

Since the xmlTarget does not specify its viewType, XML is taken from the config object. The jsTarget is specifying it, so the viewType will be JS.<br/>
	* @param	oOwner the Component of all the views that will be created by this Router,<br/> will get forwarded to the {@link sap.ui.core.routing.Views#constructor}.<br/> If you are using the componentMetadata to define your routes you should skip this parameter.<br/>
	* @param	oTargetsConfig the target configuration, see {@link sap.m.routing.Targets#constructor} documentation (the options object).<br/> You should use Targets to create and display views. The route should only contain routing relevant properties.<br/> <b>Example:</b> <pre>
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
        viewNamespace: "my.application.namespace",
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
             viewName: "Welcome",
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
	* Creates a new subclass of class sap.m.routing.Router with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.routing.Router.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.m.routing.Router.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the TargetHandler instance.
	* @return	the TargetHandler instance
	*/
	public function getTargetHandler( ):sap.m.routing.TargetHandler;
}

