package sap.ui.model.odata.v4;

@:native("sap.ui.model.odata.v4.ODataModel")

/**
* Model implementation for OData V4.

Every resource path (relative to the service root URL, no query options) according to "4 Resource Path" in specification "OData Version 4.0 Part 2: URL Conventions" is a valid data binding path within this model if a leading slash is added; for example "/" + "SalesOrderList('A%2FB%26C')" to access an entity instance with key "A/B&C". Note that appropriate URI encoding is necessary, see the example of {@link sap.ui.model.odata.v4.ODataUtils.formatLiteral}. "4.5.1 Addressing Actions" needs an operation binding, see {@link sap.ui.model.odata.v4.ODataContextBinding}.

Note that the OData V4 model has its own {@link sap.ui.model.odata.v4.Context} class. Bindings which are relative to such a V4 context depend on their corresponding parent binding and do not access data with their own service requests unless parameters are provided.

<b>Group IDs</b> control the model's use of batch requests. Valid group IDs are: <ul> <li><b>$auto</b> and <b>$auto.*</b>: Bundles requests from the model in a batch request which is sent automatically before rendering. You can use different '$auto.*' group IDs to use different batch requests. The suffix may be any non-empty string consisting of alphanumeric characters from the basic Latin alphabet, including the underscore. The submit mode for these group IDs is always {@link sap.ui.model.odata.v4.SubmitMode#Auto}. </li> <li><b>$direct</b>: Sends requests directly without batch. The submit mode for this group ID is always {@link sap.ui.model.odata.v4.SubmitMode#Direct}. </li> <li>An application group ID, which is a non-empty string consisting of alphanumeric characters from the basic Latin alphabet, including the underscore. By default, an application group has the submit mode {@link sap.ui.model.odata.v4.SubmitMode#API}. It is possible to use a different submit mode; for details see <code>mParameters.groupProperties</code>. </li> </ul>
*/
extern class ODataModel extends sap.ui.model.Model
{

	/**
	* 
	* @param	mParameters The parameters
	* @return	Object
	*/
	public function new( ?mParameters:Dynamic):Void;

	/**
	* Attach event handler <code>fnFunction</code> to the 'sessionTimeout' event of this model.
	* @param	fnFunction The function to call when the event occurs
	* @param	oListener Object on which to call the given function
	* @return	<code>this</code> to allow method chaining
	*/
	public function attachSessionTimeout( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v4.ODataModel;

	/**
	* Creates a new context binding for the given path, context and parameters.

This binding is inactive and will not know the bound context initially. You have to call {@link sap.ui.model.Binding#initialize} to get it updated asynchronously and register a change listener at the binding to be informed when the bound context is available.
	* @param	sPath The binding path in the model; must not end with a slash
	* @param	oContext The context which is required as base for a relative path
	* @param	mParameters Map of binding parameters which can be OData query options as specified in "OData Version 4.0 Part 2: URL Conventions" or the binding-specific parameters as specified below. Note: The binding creates its own data service request if it is absolute or if it has any parameters or if it is relative and has a context created via {@link #createBindingContext}. The following OData query options are allowed: <ul> <li> All "5.2 Custom Query Options" except for those with a name starting with "sap-" <li> The $count, $expand, $filter, $levels, $orderby, $search and $select "5.1 System Query Options"; OData V4 only allows $count, $filter, $levels, $orderby and $search inside resource paths that identify a collection. In our case here, this means you can only use them inside $expand. </ul> All other query options lead to an error. Query options specified for the binding overwrite model query options.
	* @return	The context binding
	*/
	public function bindContext( sPath:String, ?oContext:sap.ui.model.odata.v4.Context, ?mParameters:Dynamic):sap.ui.model.odata.v4.ODataContextBinding;
	@:overload( function(sPath:String, ?oContext:sap.ui.model.Context, ?vSorters:sap.ui.model.Sorter, ?vFilters:sap.ui.model.Filter, ?mParameters:Dynamic):sap.ui.model.odata.v4.ODataListBinding{ })
	@:overload( function(sPath:String, ?oContext:sap.ui.model.Context, ?vSorters:sap.ui.model.Sorter, ?vFilters:Array<sap.ui.model.Filter>, ?mParameters:Dynamic):sap.ui.model.odata.v4.ODataListBinding{ })
	@:overload( function(sPath:String, ?oContext:sap.ui.model.Context, ?vSorters:Array<sap.ui.model.Sorter>, ?vFilters:sap.ui.model.Filter, ?mParameters:Dynamic):sap.ui.model.odata.v4.ODataListBinding{ })

	/**
	* Creates a new list binding for the given path and optional context which must resolve to an absolute OData path for an entity set.
	* @param	sPath The binding path in the model; must not be empty or end with a slash
	* @param	oContext The context which is required as base for a relative path
	* @param	vSorters The dynamic sorters to be used initially. Call {@link sap.ui.model.odata.v4.ODataListBinding#sort} to replace them. Static sorters, as defined in the '$orderby' binding parameter, are always executed after the dynamic sorters. Supported since 1.39.0.
	* @param	vFilters The dynamic application filters to be used initially. Call {@link sap.ui.model.odata.v4.ODataListBinding#filter} to replace them. Static filters, as defined in the '$filter' binding parameter, are always combined with the dynamic filters using a logical <code>AND</code>. Supported since 1.39.0.
	* @param	mParameters Map of binding parameters which can be OData query options as specified in "OData Version 4.0 Part 2: URL Conventions" or binding-specific parameters as specified below. Note: The binding creates its own data service request if it is absolute or if it has any parameters or if it is relative and has a context created via {@link #createBindingContext} or if it has sorters or filters. The following OData query options are allowed: <ul> <li> All "5.2 Custom Query Options" except for those with a name starting with "sap-" <li> The $apply, $count, $expand, $filter, $levels, $orderby, $search, and $select "5.1 System Query Options" </ul> All other query options lead to an error. Query options specified for the binding overwrite model query options.
	* @return	The list binding
	*/
	public function bindList( sPath:String, ?oContext:sap.ui.model.Context, ?vSorters:Array<sap.ui.model.Sorter>, ?vFilters:Array<sap.ui.model.Filter>, ?mParameters:Dynamic):sap.ui.model.odata.v4.ODataListBinding;

	/**
	* Creates a new property binding for the given path. This binding is inactive and will not know the property value initially. You have to call {@link sap.ui.model.Binding#initialize} to get it updated asynchronously and register a change listener at the binding to be informed when the value is available.

It is possible to create a property binding pointing to metadata. A '##' in the binding's path is recognized as a separator and splits it into two parts. The part before the separator is resolved with the binding's context and the result is transformed into a metadata context (see {@link sap.ui.model.odata.v4.ODataMetaModel#getMetaContext}). The part following the separator is then interpreted relative to this metadata context, even if it starts with a '/'; a trailing '/' is allowed here, see {@link sap.ui.model.odata.v4.ODataMetaModel#requestObject} for the effect it has.

If the target type specified in the corresponding control property's binding info is "any" and the binding is relative or points to metadata, the binding may have an object value; in this case and unless the binding refers to an action advertisement the binding's mode must be {@link sap.ui.model.BindingMode.OneTime}.
	* @param	sPath The binding path in the model; must not be empty. Must not end with a '/' unless the binding points to metadata.
	* @param	oContext The context which is required as base for a relative path
	* @param	mParameters Map of binding parameters which can be OData query options as specified in "OData Version 4.0 Part 2: URL Conventions" or the binding-specific parameter "$$groupId". All "5.2 Custom Query Options" are allowed except for those with a name starting with "sap-". All other query options lead to an error. Query options specified for the binding overwrite model query options. Note: The binding only creates its own data service request if it is absolute or if it is relative to a context created via {@link #createBindingContext}. The binding parameters are ignored in case the binding creates no own data service request or in case the binding points to metadata.
	* @return	The property binding
	*/
	public function bindProperty( sPath:String, ?oContext:sap.ui.model.Context, ?mParameters:Dynamic):sap.ui.model.odata.v4.ODataPropertyBinding;

	/**
	* Method not supported
	* @return	Void
	*/
	public function bindTree( ):Void;

	/**
	* Creates a binding context for the given path. A relative path can only be resolved if a context is provided. Note: The parameters <code>mParameters</code>, <code>fnCallBack</code>, and <code>bReload</code> from {@link sap.ui.model.Model#createBindingContext} are not supported.

It is possible to create binding contexts pointing to metadata. A '##' is recognized as separator in the resolved path and splits it into two parts; note that '#' may also be used as separator but is deprecated since 1.51. The part before the separator is transformed into a metadata context (see {@link sap.ui.model.odata.v4.ODataMetaModel#getMetaContext}). The part following the separator is then interpreted relative to this metadata context, even if it starts with a '/'; a trailing '/' is allowed here, see {@link sap.ui.model.odata.v4.ODataMetaModel#requestObject} for the effect it has.

A binding path may also point to an operation advertisement which is addressed with '#<namespace>.<operation>' and is part of the data payload, not the metadata. The metadata of an operation can be addressed via '##' as described above.

Examples: <ul> <li><code>/Products('42')/Name##@com.sap.vocabularies.Common.v1.Label</code> points to the "Label" annotation of the "Name" property of the entity set "Products". <li><code>/##Products/Name@com.sap.vocabularies.Common.v1.Label</code> has no data path part and thus starts at the metadata root. It also points to the "Label" annotation of the "Name" property of the entity set "Products". <li><code>/Products##/</code> points to the entity type (note the trailing '/') of the entity set "Products". <li><code>/EMPLOYEES('1')/##com.sap.Action</code> points to the metadata of an action bound to the entity set "EMPLOYEES". <li><code>/EMPLOYEES('1')/#com.sap.Action</code> does not point to metadata, but to the action advertisement. </ul>
	* @param	sPath The binding path, may be relative to the provided context
	* @param	oContext The context which is required as base for a relative path
	* @return	The binding context with the resolved path and the model instance
	*/
	public function createBindingContext( sPath:String, ?oContext:sap.ui.model.Context):sap.ui.model.Context;

	/**
	* Destroys this model, its requestor and its meta model.
	* @return	Void
	*/
	public function destroy( ):Void;

	/**
	* Method not supported
	* @return	Void
	*/
	public function destroyBindingContext( ):Void;

	/**
	* Detach event handler <code>fnFunction</code> from the 'sessionTimeout' event of this model.
	* @param	fnFunction The function to call when the event occurs
	* @param	oListener Object on which to call the given function
	* @return	<code>this</code> to allow method chaining
	*/
	public function detachSessionTimeout( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v4.ODataModel;

	/**
	* Creates a new subclass of class sap.ui.model.odata.v4.ODataModel with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.Model.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns the model's group ID.
	* @return	The group ID
	*/
	public function getGroupId( ):String;

	/**
	* Returns a metadata object for class sap.ui.model.odata.v4.ODataModel.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the meta model for this ODataModel.
	* @return	The meta model for this ODataModel
	*/
	public function getMetaModel( ):sap.ui.model.odata.v4.ODataMetaModel;

	/**
	* Method not supported
	* @return	Void
	*/
	public function getObject( ):Void;

	/**
	* Returns the version of the OData service.
	* @return	The version of the OData service
	*/
	public function getODataVersion( ):String;

	/**
	* Method not supported
	* @return	Void
	*/
	public function getOriginalProperty( ):Void;

	/**
	* Method not supported
	* @return	Void
	*/
	public function getProperty( ):Void;

	/**
	* Returns the model's update group ID.
	* @return	The update group ID
	*/
	public function getUpdateGroupId( ):String;

	/**
	* Returns <code>true</code> if there are pending changes, meaning updates or created entities (see {@link sap.ui.model.odata.v4.ODataListBinding#create}) that have not yet been successfully sent to the server.
	* @return	<code>true</code> if there are pending changes
	*/
	public function hasPendingChanges( ):Bool;

	/**
	* Refreshes the model by calling refresh on all bindings which have a change event handler attached.

Note: When calling {@link #refresh} multiple times, the result of the request triggered by the last call determines the model's data; it is <b>independent</b> of the order of calls to {@link #submitBatch} with the given group ID.

If there are pending changes, an error is thrown. Use {@link #hasPendingChanges} to check if there are pending changes. If there are changes, call {@link #submitBatch} to submit the changes or {@link #resetChanges} to reset the changes before calling {@link #refresh}.
	* @param	sGroupId The group ID to be used for refresh; valid values are <code>undefined</code>, '$auto', '$auto.*', '$direct' or application group IDs as specified in {@link sap.ui.model.odata.v4.ODataModel}. It is ignored for suspended bindings, because resume uses the binding's group ID
	* @return	Void
	*/
	public function refresh( ?sGroupId:String):Void;

	/**
	* Resets all property changes and created entities associated with the given group ID which have not been successfully submitted via {@link #submitBatch}. Resets also invalid user input for the same group ID. This function does not reset the deletion of entities (see {@link sap.ui.model.odata.v4.Context#delete}) and the execution of OData operations (see {@link sap.ui.model.odata.v4.ODataContextBinding#execute}).
	* @param	sGroupId A valid group ID as specified in {@link sap.ui.model.odata.v4.ODataModel}. If it is <code>undefined</code>, the model's <code>updateGroupId</code> is used. Note that the default <code>updateGroupId</code> is '$auto', which is valid here since 1.67.0.
	* @return	Void
	*/
	public function resetChanges( ?sGroupId:String):Void;

	/**
	* Method not supported
	* @return	Void
	*/
	public function setLegacySyntax( ):Void;

	/**
	* Submits the requests associated with the given group ID in one batch request. Requests from subsequent calls to this method for the same group ID may be combined in one batch request using separate change sets. For group IDs with {@link sap.ui.model.odata.v4.SubmitMode.Auto}, only a single change set is used; this method is useful to repeat failed updates or creates (see {@link sap.ui.model.odata.v4.ODataListBinding#create}).
	* @param	sGroupId A valid group ID as specified in {@link sap.ui.model.odata.v4.ODataModel}.
	* @return	A promise on the outcome of the HTTP request resolving with <code>undefined</code>; it is rejected with an error if the batch request itself fails
	*/
	public function submitBatch( sGroupId:String):js.lib.Promise<ODataModel>;

	/**
	* Returns a string representation of this object including the service URL.
	* @return	A string description of this model
	*/
	public function toString( ):String;
}

