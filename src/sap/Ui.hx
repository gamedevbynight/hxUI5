package sap;

@:native("sap.ui")
extern class Ui
{
	@:overload( function(?sModuleName:String, ?aDependencies:Array<String>, vFactory:(Dynamic)->Void, ?bExport:Bool):Void{ })

	/**
	* Defines a JavaScript module with its ID, its dependencies and a module export value or factory.

The typical and only suggested usage of this method is to have one single, top level call to <code>sap.ui.define</code> in one JavaScript resource (file). When a module is requested by its module ID for the first time, the corresponding resource is determined from the ID and the current {@link sap.ui.loader.config configuration}. The resource will be loaded and executed which in turn will execute the top level <code>sap.ui.define</code> call.

If the module ID was omitted from that call, it will be substituted by the ID that was used to request the module. As a preparation step, the dependencies as well as their transitive dependencies, will be loaded. Then, the module value (its export) will be determined: if a static value (object, literal) was given as <code>vFactory</code>, that value will be the module value. If a function was given, that function will be called (providing the module exports of the declared dependencies as parameters to the function) and its return value will be used as module export value. The framework internally associates the resulting value with the module ID and provides it to the original requester of the module. Whenever the module is requested again, the same export value will be returned (modules are executed only once).

<i>Example:</i><br> The following example defines a module, but doesn't hard code the module ID. If stored in a file 'sap/mylib/SomeClass.js', it can be requested with the ID 'sap/mylib/SomeClass'. <pre>
  sap.ui.define(['./Helper', 'sap/m/Bar'], function(Helper,Bar) {

    // create a new class
    var SomeClass = function() {};

    // add methods to its prototype
    SomeClass.prototype.foo = function() {

        // use a function from the dependency 'Helper' in the same package (e.g. 'sap/mylib/Helper' )
        var mSettings = Helper.foo();

        // create and return an sap.m.Bar (using its local name 'Bar')
        return new Bar(mSettings);

    }

    // return the class as module value
    return SomeClass;

  });
</pre>

In another module or in an application HTML page, the {@link sap.ui.require} API can be used to load the sap/mylib/Something module and to work with it:

<pre>
sap.ui.require(['sap/mylib/Something'], function(Something) {

  // instantiate a Something and call foo() on it
  new Something().foo();

});
</pre>

<h3>Module Name Syntax</h3>

<code>sap.ui.define</code> uses a simplified variant of the {@link jQuery.sap.getResourcePath unified resource name} syntax for the module's own name as well as for its dependencies. The only difference to that syntax is, that for <code>sap.ui.define</code> and <code>sap.ui.require</code>, the extension (which always would be '.js') has to be omitted. Both methods always add this extension internally.

As a convenience, the name of a dependency can start with the segment './' which will be replaced by the name of the package that contains the currently defined module (relative name).

It is best practice to omit the name of the defined module (first parameter) and to use relative names for the dependencies whenever possible. This reduces the necessary configuration, simplifies renaming of packages and allows to map them to a different namespace.

<h3>Dependency to Modules</h3>

If a dependencies array is given, each entry represents the name of another module that the currently defined module depends on. All dependency modules are loaded before the export of the currently defined module is determined. The module export of each dependency module will be provided as a parameter to a factory function, the order of the parameters will match the order of the modules in the dependencies array.

<b>Note:</b> The order in which the dependency modules are <i>executed</i> is <b>not</b> defined by the order in the dependencies array! The execution order is affected by dependencies <i>between</i> the dependency modules as well as by their current state (whether a module already has been loaded or not). Neither module implementations nor dependents that require a module set must make any assumption about the execution order (other than expressed by their dependencies).

<b>Note:</b> A static module export (a literal provided to <code>sap.ui.define</code>) cannot depend on the module exports of the dependency modules as it has to be calculated before the dependencies are resolved. As an alternative, modules can define a factory function, calculate a static export value in that function, potentially based on the dependencies, and return the result as module export value. The same approach must be taken when the module export is supposed to be a function.

<h3>Asynchronous Contract</h3>

<code>sap.ui.define</code> is designed to support real Asynchronous Module Definitions (AMD) in future, although it internally still might use synchronous module loading, depending on configuration and context. However, callers of <code>sap.ui.define</code> must never rely on any synchronous behavior that they might observe in a specific test scenario.

For example, callers of <code>sap.ui.define</code> must not use the module export value immediately after invoking <code>sap.ui.define</code>:

<pre>
  // COUNTER EXAMPLE HOW __NOT__ TO DO IT

  // define a class Something as AMD module
  sap.ui.define('Something', [], function() {
    var Something = function() {};
    return Something;
  });

  // DON'T DO THAT!
  // accessing the class _synchronously_ after sap.ui.define was called
  new Something();

</pre>

Applications that need to ensure synchronous module definition or synchronous loading of dependencies <b>MUST</b> use the deprecated legacy APIs {@link jQuery.sap.declare} and {@link jQuery.sap.require}.

<h3>(No) Global References</h3>

To be in line with AMD best practices, modules defined with <code>sap.ui.define</code> should not make any use of global variables if those variables are also available as module exports. Instead, they should add dependencies to those modules and use the corresponding parameter of the factory function to access the module exports.

As the current programming model and the documentation of UI5 heavily rely on global names, there will be a transition phase where UI5 enables AMD modules and local references to module exports in parallel to the old global names. The fourth parameter of <code>sap.ui.define</code> has been added to support that transition phase. When this parameter is set to true, the framework provides two additional features

<ol> <li>Before the factory function is called, the existence of the global parent namespace for the current module is ensured</li> <li>The module export returned by the module's factory function will be automatically exported under the global name which is derived from the ID of the module</li> </ol>

The parameter lets the framework know whether any of those two operations is needed or not. In future versions of UI5, a central configuration option is planned to suppress those 'exports'.

<h3>Third Party Modules</h3> Although third party modules don't use UI5 APIs, they still can be listed as dependencies in a <code>sap.ui.define</code> call. They will be requested and executed like UI5 modules, but to make their exports available, so called <em>shims</em> have to be defined.

Note that UI5 temporarily deactivates an existing AMD loader while it executes third party modules known to support AMD. This sounds contradictorily at a first glance as UI5 wants to support AMD, but for now it is necessary to fully support UI5 applications that rely on global names for such modules.

For third-party modules that UI5 delivers (e.g. those in namespace <code>sap/ui/thirdparty/</code>), the necessary shims are defined by UI5 itself by executing the private module <code>ui5loader-autoconfig.js</code> during bootstrap.

Example: <pre>
  // module 'Something' wants to use third party library 'URI.js'
  // It is packaged by UI5 as non-UI5-module 'sap/ui/thirdparty/URI'
  // the following shim helps UI5 to correctly load URI.js and to retrieve the module's export value
  // Apps don't have to define that shim, it is already applied by ui5loader-autconfig.js
  sap.ui.loader.config({
    shim: {
      'sap/ui/thirdparty/URI': {
         amd: true, // URI.js reacts on an AMD loader, this flag lets UI5 temp. disable such loaders
         exports: 'URI' // name of the global variable under which URI.js exports its module value
      }
    }
  });

  // now the module can be retrieved like other modules
  sap.ui.define('Something', ['sap/ui/thirdparty/URI'], function(URIModuleValue) {

    new URIModuleValue(...); // same as the global 'URI' name: new URI(...)

    ...
  });
</pre>

<h3>Differences to Standard AMD</h3>

The current implementation of <code>sap.ui.define</code> differs from the AMD specification (https://github.com/amdjs/amdjs-api) or from concrete AMD loaders like <code>requireJS</code> in several aspects: <ul> <li>The name <code>sap.ui.define</code> is different from the plain <code>define</code>. This has two reasons: first, it avoids the impression that <code>sap.ui.define</code> is an exact implementation of an AMD loader. And second, it allows the coexistence of an AMD loader (e.g. requireJS) and <code>sap.ui.define</code> in one application as long as UI5 or applications using UI5 are not fully prepared to run with an AMD loader. Note that the difference of the API names also implies that the UI5 loader can't be used to load 'real' AMD modules as they expect methods <code>define</code> and <code>require</code> to be available. Modules that use Unified Module Definition (UMD) syntax, can be loaded, but only when no AMD loader is present or when they expose their export also to the global namespace, even when an AMD loader is present (as e.g. jQuery does) or when a shim is defined for them using the <code>amd:true</code> flag (see example above)</li> <li>Depending on configuration and the current context, <code>sap.ui.define</code> loads the dependencies of a module either synchronously using a sync XHR call + eval or asynchronously via script tags. The sync loading is basically a tribute to the synchronous history of UI5. There's no way for a module developer to enforce synchronous loading of the dependencies and on the long run, sync loading will be faded out. Applications that need to ensure synchronous loading of dependencies <b>MUST</b> use the deprecated legacy APIs like {@link jQuery.sap.require}.</li> <li><code>sap.ui.define</code> does not support plugins to use other file types, formats or protocols. It is not planned to support this in future</li> <li><code>sap.ui.define</code> does not support absolute URLs as module names (dependencies) nor does it allow module names that start with a slash. To refer to a module at an absolute URL, a resource root can be registered that points to that URL (or to a prefix of it).</li> <li><code>sap.ui.define</code> does <b>not</b> support the 'sugar' of requireJS where CommonJS style dependency declarations using <code>sap.ui.require("something")</code> are automagically converted into <code>sap.ui.define</code> dependencies before executing the factory function.</li> </ul>

<h3>Limitations, Design Considerations</h3> <ul> <li><b>Limitation</b>: as dependency management is not supported for Non-UI5 modules, the only way to ensure proper execution order for such modules currently is to rely on the order in the dependency array. Obviously, this only works as long as <code>sap.ui.define</code> uses synchronous loading. It will be enhanced when asynchronous loading is implemented.</li> <li>It was discussed to enforce asynchronous execution of the module factory function (e.g. with a timeout of 0). But this would have invalidated the current migration scenario where a sync <code>jQuery.sap.require</code> call can load a <code>sap.ui.define</code>'ed module. If the module definition would not execute synchronously, the synchronous contract of the require call would be broken (default behavior in existing UI5 applications)</li> <li>A single file must not contain multiple calls to <code>sap.ui.define</code>. Multiple calls currently are only supported in the so called 'preload' files that the UI5 merge tooling produces. The exact details of how this works might be changed in future implementations and are not part of the API contract</li> </ul>
	* @param	sModuleName ID of the module in simplified resource name syntax. When omitted, the loader determines the ID from the request.
	* @param	aDependencies List of dependencies of the module
	* @param	vFactory The module export value or a function that calculates that value
	* @param	bExport Whether an export to global names is required - should be used by SAP-owned code only
	* @return	Void
	*/
	public static function define( ?sModuleName:String, ?aDependencies:Array<String>, vFactory:Dynamic, ?bExport:Bool):Void;

	/**
	* Retrieve the {@link sap.ui.core.Core SAPUI5 Core} instance for the current window.
	* @return	the API of the current SAPUI5 Core instance.
	*/
	public static function getCore( ):sap.ui.core.Core;
	@:overload( function(vDependencies:String, ?fnCallback:(Dynamic)->Void, ?fnErrback:(Dynamic)->Void):Dynamic{ })

	/**
	* Resolves one or more module dependencies.

<h3>Synchronous Retrieval of a Single Module Export Value (Probing)</h3>

When called with a single string, that string is assumed to be the ID of an already loaded module and the export of that module is returned. If the module has not been loaded yet, or if it is a Non-UI5 module (e.g. third-party module) without a shim, <code>undefined</code> is returned.

This signature variant allows synchronous access to module exports without initiating module loading.

Sample: <pre>
  var JSONModel = sap.ui.require("sap/ui/model/json/JSONModel");
</pre>

For modules that are known to be UI5 modules, this signature variant can be used to check whether the module has been loaded.

<h3>Asynchronous Loading of Multiple Modules</h3>

If an array of strings is given and (optionally) a callback function, then the strings are interpreted as module IDs and the corresponding modules (and their transitive dependencies) are loaded. Then the callback function will be called asynchronously. The module exports of the specified modules will be provided as parameters to the callback function in the same order in which they appeared in the dependencies array.

The return value for the asynchronous use case is <code>undefined</code>.

<pre>
  sap.ui.require(['sap/ui/model/json/JSONModel', 'sap/ui/core/UIComponent'], function(JSONModel,UIComponent) {

    var MyComponent = UIComponent.extend('MyComponent', {
      ...
    });
    ...

  });
</pre>

This method uses the same variation of the {@link jQuery.sap.getResourcePath unified resource name} syntax that {@link sap.ui.define} uses: module names are specified without the implicit extension '.js'. Relative module names are not supported.
	* @param	vDependencies Dependency (dependencies) to resolve
	* @param	fnCallback Callback function to execute after resolving an array of dependencies
	* @param	fnErrback Callback function to execute if an error was detected while loading the dependencies or executing the factory function. Note that due to browser limitations not all errors will be reported via this callback. In general, module loading is designed for the non-error case. Error handling is not complete.
	* @return	A single module export value (sync probing variant) or undefined (async loading variant)
	*/
	public static function require( vDependencies:Array<String>, ?fnCallback:(Dynamic)->Void, ?fnErrback:(Dynamic)->Void):Dynamic;
}

