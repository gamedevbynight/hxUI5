package sap.ui.model;

@:native("sap.ui.model.SimpleType")

/**
* This is an abstract base class for simple types.
*/
extern class SimpleType extends sap.ui.model.Type
{

	/**
	* 
	* @param	oFormatOptions options as provided by concrete subclasses
	* @param	oConstraints constraints as supported by concrete subclasses
	* @return	Object
	*/
	public function new( ?oFormatOptions:Dynamic, ?oConstraints:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.SimpleType with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.Type.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Format the given value in model representation to an output value in the given internal type. This happens according to the format options, if target type is 'string'. If oValue is not defined or null, null will be returned.
	* @param	oValue the value to be formatted
	* @param	sInternalType the target type
	* @return	the formatted output value or a Promise resolving with the formatted value
	*/
	public function formatValue( oValue:Dynamic, sInternalType:String):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.model.SimpleType.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Parse a value of an internal type to the expected value of the model type.
	* @param	oValue the value to be parsed
	* @param	sInternalType the source type
	* @return	the parse result or a Promise resolving with the parse result
	*/
	public function parseValue( oValue:Dynamic, sInternalType:String):Dynamic;

	/**
	* Validate whether a given value in model representation is valid and meets the defined constraints (if any).
	* @param	oValue the value to be validated
	* @return	a Promise in case validation is asynchronous
	*/
	public function validateValue( oValue:Dynamic):Dynamic;
}

