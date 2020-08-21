package sap.ui.unified;

@:native("sap.ui.unified.Currency")

/**
* A text view which displays currency values and aligns them at the decimal point.

<h3>Overview</h3>

The currency control consists of an amount, which is formatted automatically according to the user’s locale (using delimiter symbols for the decimal point and thousand separators) and to the currency set for this specific number (number of decimal places).

The currency is expressed as a three-letter code.

<h3>Usage</h3>

<i>When to use</i> <ul> <li>To display amounts with different currencies in a vertical layout, such as in a table, list, or form, and it is important that the user is able to compare the amounts.</li> </ul>

<i>When not to use</i> <ul> <li>To display amounts with the same currency in a table. Use the {@link sap.m.ObjectNumber} instead.</li> <li>to display a number with a unit of measurement that is not a currency. Use the {@link sap.m.ObjectNumber} instead.</li> <li>To display an amount in a structure other than a list, table, or form.</li> </ul>

<h3>Responsive behavior</h3>

The control supports amounts smaller than 100 trillion, which still fit on a phone screen in portrait mode. For larger amounts, the unit of measurement wraps to the next line, which makes it difficult to compare the amounts.
*/
extern class Currency extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:CurrencyArgs):Void {})
	public function new(?mSettings:CurrencyArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.unified.Currency with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getCurrency currency}.

Determines the displayed currency code (ISO 4217).

<b>Note:</b> If a * character is set instead of currency code, only the character itself will be rendered, ignoring the <code>value</code> property.
	* @return	Value of property <code>currency</code>
	*/
	public function getCurrency( ):String;

	/**
	* Get symbol of the currency, if available.
	* @return	null
	*/
	public function getCurrencySymbol( ):String;

	/**
	* The formatted value.
	* @return	The formatted value
	*/
	public function getFormattedValue( ):String;

	/**
	* Gets current value of property {@link #getMaxPrecision maxPrecision}.

Defines the space that is available for the precision of the various currencies.

Default value is <code>3</code>.
	* @return	Value of property <code>maxPrecision</code>
	*/
	public function getMaxPrecision( ):Int;

	/**
	* Returns a metadata object for class sap.ui.unified.Currency.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getStringValue stringValue}.

Determines the currency value as a string.

String value is useful if you want to store really big values. If there are more than 21 digits before the decimal point or if the number starts with “0.” followed by more than five zeros, it is represented in exponential form. In these cases use the <code>stringValue</code> property to keep the number in decimal format.

<b>Note:</b> If set, it will take precedence over the <code>value</code> property.
	* @return	Value of property <code>stringValue</code>
	*/
	public function getStringValue( ):String;

	/**
	* Gets current value of property {@link #getUseSymbol useSymbol}.

Displays the currency symbol instead of the ISO currency code.

Default value is <code>true</code>.
	* @return	Value of property <code>useSymbol</code>
	*/
	public function getUseSymbol( ):Bool;

	/**
	* Gets current value of property {@link #getValue value}.

Determines the currency value.

Default value is <code>0</code>.
	* @return	Value of property <code>value</code>
	*/
	public function getValue( ):Float;

	/**
	* Initializes the control.
	* @return	Void
	*/
	public function init( ):Void;

	/**
	* Sets a new value for property {@link #getCurrency currency}.

Determines the displayed currency code (ISO 4217).

<b>Note:</b> If a * character is set instead of currency code, only the character itself will be rendered, ignoring the <code>value</code> property.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sCurrency New value for property <code>currency</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCurrency( ?sCurrency:String):sap.ui.unified.Currency;

	/**
	* Sets a new value for property {@link #getMaxPrecision maxPrecision}.

Defines the space that is available for the precision of the various currencies.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>3</code>.
	* @param	iMaxPrecision New value for property <code>maxPrecision</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxPrecision( ?iMaxPrecision:Int):sap.ui.unified.Currency;

	/**
	* Sets a new value for property {@link #getStringValue stringValue}.

Determines the currency value as a string.

String value is useful if you want to store really big values. If there are more than 21 digits before the decimal point or if the number starts with “0.” followed by more than five zeros, it is represented in exponential form. In these cases use the <code>stringValue</code> property to keep the number in decimal format.

<b>Note:</b> If set, it will take precedence over the <code>value</code> property.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sStringValue New value for property <code>stringValue</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setStringValue( ?sStringValue:String):sap.ui.unified.Currency;

	/**
	* Sets a new value for property {@link #getUseSymbol useSymbol}.

Displays the currency symbol instead of the ISO currency code.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bUseSymbol New value for property <code>useSymbol</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUseSymbol( ?bUseSymbol:Bool):sap.ui.unified.Currency;

	/**
	* Sets a new value for property {@link #getValue value}.

Determines the currency value.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	fValue New value for property <code>value</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValue( ?fValue:Float):sap.ui.unified.Currency;
}

typedef CurrencyArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines the currency value.
	*/
	@:optional var value:haxe.extern.EitherType<String,Float>;

	/**
	* Determines the currency value as a string.

String value is useful if you want to store really big values. If there are more than 21 digits before the decimal point or if the number starts with “0.” followed by more than five zeros, it is represented in exponential form. In these cases use the <code>stringValue</code> property to keep the number in decimal format.

<b>Note:</b> If set, it will take precedence over the <code>value</code> property.
	*/
	@:optional var stringValue:String;

	/**
	* Determines the displayed currency code (ISO 4217).

<b>Note:</b> If a * character is set instead of currency code, only the character itself will be rendered, ignoring the <code>value</code> property.
	*/
	@:optional var currency:String;

	/**
	* Defines the space that is available for the precision of the various currencies.
	*/
	@:optional var maxPrecision:haxe.extern.EitherType<String,Int>;

	/**
	* Displays the currency symbol instead of the ISO currency code.
	*/
	@:optional var useSymbol:haxe.extern.EitherType<String,Bool>;
}
