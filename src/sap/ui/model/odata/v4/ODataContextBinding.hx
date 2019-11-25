package sap.ui.model.odata.v4;

@:native("sap.ui.model.odata.v4.ODataContextBinding")

/**
* Context binding for an OData V4 model. An event handler can only be attached to this binding for the following events: 'AggregatedDataStateChange', 'change', 'dataReceived', 'dataRequested', and 'DataStateChange'. For other events, an error is thrown.

A context binding can also be used as an <i>operation binding</i> to support bound actions, action imports, bound functions and function imports. If you want to control the execution time of an operation, for example a function import named "GetNumberOfAvailableItems", create a context binding for the path "/GetNumberOfAvailableItems(...)" (as specified here, including the three dots). Such an operation binding is <i>deferred</i>, meaning that it does not request automatically, but only when you call {@link #execute}. {@link #refresh} is always ignored for actions and action imports. For bound functions and function imports, it is ignored if {@link #execute} has not yet been called. Afterwards it results in another call of the function with the parameter values of the last execute.

The binding parameter for bound actions or bound functions may be given in the binding path, for example "/SalesOrderList('42')/name.space.SalesOrder_Confirm". This can be used if the exact entity for the binding parameter is known in advance. If you use a relative binding instead, the operation path is a concatenation of the parent context's canonical path and the deferred binding's path.

<b>Example</b>: You have a table with a list binding to "/SalesOrderList". In each row you have a button to confirm the sales order, with the relative binding "name.space.SalesOrder_Confirm(...)". Then the parent context for such a button refers to an entity in "SalesOrderList", so its canonical path is "/SalesOrderList('<i>SalesOrderID</i>')" and the resulting path for the action is "/SalesOrderList('<i>SalesOrderID</i>')/name.space.SalesOrder_Confirm".

This also works if the relative path of the deferred operation binding starts with a navigation property. Then this navigation property will be part of the operation's resource path, which is still valid.

A deferred operation binding is not allowed to have another deferred operation binding as parent.
*/
extern class ODataContextBinding extends sap.ui.model.ContextBinding
{

	/**
	* Attach event handler <code>fnFunction</code> to the 'patchCompleted' event of this binding.
	* @param	fnFunction The function to call when the event occurs
	* @param	oListener Object on which to call the given function
	* @return	Void
	*/
	public function attachPatchCompleted( fnFunction:()->Void, ?oListener:Dynamic):Void;

	/**
	* Attach event handler <code>fnFunction</code> to the 'patchSent' event of this binding.
	* @param	fnFunction The function to call when the event occurs
	* @param	oListener Object on which to call the given function
	* @return	Void
	*/
	public function attachPatchSent( fnFunction:()->Void, ?oListener:Dynamic):Void;

	/**
	* Changes this binding's parameters and refreshes the binding.

If there are pending changes an error is thrown. Use {@link #hasPendingChanges} to check if there are pending changes. If there are changes, call {@link sap.ui.model.odata.v4.ODataModel#submitBatch} to submit the changes or {@link sap.ui.model.odata.v4.ODataModel#resetChanges} to reset the changes before calling {@link #changeParameters}.

The parameters are changed according to the given map of parameters: Parameters with an <code>undefined</code> value are removed, the other parameters are set, and missing parameters remain unchanged.
	* @param	mParameters Map of binding parameters, see {@link sap.ui.model.odata.v4.ODataModel#bindList} and {@link sap.ui.model.odata.v4.ODataModel#bindContext}
	* @return	Void
	*/
	public function changeParameters( mParameters:Dynamic):Void;

	/**
	* Destroys the object. The object must not be used anymore after this function was called.
	* @return	Void
	*/
	public function destroy( ):Void;

	/**
	* Detach event handler <code>fnFunction</code> from the 'patchCompleted' event of this binding.
	* @param	fnFunction The function to call when the event occurs
	* @param	oListener Object on which to call the given function
	* @return	Void
	*/
	public function detachPatchCompleted( fnFunction:()->Void, ?oListener:Dynamic):Void;

	/**
	* Detach event handler <code>fnFunction</code> from the 'patchSent' event of this binding.
	* @param	fnFunction The function to call when the event occurs
	* @param	oListener Object on which to call the given function
	* @return	Void
	*/
	public function detachPatchSent( fnFunction:()->Void, ?oListener:Dynamic):Void;

	/**
	* Calls the OData operation that corresponds to this operation binding.

Parameters for the operation must be set via {@link #setParameter} beforehand.

The value of this binding is the result of the operation. To access a result of primitive type, bind a control to the path "value", for example <code>&lt;Text text="{value}"/></code>. If the result has a complex or entity type, you can bind properties as usual, for example <code>&lt;Text text="{street}"/></code>.
	* @param	sGroupId The group ID to be used for the request; if not specified, the group ID for this binding is used, see {@link sap.ui.model.odata.v4.ODataContextBinding#constructor}. Valid values are <code>undefined</code>, '$auto', '$auto.*', '$direct' or application group IDs as specified in {@link sap.ui.model.odata.v4.ODataModel}.
	* @return	A promise that is resolved without data or with a return value context when the operation call succeeded, or rejected with an instance of <code>Error</code> in case of failure, for instance if the operation metadata is not found, if overloading is not supported, or if a collection-valued function parameter is encountered.

A return value context is a {@link sap.ui.model.odata.v4.Context} which represents a bound operation response. It is created only if the operation is bound and has a single entity return value from the same entity set as the operation's binding parameter and has a parent context which is a {@link sap.ui.model.odata.v4.Context} and points to an entity from an entity set.

If a return value context is created, it must be used instead of <code>this.getBoundContext()</code>. All bound messages will be related to the return value context only. Such a message can only be connected to a corresponding control if the control's property bindings use the return value context as binding context.
	*/
	public function execute( ?sGroupId:String):js.lib.Promise<ODataContextBinding>;

	/**
	* Creates a new subclass of class sap.ui.model.odata.v4.ODataContextBinding with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.ContextBinding.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns the bound context.
	* @return	The bound context
	*/
	public function getBoundContext( ):sap.ui.model.odata.v4.Context;

	/**
	* Returns a metadata object for class sap.ui.model.odata.v4.ODataContextBinding.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the root binding of this binding's hierarchy, see binding {@link topic:54e0ddf695af4a6c978472cecb01c64d Initialization and Read Requests}.
	* @return	The root binding or <code>undefined</code> if this binding is not yet resolved.
	*/
	public function getRootBinding( ):Dynamic;

	/**
	* Returns <code>true</code> if this binding or its dependent bindings have pending changes, meaning updates that have not yet been successfully sent to the server.
	* @return	<code>true</code> if the binding has pending changes
	*/
	public function hasPendingChanges( ):Bool;

	/**
	* Method not supported
	* @return	Void
	*/
	public function isInitial( ):Void;

	/**
	* Refreshes the binding. Prompts the model to retrieve data from the server using the given group ID and notifies the control that new data is available.

Refresh is supported for bindings which are not relative to a {@link sap.ui.model.odata.v4.Context}.

Note: When calling {@link #refresh} multiple times, the result of the request triggered by the last call determines the binding's data; it is <b>independent</b> of the order of calls to {@link sap.ui.model.odata.v4.ODataModel#submitBatch} with the given group ID.

If there are pending changes, an error is thrown. Use {@link #hasPendingChanges} to check if there are pending changes. If there are changes, call {@link sap.ui.model.odata.v4.ODataModel#submitBatch} to submit the changes or {@link sap.ui.model.odata.v4.ODataModel#resetChanges} to reset the changes before calling {@link #refresh}.
	* @param	sGroupId The group ID to be used for refresh; if not specified, the binding's group ID is used. For suspended bindings, only the binding's group ID is supported because {@link #resume} uses the binding's group ID.

Valid values are <code>undefined</code>, '$auto', '$auto.*', '$direct' or application group IDs as specified in {@link sap.ui.model.odata.v4.ODataModel}.
	* @return	Void
	*/
	public function refresh( ?sGroupId:String):Void;

	/**
	* Returns a promise on the value for the given path relative to this binding. The function allows access to the complete data the binding points to (if <code>sPath</code> is "") or any part thereof. The data is a JSON structure as described in <a href="http://docs.oasis-open.org/odata/odata-json-format/v4.0/odata-json-format-v4.0.html"> "OData JSON Format Version 4.0"</a>. Note that the function clones the result. Modify values via {@link sap.ui.model.odata.v4.Context#setProperty}.

If you want {@link #requestObject} to read fresh data, call <code>oBinding.refresh()</code> first.
	* @param	sPath A relative path within the JSON structure
	* @return	A promise on the requested value; in case there is no bound context this promise resolves with <code>undefined</code>
	*/
	public function requestObject( ?sPath:String):js.lib.Promise<ODataContextBinding>;

	/**
	* Resets all pending changes of this binding, see {@link #hasPendingChanges}. Resets also invalid user input.
	* @return	A promise which is resolved without a defined result as soon as all changes in the binding itself and all dependent bindings are canceled (since 1.72.0)
	*/
	public function resetChanges( ):js.lib.Promise<ODataContextBinding>;

	/**
	* Resumes this binding. The binding can again fire change events and trigger data service requests. Before 1.53.0, this method was not supported and threw an error.
	* @return	Void
	*/
	public function resume( ):Void;

	/**
	* Sets a parameter for an operation call.
	* @param	sParameterName The parameter name
	* @param	vValue The parameter value
	* @return	<code>this</code> to enable method chaining
	*/
	public function setParameter( sParameterName:String, vValue:Dynamic):sap.ui.model.odata.v4.ODataContextBinding;

	/**
	* Suspends this binding. A suspended binding does not fire change events nor does it trigger data service requests. Call {@link #resume} to resume the binding. Before 1.53.0, this method was not supported and threw an error.
	* @return	Void
	*/
	public function suspend( ):Void;
}

