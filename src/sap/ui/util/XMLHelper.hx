package sap.ui.util;

@:native("sap.ui.util.XMLHelper")
extern class XMLHelper
{

	/**
	* Extracts parse error information from the specified document (if any).

If an error was found the returned object has the following error information parameters: errorCode, url, reason, srcText, line, linepos, filepos
	* @param	oDocument the parsed XML document
	* @return	oParseError if errors were found, or an object with an errorCode of 0 only
	*/
	public static function getParseError( oDocument:String):Dynamic;

	/**
	* Parses the specified XML formatted string text using native parsing function of the browser and returns a valid XML document. If an error occurred during parsing a parse error xobject is returned as property (parseError) of the returned XML document object. The parse error object has the following error information parameters: errorCode, url, reason, srcText, line, linepos, filepos
	* @param	sXMLText the XML data as string
	* @return	the parsed XML document with a parseError property as described in getParseError. An error occurred if the errorCode property of the parseError is != 0.
	*/
	public static function parse( sXMLText:String):Dynamic;

	/**
	* Serializes the specified XML document into a string representation.
	* @param	oXMLDocument the XML document object to be serialized as string
	* @return	the serialized XML string
	*/
	public static function serialize( oXMLDocument:String):Dynamic;
}

