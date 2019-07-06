package sap.ui.model.odata.v2;

@:native("sap.ui.model.odata.v2.ODataAnnotations")

/**
* Annotation loader for OData V2 services
*/
extern class ODataAnnotations extends sap.ui.base.EventProvider
{

	/**
	* 
	* @param	oMetadata Metadata object with the metadata information needed to parse the annotations
	* @param	mOptions Obligatory options
	* @return	Object
	*/
	public function new( ?oMetadata:sap.ui.model.odata.ODataMetadata, ?mOptions:Dynamic):Void;
	@:overload( function(vSource:String):js.lib.Promise<ODataAnnotations>{ })
	@:overload( function(vSource:Array<String>):js.lib.Promise<ODataAnnotations>{ })
	@:overload( function(vSource:sap.ui.model.odata.v2.odataannotations.Source):js.lib.Promise<ODataAnnotations>{ })

	/**
	* Adds one or several sources to the annotation loader. Sources will be loaded instantly but merged only after the previously added source has either been successfully merged or failed.
	* @param	vSource One or several annotation source(s). Can be either a string or a map of the type <code>sap.ui.model.odata.v2.ODataAnnotations.Source</code> or an array containing several (either strings or source objects).
	* @return	The promise to (load,) parse and merge the given source(s). The Promise resolves on success with an array of maps containing properties <code>source</code> and <code>data</code>. See the parameters of the <code>success</code> event for more details. The promise fails in case at least one source could not be (loaded,) parsed or merged with an array of objects containing Errors and/or Success objects.
	*/
	public function addSource( vSource:Array<sap.ui.model.odata.v2.odataannotations.Source>):js.lib.Promise<ODataAnnotations>;

	/**
	* This event exists for compatibility with the old Annotation loader Attaches the given callback to the <code>allFailed</code> event. This event is fired when no annotation from a group of sources was successfully (loaded,) parsed and merged. The parameter <code>result</code> will be set on the event argument and contains an array of Errors in the order in which the sources had been added.
	* @param	oData The object, that should be passed along with the event-object when firing the event.
	* @param	fnFunction The event callback. This function will be called in the context of the oListener object if given as the next argument.
	* @param	oListener Object to use as context of the callback. If empty, the global context is used.
	* @return	<code>this</code>-reference to allow method chaining
	*/
	public function attachAllFailed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v2.ODataAnnotations;

	/**
	* Attaches the given callback to the <code>error</code> event, which is fired whenever a source cannot be loaded, parsed or merged into the annotation data. The following parameters will be set on the event object that is given to the callback function: <code>source</code> - A map containing the properties <code>type</code> - containing either "url" or "xml" - and <code>data</code> containing the data given as source, either a URL or an XML string depending on how the source was added. <code>error</code> - An Error object describing the problem that occurred
	* @param	oData The object, that should be passed along with the event-object when firing the event.
	* @param	fnFunction The event callback. This function will be called in the context of the oListener object if given as the next argument.
	* @param	oListener Object to use as context of the callback. If empty, the global context is used.
	* @return	<code>this</code>-reference to allow method chaining
	*/
	public function attachError( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v2.ODataAnnotations;

	/**
	* Attaches the given callback to the <code>failed</code> event. This event is fired when at least one annotation from a group of sources was not successfully (loaded,) parsed or merged. The parameter <code>result</code> will be set on the event argument and contains an array of Errors in the order in which the sources had been added.
	* @param	oData The object, that should be passed along with the event-object when firing the event.
	* @param	fnFunction The event callback. This function will be called in the context of the oListener object if given as the next argument.
	* @param	oListener Object to use as context of the callback. If empty, the global context is used.
	* @return	<code>this</code>-reference to allow method chaining
	*/
	public function attachFailed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v2.ODataAnnotations;

	/**
	* Attaches the given callback to the <code>loaded</code> event. This event is fired when all annotations from a group of sources was successfully (loaded,) parsed and merged. The parameter <code>result</code> will be set on the event argument and contains an array of all loaded sources as well as Errors in the order in which they had been added.
	* @param	oData The object, that should be passed along with the event-object when firing the event.
	* @param	fnFunction The event callback. This function will be called in the context of the oListener object if given as the next argument.
	* @param	oListener Object to use as context of the callback. If empty, the global context is used.
	* @return	<code>this</code>-reference to allow method chaining
	*/
	public function attachLoaded( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v2.ODataAnnotations;

	/**
	* This event exists for compatibility with the old Annotation loader Attaches the given callback to the <code>someLoaded</code> event. This event is fired when at least one annotation from a group of sources was successfully (loaded,) parsed and merged. The parameter <code>result</code> will be set on the event argument and contains an array of all loaded sources as well as Errors in the order in which they had been added.
	* @param	oData The object, that should be passed along with the event-object when firing the event.
	* @param	fnFunction The event callback. This function will be called in the context of the oListener object if given as the next argument.
	* @param	oListener Object to use as context of the callback. If empty, the global context is used.
	* @return	<code>this</code>-reference to allow method chaining
	*/
	public function attachSomeLoaded( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v2.ODataAnnotations;

	/**
	* Attaches the given callback to the <code>success</code> event, which is fired whenever a source has been successfully (loaded,) parsed and merged into the annotation data. The following parameters will be set on the event object that is given to the callback function: <code>source</code> - A map containing the properties <code>type</code> - containing either "url" or "xml" - and <code>data</code> containing the data given as source, either a URL or an XML string depending on how the source was added.
	* @param	oData The object, that should be passed along with the event-object when firing the event.
	* @param	fnFunction The event callback. This function will be called in the context of the oListener object if given as the next argument.
	* @param	oListener Object to use as context of the callback. If empty, the global context is used.
	* @return	<code>this</code>-reference to allow method chaining.
	*/
	public function attachSuccess( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v2.ODataAnnotations;

	/**
	* Detaches the given callback from the <code>allFailed</code> event. The passed function and listener object must match the ones previously used for attaching to the event.
	* @param	fnFunction The event callback previously used with {@link sap.ui.model.odata.v2.ODataAnnotations#attachFailed}.
	* @param	oListener The same (if any) context object that was used when attaching to the <code>error</code> event.
	* @return	<code>this</code>-reference to allow method chaining.
	*/
	public function detachAllFailed( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v2.ODataAnnotations;

	/**
	* Detaches the given callback from the <code>error</code> event. The passed function and listener object must match the ones previously used for attaching to the event.
	* @param	fnFunction The event callback previously used with {@link sap.ui.model.odata.v2.ODataAnnotations#attachError}.
	* @param	oListener The same (if any) context object that was used when attaching to the <code>error</code> event.
	* @return	<code>this</code>-reference to allow method chaining.
	*/
	public function detachError( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v2.ODataAnnotations;

	/**
	* Detaches the given callback from the <code>failed</code> event. The passed function and listener object must match the ones previously used for attaching to the event.
	* @param	fnFunction The event callback previously used with {@link sap.ui.model.odata.v2.ODataAnnotations#attachFailed}.
	* @param	oListener The same (if any) context object that was used when attaching to the <code>error</code> event.
	* @return	<code>this</code>-reference to allow method chaining.
	*/
	public function detachFailed( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v2.ODataAnnotations;

	/**
	* Detaches the given callback from the <code>loaded</code> event. The passed function and listener object must match the ones previously used for attaching to the event.
	* @param	fnFunction The event callback previously used with {@link sap.ui.model.odata.v2.ODataAnnotations#attachLoaded}.
	* @param	oListener The same (if any) context object that was used when attaching to the <code>error</code> event.
	* @return	<code>this</code>-reference to allow method chaining.
	*/
	public function detachLoaded( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v2.ODataAnnotations;

	/**
	* Detaches the given callback from the <code>someLoaded</code> event. The passed function and listener object must match the ones previously used for attaching to the event.
	* @param	fnFunction The event callback previously used with {@link sap.ui.model.odata.v2.ODataAnnotations#attachSomeLoaded}.
	* @param	oListener The same (if any) context object that was used when attaching to the <code>error</code> event.
	* @return	<code>this</code>-reference to allow method chaining.
	*/
	public function detachSomeLoaded( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v2.ODataAnnotations;

	/**
	* Detaches the given callback from the <code>success</code> event. The passed function and listener object must match the ones previously used for attaching to the event.
	* @param	fnFunction The event callback previously used with {@link sap.ui.model.odata.v2.ODataAnnotations#attachSuccess}.
	* @param	oListener The same (if any) context object that was used when attaching to the <code>success</code> event.
	* @return	<code>this</code>-reference to allow method chaining.
	*/
	public function detachSuccess( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v2.ODataAnnotations;

	/**
	* Creates a new subclass of class sap.ui.model.odata.v2.ODataAnnotations with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.EventProvider.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns the parsed and merged annotation data object
	* @return	returns annotations data
	*/
	public function getData( ):Dynamic;

	/**
	* Returns a map of custom headers that are sent with every request to an annotation URL.
	* @return	A map of all custom headers.
	*/
	public function getHeaders( ):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.model.odata.v2.ODataAnnotations.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns a promise that resolves when the annotation sources that were added up to this point were successfully (loaded,) parsed and merged
	* @return	The Promise that resolves/rejects after the last added sources have been processed
	*/
	public function loaded( ):js.lib.Promise<ODataAnnotations>;

	/**
	* Set custom headers which are provided in a key/value map. These headers are used for all requests. The "Accept-Language" header cannot be modified and is set using the core's language setting.

To remove these headers, simply set the <code>mHeaders</code> parameter to <code>{}</code>. Please also note that when calling this method again all previous custom headers are removed unless they are specified again in the <code>mCustomHeaders</code> parameter.
	* @param	mHeaders the header name/value map.
	* @return	Void
	*/
	public function setHeaders( mHeaders:Dynamic):Void;
}

