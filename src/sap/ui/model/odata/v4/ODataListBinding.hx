package sap.ui.model.odata.v4;

@:native("sap.ui.model.odata.v4.ODataListBinding")

/**
* List binding for an OData V4 model. An event handler can only be attached to this binding for the following events: 'AggregatedDataStateChange', 'change', 'dataReceived', 'dataRequested', 'DataStateChange' and 'refresh'. For other events, an error is thrown.
*/
extern class ODataListBinding extends sap.ui.model.ListBinding
{

	/**
	* Attach event handler <code>fnFunction</code> to the 'createCompleted' event of this binding.
	* @param	fnFunction The function to call when the event occurs
	* @param	oListener Object on which to call the given function
	* @return	Void
	*/
	public function attachCreateCompleted( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):Void;

	/**
	* Attach event handler <code>fnFunction</code> to the 'createSent' event of this binding.
	* @param	fnFunction The function to call when the event occurs
	* @param	oListener Object on which to call the given function
	* @return	Void
	*/
	public function attachCreateSent( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):Void;

	/**
	* Attach event handler <code>fnFunction</code> to the 'patchCompleted' event of this binding.
	* @param	fnFunction The function to call when the event occurs
	* @param	oListener Object on which to call the given function
	* @return	Void
	*/
	public function attachPatchCompleted( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):Void;

	/**
	* Attach event handler <code>fnFunction</code> to the 'patchSent' event of this binding.
	* @param	fnFunction The function to call when the event occurs
	* @param	oListener Object on which to call the given function
	* @return	Void
	*/
	public function attachPatchSent( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):Void;

	/**
	* Changes this binding's parameters and refreshes the binding.

If there are pending changes an error is thrown. Use {@link #hasPendingChanges} to check if there are pending changes. If there are changes, call {@link sap.ui.model.odata.v4.ODataModel#submitBatch} to submit the changes or {@link sap.ui.model.odata.v4.ODataModel#resetChanges} to reset the changes before calling {@link #changeParameters}.

The parameters are changed according to the given map of parameters: Parameters with an <code>undefined</code> value are removed, the other parameters are set, and missing parameters remain unchanged.
	* @param	mParameters Map of binding parameters, see {@link sap.ui.model.odata.v4.ODataModel#bindList} and {@link sap.ui.model.odata.v4.ODataModel#bindContext}
	* @return	Void
	*/
	public function changeParameters( mParameters:Dynamic):Void;

	/**
	* Creates a new entity and inserts it at the start or the end of the list.

For creating the new entity, the binding's update group ID is used, see {@link #getUpdateGroupId}.

You can call {@link sap.ui.model.odata.v4.Context#delete} to delete the created context again. As long as the context is transient (see {@link sap.ui.model.odata.v4.Context#isTransient}), {@link #resetChanges} and a call to {@link sap.ui.model.odata.v4.ODataModel#resetChanges} with the update group ID as parameter also delete the created context together with other changes.

If the creation of the entity on the server failed, the creation is repeated automatically. If the binding's update group ID has {@link sap.ui.model.odata.v4.SubmitMode.API}, it is repeated with the next call of {@link sap.ui.model.odata.v4.ODataModel#submitBatch}. Otherwise it is repeated with the next update for the entity. Since 1.67.0, {@link sap.ui.model.odata.v4.ODataModel#submitBatch} can also be used for group IDs with {@link sap.ui.model.odata.v4.SubmitMode.Auto} in order to repeat the creation even if there is no update for the entity.

Each time the data for the created entity is sent to the server, a {@link #event:createSent} event is fired and each time the client receives a response for the creation, a {@link #event:createCompleted} event is fired, independent of whether the creation was successful or not.

The initial data for the created entity can be supplied via the parameter <code>oInitialData</code> and modified via property bindings. Properties that are not part of the initial data show the default value from the service metadata on the UI, but they are not sent to the server. If there is no default value, <code>null</code> is used instead, even if the property is not <code>Nullable</code>.

Note: If a server requires a property in the request, you must supply this property in the initial data, for example if the server requires a unit for an amount. This also applies if this property has a default value.

Note: After creation, the created entity is refreshed to ensure that the data specified in this list binding's $expand is available; to skip this refresh, set <code>bSkipRefresh</code> to <code>true</code>. To avoid errors you must skip this refresh when using {@link sap.ui.model.odata.v4.Context#requestSideEffects} in the same $batch to refresh the complete collection containing the newly created entity.

Note: A deep create is not supported. The dependent entity has to be created using a second list binding. Note that it is not supported to bind relative to a transient context.

Note: Creating at the end is only allowed if the final length of the binding is known (see {@link #isLengthFinal}), so that there is a clear position to place this entity at. This is the case if the complete collection has been read or if the system parameter <code>$count</code> is <code>true</code> and the binding has processed at least one request.
	* @param	oInitialData The initial data for the created entity
	* @param	bSkipRefresh Whether an automatic refresh of the created entity will be skipped
	* @param	bAtEnd Whether the entity is inserted at the end of the list. When creating multiple entities, this parameter must have the same value for each entity. Supported since 1.66.0
	* @return	The context object for the created entity; its method {@link sap.ui.model.odata.v4.Context#created} returns a promise that is resolved when the creation is finished
	*/
	public function create( ?oInitialData:Dynamic, ?bSkipRefresh:Bool, ?bAtEnd:Bool):sap.ui.model.odata.v4.Context;

	/**
	* Destroys the object. The object must not be used anymore after this function was called.
	* @return	Void
	*/
	public function destroy( ):Void;

	/**
	* Detach event handler <code>fnFunction</code> from the 'createCompleted' event of this binding.
	* @param	fnFunction The function to call when the event occurs
	* @param	oListener Object on which to call the given function
	* @return	Void
	*/
	public function detachCreateCompleted( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):Void;

	/**
	* Detach event handler <code>fnFunction</code> from the 'createSent' event of this binding.
	* @param	fnFunction The function to call when the event occurs
	* @param	oListener Object on which to call the given function
	* @return	Void
	*/
	public function detachCreateSent( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):Void;

	/**
	* Detach event handler <code>fnFunction</code> from the 'patchCompleted' event of this binding.
	* @param	fnFunction The function to call when the event occurs
	* @param	oListener Object on which to call the given function
	* @return	Void
	*/
	public function detachPatchCompleted( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):Void;

	/**
	* Detach event handler <code>fnFunction</code> from the 'patchSent' event of this binding.
	* @param	fnFunction The function to call when the event occurs
	* @param	oListener Object on which to call the given function
	* @return	Void
	*/
	public function detachPatchSent( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.odata.v4.ODataListBinding with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.ListBinding.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;
	@:overload( function(?vFilters:sap.ui.model.Filter, ?sFilterType:sap.ui.model.FilterType):sap.ui.model.odata.v4.ODataListBinding{ })

	/**
	* Filters the list with the given filters.

If there are pending changes an error is thrown. Use {@link #hasPendingChanges} to check if there are pending changes. If there are changes, call {@link sap.ui.model.odata.v4.ODataModel#submitBatch} to submit the changes or {@link sap.ui.model.odata.v4.ODataModel#resetChanges} to reset the changes before calling {@link #filter}.

Filters are case sensitive unless the property <code>caseSensitive</code> is set to <code>false</code>. This property has to be set on each filter, it is not inherited from a multi-filter.
	* @param	vFilters The dynamic filters to be used; replaces the dynamic filters given in {@link sap.ui.model.odata.v4.ODataModel#bindList}. The filter executed on the list is created from the following parts, which are combined with a logical 'and': <ul> <li> Dynamic filters of type {@link sap.ui.model.FilterType.Application} <li> Dynamic filters of type {@link sap.ui.model.FilterType.Control} <li> The static filters, as defined in the '$filter' binding parameter </ul>
	* @param	sFilterType The filter type to be used
	* @return	<code>this</code> to facilitate method chaining
	*/
	public function filter( ?vFilters:Array<sap.ui.model.Filter>, ?sFilterType:sap.ui.model.FilterType):sap.ui.model.odata.v4.ODataListBinding;

	/**
	* Returns the contexts that were requested by a control last time. Does not trigger a data request. In the time between the {@link #event:dataRequested} event and the {@link #event:dataReceived} event, the resulting array contains <code>undefined</code> at those indexes where the data is not yet available.
	* @return	The contexts
	*/
	public function getCurrentContexts( ):Array<sap.ui.model.odata.v4.Context>;

	/**
	* Method not supported
	* @return	Void
	*/
	public function getDistinctValues( ):Void;

	/**
	* Returns a URL by which the complete content of the list can be downloaded in JSON format. The request delivers all entities considering the binding's query options (such as filters or sorters).

The returned URL does not specify <code>$skip</code> and <code>$top</code> and leaves it up to the server how many rows it delivers. Many servers tend to choose a small limit without <code>$skip</code> and <code>$top</code>, so it might be wise to add an appropriate value for <code>$top</code> at least.

Additionally, you must be aware of server-driven paging and be ready to send a follow-up request if the response contains <code>@odata.nextlink</code>.
	* @return	The download URL
	*/
	public function getDownloadUrl( ):String;

	/**
	* Returns the group ID of the binding that is used for read requests. The group ID of the binding is alternatively defined by <ul> <li>the <code>groupId</code> parameter of the OData model; see {@link sap.ui.model.odata.v4.ODataModel#constructor},</li> <li>the <code>$$groupId</code> binding parameter; see {@link sap.ui.model.odata.v4.ODataModel#bindList} and {@link sap.ui.model.odata.v4.ODataModel#bindContext}.</li> </ul>
	* @return	The group ID
	*/
	public function getGroupId( ):String;

	/**
	* Returns the header context which allows binding to <code>$count</code>. If known, the value of such a binding is the sum of the element count of the collection on the server and the number of transient entities created on the client. Otherwise it is <code>undefined</code>. The value is a number and its type is <code>Edm.Int64</code>.

The count is known to the binding in the following situations: <ul> <li>The server-side count has been requested via the system query option <code>$count</code>. <li>A "short read" in a paged collection (the server delivered less elements than requested) indicated that the server has no more unread elements. <li>It has been read completely in one request, for example an embedded collection via <code>$expand</code>. </ul>

The <code>$count</code> is unknown, if the binding is relative, but has no context.
	* @return	The header context or <code>null</code> if the binding is relative and has no context
	*/
	public function getHeaderContext( ):sap.ui.model.odata.v4.Context;

	/**
	* Returns the number of entries in the list. As long as the client does not know the size on the server, an estimated length is returned.
	* @return	The number of entries in the list
	*/
	public function getLength( ):String;

	/**
	* Returns a metadata object for class sap.ui.model.odata.v4.ODataListBinding.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the query options of the binding.
	* @param	bWithSystemQueryOptions Whether system query options should be returned as well. The parameter value <code>true</code> is not supported.
	* @return	mQueryOptions The object with the query options. Query options can be provided with {@link sap.ui.model.odata.v4.ODataModel#bindList}, {@link sap.ui.model.odata.v4.ODataModel#bindContext}, {@link sap.ui.model.odata.v4.ODataListBinding#changeParameters}, and {@link sap.ui.model.odata.v4.ODataContextBinding#changeParameters}. System query options can also be calculated, e.g. <code>$filter</code> can be calculated based on provided filter objects.
	*/
	public function getQueryOptions( ?bWithSystemQueryOptions:Bool):Dynamic;

	/**
	* Returns the root binding of this binding's hierarchy, see binding {@link topic:54e0ddf695af4a6c978472cecb01c64d Initialization and Read Requests}.
	* @return	The root binding or <code>undefined</code> if this binding is unresolved (see {@link sap.ui.model.Binding#isResolved}).
	*/
	public function getRootBinding( ):Dynamic;

	/**
	* Returns the group ID of the binding that is used for update requests. The update group ID of the binding is alternatively defined by <ul> <li>the <code>updateGroupId</code> parameter of the OData model; see {@link sap.ui.model.odata.v4.ODataModel#constructor},</li> <li>the <code>$$updateGroupId</code> binding parameter; see {@link sap.ui.model.odata.v4.ODataModel#bindList} and {@link sap.ui.model.odata.v4.ODataModel#bindContext}.</li> </ul>
	* @return	The update group ID
	*/
	public function getUpdateGroupId( ):String;

	/**
	* Returns <code>true</code> if this binding or its dependent bindings have pending property changes or created entities which have not been sent successfully to the server. This function does not take into account the deletion of entities (see {@link sap.ui.model.odata.v4.Context#delete}) and the execution of OData operations (see {@link sap.ui.model.odata.v4.ODataContextBinding#execute}).

Note: If this binding is relative, its data is cached separately for each parent context path. This method returns <code>true</code> if there are pending changes for the current parent context path of this binding. If this binding is unresolved (see {@link sap.ui.model.Binding#isResolved}), it returns <code>false</code>.
	* @return	<code>true</code> if the binding is resolved and has pending changes
	*/
	public function hasPendingChanges( ):Bool;

	/**
	* Method not supported
	* @return	Void
	*/
	public function isInitial( ):Void;

	/**
	* Returns <code>true</code> if the length has been determined by the data returned from server. If the length is a client side estimation <code>false</code> is returned.
	* @return	If <code>true</code> the length is determined by server side data
	*/
	public function isLengthFinal( ):Bool;

	/**
	* Refreshes the binding. Prompts the model to retrieve data from the server using the given group ID and notifies the control that new data is available.

Refresh is supported for bindings which are not relative to a {@link sap.ui.model.odata.v4.Context}.

Note: When calling {@link #refresh} multiple times, the result of the request triggered by the last call determines the binding's data; it is <b>independent</b> of the order of calls to {@link sap.ui.model.odata.v4.ODataModel#submitBatch} with the given group ID.

If there are pending changes, an error is thrown. Use {@link #hasPendingChanges} to check if there are pending changes. If there are changes, call {@link sap.ui.model.odata.v4.ODataModel#submitBatch} to submit the changes or {@link sap.ui.model.odata.v4.ODataModel#resetChanges} to reset the changes before calling {@link #refresh}.
	* @param	sGroupId The group ID to be used for refresh; if not specified, the binding's group ID is used, see {@link #getGroupId}. For suspended bindings, only the binding's group ID is supported because {@link #resume} uses the binding's group ID.

Valid values are <code>undefined</code>, '$auto', '$auto.*', '$direct' or application group IDs as specified in {@link sap.ui.model.odata.v4.ODataModel}.
	* @return	Void
	*/
	public function refresh( ?sGroupId:String):Void;

	/**
	* Requests the entities for the given index range of the binding's collection and resolves with the corresponding contexts.
	* @param	iStart The index where to start the retrieval of contexts; must be greater than or equal to 0
	* @param	iLength The number of contexts to retrieve beginning from the start index; defaults to the model's size limit, see {@link sap.ui.model.Model#setSizeLimit}; must be greater than 0, <code>Infinity</code> may be used to retrieve all data
	* @param	sGroupId The group ID to be used for the request; if not specified, the group ID for this binding is used, see {@link #getGroupId}. Valid values are <code>undefined</code>, '$auto', '$auto.*', '$direct' or application group IDs as specified in {@link sap.ui.model.odata.v4.ODataModel}.
	* @return	A promise which is resolved with the array of the contexts, the first entry containing the context for <code>iStart</code>; it is rejected if <code>iStart</code> or <code>iLength</code> are less than 0 or when requesting the data fails
	*/
	public function requestContexts( ?iStart:String, ?iLength:String, ?sGroupId:String):Array<js.lib.Promise<sap.ui.model.odata.v4.Context>>;

	/**
	* Returns a URL by which the complete content of the list can be downloaded in JSON format. The request delivers all entities considering the binding's query options (such as filters or sorters).

The returned URL does not specify <code>$skip</code> and <code>$top</code> and leaves it up to the server how many rows it delivers. Many servers tend to choose a small limit without <code>$skip</code> and <code>$top</code>, so it might be wise to add an appropriate value for <code>$top</code> at least.

Additionally, you must be aware of server-driven paging and be ready to send a follow-up request if the response contains <code>@odata.nextlink</code>.
	* @return	A promise that is resolved with the download URL
	*/
	public function requestDownloadUrl( ):js.lib.Promise<String>;

	/**
	* Resets all pending changes of this binding, see {@link #hasPendingChanges}. Resets also invalid user input.
	* @return	A promise which is resolved without a defined result as soon as all changes in the binding itself and all dependent bindings are canceled (since 1.72.0)
	*/
	public function resetChanges( ):js.lib.Promise<ODataListBinding>;

	/**
	* Resumes this binding. The binding can then again fire change events and trigger data service requests. Before 1.53.0, this method was not supported and threw an error.
	* @return	Void
	*/
	public function resume( ):Void;

	/**
	* Sets a new data aggregation object and derives the system query option <code>$apply</code> implicitly from it.
	* @param	oAggregation An object holding the information needed for data aggregation; see also <a href="http://docs.oasis-open.org/odata/odata-data-aggregation-ext/v4.0/">OData Extension for Data Aggregation Version 4.0</a>. Since 1.76.0, <code>undefined</code> can be used to remove the data aggregation object, which allows to set <code>$apply</code> explicitly afterwards. <code>null</code> is not supported.
	* @return	Void
	*/
	public function setAggregation( ?oAggregation:Dynamic):Void;
	@:overload( function(?vSorters:sap.ui.model.Sorter):sap.ui.model.odata.v4.ODataListBinding{ })

	/**
	* Sort the entries represented by this list binding according to the given sorters. The sorters are stored at this list binding and they are used for each following data request.

If there are pending changes an error is thrown. Use {@link #hasPendingChanges} to check if there are pending changes. If there are changes, call {@link sap.ui.model.odata.v4.ODataModel#submitBatch} to submit the changes or {@link sap.ui.model.odata.v4.ODataModel#resetChanges} to reset the changes before calling {@link #sort}.
	* @param	vSorters The dynamic sorters to be used; they replace the dynamic sorters given in {@link sap.ui.model.odata.v4.ODataModel#bindList}. Static sorters, as defined in the '$orderby' binding parameter, are always executed after the dynamic sorters.
	* @return	<code>this</code> to facilitate method chaining
	*/
	public function sort( ?vSorters:Array<sap.ui.model.Sorter>):sap.ui.model.odata.v4.ODataListBinding;

	/**
	* Suspends this binding. A suspended binding does not fire change events nor does it trigger data service requests. Call {@link #resume} to resume the binding. Before 1.53.0, this method was not supported and threw an error.
	* @return	Void
	*/
	public function suspend( ):Void;
}

