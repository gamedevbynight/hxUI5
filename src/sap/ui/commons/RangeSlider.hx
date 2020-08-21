package sap.ui.commons;

@:native("sap.ui.commons.RangeSlider")

/**
* The interactive control is displayed either as a horizontal or a vertical line with two pointers and units of measurement. Users can move the pointers along the line to change a range with graphical support.
*/
extern class RangeSlider extends sap.ui.commons.Slider
{
	@:overload(function(?sId:String, ?mSettings:RangeSliderArgs):Void {})
	public function new(?mSettings:RangeSliderArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.RangeSlider with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.commons.Slider.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.ui.commons.RangeSlider.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getValue2 value2}.

Current second value of the slider. (Position of the second grip.)

<b>Note:</b> If the value is not in the valid range (between <code>min</code> and <code>max</code>) it will be changed to be in the valid range. If it is smaller than <code>value</code> it will be set to the same value.

Default value is <code>80</code>.
	* @return	Value of property <code>value2</code>
	*/
	public function getValue2( ):Float;

	/**
	* Sets a new value for property {@link #getValue2 value2}.

Current second value of the slider. (Position of the second grip.)

<b>Note:</b> If the value is not in the valid range (between <code>min</code> and <code>max</code>) it will be changed to be in the valid range. If it is smaller than <code>value</code> it will be set to the same value.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>80</code>.
	* @param	fValue2 New value for property <code>value2</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValue2( ?fValue2:Float):sap.ui.commons.RangeSlider;
}

typedef RangeSliderArgs = sap.ui.commons.Slider.SliderArgs & {

	/**
	* Current second value of the slider. (Position of the second grip.)

<b>Note:</b> If the value is not in the valid range (between <code>min</code> and <code>max</code>) it will be changed to be in the valid range. If it is smaller than <code>value</code> it will be set to the same value.
	*/
	@:optional var value2:haxe.extern.EitherType<String,Float>;
}
