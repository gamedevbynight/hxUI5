package sap.ui.model.type;

@:native("sap.ui.model.type.Currency")

/**
* This class represents the currency composite type.
*/
extern class Currency extends sap.ui.model.CompositeType
{

	/**
	* 
	* @param	oFormatOptions Formatting options. For a list of all available options, see {@link sap.ui.core.format.NumberFormat#constructor NumberFormat}.
	* @param	oConstraints Value constraints
	* @return	Object
	*/
	public function new( ?oFormatOptions:Dynamic, ?oConstraints:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.type.Currency with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.CompositeType.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;
	@:overload( function(vValue:Array<Dynamic>, sInternalType:String):Dynamic{ })

	/**
	* Format the given array containing amount and currency code to an output value of type string. Other internal types than 'string' are not supported by the Currency type. If a source format has been defined for this type, the formatValue does also accept a string value as input, which will be parsed into an array using the source format. If aValues is not defined or null, null will be returned.
	* @param	vValue the array of values or string value to be formatted
	* @param	sInternalType the target type
	* @return	the formatted output value
	*/
	public function formatValue( vValue:String, sInternalType:String):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.model.type.Currency.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Parse a string value to an array containing amount and currency. Parsing of other internal types than 'string' is not supported by the Currency type. In case a source format has been defined, after parsing the currency is formatted using the source format and a string value is returned instead.
	* @param	vValue the value to be parsed
	* @param	sInternalType the source type
	* @param	aCurrentValues the current values of all binding parts
	* @return	the parse result array
	*/
	public function parseValue( vValue:Dynamic, sInternalType:String, aCurrentValues:Array<Dynamic>):Dynamic;
}

