package sap.m;

@:native("sap.m.ResponsiveScale")

/**
* <strong><i>Overview</i></strong>

A {@link sap.m.Slider} element represents a scale with tickmarks and labels. The purpose of the element is to decouple the scale logic from other controls i.e. Slider / RangeSlider

The most important properties of the ResponsiveScale are: <ul> <li> tickmarksBetweenLabels - Puts a label on every N-th tickmark.</li> </ul>
*/
extern class ResponsiveScale extends sap.ui.core.Element implements sap.m.IScale
{
	@:overload(function(?sId:String, ?mSettings:ResponsiveScaleArgs):Void {})
	public function new(?mSettings:ResponsiveScaleArgs):Void;

	/**
	* Creates a new subclass of class sap.m.ResponsiveScale with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.m.ResponsiveScale.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getTickmarksBetweenLabels tickmarksBetweenLabels}.

Put a label on every N-th tickmark.

Default value is <code>0</code>.
	* @return	Value of property <code>tickmarksBetweenLabels</code>
	*/
	public function getTickmarksBetweenLabels( ):Int;

	/**
	* Sets a new value for property {@link #getTickmarksBetweenLabels tickmarksBetweenLabels}.

Put a label on every N-th tickmark.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iTickmarksBetweenLabels New value for property <code>tickmarksBetweenLabels</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTickmarksBetweenLabels( ?iTickmarksBetweenLabels:Int):sap.m.ResponsiveScale;
}

typedef ResponsiveScaleArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Put a label on every N-th tickmark.
	*/
	@:optional var tickmarksBetweenLabels:haxe.extern.EitherType<String,Int>;
}
