package sap.ui.commons;

@:native("sap.ui.commons.ProgressIndicator")

/**
* Shows the progress of a process in a graphical way. The indicator can be displayed with or without numerical values. The filling can be displayed in color only, or additionally with the percentage rate. The indicator status can be interactive.
*/
extern class ProgressIndicator extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ProgressIndicatorArgs):Void {})
	public function new(?mSettings:ProgressIndicatorArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.ProgressIndicator with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getBarColor barColor}.

Determines the color of the bar which visualizes the progress. Possible values defined in the sap.ui.core.BarColor enumeration are the following: CRITICAL (yellow), NEGATIVE (red), POSITIVE (green), NEUTRAL (blue) (default value).

Default value is <code>NEUTRAL</code>.
	* @return	Value of property <code>barColor</code>
	*/
	public function getBarColor( ):sap.ui.core.BarColor;

	/**
	* Gets current value of property {@link #getDisplayValue displayValue}.

Determines the text value that will be displayed in the bar.

Default value is <code>0%</code>.
	* @return	Value of property <code>displayValue</code>
	*/
	public function getDisplayValue( ):String;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Determines whether the control is enabled or not. Disabled controls have different colors, and can not be focused.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Returns a metadata object for class sap.ui.commons.ProgressIndicator.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getPercentValue percentValue}.

Determines the numerical value for the displayed length of the progress bar.

Default value is <code>0</code>.
	* @return	Value of property <code>percentValue</code>
	*/
	public function getPercentValue( ):Int;

	/**
	* Gets current value of property {@link #getShowValue showValue}.

Determines whether the percent value shall be rendered inside the bar.

Default value is <code>true</code>.
	* @return	Value of property <code>showValue</code>
	*/
	public function getShowValue( ):Bool;

	/**
	* Gets current value of property {@link #getWidth width}.

Determines the width of the control.

Default value is <code>100%</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Sets a new value for property {@link #getBarColor barColor}.

Determines the color of the bar which visualizes the progress. Possible values defined in the sap.ui.core.BarColor enumeration are the following: CRITICAL (yellow), NEGATIVE (red), POSITIVE (green), NEUTRAL (blue) (default value).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>NEUTRAL</code>.
	* @param	sBarColor New value for property <code>barColor</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBarColor( sBarColor:sap.ui.core.BarColor):sap.ui.commons.ProgressIndicator;

	/**
	* Sets a new value for property {@link #getDisplayValue displayValue}.

Determines the text value that will be displayed in the bar.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0%</code>.
	* @param	sDisplayValue New value for property <code>displayValue</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDisplayValue( sDisplayValue:String):sap.ui.commons.ProgressIndicator;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Determines whether the control is enabled or not. Disabled controls have different colors, and can not be focused.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( bEnabled:Bool):sap.ui.commons.ProgressIndicator;

	/**
	* Sets the new percent value which the ProgressIndicator should display. A new rendering is not necessary, only the bar has to be moved.
	* @param	iPercentValue The new percent value of the ProgressIndicator.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setPercentValue( iPercentValue:Int):sap.ui.commons.ProgressIndicator;

	/**
	* Sets a new value for property {@link #getShowValue showValue}.

Determines whether the percent value shall be rendered inside the bar.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowValue New value for property <code>showValue</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowValue( bShowValue:Bool):sap.ui.commons.ProgressIndicator;

	/**
	* Sets a new value for property {@link #getWidth width}.

Determines the width of the control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100%</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.commons.ProgressIndicator;
}

typedef ProgressIndicatorArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines whether the control is enabled or not. Disabled controls have different colors, and can not be focused.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the color of the bar which visualizes the progress. Possible values defined in the sap.ui.core.BarColor enumeration are the following: CRITICAL (yellow), NEGATIVE (red), POSITIVE (green), NEUTRAL (blue) (default value).
	*/
	@:optional var barColor:haxe.extern.EitherType<String,sap.ui.core.BarColor>;

	/**
	* Determines the text value that will be displayed in the bar.
	*/
	@:optional var displayValue:String;

	/**
	* Determines the numerical value for the displayed length of the progress bar.
	*/
	@:optional var percentValue:haxe.extern.EitherType<String,Int>;

	/**
	* Determines whether the percent value shall be rendered inside the bar.
	*/
	@:optional var showValue:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the width of the control.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;
}
