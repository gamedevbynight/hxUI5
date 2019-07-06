package sap.ui.model;

@:native("sap.ui.model.CompositeType")

/**
* This is an abstract base class for composite types. Composite types have multiple input values and know how to merge/split them upon formatting/parsing the value. Typical use case a currency or amount values.

Subclasses of CompositeTypes can define boolean properties in the constructor: - bUseRawValues: the format and parse method will handle raw model values, types of embedded bindings are ignored - bParseWithValues: the parse method call will include the current binding values as a third parameter
*/
extern class CompositeType extends sap.ui.model.SimpleType
{

	/**
	* 
	* @param	oFormatOptions options as provided by concrete subclasses
	* @param	oConstraints constraints as supported by concrete subclasses
	* @return	Object
	*/
	public function new( ?oFormatOptions:Dynamic, ?oConstraints:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.CompositeType with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.SimpleType.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Format the given set of values in model representation to an output value in the given internal type. This happens according to the format options, if target type is 'string'. If aValues is not defined or null, null will be returned.
	* @param	aValues the values to be formatted
	* @param	sInternalType the target type
	* @return	the formatted output value
	*/
	public function formatValue( aValues:Array<Dynamic>, sInternalType:String):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.model.CompositeType.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Parse a value of an internal type to the expected set of values of the model type.
	* @param	oValue the value to be parsed
	* @param	sInternalType the source type
	* @param	aCurrentValues the current values of all binding parts
	* @return	the parse result array
	*/
	public function parseValue( oValue:Dynamic, sInternalType:String, aCurrentValues:Array<Dynamic>):Array<Dynamic>;

	/**
	* Validate whether a given value in model representation is valid and meets the defined constraints (if any).
	* @param	aValues the set of values to be validated
	* @return	Void
	*/
	public function validateValue( aValues:Array<Dynamic>):Void;
}

