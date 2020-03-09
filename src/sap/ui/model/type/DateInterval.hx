package sap.ui.model.type;

@:native("sap.ui.model.type.DateInterval")

/**
* This class represents the Date interval composite type.
*/
extern class DateInterval extends sap.ui.model.CompositeType
{

	/**
	* 
	* @param	oFormatOptions Formatting options. For a list of all available options, see {@link sap.ui.core.format.DateFormat.getDateInstance DateFormat}.
	* @param	oConstraints Value constraints
	* @return	Object
	*/
	public function new( ?oFormatOptions:Dynamic, ?oConstraints:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.type.DateInterval with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.CompositeType.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Format the given array containing two values to an output value of type string. Other internal types than 'string' and 'any' are not supported by the date interval type. If a source format has been defined for this type, the formatValue does also accept an array with string values as input. This will be parsed into an array of Dates using the source format.

If <code>aValues</code> isn't an array, a format exception is thrown. If one of the elements in <code>aValues</code> is not defined or null, empty string will be returned.
	* @param	aValues The array of values
	* @param	sInternalType The target type
	* @return	The formatted output value
	*/
	public function formatValue( aValues:Array<Dynamic>, sInternalType:String):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.model.type.DateInterval.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Parse a string value to an array containing two values. Parsing of other internal types than 'string' is not supported by the DateInterval type. In case a source format has been defined, the two values are formatted using the source format after parsing the inteval string and an array which contains two string values is returned.
	* @param	sValue The value to be parsed
	* @param	sInternalType The source type
	* @param	aCurrentValues The current values of all binding parts
	* @return	The parsed result array
	*/
	public function parseValue( sValue:Dynamic, sInternalType:String, aCurrentValues:Array<Dynamic>):Array<Dynamic>;
}

