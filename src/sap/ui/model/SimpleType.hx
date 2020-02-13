package sap.ui.model;

@:native("sap.ui.model.SimpleType")

/**
* This is an abstract base class for simple types. A simple type can format a raw model value based on the given format options, parse an external value based on the given format options and validate the raw model value based on the given constraints. An implementation of a simple type needs to implement {@link #formatValue}, {@link #parseValue} and {@link #validateValue}. If the raw value, which is the value in model representation, isn't already a JavaScript primitive type, subclasses must override {@link #getModelFormat}.
*/
extern class SimpleType extends sap.ui.model.Type
{

	/**
	* 
	* @param	oFormatOptions Format options as defined by concrete subclasses
	* @param	oConstraints Constraints as defined by concrete subclasses
	* @return	Object
	*/
	public function new( ?oFormatOptions:Dynamic, ?oConstraints:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.SimpleType with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.Type.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Formats the given raw value to an output value of the given target type. This happens according to the format options if the target type is <code>string</code>. If <code>vValue</code> is not defined or <code>null</code>, <code>null</code> is returned.
	* @param	vValue The value to be formatted
	* @param	sTargetType The target type; see {@link topic:ac56d92162ed47ff858fdf1ce26c18c4 Allowed Property Types}
	* @return	The formatted output value or a <code>Promise</code> resolving with the formatted value
	*/
	public function formatValue( vValue:Dynamic, sTargetType:String):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.model.SimpleType.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Parses an external value of the given source type to the corresponding value in model representation.
	* @param	vValue The value to be parsed
	* @param	sSourceType The type of the given value; see {@link topic:ac56d92162ed47ff858fdf1ce26c18c4 Allowed Property Types}
	* @return	The raw value or a <code>Promise</code> resolving with the raw value
	*/
	public function parseValue( vValue:Dynamic, sSourceType:String):Dynamic;

	/**
	* Validates whether a given raw value meets the defined constraints. This method does nothing if no constraints are defined.
	* @param	vValue The value to be validated
	* @return	<code>undefined</code> or a <code>Promise</code> resolving with an undefined value
	*/
	public function validateValue( vValue:Dynamic):js.lib.Promise<SimpleType>;
}

