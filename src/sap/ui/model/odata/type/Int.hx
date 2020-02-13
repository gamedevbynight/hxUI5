package sap.ui.model.odata.type;

@:native("sap.ui.model.odata.type.Int")

/**
* This is an abstract base class for integer-based <a href="http://www.odata.org/documentation/odata-version-2-0/overview#AbstractTypeSystem"> OData primitive types</a> like <code>Edm.Int16</code> or <code>Edm.Int32</code>.
*/
extern class Int extends sap.ui.model.odata.type.ODataType
{

	/**
	* 
	* @param	oFormatOptions type-specific format options; see subtypes
	* @param	oConstraints constraints; {@link #validateValue validateValue} throws an error if any constraint is violated
	* @return	Object
	*/
	public function new( ?oFormatOptions:Dynamic, ?oConstraints:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.odata.type.Int with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.odata.type.ODataType.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Formats the given value to the given target type. When formatting to <code>string</code> the format options are used.
	* @param	iValue the value in model representation to be formatted
	* @param	sTargetType the target type; may be "any", "int", "float", "string", or a type with one of these types as its {@link sap.ui.base.DataType#getPrimitiveType primitive type}. See {@link sap.ui.model.odata.type} for more information.
	* @return	the formatted output value in the target type; <code>undefined</code> or <code>null</code> are formatted to <code>null</code>
	*/
	public function formatValue( iValue:String, sTargetType:String):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.model.odata.type.Int.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
	@:overload( function(vValue:String, sSourceType:String):String{ })

	/**
	* Parses the given value, which is expected to be of the given source type, to an Int in number representation.
	* @param	vValue the value to be parsed. The empty string and <code>null</code> are parsed to <code>null</code>.
	* @param	sSourceType the source type (the expected type of <code>vValue</code>); may be "float", "int", "string", or a type with one of these types as its {@link sap.ui.base.DataType#getPrimitiveType primitive type}. See {@link sap.ui.model.odata.type} for more information.
	* @return	the parsed value
	*/
	public function parseValue( vValue:String, sSourceType:String):String;

	/**
	* Validates whether the given value in model representation is valid and meets the defined constraints.
	* @param	iValue the value to be validated
	* @return	Void
	*/
	public function validateValue( iValue:String):Void;
}

