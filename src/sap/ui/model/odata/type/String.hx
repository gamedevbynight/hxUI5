package sap.ui.model.odata.type;

@:native("sap.ui.model.odata.type.String")

/**
* This class represents the OData primitive type <a href="http://www.odata.org/documentation/odata-version-2-0/overview#AbstractTypeSystem"> <code>Edm.String</code></a>.

In both {@link sap.ui.model.odata.v2.ODataModel} and {@link sap.ui.model.odata.v4.ODataModel} this type is represented as a <code>string</code>.
*/
extern class String extends sap.ui.model.odata.type.ODataType
{

	/**
	* 
	* @param	oFormatOptions format options as defined in the interface of {@link sap.ui.model.SimpleType}; this type ignores them since it does not support any format options
	* @param	oConstraints constraints; {@link #validateValue validateValue} throws an error if any constraint is violated
	* @return	Object
	*/
	public function new( ?oFormatOptions:Dynamic, ?oConstraints:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.odata.type.String with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.odata.type.ODataType.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Formats the given value to the given target type. If <code>isDigitSequence</code> constraint of this type is set to <code>true</code> and the target type is any or string and the given value contains only digits, the leading zeros are truncated.
	* @param	sValue the value to be formatted
	* @param	sTargetType the target type; may be "any", "boolean", "float", "int" or "string". See {@link sap.ui.model.odata.type} for more information.
	* @return	the formatted output value in the target type; <code>undefined</code> is always formatted to <code>null</code>; <code>null</code> is formatted to "" if the target type is "string".
	*/
	public function formatValue( sValue:String, sTargetType:String):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.model.odata.type.String.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the type's name.
	* @return	the type's name
	*/
	public function getName( ):String;
	@:overload( function(vValue:String, sSourceType:String):String{ })
	@:overload( function(vValue:String, sSourceType:String):String{ })

	/**
	* Parses the given value which is expected to be of the given type to a string. If <code>isDigitSequence</code> constraint of this type is set to <code>true</code> and the parsed string is a sequence of digits, then the parsed string is either enhanced with leading zeros, if <code>maxLength</code> constraint is given, or leading zeros are removed from parsed string.

Note: An empty input string (<code>""</code>) is parsed to <code>null</code>. This value will be rejected with a {@link sap.ui.model.ValidateException ValidateException} by {@link #validateValue} if the constraint <code>nullable</code> is <code>false</code>.
	* @param	vValue the value to be parsed
	* @param	sSourceType the source type (the expected type of <code>vValue</code>). See {@link sap.ui.model.odata.type} for more information.
	* @return	the parsed value or <code>null</code> if <code>vValue</code> is <code>""</code>
	*/
	public function parseValue( vValue:Bool, sSourceType:String):String;

	/**
	* Validates whether the given value in model representation is valid and meets the defined constraints.
	* @param	sValue the value to be validated
	* @return	Void
	*/
	public function validateValue( sValue:String):Void;
}

