package sap.m;

@:native("sap.m.RangeSlider")

/**
* Represents a numerical interval and two handles to select a sub-range within it. <h3>Overview</h3> The purpose of the control is to enable visual selection of sub-ranges within a given interval. <h4>Notes:<h4> <ul> <li>The RangeSlider extends the functionality of the {@link sap.m.Slider Slider}</li> <li>The right and left handle can be moved individually and their positions could therefore switch.</li> <li>The entire range can be moved along the interval.</li> <li>The right and left handle can select the same value</li> </ul>

<h3>Usage</h3> The most common usecase is to select and move sub-ranges on a continuous numerical scale.

<h3>Responsive Behavior</h3> You can move the currently selected range by clicking on it and dragging it along the interval.
*/
extern class RangeSlider extends sap.m.Slider
{
	@:overload(function(?sId:String, ?mSettings:RangeSliderArgs):Void {})
	public function new(?mSettings:RangeSliderArgs):Void;

	/**
	* Creates a new subclass of class sap.m.RangeSlider with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.Slider.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.m.RangeSlider.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getRange range}.

Determines the currently selected range on the slider.

If the value is lower/higher than the allowed minimum/maximum, a warning message will be output to the console.

Default value is <code>0,100</code>.
	* @return	Value of property <code>range</code>
	*/
	public function getRange( ):Array<Float>;

	/**
	* Gets current value of property {@link #getValue2 value2}.

Current second value of the slider. (Position of the second handle.)

<b>Note:</b> If the value is not in the valid range (between <code>min</code> and <code>max</code>) it will be changed to be in the valid range. If it is smaller than <code>value</code> it will be set to the same value.

Default value is <code>100</code>.
	* @return	Value of property <code>value2</code>
	*/
	public function getValue2( ):Float;

	/**
	* Sets a new value for property {@link #getRange range}.

Determines the currently selected range on the slider.

If the value is lower/higher than the allowed minimum/maximum, a warning message will be output to the console.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0,100</code>.
	* @param	sRange New value for property <code>range</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRange( sRange:Array<Float>):sap.m.RangeSlider;

	/**
	* Sets a new value for property {@link #getValue2 value2}.

Current second value of the slider. (Position of the second handle.)

<b>Note:</b> If the value is not in the valid range (between <code>min</code> and <code>max</code>) it will be changed to be in the valid range. If it is smaller than <code>value</code> it will be set to the same value.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100</code>.
	* @param	fValue2 New value for property <code>value2</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValue2( fValue2:Float):sap.m.RangeSlider;
}

typedef RangeSliderArgs = sap.m.Slider.SliderArgs & {

	/**
	* Current second value of the slider. (Position of the second handle.)

<b>Note:</b> If the value is not in the valid range (between <code>min</code> and <code>max</code>) it will be changed to be in the valid range. If it is smaller than <code>value</code> it will be set to the same value.
	*/
	@:optional var value2:haxe.extern.EitherType<String,Float>;

	/**
	* Determines the currently selected range on the slider.

If the value is lower/higher than the allowed minimum/maximum, a warning message will be output to the console.
	*/
	@:optional var range:Array<haxe.extern.EitherType<String,Float>>;
}
