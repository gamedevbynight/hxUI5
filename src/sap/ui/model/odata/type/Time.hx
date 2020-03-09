package sap.ui.model.odata.type;

@:native("sap.ui.model.odata.type.Time")

/**
* This class represents the OData V2 primitive type <a href="http://www.odata.org/documentation/odata-version-2-0/overview#AbstractTypeSystem"> <code>Edm.Time</code></a>.

In {@link sap.ui.model.odata.v2.ODataModel ODataModel} this type is represented as an object with two properties: <ul> <li><code>__edmType</code> with the value "Edm.Time" <li><code>ms</code> with the number of milliseconds since midnight </ul>
*/
extern class Time extends sap.ui.model.odata.type.ODataType
{

	/**
	* 
	* @param	oFormatOptions format options as defined in {@link sap.ui.core.format.DateFormat}
	* @param	oConstraints constraints; {@link #validateValue validateValue} throws an error if any constraint is violated
	* @return	Object
	*/
	public function new( ?oFormatOptions:Dynamic, ?oConstraints:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.odata.type.Time with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.odata.type.ODataType.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Formats the given value to the given target type
	* @param	oValue the value in model representation to be formatted.
	* @param	sTargetType the target type; may be "any", "string", or a type with one of these types as its {@link sap.ui.base.DataType#getPrimitiveType primitive type}. See {@link sap.ui.model.odata.type} for more information.
	* @return	the formatted output value in the target type; <code>undefined</code> or <code>null</code> are formatted to <code>null</code>
	*/
	public function formatValue( oValue:Dynamic, sTargetType:String):String;

	/**
	* Returns a metadata object for class sap.ui.model.odata.type.Time.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the type's name.
	* @return	the type's name
	*/
	public function getName( ):String;

	/**
	* Parses the given value, which is expected to be of the given type, to a time object.
	* @param	sValue the value to be parsed, maps <code>""</code> to <code>null</code>
	* @param	sSourceType the source type (the expected type of <code>sValue</code>); must be "string", or a type with "string" as its {@link sap.ui.base.DataType#getPrimitiveType primitive type}. See {@link sap.ui.model.odata.type} for more information.
	* @return	the parsed value as described in {@link #formatValue formatValue}
	*/
	public function parseValue( sValue:String, sSourceType:String):Dynamic;

	/**
	* Validates whether the given value in model representation is valid and meets the defined constraints.
	* @param	oValue the value to be validated
	* @return	Void
	*/
	public function validateValue( oValue:Dynamic):Void;
}

