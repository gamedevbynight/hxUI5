package sap.ui.core;

@:native("sap.ui.core.Core")

/**
* Core Class of the SAP UI Library.

This class boots the Core framework and makes it available for the application via method <code>sap.ui.getCore()</code>.

Example: <pre>

  var oCore = sap.ui.getCore();

</pre>

With methods of the Core framework you can {@link #attachInit execute code} after the framework has been initialized. It provides access to the {@link #getConfiguration configuration} and exposes events that an application or a control can register to (e.g. {@link #event:localizationChanged localizationChanged}, {@link #event:parseError parseError}, {@link #event:validationError validationError}, {@link #event:formatError formatError}, {@link #event:validationSuccess validationSuccess}).

Example: <pre>

  oCore.attachInit(function() {
    if ( oCore.getConfiguration().getRTL() ) {
      ...
    }
  });

  oCore.attachLocalizationChanged(function(oEvent) {
    ...
  });

</pre>
*/
extern class Core extends sap.ui.base.Object
{

	/**
	* Enforces an immediate update of the visible UI (aka "rendering").

In general, applications should avoid calling this method and instead let the framework manage any necessary rendering.
	* @return	Void
	*/
	public function applyChanges( ):Void;

	/**
	* Applies the theme with the given name (by loading the respective style sheets, which does not disrupt the application).

By default, the theme files are expected to be located at path relative to the respective control library ([libraryLocation]/themes/[themeName]). Different locations can be configured by using the method setThemePath() or by using the second parameter "sThemeBaseUrl" of applyTheme(). Usage of this second parameter is a shorthand for setThemePath and internally calls setThemePath, so the theme location is then known.

sThemeBaseUrl is a single URL to specify the default location of all theme files. This URL is the base folder below which the control library folders are located. E.g. if the CSS files are not located relative to the root location of UI5, but instead they are at locations like http://my.server/myapp/resources/sap/ui/core/themes/my_theme/library.css then the URL that needs to be given is: http://my.server/myapp/resources All theme resources are then loaded from below this folder - except if for a certain library a different location has been registered.

If the theme resources are not all either below this base location or with their respective libraries, then setThemePath must be used to configure individual locations.
	* @param	sThemeName the name of the theme to be loaded
	* @param	sThemeBaseUrl the (optional) base location of the theme
	* @return	Void
	*/
	public function applyTheme( sThemeName:String, ?sThemeBaseUrl:String):Void;

	/**
	* Registers a listener for control events.

When called, the context of the listener (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to a dummy event provider object.
	* @param	fnFunction Callback to be called for each control event
	* @param	oListener Optional context object to call the callback on
	* @return	Void
	*/
	public function attachControlEvent( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:formatError formatError} event of <code>sap.ui.core.Core</code>.

When called, the context of the listener (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to a dummy event provider object.

Please note that this event is a bubbling event and may already be canceled before reaching the core.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to a dummy event provider object
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachFormatError( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.core.Core;

	/**
	* Registers a given function that is executed after the framework has been initialized.

The given function will either be called as soon as the framework has been initialized or, if it has been initialized already, it will be called immediately.

More information about the initialization process and the steps it consists of can be found in the documentation topic "{@link topic:91f2c9076f4d1014b6dd926db0e91070 Initialization Process}".
	* @param	fnFunction Function to be after initialization of the framework
	* @return	Void
	*/
	public function attachInit( fnFunction:(Dynamic)->Void):Void;

	/**
	* Register a listener for the {@link #event:localizationChanged localizationChanged} event.

When called, the context of the listener (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to a dummy event provider object.
	* @param	fnFunction Callback to be called when the event occurs
	* @param	oListener Context object to call the function on
	* @return	Void
	*/
	public function attachLocalizationChanged( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:parseError parseError} event of <code>sap.ui.core.Core</code>.

When called, the context of the listener (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to a dummy event provider object.

Please note that this event is a bubbling event and may already be canceled before reaching the core.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to a dummy event provider object
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachParseError( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.core.Core;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:ThemeChanged ThemeChanged} event of this <code>sap.ui.core.Core</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to a dummy event provider object.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to a dummy event provider object
	* @return	Void
	*/
	public function attachThemeChanged( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:validationError validationError} event of <code>sap.ui.core.Core</code>.

When called, the context of the listener (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to a dummy event provider object.

Please note that this event is a bubbling event and may already be canceled before reaching the core.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to a dummy event provider object
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachValidationError( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.core.Core;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:validationSuccess validationSuccess} event of <code>sap.ui.core.Core</code>.

When called, the context of the listener (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to a dummy event provider object.

Please note that this event is a bubbling event and may already be canceled before reaching the core.
	* @param	oData The object, that should be passed along with the event-object when firing the event
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to a dummy event provider object
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachValidationSuccess( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.core.Core;
	@:overload( function(?vFieldGroupIds:String):Array<sap.ui.core.Control>{ })

	/**
	* Returns a list of all controls with a field group ID. See {@link sap.ui.core.Control#checkFieldGroupIds Control.prototype.checkFieldGroupIds} for a description of the <code>vFieldGroupIds</code> parameter.
	* @param	vFieldGroupIds ID of the field group or an array of field group IDs to match
	* @return	The list of controls with matching field group IDs
	*/
	public function byFieldGroupId( ?vFieldGroupIds:Array<String>):Array<sap.ui.core.Control>;
	@:overload( function(sId:sap.ui.core.ID):Dynamic{ })
	@:overload( function(sId:Dynamic):Dynamic{ })

	/**
	* Returns the registered element with the given ID, if any.

The ID must be the globally unique ID of an element, the same as returned by <code>oElement.getId()</code>.

When the element has been created from a declarative source (e.g. XMLView), that source might have used a shorter, non-unique local ID. A search for such a local ID cannot be executed with this method. It can only be executed on the corresponding scope (e.g. on an XMLView instance), by using the {@link sap.ui.core.mvc.View#byId View#byId} method of that scope.
	* @param	sId ID of the element to search for
	* @return	Element with the given ID or <code>undefined</code>
	*/
	public function byId( sId:Dynamic):Dynamic;
	@:overload( function(vComponent:String, ?sUrl:String, ?sId:String, ?mSettings:Dynamic):Void{ })

	/**
	* Creates a component with the provided id and settings.

When the optional parameter <code>sUrl</code> is given, then all request for resources of the library will be redirected to the given URL. This is convenience for a call to <pre>
  sap.ui.loader.config({
      paths: {
        "lib/with/slashes": vUrl
      }
  });
</pre>
	* @param	vComponent name of the component to import or object containing all needed parameters
	* @param	sUrl the URL to load the component from
	* @param	sId the ID for the component instance
	* @param	mSettings the settings object for the component
	* @return	Void
	*/
	public function createComponent( vComponent:Dynamic, ?sUrl:String, ?sId:String, ?mSettings:Dynamic):Void;

	/**
	* Returns a new instance of the RenderManager for exclusive use by the caller.

The caller must take care to destroy the render manager when it is no longer needed. Calling this method before the Core has been {@link #isInitialized initialized}, is not recommended.
	* @return	New instance of the RenderManager
	*/
	public function createRenderManager( ):sap.ui.core.RenderManager;

	/**
	* Unregisters a listener for control events.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction Function to unregister
	* @param	oListener Context object on which the given function had to be called
	* @return	Void
	*/
	public function detachControlEvent( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):Void;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:formatError formatError} event of <code>sap.ui.core.Core</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The callback function to unregister
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachFormatError( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.core.Core;

	/**
	* Unregister a listener from the {@link #event:localizationChanged localizationChanged} event.

The listener will only be unregistered if the same function/context combination is given as in the call to <code>attachLocalizationListener</code>.
	* @param	fnFunction Callback to be deregistered
	* @param	oListener Context object on which the given function had to be called
	* @return	Void
	*/
	public function detachLocalizationChanged( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):Void;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:parseError parseError} event of <code>sap.ui.core.Core</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The callback function to unregister.
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachParseError( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.core.Core;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:ThemeChanged ThemeChanged} event of this <code>sap.ui.core.Core</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Object on which the given function had to be called.
	* @return	Void
	*/
	public function detachThemeChanged( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):Void;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:validationError validationError} event of <code>sap.ui.core.Core</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The callback function to unregister
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachValidationError( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.core.Core;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:validationSuccess validationSuccess} event of <code>sap.ui.core.Core</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachValidationSuccess( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.core.Core;

	/**
	* Creates a new subclass of class sap.ui.core.Core with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns the registered component for the given id, if any.
	* @param	sId null
	* @return	the component for the given id
	*/
	public function getComponent( sId:String):sap.ui.core.Component;

	/**
	* Returns the Configuration of the Core.
	* @return	the Configuration of the current Core.
	*/
	public function getConfiguration( ):sap.ui.core.Configuration;

	/**
	* Returns the Id of the control/element currently in focus.
	* @return	the Id of the control/element currently in focus.
	*/
	public function getCurrentFocusedControlId( ):String;

	/**
	* Returns the event bus.
	* @return	the event bus
	*/
	public function getEventBus( ):sap.ui.core.EventBus;

	/**
	* Retrieves a resource bundle for the given library and locale.

If only one argument is given, it is assumed to be the libraryName. The locale then falls back to the current {@link sap.ui.core.Configuration#getLanguage session locale}. If no argument is given, the library also falls back to a default: "sap.ui.core".

<h3>Configuration via App Descriptor</h3> When the App Descriptor for the library is available without further request (manifest.json has been preloaded) and when the App Descriptor is at least of version 1.9.0 or higher, then this method will evaluate the App Descriptor entry <code>"sap.ui5" / "library" / "i18n"</code>. <ul> <li>When the entry is <code>true</code>, a bundle with the default name "messagebundle.properties" will be loaded</li> <li>If it is a string, then that string will be used as name of the bundle</li> <li>If it is <code>false</code>, no bundle will be loaded and the result will be <code>undefined</code></li> </ul>

<h3>Caching</h3> Once a resource bundle for a library has been loaded, it will be cached by this method. Further calls for the same library and locale won't create new requests, but return the already loaded bundle. There's therefore no need for control code to cache the returned bundle for a longer period of time. Not further caching the result also prevents stale texts after a locale change.

<h3>Asynchronous Loading</h3> The asynchronous variant of {@link #loadLibrary} will evaluate the same descriptor entry as described above. If it is not <code>false</code>, loading the main resource bundle of the library will become a subtask of the asynchronous loading of the library.

Due to this preload of the main bundle and the caching behavior of this method, controls in such a library still can use the synchronous variant of <code>getLibraryResourceBundle</code> in their API, behavior and rendering code. Only when the bundle is needed at module execution time (by top level code in a control module), then the asynchronous variant of this method should be preferred.
	* @param	sLibraryName Name of the library to retrieve the bundle for
	* @param	sLocale Locale to retrieve the resource bundle for
	* @param	bAsync Whether the resource bundle is loaded asynchronously
	* @return	The best matching resource bundle for the given parameters or <code>undefined</code>; in asynchronous case a Promise on that bundle is returned
	*/
	public function getLibraryResourceBundle( ?sLibraryName:String, ?sLocale:String, ?bAsync:Bool):Dynamic;

	/**
	* Returns a map of library info objects for all currently loaded libraries, keyed by their names.

The structure of the library info objects matches the structure of the info object that the {@link #initLibrary} method expects. Only property names documented with <code>initLibrary</code> should be accessed, any additional properties might change or disappear in future. When a property does not exists, its default value (as documented with <code>initLibrary</code>) should be assumed.

<b>Note:</b> The returned info objects must not be modified. They might be a living copy of the internal data (for efficiency reasons) and the framework is not prepared to handle modifications to these objects.
	* @return	Map of library info objects keyed by the library names.
	*/
	public function getLoadedLibraries( ):Map<String,Dynamic>;

	/**
	* Returns the active <code>MessageManager</code> instance.
	* @return	null
	*/
	public function getMessageManager( ):sap.ui.core.message.MessageManager;

	/**
	* Returns a metadata object for class sap.ui.core.Core.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
	@:overload( function(?sName:String):sap.ui.model.Model{ })

	/**
	* Get the model with the given model name.

The name can be omitted to reference the default model or it must be a non-empty string.

Note: to be compatible with future versions of this API, applications must not use the value <code>null</code>, the empty string <code>""</code> or the string literals <code>"null"</code> or <code>"undefined"</code> as model name.
	* @param	sName name of the model to be retrieved
	* @return	oModel
	*/
	public function getModel( ?sName:Dynamic):sap.ui.model.Model;

	/**
	* Returns the instance of the root component (if exists).
	* @return	instance of the current root component
	*/
	public function getRootComponent( ):sap.ui.core.Component;

	/**
	* Returns the static, hidden area DOM element belonging to this core instance.

It can be used e.g. for hiding elements like Popups, Shadow, Blocklayer etc.

If it is not yet available, a DIV is created and appended to the body.
	* @return	the static, hidden area DOM element belonging to this core instance.
	*/
	public function getStaticAreaRef( ):js.html.Element;
	@:overload( function(o:String):sap.ui.core.UIArea{ })

	/**
	* Returns the {@link sap.ui.core.UIArea UIArea} with the given ID or that belongs to the given DOM element.
	* @param	o DOM element or ID of the UIArea
	* @return	UIArea with the given ID or DOM element or <code>null</code> or <code>undefined</code>.
	*/
	public function getUIArea( o:js.html.Element):sap.ui.core.UIArea;

	/**
	* Returns <code>true</code> if there are any pending rendering tasks or when such rendering tasks are currently being executed.
	* @return	true if there are pending (or executing) rendering tasks.
	*/
	public function getUIDirty( ):Bool;

	/**
	* Check if a Model is set to the core
	* @return	true or false
	*/
	public function hasModel( ):Bool;

	/**
	* Includes a library theme into the current page (if a variant is specified it will include the variant library theme)
	* @param	sLibName the name of the UI library
	* @param	sVariant the variant to include (optional)
	* @param	sQuery to be used only by the Core
	* @return	Void
	*/
	public function includeLibraryTheme( sLibName:String, ?sVariant:String, ?sQuery:String):Void;

	/**
	* Provides the framework with information about a library.

This method is intended to be called exactly once while the main module of a library (its <code>library.js</code> module) is executing, typically at its begin. The single parameter <code>oLibInfo</code> is an info object that describes the content of the library.

When the <code>oLibInfo</code> has been processed, a normalized version of it will be kept and will be returned as library information in later calls to {@link #getLoadedLibraries}. Finally, <code>initLibrary</code> fires (the currently private) {@link #event:LibraryChanged} event with operation 'add' for the newly loaded library.

<h3>Side Effects</h3>

While analyzing the <code>oLibInfo</code>, the framework takes some additional actions:

<ul> <li>If the info object contains a list of <code>interfaces</code>, they will be registered with the {@link sap.ui.base.DataType} class to make them available as aggregation types in managed objects.</li>

<li>If the object contains a list of <code>controls</code> or <code>elements</code>, {@link sap.ui.lazyRequire lazy stubs} will be created for their constructor as well as for their static <code>extend</code> and <code>getMetadata</code> methods.<br> <b>Note:</b> Future versions might abandon the concept of lazy stubs as it requires synchronous XMLHttpRequests which have been deprecated (see {@link http://xhr.spec.whatwg.org}). To be on the safe side, productive applications should always require any modules that they directly depend on.</li>

<li>With the <code>noLibraryCSS</code> property, the library can be marked as 'theming-free'. Otherwise, the framework will add a &lt;link&gt; tag to the page's head, pointing to the library's theme-specific stylesheet. The creation of such a &lt;link&gt; tag can be suppressed with the {@link sap.ui.core.Configuration global configuration option} <code>preloadLibCss</code>. It can contain a list of library names for which no stylesheet should be included. This is e.g. useful when an application merges the CSS for multiple libraries and already loaded the resulting stylesheet.</li>

<li>If a list of library <code>dependencies</code> is specified in the info object, those libraries will be loaded synchronously by <code>initLibrary</code>.<br> <b>Note:</b> Dependencies between libraries don't have to be modeled as AMD dependencies. Only when enums or types from an additional library are used in the coding of the <code>library.js</code> module, the library should be additionally listed in the AMD dependencies.</li> </ul>

Last but not least, higher layer frameworks might want to include their own metadata for libraries. The property <code>extensions</code> might contain such additional metadata. Its structure is not defined by the framework, but it is strongly suggested that each extension only occupies a single property in the <code>extensions</code> object and that the name of that property contains some namespace information (e.g. library name that introduces the feature) to avoid conflicts with other extensions. The framework won't touch the content of <code>extensions</code> but will make it available in the library info objects returned by {@link #getLoadedLibraries}.

<h3>Relationship to Descriptor for Libraries (manifest.json)</h3>

The information contained in <code>oLibInfo</code> is partially redundant to the content of the descriptor for the same library (its <code>manifest.json</code> file). Future versions of UI5 might ignore the information provided in <code>oLibInfo</code> and might evaluate the descriptor file instead. Library developers therefore should keep the information in both files in sync.

When the <code>manifest.json</code> is generated from the <code>.library</code> file (which is the default for UI5 libraries built with Maven), then the content of the <code>.library</code> and <code>library.js</code> files must be kept in sync.
	* @param	oLibInfo Info object for the library
	* @return	Void
	*/
	public function initLibrary( oLibInfo:Dynamic):Void;

	/**
	* Returns true if the Core has already been initialized. This means that instances of RenderManager etc. do already exist and the init event has already been fired (and will not be fired again).
	* @return	whether the Core has already been initialized
	*/
	public function isInitialized( ):Bool;

	/**
	* Returns the locked state of the <code>sap.ui.core.Core</code>
	* @return	locked state
	*/
	public function isLocked( ):Bool;

	/**
	* Check if the script is running on mobile
	* @return	true or false
	*/
	public function isMobile( ):Bool;

	/**
	* Returns true, if the styles of the current theme are already applied, false otherwise.

This function must not be used before the init event of the Core. If the styles are not yet applied a theme changed event will follow when the styles will be applied.
	* @return	whether the styles of the current theme are already applied
	*/
	public function isThemeApplied( ):Bool;
	@:overload( function(sLibrary:String, ?vUrl:String):Dynamic{ })
	@:overload( function(sLibrary:String, ?vUrl:Bool):Dynamic{ })

	/**
	* Loads the given library and its dependencies and makes its content available to the application.

<h3>What it does</h3>

When library preloads are not suppressed for the given library, then a library-preload bundle will be loaded for it. By default, the bundle will be loaded synchronously (for compatibility reasons). Only when the optional parameter <code>vUrl</code> is given as <code>true</code> or as a configuration object with a property of <code>async:true</code>, then the bundle will be loaded asynchronously and a <code>Promise</code> will be returned (preferred usage).

After preloading the bundle, dependency information from the bundle is evaluated and any missing libraries are also preloaded.

Only then the library entry module (named <code><i>your/lib</i>/library.js</code>) will be required and executed. The module is supposed to call <code>sap.ui.getCore().initLibrary(...)</code> providing the framework with additional metadata about the library, e.g. its version, the set of contained enums, types, interfaces, controls and elements and whether the library requires CSS. If the library requires CSS, a &lt;link&gt; will be added to the page referring to the corresponding <code>library.css</code> stylesheet for the library and the current theme.

When the optional parameter <code>vUrl</code> is given as a string or when a configuration object is given with a non-empty, string-valued property <code>url</code>, then that URL will be registered for the namespace of the library and all resources will be loaded from that location. This is convenience for a call like <pre>
  sap.ui.loader.config({
    paths: {
      "lib/with/slashes": vUrl
    }
  });
</pre>

When the given library has been loaded already, no further action will be taken, especially, a given URL will not be registered! In the case of asynchronous loading, a Promise will be returned, but will be resolved immediately.

<h3>When to use</h3>

For applications that follow the best practices and use components with component descriptors (manifest.json), the framework will load all declared mandatory libraries and their dependencies automatically before instantiating the application component.

The same is true for libraries that are listed in the bootstrap configuration (e.g. with the attribute <code>data-sap-ui-libs</code>). They will be loaded before the <code>init</code> event of the UI5 Core is fired.

Only when an app declares a library to be a lazy library dependency or when code does not use descriptors at all, then an explicit call to <code>loadLibrary</code> becomes necessary. The call should be made before artifacts (controls, elements, types, helpers, modules etc.) from the library are used or required. This allows the framework to optimize access to those artifacts.

For example, when an app uses a heavy-weight charting library that shouldn't be loaded during startup, it can declare it as "lazy" and load it just before it loads and displays a view that uses the charting library: <pre>
  sap.ui.getCore().loadLibrary("heavy.charting", {async: true})
    .then(function() {
      View.create({
        name: "myapp.views.HeavyChartingView",
        type: ViewType.XML
      });
    });
</pre>
	* @param	sLibrary name of the library to load
	* @param	vUrl URL to load the library from or the async flag or a complex configuration object
	* @return	An info object for the library (sync) or a Promise (async)
	*/
	public function loadLibrary( sLibrary:String, ?vUrl:Dynamic):Dynamic;

	/**
	* Locks the Core. No browser events are dispatched to the controls.

Lock should be called before and after the DOM is modified for rendering, roundtrips... Exceptions might be the case for asynchronous UI behavior
	* @return	Void
	*/
	public function lock( ):Void;

	/**
	* Triggers a realignment of controls

This method should be called after changing the cozy/compact CSS class of a DOM element at runtime, for example at the <code>&lt;body&gt;</code> tag. Controls can listen to the themeChanged event to realign their appearance after changing the theme. Changing the cozy/compact CSS class should then also be handled as a theme change. In more simple scenarios where the cozy/compact CSS class is added to a DOM element which contains only a few controls it might not be necessary to trigger the realigment of all controls placed in the DOM, for example changing the cozy/compact CSS class at a single control
	* @return	Void
	*/
	public function notifyContentDensityChanged( ):Void;

	/**
	* Sets or unsets a model for the given model name.

The <code>sName</code> must either be <code>undefined</code> (or omitted) or a non-empty string. When the name is omitted, the default model is set/unset.

When <code>oModel</code> is <code>null</code> or <code>undefined</code>, a previously set model with that name is removed from the Core.

Any change (new model, removed model) is propagated to all existing UIAreas and their descendants as long as a descendant doesn't have its own model set for the given name.

Note: to be compatible with future versions of this API, applications must not use the value <code>null</code>, the empty string <code>""</code> or the string literals <code>"null"</code> or <code>"undefined"</code> as model name.
	* @param	oModel the model to be set or <code>null</code> or <code>undefined</code>
	* @param	sName the name of the model or <code>undefined</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setModel( oModel:sap.ui.model.Model, ?sName:String):sap.ui.core.Core;

	/**
	* Defines the root directory from below which UI5 should load the theme with the given name. Optionally allows restricting the setting to parts of a theme covering specific control libraries.

Example: <pre>
  sap.ui.getCore().setThemeRoot("my_theme", "https://mythemeserver.com/allThemes");
  sap.ui.getCore().applyTheme("my_theme");
</pre>

will cause the following file to be loaded (assuming that the bootstrap is configured to load libraries <code>sap.m</code> and <code>sap.ui.layout</code>): <pre>
  https://mythemeserver.com/allThemes/sap/ui/core/themes/my_theme/library.css
  https://mythemeserver.com/allThemes/sap/ui/layout/themes/my_theme/library.css
  https://mythemeserver.com/allThemes/sap/m/themes/my_theme/library.css
</pre>

If parts of the theme are at different locations (e.g. because you provide a standard theme like "sap_belize" for a custom control library and this self-made part of the standard theme is at a different location than the UI5 resources), you can also specify for which control libraries the setting should be used, by giving an array with the names of the respective control libraries as second parameter: <pre>
  sap.ui.getCore().setThemeRoot("sap_belize", ["my.own.library"], "https://mythemeserver.com/allThemes");
</pre>

This will cause the Belize theme to be loaded from the UI5 location for all standard libraries. Resources for styling the <code>my.own.library</code> controls will be loaded from the configured location: <pre>
  https://openui5.hana.ondemand.com/resources/sap/ui/core/themes/sap_belize/library.css
  https://openui5.hana.ondemand.com/resources/sap/ui/layout/themes/sap_belize/library.css
  https://openui5.hana.ondemand.com/resources/sap/m/themes/sap_belize/library.css
  https://mythemeserver.com/allThemes/my/own/library/themes/sap_belize/library.css
</pre>

If the custom theme should be loaded initially (via bootstrap attribute), the <code>themeRoots</code> property of the <code>window["sap-ui-config"]</code> object must be used instead of calling <code>sap.ui.getCore().setThemeRoot(...)</code> in order to configure the theme location early enough.
	* @param	sThemeName Name of the theme for which to configure the location
	* @param	aLibraryNames Optional library names to which the configuration should be restricted
	* @param	sThemeBaseUrl Base URL below which the CSS file(s) will be loaded from
	* @param	bForceUpdate Force updating URLs of currently loaded theme
	* @return	the Core, to allow method chaining
	*/
	public function setThemeRoot( sThemeName:String, ?aLibraryNames:Array<String>, sThemeBaseUrl:String, ?bForceUpdate:Bool):sap.ui.core.Core;

	/**
	* Unlocks the Core.

Browser events are dispatched to the controls again after this method is called.
	* @return	Void
	*/
	public function unlock( ):Void;
}

