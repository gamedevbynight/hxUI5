package sap.ui.model;

@:native("sap.ui.model.CompositeType")

/**
* This is an abstract base class for composite types. Composite types have multiple parts and know how to merge/split them upon formatting/parsing the value. Typical use cases are currency or amount values.

Subclasses of <code>CompositeType</code> may set the following boolean properties in the constructor: <ul> <li><code>bParseWithValues</code>: Whether the {@link #parseValue} method requires the current binding values as a third parameter; defaults to <code>false</code></li> <li><code>bUseInternalValues</code>: Whether the {@link #formatValue} and {@link #parseValue} methods operate on the internal values; defaults to <code>false</code></li> <li><code>bUseRawValues</code>: Whether the {@link #formatValue} and {@link #parseValue} methods operate on the raw model values; the types of embedded bindings are ignored; defaults to <code>false</code></li> </ul> <code>bUseRawValues</code> and <code>bUseInternalValues</code> cannot be both <code>true</code>.
*/
extern class CompositeType extends sap.ui.model.SimpleType
{

	/**
	* 
	* @param	oFormatOptions Format options as defined by concrete subclasses
	* @param	oConstraints Constraints as defined by concrete subclasses
	* @return	Object
	*/
	public function new( ?oFormatOptions:Dynamic, ?oConstraints:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.CompositeType with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.SimpleType.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Formats the given raw values to an output value of the given target type. This happens according to the format options if the target type is <code>string</code>. If <code>aValues</code> is not defined or <code>null</code>, <code>null</code> is returned.
	* @param	aValues The values to be formatted
	* @param	sTargetType The target type; see {@link topic:ac56d92162ed47ff858fdf1ce26c18c4 Allowed Property Types}
	* @return	The formatted output value
	*/
	public function formatValue( aValues:Array<Dynamic>, sTargetType:String):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.model.CompositeType.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns whether the {@link #parseValue} method requires the current binding values as a third parameter.
	* @return	Whether the {@link #parseValue} method requires the current binding values as a third parameter
	*/
	public function getParseWithValues( ):Bool;

	/**
	* Returns whether the {@link #formatValue} and {@link #parseValue} methods operate on the internal, related native JavaScript values.
	* @return	Whether the {@link #formatValue} and {@link #parseValue} methods operate on the internal, related native JavaScript values
	*/
	public function getUseInternalValues( ):Bool;

	/**
	* Returns whether the {@link #formatValue} and {@link #parseValue} methods operate on the raw model values instead of formatted values.
	* @return	Whether the {@link #formatValue} and {@link #parseValue} methods operate on the raw model values instead of formatted values
	*/
	public function getUseRawValues( ):Bool;

	/**
	* Parses an external value of the given source type to the corresponding values in model representation.
	* @param	vValue The value to be parsed
	* @param	sSourceType The source type (the expected type of <code>vValue</code>); see {@link topic:ac56d92162ed47ff858fdf1ce26c18c4 Allowed Property Types}
	* @param	aCurrentValues The current values of all binding parts; required if {@link #getParseWithValues} returns <code>true</code>
	* @return	An array of raw values
	*/
	public function parseValue( vValue:Dynamic, sSourceType:String, ?aCurrentValues:Array<Dynamic>):Array<Dynamic>;

	/**
	* Validates whether the given raw values meet the defined constraints. This method does nothing if no constraints are defined.
	* @param	aValues The set of values to be validated
	* @return	Void
	*/
	public function validateValue( aValues:Array<Dynamic>):Void;
}

