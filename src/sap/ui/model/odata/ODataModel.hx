package sap.ui.model.odata;

@:native("sap.ui.model.odata.ODataModel")

/**
* Model implementation for OData format
*/
extern class ODataModel extends sap.ui.model.Model
{

	/**
	* 
	* @param	sServiceUrl base uri of the service to request data from; additional URL parameters appended here will be appended to every request can be passed with the mParameters object as well: [mParameters.serviceUrl] A serviceURl is required!
	* @param	mParameters (optional) a map which contains the following parameter properties:
	* @return	Object
	*/
	public function new( ?sServiceUrl:String, ?mParameters:Dynamic):Void;

	/**
	* Appends the change batch operations to the end of the batch stack. Only PUT, POST or DELETE batch operations should be included in the specified array. The operations in the array will be included in a single changeset. To embed change operations in different change sets call this method with the corresponding change operations again. If an illegal batch operation is added to the change set nothing will be performed and false will be returned.
	* @param	aChangeOperations an array of change batch operations created via <code>createBatchOperation</code> and <code>sMethod</code> = POST, PUT, MERGE or DELETE
	* @return	Void
	*/
	public function addBatchChangeOperations( aChangeOperations:Array<Dynamic>):Void;

	/**
	* Appends the read batch operations to the end of the batch stack. Only GET batch operations should be included in the specified array. If an illegal batch operation is added to the batch nothing will be performed and false will be returned.
	* @param	aReadOperations an array of read batch operations created via <code>createBatchOperation</code> and <code>sMethod</code> = GET
	* @return	Void
	*/
	public function addBatchReadOperations( aReadOperations:Array<Dynamic>):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:annotationsFailed annotationsFailed} event of this <code>sap.ui.model.odata.ODataModel</code>.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.model.odata.ODataModel</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAnnotationsFailed( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.model.odata.ODataModel;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:annotationsLoaded annotationsLoaded} event of this <code>sap.ui.model.odata.ODataModel</code>.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.model.odata.ODataModel</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAnnotationsLoaded( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.model.odata.ODataModel;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:metadataFailed metadataFailed} event of this <code>sap.ui.model.odata.ODataModel</code>.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.model.odata.ODataModel</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachMetadataFailed( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.model.odata.ODataModel;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:metadataLoaded metadataLoaded} event of this <code>sap.ui.model.odata.ODataModel</code>.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.model.odata.ODataModel</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachMetadataLoaded( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.model.odata.ODataModel;
	@:overload( function(sPath:String, ?oContext:sap.ui.model.Context, ?aSorters:sap.ui.model.Sorter, ?aFilters:sap.ui.model.Filter, ?mParameters:Dynamic):sap.ui.model.ListBinding{ })
	@:overload( function(sPath:String, ?oContext:sap.ui.model.Context, ?aSorters:sap.ui.model.Sorter, ?aFilters:Array<sap.ui.model.Filter>, ?mParameters:Dynamic):sap.ui.model.ListBinding{ })
	@:overload( function(sPath:String, ?oContext:sap.ui.model.Context, ?aSorters:Array<sap.ui.model.Sorter>, ?aFilters:sap.ui.model.Filter, ?mParameters:Dynamic):sap.ui.model.ListBinding{ })

	/**
	* Creates a new list binding for this model.
	* @param	sPath Binding path, either absolute or relative to a given <code>oContext</code>
	* @param	oContext Binding context referring to this model
	* @param	aSorters Initial sort order, can be either a sorter or an array of sorters
	* @param	aFilters Predefined filter/s, can be either a filter or an array of filters
	* @param	mParameters Map which contains additional parameters for the binding
	* @return	oBinding new list binding object
	*/
	public function bindList( sPath:String, ?oContext:sap.ui.model.Context, ?aSorters:Array<sap.ui.model.Sorter>, ?aFilters:Array<sap.ui.model.Filter>, ?mParameters:Dynamic):sap.ui.model.ListBinding;

	/**
	* Trigger a request to the function import odata service that was specified in the model constructor.
	* @param	sFunctionName A string containing the name of the function to call. The name is concatenated to the sServiceUrl which was specified in the model constructor.
	* @param	mParameters Optional parameter map containing any of the following properties:
	* @return	an object which has an <code>abort</code> function to abort the current request.
	*/
	public function callFunction( sFunctionName:String, ?mParameters:Dynamic):Dynamic;

	/**
	* Removes all operations in the current batch.
	* @return	Void
	*/
	public function clearBatch( ):Void;

	/**
	* Trigger a POST request to the odata service that was specified in the model constructor. Please note that deep creates are not supported and may not work.
	* @param	sPath A string containing the path to the collection where an entry should be created. The path is concatenated to the sServiceUrl which was specified in the model constructor.
	* @param	oData data of the entry that should be created.
	* @param	mParameters Optional parameter map containing any of the following properties:
	* @return	an object which has an <code>abort</code> function to abort the current request.
	*/
	public function create( sPath:String, oData:Dynamic, ?mParameters:Dynamic):Dynamic;

	/**
	* Creates a single batch operation (read or change operation) which can be used in a batch request.
	* @param	sPath A string containing the path to the collection or entry where the batch operation should be performed. The path is concatenated to the sServiceUrl which was specified in the model constructor.
	* @param	sMethod for the batch operation. Possible values are GET, PUT, MERGE, POST, DELETE
	* @param	oData optional data payload which should be created, updated, deleted in a change batch operation.
	* @param	oParameters optional parameter for additional information introduced in SAPUI5 1.9.1,
	* @return	Void
	*/
	public function createBatchOperation( sPath:String, sMethod:String, ?oData:Dynamic, ?oParameters:Dynamic):Void;
	@:overload( function(sPath:String, vProperties:Array<Dynamic>):sap.ui.model.Context{ })

	/**
	* Creates a new entry object which is described by the metadata of the entity type of the specified sPath Name. A context object is returned which can be used to bind against the newly created object.

For each created entry a request is created and stored in a request queue. The request queue can be submitted by calling submitChanges. To delete a created entry from the request queue call deleteCreateEntry.

The optional vProperties parameter can be used as follows:

- vProperties could be an array containing the property names which should be included in the new entry. Other properties defined in the entity type are not included. - vProperties could be an object which includes the desired properties and the values which should be used for the created entry.

If vProperties is not specified, all properties in the entity type will be included in the created entry.

If there are no values specified the properties will have undefined values.

Please note that deep creates (including data defined by navigationproperties) are not supported
	* @param	sPath Name of the path to the collection
	* @param	vProperties An array that specifies a set of properties or the entry
	* @return	oContext A Context object that point to the new created entry.
	*/
	public function createEntry( sPath:String, vProperties:Dynamic):sap.ui.model.Context;

	/**
	* Creates the key from the given collection name and property map
	* @param	sCollection The name of the collection
	* @param	oKeyParameters The object containing at least all the key properties of the entity type
	* @param	bDecode Whether the URI decoding should be applied on the key
	* @return	Void
	*/
	public function createKey( sCollection:String, oKeyParameters:Dynamic, bDecode:Bool):Void;

	/**
	* Deletes a created entry from the request queue and the model.
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
	* Detaches event handler <code>fnFunction</code> from the {@link #event:annotationsFailed annotationsFailed} event of this <code>sap.ui.model.odata.ODataModel</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAnnotationsFailed( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.model.odata.ODataModel;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:annotationsLoaded annotationsLoaded} event of this <code>sap.ui.model.odata.ODataModel</code>.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAnnotationsLoaded( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.model.odata.ODataModel;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:metadataFailed metadataFailed} event of this <code>sap.ui.model.odata.ODataModel</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachMetadataFailed( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.model.odata.ODataModel;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:metadataLoaded metadataLoaded} event of this <code>sap.ui.model.odata.ODataModel</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachMetadataLoaded( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.model.odata.ODataModel;

	/**
	* Creates a new subclass of class sap.ui.model.odata.ODataModel with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.Model.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns the default count mode for retrieving the count of collections
	* @return	null
	*/
	public function getDefaultCountMode( ):sap.ui.model.odata.CountMode;

	/**
	* Returns all headers and custom headers which are stored in the OData model.
	* @return	the header map
	*/
	public function getHeaders( ):Dynamic;
	@:overload( function(oObject:Dynamic, bDecode:Bool):Void{ })

	/**
	* Returns the key part from the entry URI or the given context or object
	* @param	oObject The context or object
	* @param	bDecode Whether the URI decoding should be applied on the key
	* @return	Void
	*/
	public function getKey( oObject:sap.ui.model.Context, bDecode:Bool):Void;

	/**
	* Returns a metadata object for class sap.ui.model.odata.ODataModel.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns an instance of an OData meta model which offers a unified access to both OData V2 metadata and V4 annotations. It uses the existing {@link sap.ui.model.odata.ODataMetadata} as a foundation and merges V4 annotations from the existing {@link sap.ui.model.odata.ODataAnnotations} directly into the corresponding model element.

<b>BEWARE:</b> Access to this OData meta model will fail before the promise returned by {@link sap.ui.model.odata.ODataMetaModel#loaded loaded} has been resolved!
	* @return	The meta model for this ODataModel
	*/
	public function getMetaModel( ):sap.ui.model.odata.ODataMetaModel;

	/**
	* Returns the value for the property with the given <code>sPath</code>. If the path points to a navigation property which has been loaded via $expand then the <code>bIncludeExpandEntries</code> parameter determines if the navigation property should be included in the returned value or not. Please note that this currently works for 1..1 navigation properties only.
	* @param	sPath the path/name of the property
	* @param	oContext the context if available to access the property value
	* @param	bIncludeExpandEntries This parameter should be set when a URI or custom parameter with a $expand System Query Option was used to retrieve associated entries embedded/inline. If true then the getProperty function returns a desired property value/entry and includes the associated expand entries (if any). If false the associated/expanded entry properties are removed and not included in the desired entry as properties at all. This is useful for performing updates on the base entry only. Note: A copy and not a reference of the entry will be returned.
	* @return	the value of the property
	*/
	public function getProperty( sPath:String, ?oContext:Dynamic, ?bIncludeExpandEntries:Bool):Dynamic;

	/**
	* Returns the current security token. If the token has not been requested from the server it will be requested first.
	* @return	the CSRF security token
	*/
	public function getSecurityToken( ):String;

	/**
	* Return the annotation object. Please note that when using the model with bLoadMetadataAsync = true then this function might return undefined because the metadata has not been loaded yet. In this case attach to the <code>annotationsLoaded</code> event to get notified when the annotations are available and then call this function.
	* @return	metdata object
	*/
	public function getServiceAnnotations( ):Dynamic;

	/**
	* Return the metadata object. Please note that when using the model with bLoadMetadataAsync = true then this function might return undefined because the metadata has not been loaded yet. In this case attach to the <code>metadataLoaded</code> event to get notified when the metadata is available and then call this function.
	* @return	metdata object
	*/
	public function getServiceMetadata( ):Dynamic;

	/**
	* Checks if there exist pending changes in the model created by the setProperty method.
	* @return	true/false
	*/
	public function hasPendingChanges( ):Bool;

	/**
	* Trigger a GET request to the odata service that was specified in the model constructor. The data will not be stored in the model. The requested data is returned with the response.
	* @param	sPath A string containing the path to the data which should be retrieved. The path is concatenated to the sServiceUrl which was specified in the model constructor.
	* @param	mParameters Optional parameter map containing any of the following properties:
	* @return	an object which has an <code>abort</code> function to abort the current request.
	*/
	public function read( sPath:String, ?mParameters:Dynamic):Dynamic;

	/**
	* Refresh the model.

This will check all bindings for updated data and update the controls if data has been changed.
	* @param	bForceUpdate Force update of controls
	* @param	bRemoveData If set to true then the model data will be removed/cleared. Please note that the data might not be there when calling e.g. getProperty too early before the refresh call returned.
	* @return	Void
	*/
	public function refresh( ?bForceUpdate:Bool, ?bRemoveData:Bool):Void;

	/**
	* Refreshes the metadata for model, e.g. in case the first request for metadata has failed.
	* @return	Void
	*/
	public function refreshMetadata( ):Void;

	/**
	* refresh XSRF token by performing a GET request against the service root URL.
	* @param	fnSuccess a callback function which is called when the data has been successfully retrieved.
	* @param	fnError a callback function which is called when the request failed. The handler can have the parameter: oError which contains additional error information.
	* @param	bAsync true for asynchronous requests.
	* @return	an object which has an <code>abort</code> function to abort the current request.
	*/
	public function refreshSecurityToken( ?fnSuccess:(Dynamic)->Void, ?fnError:(Dynamic)->Void, ?bAsync:Bool):Dynamic;

	/**
	* Trigger a DELETE request to the odata service that was specified in the model constructor.
	* @param	sPath A string containing the path to the data that should be removed. The path is concatenated to the sServiceUrl which was specified in the model constructor.
	* @param	mParameters Optional, can contain the following attributes: oContext, fnSuccess, fnError, sETag:
	* @return	an object which has an <code>abort</code> function to abort the current request.
	*/
	public function remove( sPath:String, ?mParameters:Dynamic):Dynamic;

	/**
	* Resets the collected changes by the setProperty method and reloads the data from the server.
	* @param	fnSuccess a callback function which is called when the data has been successfully resetted. The handler can have the following parameters: oData and response.
	* @param	fnError a callback function which is called when the request failed
	* @return	Void
	*/
	public function resetChanges( ?fnSuccess:(Dynamic)->Void, ?fnError:(Dynamic)->Void):Void;

	/**
	* Sets the default mode how to retrieve the item count for a collection in this model.

The count can be determined in the following ways <ul> <li>by sending a separate <code>$count</code> request</li> <li>by adding parameter <code>$inlinecount=allpages</code> to one or all data requests</li> <li>a combination of the previous two</li> <li>not at all (questions about the size of the collection can't be answered then)</li> </ul> See {@link sap.ui.model.odata.CountMode} for all enumeration values and more details.

Note that a call to this method does not modify the count mode for existing list bindings, only bindings that are created afterwards will use the new mode when no mode is defined at their creation.

If no default count mode is set for an <code>ODataModel</code> (v1), the mode <code>Both</code> will be used for compatibility reasons.
	* @param	sCountMode The new default count mode for this model
	* @return	Void
	*/
	public function setDefaultCountMode( sCountMode:sap.ui.model.odata.CountMode):Void;

	/**
	* Set custom headers which are provided in a key/value map. These headers are used for requests against the OData backend. Private headers which are set in the ODataModel cannot be modified. These private headers are: accept, accept-language, x-csrf-token, MaxDataServiceVersion, DataServiceVersion.

To remove these headers simply set the mCustomHeaders parameter to null. Please also note that when calling this method again all previous custom headers are removed unless they are specified again in the mCustomHeaders parameter.
	* @param	mHeaders the header name/value map.
	* @return	Void
	*/
	public function setHeaders( mHeaders:Dynamic):Void;

	/**
	* Sets a new value for the given property <code>sPropertyName</code> in the model without triggering a server request. This can be done by the submitChanges method.

Note: Only one entry of one collection can be updated at once. Otherwise a fireRejectChange event is fired.

Before updating a different entry the existing changes of the current entry have to be submitted or resetted by the corresponding methods: submitChanges, resetChanges.

IMPORTANT: All pending changes are resetted in the model if the application triggeres any kind of refresh on that entry. Make sure to submit the pending changes first. To determine if there are any pending changes call the hasPendingChanges method.
	* @param	sPath path of the property to set
	* @param	oValue value to set the property to
	* @param	oContext the context which will be used to set the property
	* @param	bAsyncUpdate whether to update other bindings dependent on this property asynchronously
	* @return	true if the value was set correctly and false if errors occurred like the entry was not found or another entry was already updated.
	*/
	public function setProperty( sPath:String, oValue:Dynamic, ?oContext:Dynamic, ?bAsyncUpdate:Bool):Bool;

	/**
	* Enable/Disable automatic updates of all Bindings after change operations
	* @param	bRefreshAfterChange null
	* @return	Void
	*/
	public function setRefreshAfterChange( bRefreshAfterChange:Bool):Void;

	/**
	* Enable/Disable XCSRF-Token handling
	* @param	bTokenHandling whether to use token handling or not
	* @return	Void
	*/
	public function setTokenHandlingEnabled( ?bTokenHandling:Bool):Void;

	/**
	* Enable/Disable batch for all requests
	* @param	bUseBatch whether the requests should be encapsulated in a batch request
	* @return	Void
	*/
	public function setUseBatch( ?bUseBatch:Bool):Void;

	/**
	* Submits the collected changes in the batch which were collected via <code>addBatchReadOperations</code> or <code>addBatchChangeOperations</code>. The batch will be cleared afterwards. If the batch is empty, no request will be sent and false will be returned.

<b>Note:</b> No data will be stored in the model as long as <code>bImportData</code> is not set.
	* @param	fnSuccess A callback function which is called when the batch request has been successfully sent. Note: Errors that may have come up in the single batch operations can be accessed in the <code>aErrorResponses</code> parameter in the callback handler. The handler can have the following parameters: <code>oData</code>, <code>oResponse</code> and <code>aErrorResponses</code>.
	* @param	fnError A callback function which is called when the batch request failed. The handler can have the parameter <code>oError</code> which contains additional error information.
	* @param	bAsync true for asynchronous request
	* @param	bImportData Whether response data should be imported into the model
	* @return	An object which has an <code>abort</code> function to abort the current request. Returns false if no request will be performed because the batch is empty.
	*/
	public function submitBatch( ?fnSuccess:(Dynamic)->Void, ?fnError:(Dynamic)->Void, ?bAsync:Bool, ?bImportData:Bool):Dynamic;

	/**
	* Submits the collected changes which were collected by the setProperty method. A MERGE request will be triggered to only update the changed properties. If a URI with a $expand System Query Option was used then the expand entries will be removed from the collected changes. Changes to this entries should be done on the entry itself. So no deep updates are supported.
	* @param	fnSuccess a callback function which is called when the data has been successfully updated. The handler can have the following parameters: oData and response.
	* @param	fnError a callback function which is called when the request failed. The handler can have the parameter: oError which contains additional error information
	* @param	oParameters optional parameter for additional information introduced in SAPUI5 1.9.1
	* @return	an object which has an <code>abort</code> function to abort the current request.
	*/
	public function submitChanges( ?fnSuccess:(Dynamic)->Void, ?fnError:(Dynamic)->Void, ?oParameters:Dynamic):Dynamic;

	/**
	* Trigger a PUT/MERGE request to the odata service that was specified in the model constructor. Please note that deep updates are not supported and may not work. These should be done seperate on the entry directly.
	* @param	sPath A string containing the path to the data that should be updated. The path is concatenated to the sServiceUrl which was specified in the model constructor.
	* @param	oData data of the entry that should be updated.
	* @param	mParameters Optional, can contain the following attributes:
	* @return	an object which has an <code>abort</code> function to abort the current request.
	*/
	public function update( sPath:String, oData:Dynamic, ?mParameters:Dynamic):Dynamic;

	/**
	* update all bindings
	* @param	bForceUpdate If set to false an update will only be done when the value of a binding changed.
	* @return	Void
	*/
	public function updateBindings( ?bForceUpdate:Bool):Void;
}

