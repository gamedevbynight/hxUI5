package sap.ui.core;

@:native("sap.ui.core.UIComponent")

/**
* Base Class for UIComponent.

If you are extending a UIComponent make sure you read the {@link #.extend} documentation since the metadata is special.
*/
extern class UIComponent extends sap.ui.core.Component
{
	@:overload(function(?sId:String, ?mSettings:UIComponentArgs):Void {})
	public function new(?mSettings:UIComponentArgs):Void;

	/**
	* Returns an element by its ID in the context of the component.
	* @param	sId Component local ID of the element
	* @return	element by its ID or <code>undefined</code>
	*/
	public function byId( sId:String):sap.ui.core.Element;

	/**
	* Hook method to create the content (UI Control Tree) of this component.

The default implementation in this class reads the name (and optionally type) of a root view from the descriptor for this component (path <code>/sap.ui5/rootView</code>) or, for backward compatibility, just the name from static component metadata (property <code>rootView</code>). When no type is specified, it defaults to XML. The method then calls the {@link sap.ui.view view factory} to instantiate the root view and returns the result.

When there is no root view configuration, <code>null</code> will be returned.

This method can be overwritten by subclasses if the default implementation doesn't fit their needs. Subclasses are not limited to views as return type but may return any control, but only a single control (can be the root of a larger control tree, however).
	* @return	Root control of the UI tree or <code>null</code> if none is configured
	*/
	public function createContent( ):Dynamic;

	/**
	* Convert the given component local element ID to a globally unique ID by prefixing it with the component ID.
	* @param	sId Component local ID of the element
	* @return	prefixed id
	*/
	public function createId( sId:String):String;

	/**
	* Creates a new subclass of class <code>sap.ui.core.UIComponent</code> with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>. <code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Component.extend}.
	* @param	sClassName Qualified name of the newly created class
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object. If not given, it defaults to an internal subclass of <code>sap.ui.core.ComponentMetadata</code>.
	* @return	Void
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):Void;

	/**
	* Returns the local ID of an element by removing the component ID prefix or <code>null</code> if the ID does not contain a prefix.
	* @param	sId Prefixed ID
	* @return	ID without prefix or <code>null</code>
	*/
	public function getLocalId( sId:String):String;

	/**
	* Returns a metadata object for class sap.ui.core.UIComponent.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ComponentMetadata;

	/**
	* Returns the reference to the router instance which has been created by the UIComponent once the routes in the routing metadata has been defined.
	* @return	the router instance
	*/
	public function getRouter( ):sap.ui.core.routing.Router;
	@:overload( function(oControllerOrView:sap.ui.core.mvc.View):sap.ui.core.routing.Router{ })

	/**
	* Returns the reference to the router instance.

The passed controller or view has to be created in the context of a UIComponent to return the router instance. Otherwise this function will return undefined. You may define the routerClass property in the config section of the routing to make the Component create your router extension.

Example: <pre>
routing: {
	config: {
		routerClass : myAppNamespace.MyRouterClass
		...
}
...
</pre>
	* @param	oControllerOrView either a view or controller
	* @return	the router instance
	*/
	public static function getRouterFor( oControllerOrView:sap.ui.core.mvc.Controller):sap.ui.core.routing.Router;

	/**
	* Returns the reference to the Targets instance which has been created by the UIComponent once the targets in the routing metadata has been defined. If routes have been defined, it will be the Targets instance created and used by the router.
	* @return	the targets instance
	*/
	public function getTargets( ):sap.ui.core.routing.Targets;

	/**
	* Returns the reference to the UIArea of the container.
	* @return	reference to the UIArea of the container
	*/
	public function getUIArea( ):sap.ui.core.UIArea;

	/**
	* Renders the root control of the UIComponent.
	* @param	oRenderManager a RenderManager instance
	* @return	Void
	*/
	public function render( oRenderManager:sap.ui.core.RenderManager):Void;

	/**
	* Sets the reference to the ComponentContainer - later required for the determination of the UIArea for the UIComponent.
	* @param	oContainer reference to a ComponentContainer
	* @return	reference to this instance to allow method chaining
	*/
	public function setContainer( oContainer:sap.ui.core.ComponentContainer):sap.ui.core.UIComponent;
}

typedef UIComponentArgs = sap.ui.core.Component.ComponentArgs & {

    /**
    * The root control of the UIComponent.

The root control should be created inside the function {@link sap.ui.core.UIComponent#createContent}.
    */
	@:optional var rootControl:haxe.extern.EitherType<String,sap.ui.core.Control>;
}
