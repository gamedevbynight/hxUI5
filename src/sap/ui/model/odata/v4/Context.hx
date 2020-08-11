package sap.ui.model.odata.v4;

@:native("sap.ui.model.odata.v4.Context")

/**
* Implementation of an OData V4 model's context.

The context is a pointer to model data as returned by a query from a {@link sap.ui.model.odata.v4.ODataContextBinding} or a {@link sap.ui.model.odata.v4.ODataListBinding}. Contexts are always and only created by such bindings. A context for a context binding points to the complete query result. A context for a list binding points to one specific entry in the binding's collection. A property binding does not have a context, you can access its value via {@link sap.ui.model.odata.v4.ODataPropertyBinding#getValue}.

Applications can access model data only via a context, either synchronously with the risk that the values are not available yet ({@link #getProperty} and {@link #getObject}) or asynchronously ({@link #requestProperty} and {@link #requestObject}).

Context instances are immutable except for their indexes.
*/
extern class Context extends sap.ui.model.Context
{

	/**
	* Returns a promise that is resolved without data when the entity represented by this context has been created in the backend and all selected properties of this entity are available. Expanded navigation properties are only available if the context's binding is refreshable. {@link sap.ui.model.odata.v4.ODataBinding#refresh} describes which bindings are refreshable.

As long as the promise is not yet resolved or rejected, the entity represented by this context is transient.

Once the promise is resolved, {@link #getPath} returns a path including the key predicate of the new entity. This requires that all key properties are available.
	* @return	A promise that is resolved without data when the entity represented by this context has been created in the backend. It is rejected with an <code>Error</code> instance where <code>oError.canceled === true</code> if the transient entity is deleted before it is created in the backend, for example via {@link sap.ui.model.odata.v4.Context#delete}, {@link sap.ui.model.odata.v4.ODataListBinding#resetChanges} or {@link sap.ui.model.odata.v4.ODataModel#resetChanges}. It is rejected with an <code>Error</code> instance without <code>oError.canceled</code> if loading of $metadata fails. Returns <code>undefined</code> if the context has not been created using {@link sap.ui.model.odata.v4.ODataListBinding#create}.
	*/
	public function created( ):js.lib.Promise<Context>;

	/**
	* Deletes the OData entity this context points to.

The context must not be used anymore after successful deletion.
	* @param	sGroupId The group ID to be used for the DELETE request; if not specified, the update group ID for the context's binding is used, see {@link sap.ui.model.odata.v4.ODataModel#bindContext} and {@link sap.ui.model.odata.v4.ODataModel#bindList}; the resulting group ID must not have {@link sap.ui.model.odata.v4.SubmitMode.API}.
	* @return	A promise which is resolved without a result in case of success, or rejected with an instance of <code>Error</code> in case of failure, e.g. if the given context does not point to an entity, if it is not part of a list binding, if there are pending changes for the context's binding, if the resulting group ID has SubmitMode.API, or if the deletion on the server fails. <p> The error instance is flagged with <code>isConcurrentModification</code> in case a concurrent modification (e.g. by another user) of the entity between loading and deletion has been detected; this should be shown to the user who needs to decide whether to try deletion again. If the entity does not exist, we assume it has already been deleted by someone else and report success.
	*/
	public function delete( ?sGroupId:String):js.lib.Promise<Context>;

	/**
	* Destroys this context, that is, it removes this context from all dependent bindings and drops references to binding and model, so that the context cannot be used anymore; it keeps path and index for debugging purposes.
	* @return	Void
	*/
	public function destroy( ):Void;

	/**
	* Expands the group node that this context points to.
	* @return	Void
	*/
	public function expand( ):Void;

	/**
	* Creates a new subclass of class sap.ui.model.odata.v4.Context with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.Context.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns the binding this context belongs to.
	* @return	The context's binding
	*/
	public function getBinding( ):Dynamic;

	/**
	* Returns the "canonical path" of the entity for this context. According to "4.3.1 Canonical URL" of the specification "OData Version 4.0 Part 2: URL Conventions", this is the "name of the entity set associated with the entity followed by the key predicate identifying the entity within the collection". Use the canonical path in {@link sap.ui.core.Element#bindElement} to create an element binding. Note: For a transient context (see {@link #isTransient}) a wrong path is returned unless all key properties are available within the initial data.
	* @return	The canonical path (e.g. "/SalesOrderList('0500000000')")
	*/
	public function getCanonicalPath( ):String;

	/**
	* Returns the context's index within the binding's collection. The return value changes when a new entity is added via {@link sap.ui.model.odata.v4.ODataListBinding#create} without <code>bAtEnd</code>, and when a context representing a created entity is deleted again.
	* @return	The context's index within the binding's collection or <code>undefined</code> if the context does not belong to a list binding.
	*/
	public function getIndex( ):String;

	/**
	* Returns a metadata object for class sap.ui.model.odata.v4.Context.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the value for the given path relative to this context. The function allows access to the complete data the context points to (if <code>sPath</code> is "") or any part thereof. The data is a JSON structure as described in <a href="http://docs.oasis-open.org/odata/odata-json-format/v4.0/odata-json-format-v4.0.html"> "OData JSON Format Version 4.0"</a>. Note that the function clones the result. Modify values via {@link sap.ui.model.odata.v4.ODataPropertyBinding#setValue}.

Returns <code>undefined</code> if the data is not (yet) available; no request is triggered. Use {@link #requestObject} for asynchronous access.
	* @param	sPath A path relative to this context
	* @return	The requested value
	*/
	public function getObject( ?sPath:String):Dynamic;

	/**
	* Returns the property value for the given path relative to this context. The path is expected to point to a structural property with primitive type. Returns <code>undefined</code> if the data is not (yet) available; no request is triggered. Use {@link #requestProperty} for asynchronous access.
	* @param	sPath A path relative to this context
	* @param	bExternalFormat If <code>true</code>, the value is returned in external format using a UI5 type for the given property path that formats corresponding to the property's EDM type and constraints. If the type is not yet available, <code>undefined</code> is returned.
	* @return	The requested property value
	*/
	public function getProperty( sPath:String, ?bExternalFormat:Bool):Dynamic;

	/**
	* Returns whether there are pending changes for bindings dependent on this context, or for unresolved bindings (see {@link sap.ui.model.Binding#isResolved}) which were dependent on this context at the time the pending change was created. This includes the context itself being transient (see {@link #isTransient}).
	* @return	Whether there are pending changes
	*/
	public function hasPendingChanges( ):Bool;

	/**
	* Tells whether the group node that this context points to is expanded.
	* @return	Whether the group node that this context points to is expanded, or <code>undefined</code> if the node is not expandable
	*/
	public function isExpanded( ):Dynamic;

	/**
	* For a context created using {@link sap.ui.model.odata.v4.ODataListBinding#create}, the method returns <code>true</code> if the context is transient, meaning that the promise returned by {@link #created} is not yet resolved or rejected, and returns <code>false</code> if the context is not transient. The result of this function can also be accessed via instance annotation "@$ui5.context.isTransient" at the entity.
	* @return	Whether this context is transient if it is created using {@link sap.ui.model.odata.v4.ODataListBinding#create}; <code>undefined</code> if it is not created using {@link sap.ui.model.odata.v4.ODataListBinding#create}
	*/
	public function isTransient( ):Bool;

	/**
	* Refreshes the single entity represented by this context.
	* @param	sGroupId The group ID to be used for the refresh; if not specified, the group ID for the context's binding is used, see {@link sap.ui.model.odata.v4.ODataModel#bindList} and {@link sap.ui.model.odata.v4.ODataModel#bindContext}.
	* @param	bAllowRemoval If the context belongs to a list binding, the parameter allows the list binding to remove the context from the list binding's collection because the entity does not match the binding's filter anymore, see {@link sap.ui.model.odata.v4.ODataListBinding#filter}; a removed context is destroyed, see {@link #destroy}. If the context belongs to a context binding, the parameter must not be used. Supported since 1.55.0
	* @return	Void
	*/
	public function refresh( ?sGroupId:String, ?bAllowRemoval:Bool):Void;

	/**
	* Returns a promise for the "canonical path" of the entity for this context. According to "4.3.1 Canonical URL" of the specification "OData Version 4.0 Part 2: URL Conventions", this is the "name of the entity set associated with the entity followed by the key predicate identifying the entity within the collection". Use the canonical path in {@link sap.ui.core.Element#bindElement} to create an element binding. Note: For a transient context (see {@link #isTransient}) a wrong path is returned unless all key properties are available within the initial data.
	* @return	A promise which is resolved with the canonical path (e.g. "/SalesOrderList('0500000000')") in case of success, or rejected with an instance of <code>Error</code> in case of failure, e.g. if the given context does not point to an entity
	*/
	public function requestCanonicalPath( ):js.lib.Promise<Context>;

	/**
	* Returns a promise on the value for the given path relative to this context. The function allows access to the complete data the context points to (if <code>sPath</code> is "") or any part thereof. The data is a JSON structure as described in <a href="http://docs.oasis-open.org/odata/odata-json-format/v4.0/odata-json-format-v4.0.html"> "OData JSON Format Version 4.0"</a>. Note that the function clones the result. Modify values via {@link sap.ui.model.odata.v4.Context#setProperty}.

If you want {@link #requestObject} to read fresh data, call {@link #refresh} first.
	* @param	sPath A path relative to this context
	* @return	A promise on the requested value
	*/
	public function requestObject( ?sPath:String):js.lib.Promise<Context>;

	/**
	* Returns a promise on the property value for the given path relative to this context. The path is expected to point to a structural property with primitive type.
	* @param	sPath A path relative to this context
	* @param	bExternalFormat If <code>true</code>, the value is returned in external format using a UI5 type for the given property path that formats corresponding to the property's EDM type and constraints.
	* @return	A promise on the requested value; it is rejected if the value is not primitive
	*/
	public function requestProperty( ?sPath:String, ?bExternalFormat:Bool):js.lib.Promise<Context>;

	/**
	* Loads side effects for this context using the given "14.5.11 Expression edm:NavigationPropertyPath" or "14.5.13 Expression edm:PropertyPath" objects. Use this method to explicitly load side effects in case implicit loading is switched off via the binding-specific parameter <code>$$patchWithoutSideEffects</code>. The method can be called on <ul> <li> the bound context of a context binding, <li> the return value context of an operation binding, <li> a context of a list binding representing a single entity, <li> the header context of a list binding; side effects are loaded for the whole binding in this case. </ul> Key predicates must be available in this context's path. Avoid navigation properties as part of a binding's $select system query option as they may trigger pointless requests. There must be only context bindings between this context and its first ancestor binding which uses own data service requests.

If the first ancestor binding has an empty path, it is a context binding. In this case, we look for the farthest ancestor binding with the following characteristics: It uses own data service requests, it can be reached via a sequence of only empty paths, and it is actually being used. This way, side effects are loaded also for siblings of that first ancestor binding which show the same data, but useless requests are avoided.

By default, the request uses the update group ID for this context's binding; this way, it can easily be part of the same batch request as the corresponding update. <b>Caution:</b> If a dependent binding uses a different update group ID, it may lose its pending changes. The same will happen if a different group ID is provided, and the side effects affect properties for which there are pending changes.

All failed updates or creates for the group ID are repeated within the same batch request. If the group ID has submit mode {@link sap.ui.model.odata.v4.SubmitMode.Auto} and there are currently running updates or creates this method first waits for them to be processed.

The events 'dataRequested' and 'dataReceived' are not fired. Whatever should happen in the event handler attached to... <ul> <li>'dataRequested', can instead be done before calling {@link #requestSideEffects}.</li> <li>'dataReceived', can instead be done once the <code>oPromise</code> returned by {@link #requestSideEffects} fulfills or rejects (using <code>oPromise.then(function () {...}, function () {...})</code>).</li> </ul>
	* @param	aPathExpressions The "14.5.11 Expression edm:NavigationPropertyPath" or "14.5.13 Expression edm:PropertyPath" objects describing which properties need to be loaded because they may have changed due to side effects of a previous update, for example <code>[{$PropertyPath : "TEAM_ID"}, {$NavigationPropertyPath : "EMPLOYEE_2_MANAGER"}, {$PropertyPath : "EMPLOYEE_2_TEAM/Team_Id"}]</code>. An empty navigation property path means that the whole entity may have changed, including its navigation properties. Since 1.75, a property path may end with a "*" segment to indicate that all structural properties may have changed, but no navigation properties (unless listed explicitly), for example <code>[{$PropertyPath : "*"}, {$NavigationPropertyPath : "EMPLOYEE_2_MANAGER"}]</code> or <code>[{$PropertyPath : "EMPLOYEE_2_MANAGER/*"}]</code>.
	* @param	sGroupId The group ID to be used (since 1.69.0); if not specified, the update group ID for the context's binding is used, see "$$updateGroupId" at {@link sap.ui.model.odata.v4.ODataModel#bindList} and {@link sap.ui.model.odata.v4.ODataModel#bindContext}. If a different group ID is specified, make sure that {@link #requestSideEffects} is called after the corresponding updates have been successfully processed by the server and that there are no pending changes for the affected properties.
	* @return	Promise resolved with <code>undefined</code>, or rejected with an error if loading of side effects fails. Use it to set fields affected by side effects to read-only before {@link #requestSideEffects} and make them editable again when the promise resolves; in the error handler, you can repeat the loading of side effects.
	*/
	public function requestSideEffects( aPathExpressions:Array<Dynamic>, ?sGroupId:String):js.lib.Promise<Context>;

	/**
	* Sets a new value for the property identified by the given path. The path is relative to this context and is expected to point to a structural property with primitive type.
	* @param	sPath A path relative to this context
	* @param	vValue The new value which must be primitive
	* @param	sGroupId The group ID to be used for the PATCH request; if not specified, the update group ID for the context's binding is used, see {@link sap.ui.model.odata.v4.ODataModel#bindList} and {@link sap.ui.model.odata.v4.ODataModel#bindContext}. Since 1.74, you can use <code>null</code> to prevent the PATCH request.
	* @return	A promise which is resolved without a result in case of success, or rejected with an instance of <code>Error</code> in case of failure
	*/
	public function setProperty( sPath:String, vValue:Dynamic, ?sGroupId:String):js.lib.Promise<Context>;

	/**
	* Returns a string representation of this object including the binding path.
	* @return	A string description of this binding
	*/
	public function toString( ):String;
}

