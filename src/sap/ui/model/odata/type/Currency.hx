package sap.ui.model.odata.type;

@:native("sap.ui.model.odata.type.Currency")

/**
* This class represents the <code>Currency</code> composite type with the parts amount, currency, and currency customizing. The amount part is formatted according to the customizing for the currency. Use the result of the promise returned by {@link sap.ui.model.odata.v4.ODataMetaModel#requestCurrencyCodes} as currency customizing part. If no currency customizing is available, UI5's default formatting applies. The type may only be used for amount and currency parts from a {@link sap.ui.model.odata.v4.ODataModel}.
*/
extern class Currency extends sap.ui.model.type.Currency
{

	/**
	* 
	* @param	oFormatOptions See parameter <code>oFormatOptions</code> of {@link sap.ui.model.type.Currency#constructor}. Format options are immutable, that is, they can only be set once on construction. Format options that are not supported or have a different default are listed below.
	* @param	oConstraints Not supported
	* @return	Object
	*/
	public function new( ?oFormatOptions:Dynamic, ?oConstraints:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.odata.type.Currency with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.type.Currency.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Formats the given values of the parts of the <code>Currency</code> composite type to the given target type.
	* @param	aValues Array of part values to be formatted; contains in the following order: amount, currency, currency customizing. The first call to this method where all parts are set determines the currency customizing; subsequent calls use this customizing, so that the corresponding part may be omitted. Changes to the currency customizing part after this first method call are not considered: The currency customizing for this <code>Currency</code> instance remains unchanged.
	* @param	sTargetType The target type; must be "string" or a type with "string" as its {@link sap.ui.base.DataType#getPrimitiveType primitive type}. See {@link sap.ui.model.odata.type} for more information.
	* @return	The formatted output value; <code>null</code>, if <code>aValues</code> is <code>undefined</code> or <code>null</code> or if the amount, the currency or the currency customizing contained therein is <code>undefined</code>.
	*/
	public function formatValue( aValues:Array<Dynamic>, sTargetType:String):String;

	/**
	* null
	* @return	this
	*/
	public function getInterface( ):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.model.odata.type.Currency.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the type's name.
	* @return	The type's name
	*/
	public function getName( ):String;

	/**
	* Parses the given string value to an array containing amount and currency.
	* @param	vValue The value to be parsed
	* @param	sSourceType The source type (the expected type of <code>vValue</code>); must be "string", or a type with "string" as its {@link sap.ui.base.DataType#getPrimitiveType primitive type}. See {@link sap.ui.model.odata.type} for more information.
	* @param	aCurrentValues The current values of all binding parts
	* @return	An array containing amount and currency in this order. Both, amount and currency, are string values unless the format option <code>parseAsString</code> is <code>false</code>; in this case, the amount is a number.
	*/
	public function parseValue( vValue:String, sSourceType:String, aCurrentValues:Array<Dynamic>):Array<Dynamic>;

	/**
	* Does nothing as the type does not support constraints.
	* @param	vValue The value to be validated
	* @return	Void
	*/
	public function validateValue( vValue:String):Void;
}

