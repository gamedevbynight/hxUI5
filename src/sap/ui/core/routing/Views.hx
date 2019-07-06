package sap.ui.core.routing;

@:native("sap.ui.core.routing.Views")

/**
* null
*/
extern class Views extends sap.ui.base.EventProvider
{

	/**
	* 
	* @param	oOptions null
	* @return	Object
	*/
	public function new( ?oOptions:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.core.routing.Views with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.EventProvider.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.core.routing.Views.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns a cached view, for a given name. If it does not exist yet, it will create the view with the provided options. If you provide a viewId, it will be prefixed with the viewId of the component.
	* @param	oOptions see {@link sap.ui.view} for the documentation. The viewId you pass into the options will be prefixed with the id of the component you pass into the constructor. So you can retrieve the view later by calling the {@link sap.ui.core.UIComponent#byId} function of the UIComponent.
	* @return	A promise that is resolved when the view is loaded {@link sap.ui.core.mvc.View#loaded}. The view instance will be passed to the promise.
	*/
	public function getView( oOptions:Dynamic):js.lib.Promise<Views>;
	@:overload( function(sViewName:String, oView:sap.ui.core.mvc.View):sap.ui.core.routing.Views{ })
	@:overload( function(sViewName:String, oView:Dynamic):sap.ui.core.routing.Views{ })

	/**
	* Adds or overwrites a view in the cache of the Views instance. The viewName serves as a key for caching.

If the second parameter is set to null or undefined, the previous cache view under the same name isn't managed by the Views instance. The lifecycle (for example the destroy of the view) of the view instance should be maintained by additional code.
	* @param	sViewName Name of the view, may differ from the actual viewName of the oView parameter provided, since you can retrieve this view per {@link #.getView}.
	* @param	oView the view instance
	* @return	this for chaining.
	*/
	public function setView( sViewName:String, oView:Dynamic):sap.ui.core.routing.Views;
}

