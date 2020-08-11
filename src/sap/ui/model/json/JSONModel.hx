package sap.ui.model.json;

@:native("sap.ui.model.json.JSONModel")

/**
* Model implementation for JSON format
*/
extern class JSONModel extends sap.ui.model.ClientModel
{
	@:overload( function(?oData:Dynamic, ?bObserve:Bool):Void{ })

	/**
	* 
	* @param	oData Either the URL where to load the JSON from or a JS object
	* @param	bObserve Whether to observe the JSON data for property changes (experimental)
	* @return	Object
	*/
	public function new( ?oData:String, ?bObserve:Bool):Void;

	/**
	* Returns a Promise of the current data-loading state. Every currently running {@link sap.ui.model.json.JSONModel#loadData} call is respected by the returned Promise. This also includes a potential loadData call from the JSONModel's constructor in case a URL was given. The data-loaded Promise will resolve once all running requests have finished. Only request, which have been queued up to the point of calling this function will be respected by the returned Promise.
	* @return	a Promise, which resolves if all pending data-loading requests have finished
	*/
	public function dataLoaded( ):js.lib.Promise<JSONModel>;

	/**
	* Creates a new subclass of class sap.ui.model.json.JSONModel with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.ClientModel.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Serializes the current JSON data of the model into a string. Note: May not work in Internet Explorer 8 because of lacking JSON support (works only if IE 8 mode is enabled)
	* @return	the JSON data serialized as string
	*/
	public function getJSON( ):String;

	/**
	* Returns a metadata object for class sap.ui.model.json.JSONModel.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the value for the property with the given <code>sPropertyName</code>
	* @param	sPath the path to the property
	* @param	oContext the context which will be used to retrieve the property
	* @return	the value of the property
	*/
	public function getProperty( sPath:String, ?oContext:sap.ui.model.Context):Dynamic;
	@:overload( function(sURL:String, ?oParameters:Dynamic, ?bAsync:Bool, ?sType:String, ?bMerge:Bool, ?bCache:Bool, ?mHeaders:Dynamic):Dynamic{ })

	/**
	* Load JSON-encoded data from the server using a GET HTTP request and store the resulting JSON data in the model. Note: Due to browser security restrictions, most "Ajax" requests are subject to the same origin policy, the request can not successfully retrieve data from a different domain, subdomain, or protocol.
	* @param	sURL A string containing the URL to which the request is sent.
	* @param	oParameters A map or string that is sent to the server with the request. Data that is sent to the server is appended to the URL as a query string. If the value of the data parameter is an object (map), it is converted to a string and url-encoded before it is appended to the URL.
	* @param	bAsync By default, all requests are sent asynchronous. <b>Do not use <code>bAsync=false</code></b> because synchronous requests may temporarily lock the browser, disabling any actions while the request is active. Cross-domain requests do not support synchronous operation.
	* @param	sType The type of request to make ("POST" or "GET"), default is "GET". Note: Other HTTP request methods, such as PUT and DELETE, can also be used here, but they are not supported by all browsers.
	* @param	bMerge Whether the data should be merged instead of replaced
	* @param	bCache Disables caching if set to false. Default is true.
	* @param	mHeaders An object of additional header key/value pairs to send along with the request
	* @return	in case bAsync is set to true a Promise is returned; this promise resolves/rejects based on the request status
	*/
	public function loadData( sURL:String, ?oParameters:String, ?bAsync:Bool, ?sType:String, ?bMerge:Bool, ?bCache:Bool, ?mHeaders:Dynamic):Dynamic;

	/**
	* Sets the data, passed as a JS object tree, to the model.
	* @param	oData the data to set on the model
	* @param	bMerge whether to merge the data instead of replacing it
	* @return	Void
	*/
	public function setData( oData:Dynamic, ?bMerge:Bool):Void;

	/**
	* Sets the data, passed as a string in JSON format, to the model.
	* @param	sJSON the JSON data to set on the model
	* @param	bMerge whether to merge the data instead of replacing it
	* @return	Void
	*/
	public function setJSON( sJSON:String, ?bMerge:Bool):Void;

	/**
	* Sets a new value for the given property <code>sPropertyName</code> in the model. If the model value changed all interested parties are informed.
	* @param	sPath path of the property to set
	* @param	oValue value to set the property to
	* @param	oContext the context which will be used to set the property
	* @param	bAsyncUpdate whether to update other bindings dependent on this property asynchronously
	* @return	true if the value was set correctly and false if errors occurred like the entry was not found.
	*/
	public function setProperty( sPath:String, oValue:Dynamic, ?oContext:Dynamic, ?bAsyncUpdate:Bool):Bool;
}

