package sap.ui.model.odata.v4;

@:native("sap.ui.model.odata.v4.ODataPropertyBinding")

/**
* Property binding for an OData V4 model. An event handler can only be attached to this binding for the following events: 'AggregatedDataStateChange', 'change', 'dataReceived', 'dataRequested' and 'DataStateChange'. For unsupported events, an error is thrown.
*/
extern class ODataPropertyBinding extends sap.ui.model.PropertyBinding
{

	/**
	* Destroys the object. The object must not be used anymore after this function was called.
	* @return	Void
	*/
	public function destroy( ):Void;

	/**
	* Creates a new subclass of class sap.ui.model.odata.v4.ODataPropertyBinding with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.PropertyBinding.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns the group ID of the binding that is used for read requests. The group ID of the binding is alternatively defined by <ul> <li>the <code>groupId</code> parameter of the OData model; see {@link sap.ui.model.odata.v4.ODataModel#constructor},</li> <li>the <code>$$groupId</code> binding parameter; see {@link sap.ui.model.odata.v4.ODataModel#bindList} and {@link sap.ui.model.odata.v4.ODataModel#bindContext}.</li> </ul>
	* @return	The group ID
	*/
	public function getGroupId( ):String;

	/**
	* Returns a metadata object for class sap.ui.model.odata.v4.ODataPropertyBinding.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

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
	* Returns the current value.
	* @return	The current value
	*/
	public function getValue( ):Dynamic;

	/**
	* Determines which type of value list exists for this property.
	* @return	The value list type
	*/
	public function getValueListType( ):sap.ui.model.odata.v4.ValueListType;

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
	* Requests the value of the property binding.
	* @return	A promise resolving with the resulting value or <code>undefined</code> if it could not be determined
	*/
	public function requestValue( ):js.lib.Promise<ODataPropertyBinding>;

	/**
	* Requests information to retrieve a value list for this property.
	* @param	bAutoExpandSelect The value of the parameter <code>autoExpandSelect</code> for value list models created by this method. If the value list model is this binding's model, this flag has no effect. Supported since 1.68.0
	* @return	See {@link sap.ui.model.odata.v4.ODataMetaModel#requestValueListInfo}
	*/
	public function requestValueListInfo( ?bAutoExpandSelect:Bool):js.lib.Promise<ODataPropertyBinding>;

	/**
	* Determines which type of value list exists for this property.
	* @return	A promise that is resolved with the type of the value list. It is rejected if the property cannot be found in the metadata.
	*/
	public function requestValueListType( ):js.lib.Promise<ODataPropertyBinding>;

	/**
	* Resets all pending changes of this binding, see {@link #hasPendingChanges}. Resets also invalid user input.
	* @return	A promise which is resolved without a defined result as soon as all changes in the binding itself and all dependent bindings are canceled (since 1.72.0)
	*/
	public function resetChanges( ):js.lib.Promise<ODataPropertyBinding>;

	/**
	* Method not supported
	* @return	Void
	*/
	public function resume( ):Void;

	/**
	* Sets the optional type and internal type for this binding; used for formatting and parsing. Fires a change event if the type has changed.
	* @param	oType The type for this binding
	* @param	sInternalType The internal type of the element property which owns this binding, for example "any", "boolean", "float", "int", "string"; see {@link sap.ui.model.odata.type} for more information
	* @return	Void
	*/
	public function setType( oType:sap.ui.model.Type, sInternalType:String):Void;

	/**
	* Sets the new current value and updates the cache. If the value cannot be accepted or cannot be updated on the server, an error is logged to the console and added to the message manager as a technical message.
	* @param	vValue The new value which must be primitive
	* @param	sGroupId The group ID to be used for this update call; if not specified, the update group ID for this binding (or its relevant parent binding) is used, see {@link #getUpdateGroupId}. Valid values are <code>undefined</code>, '$auto', '$auto.*', '$direct' or application group IDs as specified in {@link sap.ui.model.odata.v4.ODataModel}.
	* @return	Void
	*/
	public function setValue( vValue:Dynamic, ?sGroupId:String):Void;

	/**
	* Method not supported
	* @return	Void
	*/
	public function suspend( ):Void;
}

