package sap.ui.model.odata.type;

@:native("sap.ui.model.odata.type.DateTime")

/**
* This class represents the OData V2 primitive type <a href="http://www.odata.org/documentation/odata-version-2-0/overview#AbstractTypeSystem"> <code>Edm.DateTime</code></a>.

If you want to display a date and a time, prefer {@link sap.ui.model.odata.type.DateTimeOffset}, specifically designed for this purpose.

Use <code>DateTime</code> with the SAP-specific annotation <code>display-format=Date</code> (resp. the constraint <code>displayFormat: "Date"</code>) to display only a date.

In {@link sap.ui.model.odata.v2.ODataModel} this type is represented as a <code>Date</code>. With the constraint <code>displayFormat: "Date"</code>, the time zone is UTC and the time part is ignored, otherwise it is a date/time value in local time.
*/
extern class DateTime extends sap.ui.model.odata.type.DateTimeBase
{

	/**
	* 
	* @param	oFormatOptions format options as defined in {@link sap.ui.core.format.DateFormat}
	* @param	oConstraints constraints; {@link sap.ui.model.odata.type.DateTimeBase#validateValue validateValue} throws an error if any constraint is violated
	* @return	Object
	*/
	public function new( ?oFormatOptions:Dynamic, ?oConstraints:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.odata.type.DateTime with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.odata.type.DateTimeBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.model.odata.type.DateTime.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the type's name.
	* @return	the type's name
	*/
	public function getName( ):String;
}

