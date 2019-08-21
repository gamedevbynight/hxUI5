package sap.ui.model.odata.type;

@:native("sap.ui.model.odata.type.TimeOfDay")

/**
* This class represents the OData V4 primitive type {@link http://docs.oasis-open.org/odata/odata/v4.0/errata02/os/complete/part3-csdl/odata-v4.0-errata02-os-part3-csdl-complete.html#_The_edm:Documentation_Element <code>Edm.TimeOfDay</code>}. In {@link sap.ui.model.odata.v4.ODataModel} this type is represented as a <code>string</code>.
*/
extern class TimeOfDay extends sap.ui.model.odata.type.ODataType
{

	/**
	* 
	* @param	oFormatOptions Format options as defined in {@link sap.ui.core.format.DateFormat}
	* @param	oConstraints Constraints; {@link #validateValue validateValue} throws an error if any constraint is violated
	* @return	Object
	*/
	public function new( ?oFormatOptions:Dynamic, ?oConstraints:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.odata.type.TimeOfDay with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.odata.type.ODataType.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Formats the given value to the given target type.
	* @param	sValue The value to be formatted, which is represented as a string in the model
	* @param	sTargetType The target type, may be "any", "object" (since 1.69.0), "string", or a type with one of these types as its {@link sap.ui.base.DataType#getPrimitiveType primitive type}. See {@link sap.ui.model.odata.type} for more information
	* @return	The formatted output value in the target type; <code>undefined</code> or <code>null</code> are formatted to <code>null</code>
	*/
	public function formatValue( sValue:String, sTargetType:String):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.model.odata.type.TimeOfDay.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the type's name.
	* @return	The type's name
	*/
	public function getName( ):String;
	@:overload( function(vValue:Date, sSourceType:String):String{ })

	/**
	* Parses the given value, which is expected to be of the given type, to a string with an OData V4 Edm.TimeOfDay value.
	* @param	vValue The value to be parsed, maps <code>""</code> to <code>null</code>; <code>Date</code> objects are expected to represent local time and are supported if and only if source type is "object".
	* @param	sSourceType The source type (the expected type of <code>sValue</code>), must be "string", "object" (since 1.69.0) or a type with one of these types as its {@link sap.ui.base.DataType#getPrimitiveType primitive type}. See {@link sap.ui.model.odata.type} for more information.
	* @return	The parsed value
	*/
	public function parseValue( vValue:String, sSourceType:String):String;

	/**
	* Validates the given value in model representation and meets the type's constraints.
	* @param	sValue The value to be validated
	* @return	Void
	*/
	public function validateValue( sValue:String):Void;
}

