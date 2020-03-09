package sap.ui.model.type;

@:native("sap.ui.model.type.Currency")

/**
* This class represents the composite type <code>Currency</code>, which consists of the parts "amount" (of type <code>number</code> or <code>string</code>) and "currency" (of type <code>string</code>). In case the amount is a <code>string</code>, it must be the JavaScript representation of the corresponding number. If the <code>source</code> format option is given, the composite type has only one part of type <code>string</code>, holding both amount and currency in the source format.
*/
extern class Currency extends sap.ui.model.CompositeType
{

	/**
	* 
	* @param	oFormatOptions Format options; for a list of all available options, see {@link sap.ui.core.format.NumberFormat.getCurrencyInstance}.
	* @param	oConstraints Constraints for the value part
	* @return	Object
	*/
	public function new( ?oFormatOptions:Dynamic, ?oConstraints:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.type.Currency with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.CompositeType.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;
	@:overload( function(vValue:Array<Dynamic>, sTargetType:String):String{ })

	/**
	* Formats the given value to the given target type.
	* @param	vValue The array containing amount and currency code in case the <code>source</code> format option is not given; otherwise, a string representation of the value which is parsed using the source format
	* @param	sTargetType The target type; must be "string", or a type with "string" as its {@link sap.ui.base.DataType#getPrimitiveType primitive type}
	* @return	The formatted output value; the values <code>undefined</code> or <code>null</code> or an amount <code>undefined</code> or <code>null</code> are formatted to <code>null</code>
	*/
	public function formatValue( vValue:String, sTargetType:String):String;

	/**
	* Returns a metadata object for class sap.ui.model.type.Currency.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Parses a string value.
	* @param	sValue The value to be parsed
	* @param	sSourceType The source type (the expected type of <code>sValue</code>); must be "string", or a type with "string" as its {@link sap.ui.base.DataType#getPrimitiveType primitive type}.
	* @param	aCurrentValues The current values of all binding parts
	* @return	If the <code>source</code> format option is not set, the method returns an array containing amount and currency: the amount is a <code>string</code> if the format option <code>parseAsString</code> is set and a <code>number</code> otherwise, the currency is always a <code>string</code>. If the <code>source</code> format option is set, the method returns a string representation of amount and currency in the given source format.
	*/
	public function parseValue( sValue:String, sSourceType:String, aCurrentValues:Array<Dynamic>):Dynamic;
}

