package sap.ui.model.odata.type;

@:native("sap.ui.model.odata.type.Raw")

/**
* This class represents a placeholder for all unsupported OData primitive types. It can only be used to retrieve raw values "as is" (i.e. <code>formatValue(vValue, "any")</code>), but not to actually convert to or from any other representation or to validate.
*/
extern class Raw extends sap.ui.model.odata.type.ODataType
{

	/**
	* 
	* @param	oFormatOptions Must be <code>undefined</code>
	* @param	oConstraints Must be <code>undefined</code>
	* @return	Object
	*/
	public function new( ?oFormatOptions:Dynamic, ?oConstraints:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.odata.type.Raw with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.odata.type.ODataType.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Formats the given value to the given target type.
	* @param	vValue The raw value to be retrieved "as is"
	* @param	sTargetType The target type; must be "any"
	* @return	The raw value "as is"
	*/
	public function formatValue( vValue:Dynamic, sTargetType:String):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.model.odata.type.Raw.
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

