package sap.ui.model.odata.type;

@:native("sap.ui.model.odata.type.DateTimeBase")

/**
* This is an abstract base class for the OData primitive types <code>Edm.DateTime</code> and <code>Edm.DateTimeOffset</code>.
*/
extern class DateTimeBase extends sap.ui.model.odata.type.ODataType
{

	/**
	* 
	* @param	oFormatOptions Type-specific format options; see subtypes
	* @param	oConstraints Constraints; {@link #validateValue validateValue} throws an error if any constraint is violated
	* @return	Object
	*/
	public function new( ?oFormatOptions:Dynamic, ?oConstraints:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.odata.type.DateTimeBase with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.odata.type.ODataType.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Formats the given value to the given target type.
	* @param	oValue The value to be formatted, which is represented in the model as a <code>Date</code> instance (OData V2)
	* @param	sTargetType The target type, may be "any", "object" (since 1.69.0), "string", or a type with one of these types as its {@link sap.ui.base.DataType#getPrimitiveType primitive type}. See {@link sap.ui.model.odata.type} for more information.
	* @return	The formatted output value in the target type; <code>undefined</code> or <code>null</code> are formatted to <code>null</code>
	*/
	public function formatValue( oValue:Date, sTargetType:String):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.model.odata.type.DateTimeBase.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
	@:overload( function(vValue:String, sSourceType:String):Date{ })

	/**
	* Parses the given value to a <code>Date</code> instance (OData V2).
	* @param	vValue The value to be parsed; the empty string and <code>null</code> are parsed to <code>null</code>
	* @param	sSourceType The source type (the expected type of <code>vValue</code>), must be "object" (since 1.69.0), "string", or a type with one of these types as its {@link sap.ui.base.DataType#getPrimitiveType primitive type}. See {@link sap.ui.model.odata.type} for more information.
	* @return	The parsed value
	*/
	public function parseValue( vValue:Date, sSourceType:String):Date;

	/**
	* Validates whether the given value in model representation is valid and meets the defined constraints.
	* @param	oValue The value to be validated
	* @return	Void
	*/
	public function validateValue( oValue:Date):Void;
}

