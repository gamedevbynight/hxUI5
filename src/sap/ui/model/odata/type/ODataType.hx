package sap.ui.model.odata.type;

@:native("sap.ui.model.odata.type.ODataType")

/**
* This class is an abstract base class for all OData primitive types (see {@link http://docs.oasis-open.org/odata/odata/v4.0/errata02/os/complete/part3-csdl/odata-v4.0-errata02-os-part3-csdl-complete.html#_The_edm:Documentation_Element OData V4 Edm Types} and {@link http://www.odata.org/documentation/odata-version-2-0/overview#AbstractTypeSystem OData V2 Edm Types}). All subtypes implement the interface of {@link sap.ui.model.SimpleType}. That means they implement next to the constructor: <ul> <li>{@link sap.ui.model.SimpleType#getName getName}</li> <li>{@link sap.ui.model.SimpleType#formatValue formatValue}</li> <li>{@link sap.ui.model.SimpleType#parseValue parseValue}</li> <li>{@link sap.ui.model.SimpleType#validateValue validateValue}</li> </ul>

All ODataTypes are immutable. All format options and constraints are given to the constructor, they cannot be modified later.

All ODataTypes use a locale-specific message when throwing an error caused by invalid user input (e.g. if {@link sap.ui.model.odata.type.Double#parseValue Double.parseValue} cannot parse the given value to a number, or if any type's {@link #validateValue validateValue} gets a <code>null</code>, but the constraint <code>nullable</code> is <code>false</code>).
*/
extern class ODataType extends sap.ui.model.SimpleType
{

	/**
	* 
	* @param	oFormatOptions type-specific format options; see subtypes
	* @param	oConstraints type-specific constraints (e.g. <code>oConstraints.nullable</code>), see subtypes
	* @return	Object
	*/
	public function new( ?oFormatOptions:Dynamic, ?oConstraints:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.odata.type.ODataType with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.SimpleType.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* null
	* @return	this
	*/
	public function getInterface( ):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.model.odata.type.ODataType.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

