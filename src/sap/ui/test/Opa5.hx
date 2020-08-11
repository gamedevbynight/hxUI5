package sap.ui.test;

@:native("sap.ui.test.Opa5")

/**
* UI5 extension of the OPA framework.

Helps you when writing tests for UI5 apps. Provides convenience to wait and retrieve for UI5 controls without relying on global IDs. Makes it easy to wait until your UI is in the state you need for testing, for example waiting for back-end data.
*/
extern class Opa5 extends sap.ui.base.Object
{
public function new():Void;

	/**
	* Creates a set of page objects, each consisting of actions and assertions and adds them to the Opa configuration.

Use page objects to structure your actions and assertions based on parts of the screen. This helps to avoid name clashes and to structure your tests.
	* @param	mPageObjects Multiple page objects are possible, provide at least actions or assertions
	* @return	The created page object. It will look like this: <pre>
    {
      &lt;your-page-object-name&gt; : {
        actions: // an instance of baseClass or Opa5 with all the actions defined above
        assertions: // an instance of baseClass or Opa5 with all the assertions defined above
      }
    }
  </pre>
	*/
	public static function createPageObjects( mPageObjects:Map<String,sap.ui.test.PageObjectDefinition>):Map<String,Dynamic>;

	/**
	* Waits until all waitFor calls are done See {@link sap.ui.test.Opa.emptyQueue} for the description
	* @return	If the waiting was successful, the promise will be resolved. If not it will be rejected
	*/
	public static function emptyQueue( ):jquery.promise;

	/**
	* Extends and overwrites default values of the {@link sap.ui.test.Opa.config}. Most frequent usecase: <pre>
    <code>
        // Every waitFor will append this namespace in front of your viewName
        Opa5.extendConfig({
           viewNamespace: "namespace.of.my.views."
        });

        var oOpa = new Opa5();

        // Looks for a control with the id "myButton" in a View with the name "namespace.of.my.views.Detail"
        oOpa.waitFor({
             id: "myButton",
             viewName: "Detail"
        });

        // Looks for a control with the id "myList" in a View with the name "namespace.of.my.views.Master"
        oOpa.waitFor({
             id: "myList",
             viewName: "Master"
        });
    </code>
</pre>

Sample usage: <pre>
    <code>
        var oOpa = new Opa5();

        // this statement will  will time out after 15 seconds and poll every 400ms.
        // those two values come from the defaults of {@link sap.ui.test.Opa.config}.
        oOpa.waitFor({
        });

        // All wait for statements added after this will take other defaults
        Opa5.extendConfig({
            timeout: 10,
            pollingInterval: 100
        });

        // this statement will time out after 10 seconds and poll every 100 ms
        oOpa.waitFor({
        });

        // this statement will time out after 20 seconds and poll every 100 ms
        oOpa.waitFor({
            timeout: 20;
        });
    </code>
</pre>
	* @param	options The values to be added to the existing config
	* @return	Void
	*/
	public static function extendConfig( options:Dynamic):Void;

	/**
	* Gives access to a singleton object you can save values in. See {@link sap.ui.test.Opa.getContext} for the description
	* @return	the context object
	*/
	public static function getContext( ):Dynamic;

	/**
	* Returns the HashChanger object in the current context. If an iframe is launched, it will return the iframe's HashChanger.
	* @return	The HashChanger instance
	*/
	public static function getHashChanger( ):sap.ui.core.routing.HashChanger;

	/**
	* Returns the jQuery object in the current context. If an iframe is launched, it will return the iframe's jQuery object.
	* @return	The jQuery object
	*/
	public static function getJQuery( ):Dynamic;

	/**
	* Returns the Opa plugin used for retrieving controls. If an iframe is launched, it will return the iframe's plugin.
	* @return	The plugin instance
	*/
	public static function getPlugin( ):sap.ui.test.OpaPlugin;

	/**
	* Return particular test lib config object. This method is intended to be used by test libraries to access their configuration provided by the test in the testLibs section in {@link sap.ui.test.Opa5.extendConfig}
	* @param	sTestLibName test library name
	* @return	this test library config object or empty object if configuration is not provided
	*/
	public static function getTestLibConfig( sTestLibName:String):Dynamic;

	/**
	* Returns the QUnit utils object in the current context. If an iframe is launched, it will return the iframe's QUnit utils.
	* @return	The QUnit utils
	*/
	public static function getUtils( ):sap.ui.test.qunit;

	/**
	* Returns the window object in the current context. If an iframe is launched, it will return the iframe's window.
	* @return	The window of the iframe
	*/
	public static function getWindow( ):Window;

	/**
	* Checks if the application has been started using {@link sap.ui.test.Opa5#iStartMyAppInAFrame} or {@link sap.ui.test.Opa5#iStartMyUIComponent}
	* @return	A boolean indicating whether the application has been started regardless of how it was started
	*/
	public function hasAppStarted( ):Bool;

	/**
	* Checks if the application has been started using {@link sap.ui.test.Opa5#iStartMyAppInAFrame}
	* @return	A boolean indicating whether the application has been started in an iframe
	*/
	public function hasAppStartedInAFrame( ):Bool;

	/**
	* Checks if the application has been started using {@link sap.ui.test.Opa5#iStartMyUIComponent}
	* @return	A boolean indicating whether the application has been started as a UIComponent
	*/
	public function hasUIComponentStarted( ):Bool;
	@:overload( function(vSourceOrOptions:String, ?iTimeout:String, ?autoWait:Bool, ?width:String, ?height:String):jquery.promise{ })
	@:overload( function(vSourceOrOptions:String, ?iTimeout:String, ?autoWait:Bool, ?width:String, ?height:String):jquery.promise{ })
	@:overload( function(vSourceOrOptions:String, ?iTimeout:String, ?autoWait:Bool, ?width:String, ?height:String):jquery.promise{ })
	@:overload( function(vSourceOrOptions:String, ?iTimeout:String, ?autoWait:Bool, ?width:String, ?height:String):jquery.promise{ })
	@:overload( function(vSourceOrOptions:Dynamic, ?iTimeout:String, ?autoWait:Bool, ?width:String, ?height:String):jquery.promise{ })
	@:overload( function(vSourceOrOptions:Dynamic, ?iTimeout:String, ?autoWait:Bool, ?width:String, ?height:String):jquery.promise{ })
	@:overload( function(vSourceOrOptions:Dynamic, ?iTimeout:String, ?autoWait:Bool, ?width:String, ?height:String):jquery.promise{ })

	/**
	* Starts an app in an iframe. Only works reliably if running on the same server.
	* @param	vSourceOrOptions The source URL of the iframe or, since 1.53, you can provide a startup configuration object as the only parameter.
	* @param	iTimeout The timeout for loading the iframe in seconds - default is 80.
	* @param	autoWait Since 1.53, activates autoWait while the application is starting up. This allows more time for application startup and stabilizes tests for slow-loading applications. This parameter is false by default, regardless of the global autoWait value, to prevent issues in existing tests.
	* @param	width Since 1.57, sets a fixed width for the iframe.
	* @param	height Since 1.57, sets a fixed height for the iframe. Setting width and/or height is useful when testing responsive applications on screens of varying sizes. By default, the iframe dimensions are 60% of the outer window dimensions.
	* @return	A promise that gets resolved on success
	*/
	public static function iStartMyAppInAFrame( vSourceOrOptions:Dynamic, ?iTimeout:String, ?autoWait:Bool, ?width:String, ?height:String):jquery.promise;

	/**
	* Starts a UIComponent.
	* @param	oOptions An Object that contains the configuration for starting up a UIComponent.
	* @return	A promise that gets resolved on success.
	*/
	public function iStartMyUIComponent( oOptions:Dynamic):jquery.promise;

	/**
	* Tears down the started application regardless of how it was started. Removes the iframe launched by {@link sap.ui.test.Opa5#iStartMyAppInAFrame} or destroys the UIComponent launched by {@link sap.ui.test.Opa5#iStartMyUIComponent}. This function is designed to make the test's teardown independent of the startup. Use {@link sap.ui.test.Opa5#hasAppStarted} to ensure that the application has been started and teardown can be safely performed.
	* @return	A promise that gets resolved on success. If nothing has been started or an error occurs, the promise is rejected with the options object. A detailed error message containing the stack trace and Opa logs is available in options.errorMessage.
	*/
	public function iTeardownMyApp( ):jquery.promise;
@:overload( function():jquery.promise{ })

	/**
	* Removes the iframe from the DOM and removes all the references to its objects. Use {@link sap.ui.test.Opa5#hasAppStartedInAFrame} to ensure that an iframe has been started and teardown can be safely performed.
	* @return	A promise that gets resolved on success. If no iframe has been created or an error occurs, the promise is rejected with the options object. A detailed error message containing the stack trace and Opa logs is available in options.errorMessage.
	*/
	public static function iTeardownMyAppFrame( ):jquery.promise;

	/**
	* Destroys the UIComponent and removes the div from the dom like all the references on its objects. Use {@link sap.ui.test.Opa5#hasUIComponentStarted} to ensure that a UIComponent has been started and teardown can be safely performed.
	* @return	a promise that gets resolved on success. If no UIComponent has been started or an error occurs, the promise is rejected with the options object. A detailed error message containing the stack trace and Opa logs is available in options.errorMessage.
	*/
	public function iTeardownMyUIComponent( ):jquery.promise;
	@:overload( function(oPromise:jquery.promise):jquery.promise{ })

	/**
	* Schedule a promise on the OPA5 queue.The promise will be executed in order with all waitFors - any subsequent waitFor will be executed after the promise is done. The promise is not directly chained, but instead its result is awaited in a new waitFor statement. This means that any "thenable" should be acceptable.
	* @param	oPromise promise to schedule on the OPA5 queue
	* @return	promise which is the result of a {@link sap.ui.test.Opa5.waitFor}
	*/
	public function iWaitForPromise( oPromise:js.lib.Promise<Opa5>):jquery.promise;

	/**
	* Resets Opa.config to its default values. See {@link sap.ui.test.Opa5#waitFor} for the description Default values for OPA5 are: <ul> <li>viewNamespace: empty string</li> <li>arrangements: instance of OPA5</li> <li>actions: instance of OPA5</li> <li>assertions: instance of OPA5</li> <li>visible: true</li> <li>enabled: false</li> <li>editable: false</li> <li>timeout : 15 seconds, 0 for infinite timeout</li> <li>pollingInterval: 400 milliseconds</li> <li>debugTimeout: 0 seconds, infinite timeout by default. This will be used instead of timeout if running in debug mode.</li> <li>autoWait: false - since 1.42</li> <li>appParams: object with URI parameters for the tested app - since 1.48</li> </ul>
	* @return	Void
	*/
	public static function resetConfig( ):Void;

	/**
	* Clears the queue and stops running tests so that new tests can be run. This means all waitFor statements registered by {@link sap.ui.test.Opa5#waitFor} will not be invoked anymore and the promise returned by {@link sap.ui.test.Opa5.emptyQueue} will be rejected. When its called inside of a check in {@link sap.ui.test.Opa5#waitFor} the success function of this waitFor will not be called.
	* @return	Void
	*/
	public static function stopQueue( ):Void;

	/**
	* Takes a superset of the parameters of {@link sap.ui.test.Opa#waitFor}.
	* @param	options An object containing conditions for waiting and callbacks.

The allowed keys are listed below. If a key is not allowed, an error is thrown, stating that "the parameter is not defined in the API".

As of version 1.72, in addition to the listed keys, declarative matchers are also allowed. Any matchers declared on the root level of the options object are merged with those declared in <code>options.matchers</code>. For details on declarative matchers, see the <code>options.matchers</code> property.
	* @return	an object extending a jQuery promise. The object is essentially a jQuery promise with an additional "and" method that can be used for chaining waitFor statements. The promise is resolved when the waitFor completes successfully. The promise is rejected with the options object, if an error occurs. In this case, options.errorMessage will contain a detailed error message containing the stack trace and Opa logs.
	*/
	public function waitFor( options:Dynamic):Dynamic;
}

