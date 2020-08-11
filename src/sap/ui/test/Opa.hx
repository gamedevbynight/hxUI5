package sap.ui.test;

@:native("sap.ui.test.Opa")

/**
* One Page Acceptance testing.
*/
extern class Opa
{

	/**
	* 
	* @param	extensionObject An object containing properties and functions. The newly created Opa will be extended by these properties and functions using jQuery.extend.
	* @return	Object
	*/
	public function new( ?extensionObject:Dynamic):Void;
@:overload( function():Void{ })

	/**
	* Waits until all waitFor calls are done.
	* @return	If the waiting was successful, the promise will be resolved. If not it will be rejected
	*/
	public static function emptyQueue( ):jquery.promise;
@:overload( function():Void{ })

	/**
	* Extends and overwrites default values of the {@link sap.ui.test.Opa sap.ui.test.Opa.config} field. Sample usage: <pre>
    <code>
        var oOpa = new Opa();

        // this statement will time out after 15 seconds and poll every 400ms
        // those two values come from the defaults of sap.ui.test.Opa.config
        oOpa.waitFor({
        });

        // All wait for statements added after this will take other defaults
        Opa.extendConfig({
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
@:overload( function():Dynamic{ })

	/**
	* Gives access to a singleton object you can save values in. Same as {@link sap.ui.test.Opa#getContext}
	* @return	the context object
	*/
	public static function getContext( ):Dynamic;
	@:overload( function(oPromise:jquery.promise):jquery.promise{ })

	/**
	* Schedule a promise on the OPA queue.The promise will be executed in order with all waitFors - any subsequent waitFor will be executed after the promise is done. The promise is not directly chained, but instead its result is awaited in a new waitFor statement. This means that any "thenable" should be acceptable.
	* @param	oPromise promise to schedule on the OPA queue
	* @return	promise which is the result of a {@link sap.ui.test.Opa.waitFor}
	*/
	public function iWaitForPromise( oPromise:js.lib.Promise<Opa>):jquery.promise;

	/**
	* Reset Opa.config to its default values. All of the global values can be overwritten in an individual waitFor call.

The default values are: <ul> <li>arrangements: A new Opa instance</li> <li>actions: A new Opa instance</li> <li>assertions: A new Opa instance</li> <li>timeout : 15 seconds, 0 for infinite timeout</li> <li>pollingInterval: 400 milliseconds</li> <li>debugTimeout: 0 seconds, infinite timeout by default. This will be used instead of timeout if running in debug mode.</li> <li> executionDelay: 0 or 50 (depending on the browser). The value is a number representing milliseconds. The executionDelay will slow down the execution of every single waitFor statement to be delayed by the number of milliseconds. This does not effect the polling interval it just adds an initial pause. Use this parameter to slow down OPA when you want to watch your test during development or checking the UI of your app. It is not recommended to use this parameter in any automated test executions. </li> <li>asyncPolling: false</li> </ul>
	* @return	Void
	*/
	public static function resetConfig( ):Void;

	/**
	* Clears the queue and stops running tests so that new tests can be run. This means all waitFor statements registered by {@link sap.ui.test.Opa#waitFor} will not be invoked anymore and the promise returned by {@link sap.ui.test.Opa.emptyQueue} will be rejected When it is called inside of a check in {@link sap.ui.test.Opa#waitFor} the success function of this waitFor will not be called.
	* @return	Void
	*/
	public static function stopQueue( ):Void;

	/**
	* Queues up a waitFor command for Opa. The Queue will not be emptied until {@link sap.ui.test.Opa.emptyQueue} is called. If you are using {@link module:sap/ui/test/opaQunit}, emptyQueue will be called by the wrapped tests.

If you are using Opa5, waitFor takes additional parameters. They can be found here: {@link sap.ui.test.Opa5#waitFor}. Waits for a check condition to return true, in which case a success function will be called. If the timeout is reached before the check returns true, an error function will be called.
	* @param	options These contain check, success and error functions
	* @return	an object extending a jQuery promise. The object is essentially a jQuery promise with an additional "and" method that can be used for chaining waitFor statements. The promise is resolved when the waitFor completes successfully. The promise is rejected with the options object, if an error occurs. In this case, options.errorMessage will contain a detailed error message containing the stack trace and Opa logs.
	*/
	public function waitFor( options:Dynamic):Dynamic;
}

