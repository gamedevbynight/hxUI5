package sap.ui.model.odata.type;

@:native("sap.ui.model.odata.type.Date")

/**
* This class represents the OData V4 primitive type <code>Edm.Date</code>.

In {@link sap.ui.model.odata.v4.ODataModel} this type is represented as a <code>string</code> in the format "yyyy-MM-dd".

<b>Note: For an OData V2 service use {@link sap.ui.model.odata.type.DateTime} with the constraint <code>displayFormat: "Date"</code> to display only a date.</b>
*/
extern class Date extends sap.ui.model.odata.type.ODataType
{

	/**
	* 
	* @param	oFormatOptions format options as defined in {@link sap.ui.core.format.DateFormat}
	* @param	oConstraints constraints; {@link #validateValue validateValue} throws an error if any constraint is violated
	* @return	Object
	*/
	public function new( ?oFormatOptions:Dynamic, ?oConstraints:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.odata.type.Date with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.odata.type.ODataType.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;
	@:overload( function(vValue:String, sTargetType:String):Dynamic{ })

	/**
	* Formats the given value to the given target type.
	* @param	vValue the value to be formatted; <code>string</code> values are expected in the format "yyyy-MM-dd" used by OData V4; <code>Date</code> objects are expected to represent UTC as used by OData V2
	* @param	sTargetType the target type; may be "any", "object" (since 1.69.0), "string", or a type with one of these types as its {@link sap.ui.base.DataType#getPrimitiveType primitive type}; see {@link sap.ui.model.odata.type} for more information.
	* @return	the formatted output value in the target type; <code>undefined</code> or <code>null</code> are formatted to <code>null</code>; <code>Date</code> objects are returned for target type "object" and represent the given date with time "00:00:00" in local time
	*/
	public function formatValue( vValue:Date, sTargetType:String):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.model.odata.type.Date.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the type's name.
	* @return	the type's name
	*/
	public function getName( ):String;
	@:overload( function(vValue:String, sSourceType:String):String{ })

	/**
	* Parses the given value to a date.
	* @param	vValue the value to be parsed, maps <code>""</code> to <code>null</code>; <code>Date</code> objects are expected to represent local time and are supported if and only if source type is "object"
	* @param	sSourceType the source type (the expected type of <code>vValue</code>); must be "object" (since 1.69.0), "string", or a type with one of these types as its {@link sap.ui.base.DataType#getPrimitiveType primitive type}; see {@link sap.ui.model.odata.type} for more information.
	* @return	the parsed value in the format "yyyy-MM-dd" used by OData V4
	*/
	public function parseValue( vValue:Date, sSourceType:String):String;

	/**
	* Validates whether the given value in model representation is valid and meets the given constraints.
	* @param	sValue the value to be validated
	* @return	Void
	*/
	public function validateValue( sValue:String):Void;
}

