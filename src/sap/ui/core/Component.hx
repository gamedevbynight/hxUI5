package sap.ui.core;

@:native("sap.ui.core.Component")

/**
* Base Class for Components. Components are independent and reusable parts of UI5 applications. They facilitate the encapsulation of closely related parts of an application, thus enabling developers to structure and maintain their applications more easily.
*/
extern class Component extends sap.ui.base.ManagedObject
{
	@:overload(function(?sId:String, ?mSettings:ComponentArgs):Void {})
	public function new(?mSettings:ComponentArgs):Void;

	/**
	* Asynchronously creates a new component instance from the given configuration.

If the component class does not already exists, the component class is loaded and afterwards the new component instance is created.

To optimize the loading process, additional <code>asyncHints</code> can be provided. The structure of these hints and how they impact the loading of components is an internal feature of this API and reserved for UI5 internal use only. Code that wants to be safe wrt. version updates, should not use the <code>asyncHints</code> property.

If Components and/or libraries are listed in the <code>asyncHints</code>, all the corresponding preload files will be requested in parallel, loading errors (404s) will be ignored. The constructor class will only be required after all preloads have been rejected or resolved. Only then, the new instance will be created.
	* @param	mOptions Configuration options
	* @return	A Promise that resolves with the newly created component instance
	*/
	public static function create( mOptions:Dynamic):js.lib.Promise<sap.ui.core.Component>;
	@:overload( function(vUsage:String):Dynamic{ })

	/**
	* Creates a nested component that is declared in the <code>sap.ui5/componentUsages</code> section of the descriptor (manifest.json). The following snippet shows the declaration: <pre>
{
  [...]
  "sap.ui5": {
    "componentUsages": {
      "myUsage": {
        "name": "my.useful.Component"
      }
    }
  }
  [...]
}
</pre> The syntax of the configuration object of the component usage matches the configuration object of the {#link sap.ui.component} factory function.

This is an example of how the <code>createComponent</code> function can be used for asynchronous scenarios: <pre>
oComponent.createComponent("myUsage").then(function(oComponent) {
  oComponent.doSomething();
}).catch(function(oError) {
  Log.error(oError);
});
</pre>

The following example shows how <code>createComponent</code> can be used to create a nested component by providing specific properties like <code>id</code>, <code>async</code>, <code>settings</code>, or <code>componentData</code>: <pre>
var oComponent = oComponent.createComponent({
  usage: "myUsage",
  id: "myId",
  settings: { ... },
  componentData: { ... }
});
</pre> The allowed list of properties are defined in the parameter documentation of this function.

The properties can also be defined in the descriptor. These properties can be overwritten by the local properties of that function.
	* @param	vUsage ID of the component usage or the configuration object that creates the component
	* @return	Component instance or Promise which will be resolved with the component instance (defaults to Promise / asynchronous behavior)
	*/
	public function createComponent( vUsage:Dynamic):Dynamic;

	/**
	* Creates a new subclass of class sap.ui.core.Component with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.ManagedObject.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns an existing component instance, identified by its ID.
	* @param	sId ID of the component.
	* @return	Component instance or <code>undefined</code> when no component with the given ID exists.
	*/
	public static function get( sId:String):sap.ui.core.Component;

	/**
	* Returns the list of active terminologies. See the {@link sap.ui.core.Component.create Component.create} factory API documentation for more detail.
	* @return	List of active terminologies
	*/
	public function getActiveTerminologies( ):Dynamic;

	/**
	* Returns user specific data object
	* @return	componentData
	*/
	public function getComponentData( ):Dynamic;

	/**
	* Returns the event bus of this component.
	* @return	the event bus
	*/
	public function getEventBus( ):sap.ui.core.EventBus;

	/**
	* null
	* @return	Void
	*/
	public function getInterface( ):Void;

	/**
	* Returns the manifest defined in the metadata of the component. If not specified, the return value is null.
	* @return	manifest.
	*/
	public function getManifest( ):Dynamic;

	/**
	* Returns the configuration of a manifest section or the value for a specific path. If no section or key is specified, the return value is null.

Example: <code> { "sap.ui5": { "dependencies": { "libs": { "sap.m": {} }, "components": { "my.component.a": {} } } }); </code>

The configuration above can be accessed in the following ways: <ul> <li><b>By section/namespace</b>: <code>oComponent.getManifestEntry("sap.ui5")</code></li> <li><b>By path</b>: <code>oComponent.getManifestEntry("/sap.ui5/dependencies/libs")</code></li> </ul>

By section/namespace returns the configuration for the specified manifest section and by path allows to specify a concrete path to a dedicated entry inside the manifest. The path syntax always starts with a slash (/).
	* @param	sKey Either the manifest section name (namespace) or a concrete path
	* @return	Value of the manifest section or the key (could be any kind of value)
	*/
	public function getManifestEntry( sKey:String):Dynamic;

	/**
	* Returns the manifest object.
	* @return	manifest.
	*/
	public function getManifestObject( ):sap.ui.core.Manifest;
@:overload( function():sap.ui.core.ComponentMetadata{ })

	/**
	* Returns the metadata for the Component class.
	* @return	Metadata for the Component class.
	*/
	public static function getMetadata( ):sap.ui.core.ComponentMetadata;

	/**
	* Returns the Component instance in whose "context" the given ManagedObject has been created or <code>undefined</code>.

This is a convenience wrapper around {@link sap.ui.core.Component.getOwnerIdFor Component.getOwnerIdFor}. If the owner ID cannot be determined for reasons documented on <code>getOwnerForId</code> or when the Component for the determined ID no longer exists, <code>undefined</code> will be returned.
	* @param	oObject Object to retrieve the owner Component for
	* @return	the owner Component or <code>undefined</code>.
	*/
	public static function getOwnerComponentFor( oObject:sap.ui.base.ManagedObject):sap.ui.core.Component;

	/**
	* Returns the ID of the object in whose "context" the given ManagedObject has been created.

For objects that are not ManagedObjects or for which the owner is unknown, <code>undefined</code> will be returned as owner ID.

<strong>Note</strong>: Ownership for objects is only checked by the framework at the time when they are created. It is not checked or updated afterwards. And it can only be detected while the {@link sap.ui.core.Component#runAsOwner Component.runAsOwner} function is executing. Without further action, this is only the case while the content of a UIComponent is {@link sap.ui.core.UIComponent#createContent constructed} or when a {@link sap.ui.core.routing.Router Router} creates a new View and its content.

<strong>Note</strong>: This method does not guarantee that the returned owner ID belongs to a Component. Currently, it always does. But future versions of UI5 might introduce a more fine grained ownership concept, e.g. taking Views into account. Callers that want to deal only with components as owners, should use the following method: {@link sap.ui.core.Component.getOwnerComponentFor Component.getOwnerComponentFor}. It guarantees that the returned object (if any) will be a Component.

<strong>Further note</strong> that only the ID of the owner is recorded. In rare cases, when the lifecycle of a ManagedObject is not bound to the lifecycle of its owner, (e.g. by the means of aggregations), then the owner might have been destroyed already whereas the ManagedObject is still alive. So even the existence of an owner ID is not a guarantee for the existence of the corresponding owner.
	* @param	oObject Object to retrieve the owner ID for
	* @return	ID of the owner or <code>undefined</code>
	*/
	public static function getOwnerIdFor( oObject:sap.ui.base.ManagedObject):String;

	/**
	* Returns a service interface for the {@link sap.ui.core.service.Service Service} declared in the descriptor for components (manifest.json). The declaration needs to be done in the <code>sap.ui5/services</code> section as follows: <pre>
{
  [...]
  "sap.ui5": {
    "services": {
      "myLocalServiceAlias": {
        "factoryName": "my.ServiceFactory",
        ["optional": true]
      }
    }
  }
  [...]
}
</pre> The service declaration is used to define a mapping between the local alias for the service that can be used in the Component and the name of the service factory which will be used to create a service instance.

The <code>getService</code> function will look up the service factory and will create a new instance by using the service factory function {@link sap.ui.core.service.ServiceFactory#createInstance createInstance} The optional property defines that the service is not mandatory and the usage will not depend on the availability of this service. When requesting an optional service the <code>getService</code> function will reject but there will be no error logged in the console.

When creating a new instance of the service the Component context will be passed as <code>oServiceContext</code> as follows: <pre>
{
  "scopeObject": this,     // the Component instance
  "scopeType": "component" // the stereotype of the scopeObject
}
</pre>

The service will be created only once per Component and reused in future calls to the <code>getService</code> function. <p> This function will return a <code>Promise</code> which provides the service interface when resolved. If the <code>factoryName</code> could not be found in the {@link sap.ui.core.service.ServiceFactoryRegistry Service Factory Registry} or the service declaration in the descriptor for components (manifest.json) is missing the Promise will reject.

This is an example of how the <code>getService</code> function can be used: <pre>
oComponent.getService("myLocalServiceAlias").then(function(oService) {
  oService.doSomething();
}).catch(function(oError) {
  Log.error(oError);
});
</pre>
	* @param	sLocalServiceAlias Local service alias as defined in the manifest.json
	* @return	Promise which will be resolved with the Service interface
	*/
	public function getService( sLocalServiceAlias:String):js.lib.Promise<Component>;

	/**
	* Asynchronously loads a component class without instantiating it; returns a promise on the loaded class.

Beware: "Asynchronous component loading" doesn't necessarily mean that no more synchronous loading occurs. Both the framework as well as component implementations might still execute synchronous requests. <code>Component.load</code> just allows to use async calls internally.

When a manifest is referenced in <code>mOptions</code>, this manifest is not automatically used for instances of the Component class that are created after loading. The manifest or the manifest url must be provided for every instance explicitly.

To optimize the loading process, additional <code>asyncHints</code> can be provided. If components and/or libraries are listed in the <code>asyncHints</code>, all the corresponding preload files will be requested in parallel, loading errors (404s) will be ignored. The constructor class will only be required after all preloads have been rejected or resolved. The structure of the hints and how they impact the loading of components is an internal feature of this API and reserved for UI5 internal use only. Code that wants to be safe wrt. version updates, should not use the <code>asyncHints</code> property.
	* @param	mOptions Configuration options
	* @return	A Promise that resolves with the loaded component class or <code>undefined</code> in case <code>mOptions.asyncHints.preloadOnly</code> is set to <code>true</code>
	*/
	public static function load( mOptions:Dynamic):js.lib.Promise<(Dynamic)->Void>;

	/**
	* The hook which gets called when the static configuration of the component has been changed by some configuration extension.
	* @param	sConfigKey Error message.
	* @return	Void
	*/
	public function onConfigChange( sConfigKey:String):Void;

	/**
	* The window before unload hook. Override this method in your Component class implementation, to handle cleanup before the real unload or to prompt a question to the user, if the component should be exited.
	* @return	a string if a prompt should be displayed to the user confirming closing the Component (e.g. when the Component is not yet saved).
	*/
	public function onWindowBeforeUnload( ):String;

	/**
	* The window error hook. Override this method in your Component class implementation to listen to unhandled errors.
	* @param	sMessage The error message.
	* @param	sFile File where the error occurred
	* @param	iLine Line number of the error
	* @return	Void
	*/
	public function onWindowError( sMessage:String, sFile:String, iLine:Int):Void;

	/**
	* The window unload hook. Override this method in your Component class implementation, to handle cleanup of the component once the window will be unloaded (e.g. closed).
	* @return	Void
	*/
	public function onWindowUnload( ):Void;

	/**
	* Calls the function <code>fn</code> once and marks all ManagedObjects created during that call as "owned" by this Component.

Nested calls of this method are supported (e.g. inside a newly created, nested component). The currently active owner Component will be remembered before executing <code>fn</code> and restored afterwards.
	* @param	fn Function to execute
	* @return	result of function <code>fn</code>
	*/
	public function runAsOwner( fn:(Dynamic)->Void):Dynamic;
}

typedef ComponentArgs = sap.ui.base.ManagedObject.ManagedObjectArgs & {
}
