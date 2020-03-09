package sap.ui.core.util;

@:native("sap.ui.core.util.MockServer")

/**
* Class to mock http requests made to a remote server.
*/
extern class MockServer extends sap.ui.base.ManagedObject
{
	@:overload(function(?sId:String, ?mSettings:MockServerArgs):Void {})
	public function new(?mSettings:MockServerArgs):Void;

	/**
	* Attaches an event handler to be called after the built-in request processing of the mock server
	* @param	event type according to HTTP Method
	* @param	fnCallback the name of the function that will be called at this exit The callback function exposes an event with parameters, depending on the type of the request. oEvent.getParameters() lists the parameters as per the request. Examples are: oXhr : the request object; oFilteredData : the mock data entries that are about to be returned in the response; oEntry : the mock data entry that is about to be returned in the response;
	* @param	sEntitySet (optional) the name of the entity set
	* @return	Void
	*/
	public function attachAfter( event:String, fnCallback:()->Void, sEntitySet:String):Void;

	/**
	* Attaches an event handler to be called before the built-in request processing of the mock server
	* @param	event type according to HTTP Method
	* @param	fnCallback the name of the function that will be called at this exit. The callback function exposes an event with parameters, depending on the type of the request. oEvent.getParameters() lists the parameters as per the request. Examples are: oXhr : the request object; sUrlParams : the URL parameters of the request; sKeys : key properties of the requested entry; sNavProp/sNavName : name of navigation
	* @param	sEntitySet (optional) the name of the entity set
	* @return	Void
	*/
	public function attachBefore( event:String, fnCallback:()->Void, sEntitySet:String):Void;

	/**
	* Global configuration of all mock servers.
	* @param	mConfig the configuration object.
	* @return	Void
	*/
	public static function config( mConfig:Dynamic):Void;

	/**
	* Cleans up the resources associated with this object and all its aggregated children.

After an object has been destroyed, it can no longer be used!

Applications should call this method if they don't need the object any longer.
	* @param	bSuppressInvalidate if true, this ManagedObject is not marked as changed
	* @return	Void
	*/
	public function destroy( ?bSuppressInvalidate:Bool):Void;

	/**
	* Stops and calls destroy on all registered servers. Use this method for cleaning up.
	* @return	Void
	*/
	public static function destroyAll( ):Void;

	/**
	* Removes a previously attached event handler
	* @param	event type according to HTTP Method
	* @param	fnCallback the name of the function that will be called at this exit
	* @param	sEntitySet (optional) the name of the entity set
	* @return	Void
	*/
	public function detachAfter( event:String, fnCallback:()->Void, sEntitySet:String):Void;

	/**
	* Removes a previously attached event handler
	* @param	event type according to HTTP Method
	* @param	fnCallback the name of the function that will be called at this exit
	* @param	sEntitySet (optional) the name of the entity set
	* @return	Void
	*/
	public function detachBefore( event:String, fnCallback:()->Void, sEntitySet:String):Void;

	/**
	* Creates a new subclass of class sap.ui.core.util.MockServer with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.ManagedObject.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns the data model of the given EntitySet name.
	* @param	sEntitySetName EntitySet name
	* @return	data model of the given EntitySet
	*/
	public function getEntitySetData( sEntitySetName:String):Array<Dynamic>;

	/**
	* Returns a metadata object for class sap.ui.core.util.MockServer.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.ManagedObjectMetadata;

	/**
	* Getter for property <code>recordRequests</code>. Returns whether or not the requests performed should be recorded (stored).

Default value is <code>true</code>
	* @return	the value of property <code>recordRequests</code>
	*/
	public function getRecordRequests( ):Bool;

	/**
	* Getter for property <code>requests</code>.

Default value is <code>[]</code>
	* @return	the value of property <code>rootUri</code>
	*/
	public function getRequests( ):Array<Dynamic>;

	/**
	* Getter for property <code>rootUri</code>. Has to be relative and requires a trailing '/'. It also needs to match the URI set in OData/JSON models or simple XHR calls in order for the mock server to intercept them.

Default value is empty/<code>undefined</code>. Must end with a a trailing slash ("/").
	* @return	the value of property <code>rootUri</code>
	*/
	public function getRootUri( ):String;

	/**
	* Returns whether the server is started or not.
	* @return	whether the server is started or not.
	*/
	public function isStarted( ):Bool;

	/**
	* Respond to a request, when the servers are configured not to automatically respond.
	* @return	Void
	*/
	public static function respond( ):Void;

	/**
	* Sets the data of the given EntitySet name with the given array.
	* @param	sEntitySetName EntitySet name
	* @param	aData null
	* @return	Void
	*/
	public function setEntitySetData( sEntitySetName:String, aData:Array<Dynamic>):Void;

	/**
	* Setter for property <code>recordRequests</code>. Defines whether or not the requests performed should be recorded (stored).

Default value is <code>true</code>
	* @param	recordRequests new value for property <code>recordRequests</code>
	* @return	Void
	*/
	public function setRecordRequests( recordRequests:Bool):Void;

	/**
	* Setter for property <code>requests</code>.

Default value is is <code>[]</code>

Each array entry should consist of an object with the following properties / values:

<ul> <li><b>method <string>: "GET"|"POST"|"DELETE|"PUT"</b> <br> (any HTTP verb) </li> <li><b>path <string>: "/path/to/resource"</b> <br> The path is converted to a regular expression, so it can contain normal regular expression syntax. All regular expression groups are forwarded as arguments to the <code>response</code> function. In addition to this, parameters can be written in this notation: <code>:param</code>. These placeholder will be replaced by regular expression groups. </li> <li><b>response <function>: function(xhr, param1, param2, ...) { }</b> <br> The xhr object can be used to respond on the request. Supported methods are: <br> <code>xhr.respond(iStatusCode, mHeaders, sBody)</code> <br> <code>xhr.respondJSON(iStatusCode, mHeaders, oJsonObjectOrString)</code>. By default a JSON header is set for response header <br> <code>xhr.respondXML(iStatusCode, mHeaders, sXmlString)</code>. By default an XML header is set for response header <br> <code>xhr.respondFile(iStatusCode, mHeaders, sFileUrl)</code>. By default the mime type of the file is set for response header </li> </ul>
	* @param	requests new value for property <code>requests</code>
	* @return	Void
	*/
	public function setRequests( requests:Array<Dynamic>):Void;

	/**
	* Setter for property <code>rootUri</code>. All request path URI are prefixed with this root URI if set.

Default value is empty/<code>undefined</code>
	* @param	rootUri new value for property <code>rootUri</code>
	* @return	Void
	*/
	public function setRootUri( rootUri:String):Void;
	@:overload( function(sMetadataString:String, ?vMockdataSettings:String):Void{ })

	/**
	* Simulates an existing OData service by sepcifying the metadata URL and the base URL for the mockdata. The server configures the request handlers depending on the service metadata. The mockdata needs to be stored individually for each entity type in a separate JSON file. The name of the JSON file needs to match the name of the entity type. If no base url for the mockdata is specified then the mockdata are generated from the metadata
	* @param	sMetadataString Either the URL to the service metadata document or the metadata document as xml string itself (starting with "<?xml")
	* @param	vMockdataSettings (optional) base url which contains the path to the mockdata, or an object which contains the following properties: sMockdataBaseUrl, bGenerateMissingMockData, aEntitySetsNames. See below for descriptions of these parameters. Ommit this parameter to produce random mock data based on the service metadata.
	* @return	Void
	*/
	public function simulate( sMetadataString:String, ?vMockdataSettings:Dynamic):Void;

	/**
	* Starts the server.
	* @return	Void
	*/
	public function start( ):Void;

	/**
	* Starts all registered servers.
	* @return	Void
	*/
	public static function startAll( ):Void;

	/**
	* Stops the server.
	* @return	Void
	*/
	public function stop( ):Void;

	/**
	* Stops all registered servers.
	* @return	Void
	*/
	public static function stopAll( ):Void;
}

typedef MockServerArgs = sap.ui.base.ManagedObject.ManagedObjectArgs & {

	/**
	* Getter for property <code>rootUri</code>. Has to be relative and requires a trailing '/'. It also needs to match the URI set in OData/JSON models or simple XHR calls in order for the mock server to intercept them.

Default value is empty/<code>undefined</code>. Must end with a a trailing slash ("/").
	*/
	@:optional var rootUri:String;

	/**
	* Whether or not the requests performed should be recorded (stored). This could be memory intense if each request is recorded. For unit testing purposes it should be set to <code>true</code> to compare requests performed otherwise this flag should be set to <code>false</code> e.g. for demonstration/app purposes.
	*/
	@:optional var recordRequests:haxe.extern.EitherType<String,Bool>;

	/**
	* Getter for property <code>requests</code>.

Default value is <code>[]</code>
	*/
	@:optional var requests:Array<haxe.extern.EitherType<String,Dynamic>>;
}
