package sap.ui.model.type;

@:native("sap.ui.model.type.String")

/**
* This class represents the string simple type.
*/
extern class String extends sap.ui.model.SimpleType
{

	/**
	* 
	* @param	oFormatOptions Format options; this type ignores them, since it does not support any format options
	* @param	oConstraints Constraints; {@link #validateValue} throws an error if any constraint is violated
	* @return	Object
	*/
	public function new( ?oFormatOptions:Dynamic, ?oConstraints:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.type.String with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.SimpleType.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Formats the given value to the given target type.
	* @param	sValue The value to be formatted
	* @param	sTargetType The target type; may be "any", "boolean", "float", "int" or "string", or a type with "any", "boolean", "float", "int" or "string" as its {@link sap.ui.base.DataType#getPrimitiveType primitive type}
	* @return	The formatted output value in the target type; <code>undefined</code> and <code>null</code> are always formatted to <code>null</code>
	*/
	public function formatValue( sValue:String, sTargetType:String):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.model.type.String.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
	@:overload( function(vValue:String, sSourceType:String):String{ })
	@:overload( function(vValue:String, sSourceType:String):String{ })

	/**
	* Parses the given value, which is expected to be of the given type, to a string.
	* @param	vValue The value to be parsed
	* @param	sSourceType The source type (the expected type of <code>vValue</code>); may be "boolean", "float", "int" or "string", or a type with "boolean", "float", "int" or "string" as its {@link sap.ui.base.DataType#getPrimitiveType primitive type}
	* @return	The parsed value
	*/
	public function parseValue( vValue:Bool, sSourceType:String):String;

	/**
	* Validates whether the given value in model representation is valid and meets the defined constraints, see {@link #constructor}.
<<<<<<< HEAD
	* @param	sValue The value to be validated; <code>null</code> is treated like an empty string
=======
	* @param	sValue The value to be validated
>>>>>>> bd78e88ba76c5bd0a95baa0cbb72c1713c532a11
	* @return	Void
	*/
	public function validateValue( sValue:String):Void;
}

