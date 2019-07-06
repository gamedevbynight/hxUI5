package sap.ui.model.odata.type;

@:native("sap.ui.model.odata.type.Stream")

/**
* This class represents the OData V4 primitive type {@link http://docs.oasis-open.org/odata/odata/v4.0/errata02/os/complete/part3-csdl/odata-v4.0-errata02-os-part3-csdl-complete.html#_The_edm:Documentation_Element <code>Edm.Stream</code>}. The values for stream properties do not appear in the entity payload. Instead, the values are read or written through URLs.

This type only supports reading streams. For this purpose bind the stream property to a control property of type <code>sap.ui.core.URI</code>. {#formatValue} will then deliver the correct URL to read the stream.
*/
extern class Stream extends sap.ui.model.odata.type.ODataType
{

	/**
	* 
	* @param	oFormatOptions Must be <code>undefined</code>
	* @param	oConstraints constraints; they are only stored for documentation purpose, since no validation can occur
	* @return	Object
	*/
	public function new( ?oFormatOptions:Dynamic, ?oConstraints:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.odata.type.Stream with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.odata.type.ODataType.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns the input value unchanged.
	* @param	sValue the read URL
	* @param	sTargetType The target type; must be "any" or "string"
	* @return	The property's read URL
	*/
	public function formatValue( sValue:String, sTargetType:String):String;

	/**
	* Returns a metadata object for class sap.ui.model.odata.type.Stream.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the type's name.
	* @return	The type's name
	*/
	public function getName( ):String;

	/**
	* Method not supported
	* @return	Void
	*/
	public function parseValue( ):Void;

	/**
	* Method not supported
	* @return	Void
	*/
	public function validateValue( ):Void;
}

