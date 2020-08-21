package sap.ui.model.odata.type;

@:native("sap.ui.model.odata.type.Guid")

/**
* This class represents the OData primitive type <a href="http://www.odata.org/documentation/odata-version-2-0/overview#AbstractTypeSystem"> <code>Edm.Guid</code></a>.

In both {@link sap.ui.model.odata.v2.ODataModel} and {@link sap.ui.model.odata.v4.ODataModel} this type is represented as a <code>string</code>.
*/
extern class Guid extends sap.ui.model.odata.type.ODataType
{

	/**
	* 
	* @param	oFormatOptions format options as defined in the interface of {@link sap.ui.model.SimpleType}; this type ignores them since it does not support any format options
	* @param	oConstraints constraints; {@link #validateValue validateValue} throws an error if any constraint is violated
	* @return	Object
	*/
	public function new( ?oFormatOptions:Dynamic, ?oConstraints:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.odata.type.Guid with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.odata.type.ODataType.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Formats the given value to the given target type.
	* @param	sValue the value to be formatted
	* @param	sTargetType the target type; may be "any", "string", or a type with one of these types as its {@link sap.ui.base.DataType#getPrimitiveType primitive type}. See {@link sap.ui.model.odata.type} for more information.
	* @return	the formatted output value in the target type; <code>undefined</code> or <code>null</code> are formatted to <code>null</code>
	*/
	public function formatValue( sValue:String, sTargetType:String):String;

	/**
	* Returns a metadata object for class sap.ui.model.odata.type.Guid.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the type's name.
	* @return	the type's name
	*/
	public function getName( ):String;

	/**
	* Parses the given value to a GUID.
	* @param	sValue the value to be parsed, maps <code>""</code> to <code>null</code>
	* @param	sSourceType the source type (the expected type of <code>sValue</code>); must be "string", or a type with "string" as its {@link sap.ui.base.DataType#getPrimitiveType primitive type}. See {@link sap.ui.model.odata.type} for more information.
	* @return	the parsed value
	*/
	public function parseValue( sValue:String, sSourceType:String):String;

	/**
	* Validates whether the given value in model representation is valid and meets the given constraints.
	* @param	sValue the value to be validated
	* @return	Void
	*/
	public function validateValue( sValue:String):Void;
}

