package sap.m;

@:native("sap.m.MaskInput")

/**
* The <code>sap.m.MaskInput</code> control allows users to easily enter data in a certain format and in a fixed-width input (for example: date, time, phone number, credit card number, currency, IP address, MAC address, and others).
*/
extern class MaskInput extends sap.m.InputBase
{
	@:overload(function(?sId:String, ?mSettings:MaskInputArgs):Void {})
	public function new(?mSettings:MaskInputArgs):Void;

	/**
	* Adds some rule to the aggregation {@link #getRules rules}.
	* @param	oRule The rule to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addRule( oRule:sap.m.MaskInputRule):sap.m.MaskInput;

	/**
	* Destroys all the rules in the aggregation {@link #getRules rules}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyRules( ):sap.m.MaskInput;

	/**
	* Creates a new subclass of class sap.m.MaskInput with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.InputBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getMask mask}.

Mask defined by its characters type (respectively, by its length). You should consider the following important facts: 1. The mask characters normally correspond to an existing rule (one rule per unique char). Characters which don't, are considered immutable characters (for example, the mask '2099', where '9' corresponds to a rule for digits, has the characters '2' and '0' as immutable). 2. Adding a rule corresponding to the <code>placeholderSymbol</code> is not recommended and would lead to an unpredictable behavior. 3. You can use the special escape character '^' called "Caret" prepending a rule character to make it immutable. Use the double escape '^^' if you want to make use of the escape character as an immutable one.
	* @return	Value of property <code>mask</code>
	*/
	public function getMask( ):String;

	/**
	* Returns a metadata object for class sap.m.MaskInput.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getPlaceholderSymbol placeholderSymbol}.

Defines a placeholder symbol. Shown at the position where there is no user input yet.

Default value is <code>"_"</code>.
	* @return	Value of property <code>placeholderSymbol</code>
	*/
	public function getPlaceholderSymbol( ):String;

	/**
	* Gets content of aggregation {@link #getRules rules}.

A list of validation rules (one rule per mask character).
	* @return	null
	*/
	public function getRules( ):Array<sap.m.MaskInputRule>;

	/**
	* Checks for the provided <code>sap.m.MaskInputRule</code> in the aggregation {@link #getRules rules}. and returns its index if found or -1 otherwise.
	* @param	oRule The rule whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfRule( oRule:sap.m.MaskInputRule):Int;

	/**
	* Inserts a rule into the aggregation {@link #getRules rules}.
	* @param	oRule The rule to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the rule should be inserted at; for a negative value of <code>iIndex</code>, the rule is inserted at position 0; for a value greater than the current size of the aggregation, the rule is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertRule( oRule:sap.m.MaskInputRule, iIndex:Int):sap.m.MaskInput;

	/**
	* Removes all the controls from the aggregation {@link #getRules rules}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllRules( ):Array<sap.m.MaskInputRule>;
	@:overload( function(vRule:Int):sap.m.MaskInputRule{ })
	@:overload( function(vRule:String):sap.m.MaskInputRule{ })

	/**
	* Removes a rule from the aggregation {@link #getRules rules}.
	* @param	vRule The rule to remove or its index or id
	* @return	The removed rule or <code>null</code>
	*/
	public function removeRule( vRule:sap.m.MaskInputRule):sap.m.MaskInputRule;

	/**
	* Sets a new value for property {@link #getMask mask}.

Mask defined by its characters type (respectively, by its length). You should consider the following important facts: 1. The mask characters normally correspond to an existing rule (one rule per unique char). Characters which don't, are considered immutable characters (for example, the mask '2099', where '9' corresponds to a rule for digits, has the characters '2' and '0' as immutable). 2. Adding a rule corresponding to the <code>placeholderSymbol</code> is not recommended and would lead to an unpredictable behavior. 3. You can use the special escape character '^' called "Caret" prepending a rule character to make it immutable. Use the double escape '^^' if you want to make use of the escape character as an immutable one.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sMask New value for property <code>mask</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMask( ?sMask:String):sap.m.MaskInput;

	/**
	* Sets a new value for property {@link #getPlaceholderSymbol placeholderSymbol}.

Defines a placeholder symbol. Shown at the position where there is no user input yet.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>"_"</code>.
	* @param	sPlaceholderSymbol New value for property <code>placeholderSymbol</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPlaceholderSymbol( ?sPlaceholderSymbol:String):sap.m.MaskInput;
}

typedef MaskInputArgs = sap.m.InputBase.InputBaseArgs & {

	/**
	* Defines a placeholder symbol. Shown at the position where there is no user input yet.
	*/
	@:optional var placeholderSymbol:String;

	/**
	* Mask defined by its characters type (respectively, by its length). You should consider the following important facts: 1. The mask characters normally correspond to an existing rule (one rule per unique char). Characters which don't, are considered immutable characters (for example, the mask '2099', where '9' corresponds to a rule for digits, has the characters '2' and '0' as immutable). 2. Adding a rule corresponding to the <code>placeholderSymbol</code> is not recommended and would lead to an unpredictable behavior. 3. You can use the special escape character '^' called "Caret" prepending a rule character to make it immutable. Use the double escape '^^' if you want to make use of the escape character as an immutable one.
	*/
	@:optional var mask:String;

    /**
    * A list of validation rules (one rule per mask character).
    */
	@:optional var rules:Array<haxe.extern.EitherType<String,sap.m.MaskInputRule>>;
}
