package sap.ui.model.odata;

@:native("sap.ui.model.odata.ODataAnnotations")

/**
* Implementation to access OData Annotations
*/
extern class ODataAnnotations extends sap.ui.base.EventProvider
{
	@:overload( function(?aAnnotationURI:String, ?oMetadata:sap.ui.model.odata.ODataMetadata, ?mParams:Dynamic):Void{ })

	/**
	* 
	* @param	aAnnotationURI The annotation-URL or an array of URLS that should be parsed and merged
	* @param	oMetadata null
	* @param	mParams null
	* @return	Object
	*/
	public function new( ?aAnnotationURI:Array<String>, ?oMetadata:sap.ui.model.odata.ODataMetadata, ?mParams:Dynamic):Void;
	@:overload( function(vUrl:String):js.lib.Promise<ODataAnnotations>{ })

	/**
	* Adds either one URL or an array of URLs to be loaded and parsed. The result will be merged into the annotations data which can be retrieved using the getAnnotations-method.
	* @param	vUrl Either one URL as string or an array of URL strings
	* @return	The Promise to load the given URL(s), resolved if all URLs have been loaded, rejected if at least one failed to load. The argument is an object containing the annotations object, success (an array of sucessfully loaded URLs), fail (an array ob of failed URLs).
	*/
	public function addUrl( vUrl:Array<String>):js.lib.Promise<ODataAnnotations>;

	/**
	* Attach event-handler <code>fnFunction</code> to the 'failed' event of this <code>sap.ui.model.odata.ODataAnnotations</code>.
	* @param	oData The object, that should be passed along with the event-object when firing the event.
	* @param	fnFunction The function to call, when the event occurs. This function will be called on the oListener-instance (if present) or in a 'static way'.
	* @param	oListener Object on which to call the given function. If empty, the global context (window) is used.
	* @return	<code>this</code> to allow method chaining
	*/
	public function attachFailed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.ODataAnnotations;

	/**
	* Attach event-handler <code>fnFunction</code> to the 'loaded' event of this <code>sap.ui.model.odata.ODataAnnotations</code>.
	* @param	oData The object, that should be passed along with the event-object when firing the event.
	* @param	fnFunction The function to call, when the event occurs. This function will be called on the oListener-instance (if present) or in a 'static way'.
	* @param	oListener Object on which to call the given function. If empty, the global context (window) is used.
	* @return	<code>this</code> to allow method chaining
	*/
	public function attachLoaded( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.odata.ODataAnnotations;

	/**
	* Detach event-handler <code>fnFunction</code> from the 'failed' event of this <code>sap.ui.model.odata.ODataAnnotations</code>.

The passed function and listener object must match the ones previously used for event registration.
	* @param	fnFunction The function to call, when the event occurs.
	* @param	oListener Object on which the given function had to be called.
	* @return	<code>this</code> to allow method chaining
	*/
	public function detachFailed( fnFunction:()->Void, oListener:Dynamic):sap.ui.model.odata.ODataAnnotations;

	/**
	* Detach event-handler <code>fnFunction</code> from the 'loaded' event of this <code>sap.ui.model.odata.ODataAnnotations</code>.

The passed function and listener object must match the ones previously used for event registration.
	* @param	fnFunction The function to call, when the event occurs.
	* @param	oListener Object on which the given function had to be called.
	* @return	<code>this</code> to allow method chaining
	*/
	public function detachLoaded( fnFunction:()->Void, oListener:Dynamic):sap.ui.model.odata.ODataAnnotations;

	/**
	* Creates a new subclass of class sap.ui.model.odata.ODataAnnotations with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.EventProvider.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* returns the raw annotation data
	* @return	returns annotations data
	*/
	public function getAnnotationsData( ):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.model.odata.ODataAnnotations.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Checks whether annotations loading of at least one of the given URLs has already failed. Note: For asynchronous annotations {@link #attachFailed} has to be used.
	* @return	whether annotations request has failed
	*/
	public function isFailed( ):Bool;

	/**
	* Checks whether annotations from at least one source are available
	* @return	returns whether annotations is already loaded
	*/
	public function isLoaded( ):Bool;

	/**
	* Set custom headers which are provided in a key/value map. These headers are used for all requests. The Accept-Language header cannot be modified and is set using the Core's language setting.

To remove these headers simply set the mHeaders parameter to {}. Please also note that when calling this method again all previous custom headers are removed unless they are specified again in the mCustomHeaders parameter.
	* @param	mHeaders the header name/value map.
	* @return	Void
	*/
	public function setHeaders( mHeaders:Dynamic):Void;

	/**
	* Sets an XML document.
	* @param	oXMLDocument The XML document to parse for annotations
	* @param	sXMLContent The XML content as string to parse for annotations
	* @param	mOptions Additional options
	* @return	Whether or not parsing was successful
	*/
	public function setXML( oXMLDocument:Dynamic, sXMLContent:String, ?mOptions:Dynamic):Bool;
}

