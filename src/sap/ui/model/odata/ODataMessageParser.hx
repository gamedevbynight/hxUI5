package sap.ui.model.odata;

@:native("sap.ui.model.odata.ODataMessageParser")

/**
* OData implementation of the sap.ui.core.message.MessageParser class. Parses message responses from the back-end.
*/
extern class ODataMessageParser extends sap.ui.core.message.MessageParser
{
public function new():Void;

	/**
	* Creates a new subclass of class sap.ui.model.odata.ODataMessageParser with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.message.MessageParser.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns the name of the header field that is used to parse the server messages
	* @return	The name of the header field
	*/
	public function getHeaderField( ):String;

	/**
	* Returns a metadata object for class sap.ui.model.odata.ODataMessageParser.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Parses the given response for messages, calculates the delta and fires the messageChange-event on the MessageProcessor if messages are found.
	* @param	oResponse The response from the server containing body and headers
	* @param	oRequest The original request that lead to this response
	* @param	mGetEntities A map containing the entities requested from the back-end as keys
	* @param	mChangeEntities A map containing the entities changed on the back-end as keys
	* @return	Void
	*/
	public function parse( oResponse:Dynamic, oRequest:Dynamic, mGetEntities:Dynamic, mChangeEntities:Dynamic):Void;

	/**
	* Sets the header field name that should be used for parsing the JSON messages
	* @param	sFieldName The name of the header field that should be used as source of the message object
	* @return	Instance reference for method chaining
	*/
	public function setHeaderField( sFieldName:String):sap.ui.model.odata.ODataMessageParser;
}
