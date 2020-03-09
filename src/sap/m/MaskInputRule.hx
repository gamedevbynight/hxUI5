package sap.m;

@:native("sap.m.MaskInputRule")

/**
* The <code>sap.m.MaskInputRule</code> control holds the mapping of a single <code>maskFormatSymbol</code> to the regular expression <code>regex</code> that defines the allowed characters for the rule.
*/
extern class MaskInputRule extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:MaskInputRuleArgs):Void {})
	public function new(?mSettings:MaskInputRuleArgs):Void;

	/**
	* Creates a new subclass of class sap.m.MaskInputRule with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getMaskFormatSymbol maskFormatSymbol}.

Defines the symbol used in the mask format which will accept a certain range of characters.

Default value is <code>*</code>.
	* @return	Value of property <code>maskFormatSymbol</code>
	*/
	public function getMaskFormatSymbol( ):String;

	/**
	* Returns a metadata object for class sap.m.MaskInputRule.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getRegex regex}.

Defines the allowed characters as a regular expression.

Default value is <code>[a-zA-Z0-9]</code>.
	* @return	Value of property <code>regex</code>
	*/
	public function getRegex( ):String;

	/**
	* Sets a new value for property {@link #getMaskFormatSymbol maskFormatSymbol}.

Defines the symbol used in the mask format which will accept a certain range of characters.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>*</code>.
	* @param	sMaskFormatSymbol New value for property <code>maskFormatSymbol</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaskFormatSymbol( sMaskFormatSymbol:String):sap.m.MaskInputRule;

	/**
	* Sets a new value for property {@link #getRegex regex}.

Defines the allowed characters as a regular expression.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>[a-zA-Z0-9]</code>.
	* @param	sRegex New value for property <code>regex</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRegex( sRegex:String):sap.m.MaskInputRule;
}

typedef MaskInputRuleArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Defines the symbol used in the mask format which will accept a certain range of characters.
	*/
	@:optional var maskFormatSymbol:String;

	/**
	* Defines the allowed characters as a regular expression.
	*/
	@:optional var regex:String;
}
