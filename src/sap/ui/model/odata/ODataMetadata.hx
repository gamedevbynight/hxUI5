package sap.ui.model.odata;

@:native("sap.ui.model.odata.ODataMetadata")

/**
* Implementation to access OData metadata
*/
extern class ODataMetadata extends sap.ui.base.EventProvider
{

	/**
	* 
	* @param	sMetadataURI needs the correct metadata uri including $metadata
	* @param	mParams optional map of parameters.
	* @return	Object
	*/
	public function new( ?sMetadataURI:String, ?mParams:Dynamic):Void;

	/**
	* Attach event-handler <code>fnFunction</code> to the 'failed' event of this <code>sap.ui.model.odata.ODataMetadata</code>.
	* @param	oData The object, that should be passed along with the event-object when firing the event.
	* @param	fnFunction The function to call, when the event occurs. This function will be called on the oListener-instance (if present) or in a 'static way'.
	* @param	oListener Object on which to call the given function. If empty, the global context (window) is used.
	* @return	<code>this</code> to allow method chaining
	*/
	public function attachFailed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.ODataMetadata;

	/**
	* Attach event-handler <code>fnFunction</code> to the 'loaded' event of this <code>sap.ui.model.odata.ODataMetadata</code>.
	* @param	oData The object, that should be passed along with the event-object when firing the event.
	* @param	fnFunction The function to call, when the event occurs. This function will be called on the oListener-instance (if present) or in a 'static way'.
	* @param	oListener Object on which to call the given function. If empty, the global context (window) is used.
	* @return	<code>this</code> to allow method chaining
	*/
	public function attachLoaded( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.ODataMetadata;

	/**
	* Detach event-handler <code>fnFunction</code> from the 'failed' event of this <code>sap.ui.model.odata.ODataMetadata</code>.

The passed function and listener object must match the ones previously used for event registration.
	* @param	fnFunction The function to call, when the event occurs.
	* @param	oListener Object on which the given function had to be called.
	* @return	<code>this</code> to allow method chaining
	*/
	public function detachFailed( fnFunction:()->Void, oListener:Dynamic):sap.ui.model.odata.ODataMetadata;

	/**
	* Detach event-handler <code>fnFunction</code> from the 'loaded' event of this <code>sap.ui.model.odata.ODataMetadata</code>.

The passed function and listener object must match the ones previously used for event registration.
	* @param	fnFunction The function to call, when the event occurs.
	* @param	oListener Object on which the given function had to be called.
	* @return	<code>this</code> to allow method chaining
	*/
	public function detachLoaded( fnFunction:()->Void, oListener:Dynamic):sap.ui.model.odata.ODataMetadata;

	/**
	* Creates a new subclass of class sap.ui.model.odata.ODataMetadata with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.EventProvider.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.model.odata.ODataMetadata.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Return the metadata object
	* @return	metdata object
	*/
	public function getServiceMetadata( ):Dynamic;

	/**
	* Get the use-batch extension value if any
	* @return	true/false
	*/
	public function getUseBatch( ):Bool;

	/**
	* Checks whether metadata loading has already failed
	* @return	returns whether metadata request has failed
	*/
	public function isFailed( ):Bool;

	/**
	* Checks whether metadata is available
	* @return	returns whether metadata is already loaded
	*/
	public function isLoaded( ):Bool;

	/**
	* Returns a promise for the loaded state of the metadata
	* @return	returns a promise on metadata loaded state
	*/
	public function loaded( ):js.lib.Promise<ODataMetadata>;

	/**
	* Refreshes the metadata creating a new request to the server. Returns a new promise which can be resolved or rejected depending on the metadata loading state.
	* @return	returns a promise on metadata loaded state
	*/
	public function refresh( ):js.lib.Promise<ODataMetadata>;
}

