package sap.ui.model.odata.v2;

@:native("sap.ui.model.odata.v2.ODataModel")

/**
* Model implementation based on the OData protocol.
*/
extern class ODataModel extends sap.ui.model.Model
{
	@:overload( function(?serviceUrl:String, ?mParameters:Dynamic):Void{ })

	/**
	* 
	* @param	serviceUrl Base URI of the service to request data from; additional URL parameters appended here will be appended to every request. If you pass an object it will be interpreted as the parameter object (second parameter). Then <code>mParameters.serviceUrl</code> becomes a mandatory parameter.
	* @param	mParameters Map which contains the following parameter properties:
	* @return	Object
	*/
	public function new( ?serviceUrl:Dynamic, ?mParameters:Dynamic):Void;

	/**
	* Returns a promise that resolves with an array containing information about the initially loaded annotations.

<b>Important</b>: This covers the annotations that were given to the model constructor, not the ones that might have been added later on using the protected API method {@link #addAnnotationUrl}. In order to get information about those, the event <code>annotationsLoaded</code> can be used.
	* @return	A promise to load the annotation URLs that were given to the model on instantiation
	*/
	public function annotationsLoaded( ):js.lib.Promise<ODataModel>;

	/**
	* Attach event-handler <code>fnFunction</code> to the <code>annotationsFailed</code> event of this <code>sap.ui.model.odata.v2.ODataModel</code>.
	* @param	oData The object, that should be passed along with the event-object when firing the event.
	* @param	fnFunction The function to call, when the event occurs. This function will be called on the oListener-instance (if present) or in a 'static way'.
	* @param	oListener Object on which to call the given function. If empty, the global context (window) is used.
	* @return	<code>this</code> to allow method chaining
	*/
	public function attachAnnotationsFailed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v2.ODataModel;

	/**
	* Attach event-handler <code>fnFunction</code> to the <code>annotationsLoaded</code> event of this <code>sap.ui.model.odata.v2.ODataModel</code>.
	* @param	oData The object, that should be passed along with the event-object when firing the event.
	* @param	fnFunction The function to call, when the event occurs. This function will be called on the oListener-instance (if present) or in a 'static way'.
	* @param	oListener Object on which to call the given function. If empty, the global context (window) is used.
	* @return	<code>this</code> to allow method chaining
	*/
	public function attachAnnotationsLoaded( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v2.ODataModel;

	/**
	* Attach event-handler <code>fnFunction</code> to the <code>batchRequestCompleted</code> event of this <code>sap.ui.model.odata.v2.ODataModel</code>.
	* @param	oData The object, that should be passed along with the event-object when firing the event.
	* @param	fnFunction The function to call, when the event occurs. This function will be called on the oListener-instance (if present) or in a 'static way'.
	* @param	oListener Object on which to call the given function. If empty, the global context (window) is used.
	* @return	<code>this</code> to allow method chaining
	*/
	public function attachBatchRequestCompleted( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v2.ODataModel;

	/**
	* Attach event-handler <code>fnFunction</code> to the <code>batchRequestFailed</code> event of this <code>sap.ui.model.odata.v2.ODataModel</code>.
	* @param	oData The object, that should be passed along with the event-object when firing the event.
	* @param	fnFunction The function to call, when the event occurs. This function will be called on the oListener-instance (if present) or in a 'static way'.
	* @param	oListener Object on which to call the given function. If empty, this Model is used.
	* @return	<code>this</code> to allow method chaining
	*/
	public function attachBatchRequestFailed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v2.ODataModel;

	/**
	* Attach event-handler <code>fnFunction</code> to the <code>requestSent</code> event of this <code>sap.ui.model.odata.v2.ODataModel</code>.
	* @param	oData The object, that should be passed along with the event-object when firing the event.
	* @param	fnFunction The function to call, when the event occurs. This function will be called on the oListener-instance (if present) or in a 'static way'.
	* @param	oListener Object on which to call the given function. If empty, the global context (window) is used.
	* @return	<code>this</code> to allow method chaining
	*/
	public function attachBatchRequestSent( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v2.ODataModel;

	/**
	* Attach event-handler <code>fnFunction</code> to the <code>metadataFailed</code> event of this <code>sap.ui.model.odata.v2.ODataModel</code>.
	* @param	oData The object, that should be passed along with the event-object when firing the event.
	* @param	fnFunction The function to call, when the event occurs. This function will be called on the oListener-instance (if present) or in a 'static way'.
	* @param	oListener Object on which to call the given function. If empty, the global context (window) is used.
	* @return	<code>this</code> to allow method chaining
	*/
	public function attachMetadataFailed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v2.ODataModel;

	/**
	* Attach event-handler <code>fnFunction</code> to the <code>metadataLoaded</code> event of this <code>sap.ui.model.odata.v2.ODataModel</code>.
	* @param	oData The object, that should be passed along with the event-object when firing the event.
	* @param	fnFunction The function to call, when the event occurs. This function will be called on the oListener-instance (if present) or in a 'static way'.
	* @param	oListener Object on which to call the given function. If empty, the global context (window) is used.
	* @return	<code>this</code> to allow method chaining
	*/
	public function attachMetadataLoaded( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v2.ODataModel;

	/**
	* Creates new context binding for this model.
	* @param	sPath Resolved path
	* @param	oContext Context object
	* @param	mParameters Map of parameters
	* @return	The new context binding
	*/
	public function bindContext( sPath:String, oContext:sap.ui.model.Context, ?mParameters:Dynamic):sap.ui.model.ContextBinding;
	@:overload( function(sPath:String, ?oContext:sap.ui.model.Context, ?aSorters:sap.ui.model.Sorter, ?aFilters:sap.ui.model.Filter, ?mParameters:Dynamic):sap.ui.model.ListBinding{ })
	@:overload( function(sPath:String, ?oContext:sap.ui.model.Context, ?aSorters:sap.ui.model.Sorter, ?aFilters:Array<sap.ui.model.Filter>, ?mParameters:Dynamic):sap.ui.model.ListBinding{ })
	@:overload( function(sPath:String, ?oContext:sap.ui.model.Context, ?aSorters:Array<sap.ui.model.Sorter>, ?aFilters:sap.ui.model.Filter, ?mParameters:Dynamic):sap.ui.model.ListBinding{ })

	/**
	* Creates a new list binding for this model.
	* @param	sPath Binding path, either absolute or relative to a given <code>oContext</code>
	* @param	oContext Binding context referring to this model
	* @param	aSorters Initial sort order, can be either a sorter or an array of sorters
	* @param	aFilters Predefined filters, can be either a filter or an array of filters
	* @param	mParameters Map which contains additional parameters for the binding
	* @return	The new list binding
	*/
	public function bindList( sPath:String, ?oContext:sap.ui.model.Context, ?aSorters:Array<sap.ui.model.Sorter>, ?aFilters:Array<sap.ui.model.Filter>, ?mParameters:Dynamic):sap.ui.model.ListBinding;

	/**
	* Creates a new property binding for this model.
	* @param	sPath Path pointing to the property that should be bound; either an absolute path or a path relative to a given <code>oContext</code>
	* @param	oContext A context object for the new binding
	* @param	mParameters Map of optional parameters for the binding; the ODataModel (v2) currently supports no additional parameters
	* @return	The new property binding
	*/
	public function bindProperty( sPath:String, ?oContext:Dynamic, ?mParameters:Dynamic):sap.ui.model.PropertyBinding;
	@:overload( function(sPath:String, ?oContext:sap.ui.model.Context, ?aFilters:sap.ui.model.Filter, ?mParameters:Dynamic, ?aSorters:Array<sap.ui.model.Sorter>):sap.ui.model.TreeBinding{ })

	/**
	* Creates a new tree binding for this model.
	* @param	sPath Binding path, either absolute or relative to a given <code>oContext</code>
	* @param	oContext Binding context referring to this model
	* @param	aFilters Predefined filters, can be either a filter or an array of filters
	* @param	mParameters Map of parameters for the tree binding
	* @param	aSorters An array of predefined sorters
	* @return	The new tree binding
	*/
	public function bindTree( sPath:String, ?oContext:sap.ui.model.Context, ?aFilters:Array<sap.ui.model.Filter>, ?mParameters:Dynamic, ?aSorters:Array<sap.ui.model.Sorter>):sap.ui.model.TreeBinding;

	/**
	* Trigger a request to the function import OData service that was specified in the model constructor.

If the return type of the function import is either an entity type or a collection of an entity type, then the changes are reflected in the model. Otherwise they are ignored, and the <code>response</code> can be processed in the <code>success</code> callback.
	* @param	sFunctionName A string containing the name of the function to call. The name is concatenated to the service URL which was specified in the model constructor.
	* @param	mParameters Optional parameter map containing any of the following properties:
	* @return	An object which has a <code>contextCreated</code> function that returns a <code>Promise</code>. This resolves with the created {@link sap.ui.model.Context}. In addition it has an <code>abort</code> function to abort the current request.
	*/
	public function callFunction( sFunctionName:String, ?mParameters:Dynamic):Dynamic;

	/**
	* Check whether the canonical requests calculation is switched on. See 'canonicalRequests' parameter of the model constructor.
	* @return	Canonical requests calculation switched on/off
	*/
	public function canonicalRequestsEnabled( ):Bool;

	/**
	* Trigger a <code>POST</code> request to the OData service that was specified in the model constructor.

Please note that deep creates are not supported and may not work.
	* @param	sPath A string containing the path to the collection where an entry should be created. The path is concatenated to the service URL which was specified in the model constructor.
	* @param	oData Data of the entry that should be created.
	* @param	mParameters Optional parameter map containing any of the following properties:
	* @return	An object which has an <code>abort</code> function to abort the current request.
	*/
	public function create( sPath:String, oData:Dynamic, ?mParameters:Dynamic):Dynamic;

	/**
	* Creates a binding context for the given path.

If the data of the context is not yet available, it can not be created, but first the entity needs to be fetched from the server asynchronously. In case no callback function is provided, the request will not be triggered.

If a callback function is given, the created binding context for a fetched entity is passed as argument to the given callback function.
	* @param	sPath Binding path
	* @param	oContext Binding context
	* @param	mParameters Map which contains additional parameters for the binding
	* @param	fnCallBack Function to be called when context has been created. The parameter of the callback function is the newly created binding context.
	* @param	bReload Whether to reload data
	* @return	The created binding context, only if the data is already available and the binding context could be created synchronously
	*/
	public function createBindingContext( sPath:String, ?oContext:Dynamic, ?mParameters:Dynamic, ?fnCallBack:()->Void, ?bReload:Bool):sap.ui.model.Context;

	/**
	* Creates a new entry object which is described by the metadata of the entity type of the specified <code>sPath</code> Name. A context object is returned which can be used to bind against the newly created object.

For each created entry a request is created and stored in a request queue. The request queue can be submitted by calling {@link #submitChanges}. To delete a created entry from the request queue call {@link #deleteCreatedEntry}.

The optional parameter <code>mParameters.properties</code> can be used as follows: <ul> <li><code>properties</code> could be an array containing the property names which should be included in the new entry. Other properties defined in the entity type won't be included. </li> <li><code>properties</code> could be an object which includes the desired properties and the corresponding values which should be used for the created entry. </li> </ul> If <code>properties</code> is not specified, all properties in the entity type will be included in the created entry.

If there are no values specified, the properties will have <code>undefined</code> values.

Please note that deep creates (including data defined by navigation properties) are not supported.
	* @param	sPath Name of the path to the EntitySet
	* @param	mParameters A map of the following parameters:
	* @return	A Context object that points to the new created entry.
	*/
	public function createEntry( sPath:String, mParameters:Dynamic):sap.ui.model.Context;

	/**
	* Creates the key from the given collection name and property map.

Please make sure that the metadata document is loaded before using this function.
	* @param	sCollection Name of the collection
	* @param	oKeyProperties Object containing at least all the key properties of the entity type
	* @return	Key of the entry
	*/
	public function createKey( sCollection:String, oKeyProperties:Dynamic):String;

	/**
	* Deletes a created entry from the request queue and from the model.
	* @param	oContext The context object pointing to the created entry
	* @return	Void
	*/
	public function deleteCreatedEntry( oContext:sap.ui.model.Context):Void;

	/**
	* null
	* @return	Void
	*/
	public function destroy( ):Void;

	/**
	* Detach event-handler <code>fnFunction</code> from the <code>annotationsFailed</code> event of this <code>sap.ui.model.odata.v2.ODataModel</code>.

The passed function and listener object must match the ones previously used for event registration.
	* @param	fnFunction The function to call, when the event occurs.
	* @param	oListener Object on which the given function had to be called.
	* @return	<code>this</code> to allow method chaining
	*/
	public function detachAnnotationsFailed( fnFunction:()->Void, oListener:Dynamic):sap.ui.model.odata.v2.ODataModel;

	/**
	* Detach event-handler <code>fnFunction</code> from the <code>annotationsLoaded</code> event of this <code>sap.ui.model.odata.v2.ODataModel</code>.
	* @param	fnFunction The function to call, when the event occurs.
	* @param	oListener Object on which the given function had to be called.
	* @return	<code>this</code> to allow method chaining
	*/
	public function detachAnnotationsLoaded( fnFunction:()->Void, oListener:Dynamic):sap.ui.model.odata.v2.ODataModel;

	/**
	* Detach event-handler <code>fnFunction</code> from the <code>batchRequestCompleted</code> event of this <code>sap.ui.model.odata.v2.ODataModel</code>.

The passed function and listener object must match the ones previously used for event registration.
	* @param	fnFunction The function to call, when the event occurs.
	* @param	oListener Object on which the given function had to be called.
	* @return	<code>this</code> to allow method chaining
	*/
	public function detachBatchRequestCompleted( fnFunction:()->Void, oListener:Dynamic):sap.ui.model.odata.v2.ODataModel;

	/**
	* Detach event-handler <code>fnFunction</code> from the <code>batchRequestFailed</code> event of this <code>sap.ui.model.odata.v2.ODataModel</code>.<br/>

The passed function and listener object must match the ones previously used for event registration.
	* @param	fnFunction The function to call, when the event occurs.
	* @param	oListener Object on which the given function had to be called.
	* @return	<code>this</code> to allow method chaining
	*/
	public function detachBatchRequestFailed( fnFunction:()->Void, oListener:Dynamic):sap.ui.model.odata.v2.ODataModel;

	/**
	* Detach event-handler <code>fnFunction</code> from the <code>batchRequestSent</code> event of this <code>sap.ui.model.odata.v2.ODataModel</code>.

The passed function and listener object must match the ones previously used for event registration.
	* @param	fnFunction The function to call, when the event occurs.
	* @param	oListener Object on which the given function had to be called.
	* @return	<code>this</code> to allow method chaining
	*/
	public function detachBatchRequestSent( fnFunction:()->Void, oListener:Dynamic):sap.ui.model.odata.v2.ODataModel;

	/**
	* Detach event-handler <code>fnFunction</code> from the <code>metadataFailed</code> event of this <code>sap.ui.model.odata.v2.ODataModel</code>.

The passed function and listener object must match the ones previously used for event registration.
	* @param	fnFunction The function to call, when the event occurs.
	* @param	oListener Object on which the given function had to be called.
	* @return	<code>this</code> to allow method chaining
	*/
	public function detachMetadataFailed( fnFunction:()->Void, oListener:Dynamic):sap.ui.model.odata.v2.ODataModel;

	/**
	* Detach event-handler <code>fnFunction</code> from the <code>metadataLoaded</code> event of this <code>sap.ui.model.odata.v2.ODataModel</code>.

The passed function and listener object must match the ones previously used for event registration.
	* @param	fnFunction The function to call, when the event occurs.
	* @param	oListener Object on which the given function had to be called.
	* @return	<code>this</code> to allow method chaining
	*/
	public function detachMetadataLoaded( fnFunction:()->Void, oListener:Dynamic):sap.ui.model.odata.v2.ODataModel;

	/**
	* Creates a new subclass of class sap.ui.model.odata.v2.ODataModel with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.Model.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Force the update on the server of an entity by setting its ETag to '*'.

ETag handling must be active so the force update will work.
	* @param	sKey The key to an Entity e.g.: Customer(4711)
	* @return	Void
	*/
	public function forceEntityUpdate( sKey:String):Void;

	/**
	* Returns the definition of groups per entity type for two-way binding changes
	* @return	mChangeGroups Definition of groups for two-way binding changes
	*/
	public function getChangeGroups( ):Dynamic;

	/**
	* Returns the default count mode for retrieving the count of collections
	* @return	Returns the default count mode for this model
	*/
	public function getDefaultCountMode( ):sap.ui.model.odata.CountMode;

	/**
	* Returns the array of group IDs that are set as deferred.
	* @return	aGroupIds The array of deferred group IDs
	*/
	public function getDeferredGroups( ):Array<Dynamic>;

	/**
	* Returns the ETag for a given binding path/context or data object.
	* @param	sPath The binding path
	* @param	oContext The binding context
	* @param	oEntity The entity data
	* @return	The found ETag (or <code>null</code> if none could be found)
	*/
	public function getETag( ?sPath:String, ?oContext:sap.ui.model.Context, ?oEntity:Dynamic):String;

	/**
	* Returns all headers and custom headers which are stored in this OData model.
	* @return	The header map
	*/
	public function getHeaders( ):Dynamic;
	@:overload( function(vValue:String):String{ })
	@:overload( function(vValue:Dynamic):String{ })

	/**
	* Returns the key part for the given the canonical entry URI, model context or data object or <code>undefined</code> when the <code>vValue</code> can't be interpreted.
	* @param	vValue The canonical entry URI, the context or entry object
	* @return	Key of the entry or <code>undefined</code>
	*/
	public function getKey( vValue:sap.ui.model.Context):String;

	/**
	* Returns a metadata object for class sap.ui.model.odata.v2.ODataModel.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns an instance of an OData meta model which offers a unified access to both OData V2 metadata and V4 annotations. It uses the existing {@link sap.ui.model.odata.ODataMetadata} as a foundation and merges V4 annotations from the existing {@link sap.ui.model.odata.v2.ODataAnnotations} directly into the corresponding model element.

<b>BEWARE:</b> Access to this OData meta model will fail before the promise returned by {@link sap.ui.model.odata.ODataMetaModel#loaded loaded} has been resolved!
	* @return	The meta model for this <code>ODataModel</code>
	*/
	public function getMetaModel( ):sap.ui.model.odata.ODataMetaModel;

	/**
	* Returns the JSON object for an entity with the given <code>sPath</code> and optional <code>oContext</code>.

With the <code>mParameters.select</code> parameter it is possible to specify comma-separated property or navigation property names which should be included in the result object. This works like the OData <code>$select</code> parameter. With the <code>mParameters.expand</code> parameter it is possible to specify comma-separated navigation property names which should be included inline in the result object. This works like the OData <code>$expand</code> parameter.

This method will return a copy and not a reference of the entity. It does not load any data and may not return all requested data if it is not available/loaded. If select entries are contained in the parameters and not all selected properties are available, this method will return <code>undefined</code> instead of incomplete data. If no select entries are defined, all properties available on the client will be returned.

Example:<br> <code>{select: "Products/ProductName, Products", expand:"Products"}</code> will return no properties of the entity itself, but only the ProductName property of the Products navigation property. If Products/ProductName has not been loaded before, so is not available on the client, it will return <code>undefined</code>.

Note:<br> If <code>mParameters.select<code> is not specified, the returned object could contain model-internal attributes. This may lead to problems when submitting this data to the service for an update/create operation. To get a copy of the entity without containing such internal attributes, use <code>{select: "*"}</code> instead.
	* @param	sPath Path referencing the object
	* @param	oContext Context the path should be resolved with, in case it is relative
	* @param	mParameters Map of parameters
	* @return	The value for the given path/context or <code>undefined</code> if data or entity type could not be found or was incomplete
	*/
	public function getObject( sPath:String, ?oContext:Dynamic, ?mParameters:Dynamic):Dynamic;

	/**
	* Returns the original value for the property with the given path and context. The original value is the value that was last responded by the server.
	* @param	sPath The path/name of the property
	* @param	oContext The context if available to access the property value
	* @return	the value of the property
	*/
	public function getOriginalProperty( sPath:String, ?oContext:Dynamic):Dynamic;

	/**
	* Returns the changed properties of all changed entities in a map which are still pending. The key is the string name of the entity and the value is an object which contains the changed properties.

In contrast to the two related functions {@link #hasPendingChanges} and {@link #resetChanges}, only client data changes are supported.
	* @return	the pending changes in a map
	*/
	public function getPendingChanges( ):Dynamic;

	/**
	* Returns the value for the property with the given <code>sPath</code>.

If the path points to a navigation property which has been loaded via <code>$expand</code> then the <code>bIncludeExpandEntries</code> parameter determines if the navigation property should be included in the returned value or not. Please note that this currently works for 1..1 navigation properties only.
	* @param	sPath Path/name of the property
	* @param	oContext Context if available to access the property value
	* @param	bIncludeExpandEntries @deprecated Please use {@link #getObject} function with select/expand parameters instead. This parameter should be set when a URI or custom parameter with a <code>$expand</code> system query option was used to retrieve associated entries embedded/inline. If true then the <code>getProperty</code> function returns a desired property value/entry and includes the associated expand entries (if any). Note: A copy and not a reference of the entry will be returned.
	* @return	Value of the property
	*/
	public function getProperty( sPath:String, ?oContext:Dynamic, ?bIncludeExpandEntries:Bool):Dynamic;

	/**
	* null
	* @return	bRefreshAfterChange Whether to automatically refresh after changes
	*/
	public function getRefreshAfterChange( ):Bool;

	/**
	* Returns the current security token.

If the token has not been requested from the server it will be requested first (synchronously).
	* @return	The CSRF security token
	*/
	public function getSecurityToken( ):String;

	/**
	* Return the annotation object. Please note that the metadata is loaded asynchronously and this function might return undefined because the metadata has not been loaded yet. In this case attach to the <code>annotationsLoaded</code> event to get notified when the annotations are available and then call this function.
	* @return	Metadata object
	*/
	public function getServiceAnnotations( ):Dynamic;

	/**
	* Return the parsed XML metadata as a Javascript object.

Please note that the metadata is loaded asynchronously and this function might return undefined because the metadata has not been loaded yet. In this case attach to the <code>metadataLoaded</code> event to get notified when the metadata is available and then call this function.
	* @return	Metadata object
	*/
	public function getServiceMetadata( ):Dynamic;

	/**
	* Checks if there exist pending changes in the model.

By default, only client data changes triggered through: {@link #createEntry} {@link #setProperty} are taken into account.

If <code>bAll</code> is set to <code>true</code>, also deferred requests triggered through: {@link #create} {@link #update} {@link #remove} are taken into account.
	* @param	bAll If set to true, deferred requests are also taken into account.
	* @return	<code>true</code> if there are pending changes, <code>false</code> otherwise.
	*/
	public function hasPendingChanges( ?bAll:Bool):Bool;

	/**
	* Checks if there are pending requests, either ongoing or sequential.
	* @return	Whether there are pending requests
	*/
	public function hasPendingRequests( ):Bool;

	/**
	* Invalidate the model data.

Mark all entries in the model cache as invalid. Next time a context binding or list binding is done, the entry will be detected as invalid and will be refreshed from the server.
	* @param	fnCheckEntry A function which can be used to restrict invalidation to specific entries, gets the entity key and object as parameters and should return true for entities to invalidate.
	* @return	Void
	*/
	public function invalidate( ?fnCheckEntry:()->Void):Void;

	/**
	* Invalidate all entries of the given entity type in the model data.

Mark entries of the provided entity type in the model cache as invalid. Next time a context binding or list binding is done, the entry will be detected as invalid and will be refreshed from the server.
	* @param	sEntityType the qualified name of the entity type
	* @return	Void
	*/
	public function invalidateEntityType( sEntityType:String):Void;
	@:overload( function(vEntry:String):Void{ })

	/**
	* Invalidate a single entry in the model data.

Mark the selected entry in the model cache as invalid. Next time a context binding or list binding is done, the entry will be detected as invalid and will be refreshed from the server.
	* @param	vEntry the reference to the entry, either by key, absolute path or context object
	* @return	Void
	*/
	public function invalidateEntry( vEntry:sap.ui.model.Context):Void;

	/**
	* Checks whether metadata loading has failed in the past.
	* @return	Whether metadata request has failed
	*/
	public function isMetadataLoadingFailed( ):Bool;

	/**
	* Returns a promise for the loaded state of the metadata.

The promise won't get rejected in case the metadata loading failed but is only resolved if the metadata is loaded successfully. If <code>refreshMetadata</code> function is called after this promise is already resolved you should rely on the promise returned by <code>refreshMetadata</code> to get information about the refreshed metadata loaded state.

The Metadata needs to be loaded prior to performing OData calls. Chaining to the returned promise ensures that all required parameters have been loaded, e.g. authentication token.
	* @return	A promise on metadata loaded state
	*/
	public function metadataLoaded( ):js.lib.Promise<ODataModel>;

	/**
	* Trigger a <code>GET</code> request to the OData service that was specified in the model constructor.

The data will be stored in the model. The requested data is returned with the response.
	* @param	sPath A string containing the path to the data which should be retrieved. The path is concatenated to the service URL which was specified in the model constructor.
	* @param	mParameters Optional parameter map containing any of the following properties:
	* @return	An object which has an <code>abort</code> function to abort the current request.
	*/
	public function read( sPath:String, ?mParameters:Dynamic):Dynamic;

	/**
	* Refresh the model.

This will check all bindings for updated data and update the controls if data has been changed.
	* @param	bForceUpdate Force update of controls
	* @param	bRemoveData If set to <code>true</code> then the model data will be removed/cleared. Please note that the data might not be there when calling e.g. <code>getProperty</code> too early before the refresh call returned.
	* @param	sGroupId ID of a request group; requests belonging to the same group will be bundled in one batch request
	* @return	Void
	*/
	public function refresh( ?bForceUpdate:Bool, ?bRemoveData:Bool, ?sGroupId:String):Void;

	/**
	* Refresh XSRF token by performing a GET request against the service root URL.
	* @param	fnSuccess Callback function which is called when the data has been successfully retrieved.
	* @param	fnError Callback function which is called when the request failed. The handler can have the parameter: oError which contains additional error information.
	* @param	bAsync Whether the request should be sent asynchronously
	* @return	An object which has an <code>abort</code> function to abort the current request.
	*/
	public function refreshSecurityToken( ?fnSuccess:()->Void, ?fnError:()->Void, ?bAsync:Bool):Dynamic;

	/**
	* Trigger a <code>DELETE</code> request to the OData service that was specified in the model constructor.
	* @param	sPath A string containing the path to the data that should be removed. The path is concatenated to the service URL which was specified in the model constructor.
	* @param	mParameters Optional, can contain the following attributes:
	* @return	An object which has an <code>abort</code> function to abort the current request.
	*/
	public function remove( sPath:String, ?mParameters:Dynamic):Dynamic;

	/**
	* Resets changes that have been collected.

By default, only client data changes triggered through: {@link #createEntry} {@link #setProperty} are taken into account.

If <code>bAll</code> is set to <code>true</code>, also deferred requests triggered through: {@link #create} {@link #update} {@link #remove} are taken into account.
	* @param	aPath Array of paths that should be reset. If no array is passed, all changes will be reset.
	* @param	bAll If set to true, also deferred requests are taken into account.
	* @return	Resolves when all regarded changes have been reseted.
	*/
	public function resetChanges( ?aPath:Array<Dynamic>, ?bAll:Bool):js.lib.Promise<ODataModel>;

	/**
	* Returns a promise, which will resolve with the security token as soon as it is available.
	* @return	A promise on the CSRF security token
	*/
	public function securityTokenAvailable( ):js.lib.Promise<ODataModel>;

	/**
	* Definition of groups per entity type for two-way binding changes.
	* @param	mGroups A map containing the definition of batch groups for two-way binding changes. The map has the following format: <pre>
{
  "EntityTypeName": {
    groupId: "ID",
    [changeSetId: "ID",]
    [single: true/false,]
  }
}
</pre> <ul> <li><code>groupId</code>: Defines the group for changes of the defined <i>EntityTypeName</i></li> <li><code>changeSetId</code>: ID of a <code>ChangeSet</code> which bundles the changes for the entity type.</li> <li><code>single</code>: Defines if every change will get an own change set (defaults to <code>true</code>)</li> </ul>
	* @return	Void
	*/
	public function setChangeGroups( mGroups:Dynamic):Void;

	/**
	* Sets the default mode how to retrieve the item count for a collection in this model.

The count can be determined in the following ways <ul> <li>by sending a separate <code>$count</code> request</li> <li>by adding parameter <code>$inlinecount=allpages</code> to one or all data requests</li> <li>a combination of the previous two</li> <li>not at all (questions about the size of the collection can't be answered then)</li> </ul> See {@link sap.ui.model.odata.CountMode} for all enumeration values and more details.

Note that a call to this method does not modify the count mode for existing list bindings, only bindings that are created afterwards will use the new mode when no mode is defined at their creation.

If no default count mode is set for an <code>ODataModel</code> (v2), the mode <code>Request</code> will be used.
	* @param	sCountMode The new default count mode for this model
	* @return	Void
	*/
	public function setDefaultCountMode( sCountMode:sap.ui.model.odata.CountMode):Void;

	/**
	* Setting request groups as deferred.

Requests that belong to a deferred group will be sent by explicitly calling {@link #submitChanges}.
	* @param	aGroupIds Array of group IDs that should be set as deferred
	* @return	Void
	*/
	public function setDeferredGroups( aGroupIds:Array<Dynamic>):Void;

	/**
	* Set custom headers which are provided in a key/value map.

These headers are used for requests against the OData backend. Private headers which are set in the ODataModel cannot be modified. These private headers are: <code>accept, accept-language, x-csrf-token, MaxDataServiceVersion, DataServiceVersion</code>.

To remove these custom headers simply set the <code>mCustomHeaders</code> parameter to null. Please also note that when calling this method again all previous custom headers are removed unless they are specified again in the <code>mCustomHeaders</code> parameter.
	* @param	mHeaders The header name/value map.
	* @return	Void
	*/
	public function setHeaders( mHeaders:Dynamic):Void;

	/**
	* Sets a new value for the given property <code>sPath</code> in the model.

If the <code>changeBatchGroup</code> for the changed entity type is set to {@link #setDeferredGroups deferred}, changes could be submitted with {@link #submitChanges}. Otherwise the change will be submitted directly.
	* @param	sPath Path of the property to set
	* @param	oValue Value to set the property to
	* @param	oContext The context which will be used to set the property
	* @param	bAsyncUpdate Whether to update other bindings dependent on this property asynchronously
	* @return	<code>true</code> if the value was set correctly and <code>false</code> if errors occurred like the entry was not found or another entry was already updated.
	*/
	public function setProperty( sPath:String, oValue:Dynamic, ?oContext:sap.ui.model.Context, ?bAsyncUpdate:Bool):Bool;

	/**
	* Defines whether all bindings are updated after a change operation.

This flag can be overruled on request level by providing the <code>refreshAfterChange</code> parameter to the corresponding function (for example {@link #update}).
	* @param	bRefreshAfterChange Whether to automatically refresh after changes
	* @return	Void
	*/
	public function setRefreshAfterChange( bRefreshAfterChange:Bool):Void;

	/**
	* Enable/Disable XCSRF-Token handling.
	* @param	bTokenHandling Whether to use token handling or not
	* @return	Void
	*/
	public function setTokenHandlingEnabled( ?bTokenHandling:Bool):Void;

	/**
	* Enable or disable batch mode for future requests.
	* @param	bUseBatch Whether the requests should be encapsulated in a batch request
	* @return	Void
	*/
	public function setUseBatch( ?bUseBatch:Bool):Void;

	/**
	* Submits the collected changes which were collected by the {@link #setProperty} method.

The update method is defined by the global <code>defaultUpdateMethod</code> parameter which is <code>sap.ui.model.odata.UpdateMethod.Merge</code> by default. In case of a <code>sap.ui.model.odata.UpdateMethod.Merge</code> request only the changed properties will be updated. If a URI with a <code>$expand</code> query option was used then the expand entries will be removed from the collected changes. Changes to this entries should be done on the entry itself. So no deep updates are supported.

<b>Important</b>: The success/error handler will only be called if batch support is enabled. If multiple batch groups are submitted the handlers will be called for every batch group.
	* @param	mParameters A map which contains the following parameter properties:
	* @return	An object which has an <code>abort</code> function to abort the current request or requests
	*/
	public function submitChanges( ?mParameters:Dynamic):Dynamic;

	/**
	* Trigger a <code>PUT/MERGE</code> request to the OData service that was specified in the model constructor.

The update method used is defined by the global <code>defaultUpdateMethod</code> parameter which is <code>sap.ui.model.odata.UpdateMethod.Merge</code> by default. Please note that deep updates are not supported and may not work. These should be done separately and directly on the corresponding entry.
	* @param	sPath A string containing the path to the data that should be updated. The path is concatenated to the sServiceUrl which was specified in the model constructor.
	* @param	oData Data of the entry that should be updated.
	* @param	mParameters Optional, can contain the following attributes:
	* @return	An object which has an <code>abort</code> function to abort the current request.
	*/
	public function update( sPath:String, oData:Dynamic, ?mParameters:Dynamic):Dynamic;

	/**
	* Update all bindings.
	* @param	bForceUpdate If set to <code>false</code>, an update will only be done when the value of a binding changed.
	* @return	Void
	*/
	public function updateBindings( ?bForceUpdate:Bool):Void;
}

