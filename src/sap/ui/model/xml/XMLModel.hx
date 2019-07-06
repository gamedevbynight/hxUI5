package sap.ui.model.xml;

@:native("sap.ui.model.xml.XMLModel")

/**
* Model implementation for XML format
*/
extern class XMLModel extends sap.ui.model.ClientModel
{

	/**
	* 
	* @param	oData either the URL where to load the XML from or an XML
	* @return	Object
	*/
	public function new( ?oData:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.xml.XMLModel with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.ClientModel.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.model.xml.XMLModel.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the object for the given <code>path</code>
	* @param	sPath the path to the object
	* @param	oContext the context which will be used to retrieve the object
	* @return	the object
	*/
	public function getObject( sPath:String, ?oContext:Dynamic):Dynamic;

	/**
	* Returns the value for the property with the given <code>sPropertyName</code>
	* @param	sPath the path to the property
	* @param	oContext the context which will be used to retrieve the property
	* @return	the value of the property
	*/
	public function getProperty( sPath:String, ?oContext:Dynamic):Dynamic;

	/**
	* Serializes the current XML data of the model into a string.
	* @return	the XML document serialized as string
	*/
	public function getXML( ):Dynamic;
	@:overload( function(sURL:String, ?oParameters:Dynamic, ?bAsync:Bool, ?sType:String, ?bCache:String, ?mHeaders:Dynamic):Void{ })

	/**
	* Load XML-encoded data from the server using a GET HTTP request and store the resulting XML data in the model. Note: Due to browser security restrictions, most "Ajax" requests are subject to the same origin policy, the request can not successfully retrieve data from a different domain, subdomain, or protocol.
	* @param	sURL A string containing the URL to which the request is sent
	* @param	oParameters A map of parameters or a single parameter string that is sent to the server with the request
	* @param	bAsync Whether the request should be asynchronous or not
	* @param	sType HTTP method of request
	* @param	bCache Force no caching if false
	* @param	mHeaders An object of additional header key/value pairs to send along with the request
	* @return	Void
	*/
	public function loadData( sURL:String, ?oParameters:String, ?bAsync:Bool, ?sType:String, ?bCache:String, ?mHeaders:Dynamic):Void;

	/**
	* Sets the provided XML encoded data object to the model
	* @param	oData the data to set to the model
	* @return	Void
	*/
	public function setData( oData:Dynamic):Void;

	/**
	* Sets an XML namespace to use in the binding path
	* @param	sNameSpace the namespace URI
	* @param	sPrefix the prefix for the namespace (optional)
	* @return	Void
	*/
	public function setNameSpace( sNameSpace:String, ?sPrefix:String):Void;

	/**
	* Sets a new value for the given property <code>sPropertyName</code> in the model. If the model value changed all interested parties are informed.
	* @param	sPath path of the property to set
	* @param	oValue value to set the property to
	* @param	oContext the context which will be used to set the property
	* @param	bAsyncUpdate whether to update other bindings dependent on this property asynchronously
	* @return	true if the value was set correctly and false if errors occurred like the entry was not found.
	*/
	public function setProperty( sPath:String, oValue:Dynamic, ?oContext:Dynamic, ?bAsyncUpdate:Bool):Bool;

	/**
	* Sets the specified XML formatted string text to the model
	* @param	sXMLText the XML data as string
	* @return	Void
	*/
	public function setXML( sXMLText:String):Void;
}

