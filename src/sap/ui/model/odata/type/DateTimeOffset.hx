package sap.ui.model.odata.type;

@:native("sap.ui.model.odata.type.DateTimeOffset")

/**
* This class represents the OData primitive type <a href="http://www.odata.org/documentation/odata-version-2-0/overview#AbstractTypeSystem"> <code>Edm.DateTimeOffset</code></a>.

In {@link sap.ui.model.odata.v2.ODataModel} this type is represented as a <code>Date</code> instance in local time. In {@link sap.ui.model.odata.v4.ODataModel} this type is represented as a <code>string</code> like "1970-12-31T23:59:58Z". See parameter <code>oConstraints.V4</code> for more information.
*/
extern class DateTimeOffset extends sap.ui.model.odata.type.DateTimeBase
{

	/**
	* 
	* @param	oFormatOptions Format options as defined in {@link sap.ui.core.format.DateFormat}
	* @param	oConstraints Constraints; {@link sap.ui.model.odata.type.DateTimeBase#validateValue validateValue} throws an error if any constraint is violated
	* @return	Object
	*/
	public function new( ?oFormatOptions:Dynamic, ?oConstraints:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.odata.type.DateTimeOffset with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.odata.type.DateTimeBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;
	@:overload( function(vValue:Date, sTargetType:String):Dynamic{ })

	/**
	* Formats the given value to the given target type.
	* @param	vValue The value to be formatted, which is represented in the model as a <code>Date</code> instance (OData V2) or as a string like "1970-12-31T23:59:58Z" (OData V4); both representations are accepted independent of the model's OData version
	* @param	sTargetType The target type, may be "any", "string", or a type with one of these types as its {@link sap.ui.base.DataType#getPrimitiveType primitive type}. See {@link sap.ui.model.odata.type} for more information.
	* @return	The formatted output value in the target type; <code>undefined</code> or <code>null</code> are formatted to <code>null</code>
	*/
	public function formatValue( vValue:String, sTargetType:String):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.model.odata.type.DateTimeOffset.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the type's name.
	* @return	The type's name
	*/
	public function getName( ):String;

	/**
	* Parses the given value to a <code>Date</code> instance (OData V2) or a string like "1970-12-31T23:59:58Z" (OData V4), depending on the model's OData version.
	* @param	sValue The value to be parsed; the empty string and <code>null</code> are parsed to <code>null</code>
	* @param	sSourceType The source type (the expected type of <code>sValue</code>), must be "string", or a type with "string" as its {@link sap.ui.base.DataType#getPrimitiveType primitive type}. See {@link sap.ui.model.odata.type} for more information.
	* @return	The parsed value
	*/
	public function parseValue( sValue:String, sSourceType:String):Dynamic;

	/**
	* Validates whether the given value in model representation is valid and meets the defined constraints, depending on the model's OData version.
	* @param	vValue The value to be validated
	* @return	Void
	*/
	public function validateValue( vValue:Dynamic):Void;
}

