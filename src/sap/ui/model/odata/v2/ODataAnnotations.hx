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
	* @param	vSource One or several Annotation source or array of annotation sources; an annotation source is either a string containing a URL or an object of type {@link sap.ui.model.odata.v2.ODataAnnotations.Source}.
	* @return	The promise to (load,) parse and merge the given source(s). The Promise resolves with an array of maps containing the properties <code>source</code> and <code>data</code>; see the parameters of the <code>success</code> event for more details. In case at least one source could not be (loaded,) parsed or merged, the promise fails with an array of objects containing Errors and/or Success objects.
	*/
	public function addSource( vSource:Array<sap.ui.model.odata.v2.odataannotations.Source>):js.lib.Promise<ODataAnnotations>;

	/**
	* Attaches the given callback to the <code>allFailed</code> event.

This event exists for compatibility with the old Annotation loader. It is fired when no annotation from a group of sources was successfully (loaded,) parsed and merged. The parameter <code>result</code> will be set on the event argument and contains an array of Errors in the order in which the sources had been added.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.model.odata.v2.ODataAnnotations</code> itself.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with, defaults to this <code>ODataAnnotations</code> itself
	* @return	Reference to <code>this</code> to allow method chaining
	*/
	public function attachAllFailed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v2.ODataAnnotations;

	/**
	* Attaches the given callback to the {@link #event:error error} event, which is fired whenever a source cannot be loaded, parsed or merged into the annotation data.

The following parameters will be set on the event object that is given to the callback function: <code>source</code> - A map containing the properties <code>type</code> - containing either "url" or "xml" - and <code>data</code> containing the data given as source, either a URL or an XML string depending on how the source was added. <code>error</code> - An Error object describing the problem that occurred

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.model.odata.v2.ODataAnnotations</code> itself.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with, defaults to this <code>ODataAnnotations</code> itself
	* @return	Reference to <code>this</code> to allow method chaining
	*/
	public function attachError( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v2.ODataAnnotations;

	/**
	* Attaches the given callback to the {@link #event:failed failed} event.

This event is fired when at least one annotation from a group of sources was not successfully (loaded,) parsed or merged. The parameter <code>result</code> will be set on the event argument and contains an array of Errors in the order in which the sources had been added.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.model.odata.v2.ODataAnnotations</code> itself.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with, defaults to this <code>ODataAnnotations</code> itself
	* @return	Reference to <code>this</code> to allow method chaining
	*/
	public function attachFailed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v2.ODataAnnotations;

	/**
	* Attaches the given callback to the {@link #event:loaded loaded} event.

This event is fired when all annotations from a group of sources was successfully (loaded,) parsed and merged. The parameter <code>result</code> will be set on the event argument and contains an array of all loaded sources as well as Errors in the order in which they had been added.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.model.odata.v2.ODataAnnotations</code> itself.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with, defaults to this <code>ODataAnnotations</code> itself
	* @return	Reference to <code>this</code> to allow method chaining
	*/
	public function attachLoaded( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v2.ODataAnnotations;

	/**
	* Attaches the given callback to the <code>someLoaded</code> event.

This event exists for compatibility with the old annotation loader. It is fired when at least one annotation from a group of sources was successfully (loaded,) parsed and merged. The parameter <code>result</code> will be set on the event argument and contains an array of all loaded sources as well as Errors in the order in which they had been added.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.model.odata.v2.ODataAnnotations</code> itself.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with, defaults to this <code>ODataAnnotations</code> itself
	* @return	Reference to <code>this</code> to allow method chaining
	*/
	public function attachSomeLoaded( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v2.ODataAnnotations;

	/**
	* Attaches the given callback to the {@link #event:success success} event, which is fired whenever a source has been successfully (loaded,) parsed and merged into the annotation data.

The following parameters are set on the event object that is given to the callback function: <code>source</code> - A map containing the properties <code>type</code> - containing either "url" or "xml" - and <code>data</code> containing the data given as source, either a URL or an XML string depending on how the source was added.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.model.odata.v2.ODataAnnotations</code> itself.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with, defaults to this <code>ODataAnnotations</code> itself
	* @return	Reference to <code>this</code> to allow method chaining
	*/
	public function attachSuccess( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v2.ODataAnnotations;

	/**
	* Detaches the given callback from the <code>allFailed</code> event.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> to allow method chaining
	*/
	public function detachAllFailed( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v2.ODataAnnotations;

	/**
	* Detaches the given callback from the <code>error</code> event.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> to allow method chaining
	*/
	public function detachError( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v2.ODataAnnotations;

	/**
	* Detaches the given callback from the <code>failed</code> event.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> to allow method chaining
	*/
	public function detachFailed( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v2.ODataAnnotations;

	/**
	* Detaches the given callback from the <code>loaded</code> event.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> to allow method chaining
	*/
	public function detachLoaded( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v2.ODataAnnotations;

	/**
	* Detaches the given callback from the <code>someLoaded</code> event.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> to allow method chaining
	*/
	public function detachSomeLoaded( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v2.ODataAnnotations;

	/**
	* Detaches the given callback from the <code>success</code> event.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> to allow method chaining
	*/
	public function detachSuccess( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.v2.ODataAnnotations;

	/**
	* Creates a new subclass of class sap.ui.model.odata.v2.ODataAnnotations with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.EventProvider.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns the parsed and merged annotation data object.
	* @return	The annotation data
	*/
	public function getData( ):Dynamic;

	/**
	* Returns a map of custom headers that are sent with every request to an annotation URL.
	* @return	A map of all custom headers.
	*/
	public function getHeaders( ):Map<String,String>;

	/**
	* Returns a metadata object for class sap.ui.model.odata.v2.ODataAnnotations.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns a promise that resolves when the added annotation sources were successfully processed.
	* @return	A promise that resolves after the last added sources have been processed
	*/
	public function loaded( ):js.lib.Promise<ODataAnnotations>;

	/**
	* Set custom headers which are provided in a key/value map. These headers are used for all requests. The "Accept-Language" header cannot be modified and is set using the core's language setting.

To remove these headers, simply set the <code>mHeaders</code> parameter to <code>{}</code>. Note that when calling this method again, all previous custom headers are removed, unless they are specified again in the <code>mCustomHeaders</code> parameter.
	* @param	mHeaders the header name/value map.
	* @return	Void
	*/
	public function setHeaders( mHeaders:Map<String,String>):Void;
}

