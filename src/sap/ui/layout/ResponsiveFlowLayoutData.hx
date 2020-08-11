package sap.ui.layout;

@:native("sap.ui.layout.ResponsiveFlowLayoutData")

/**
* This is a LayoutData element that can be added to a control if this control is used within a ResponsiveFlowLayout.
*/
extern class ResponsiveFlowLayoutData extends sap.ui.core.LayoutData
{
	@:overload(function(?sId:String, ?mSettings:ResponsiveFlowLayoutDataArgs):Void {})
	public function new(?mSettings:ResponsiveFlowLayoutDataArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.layout.ResponsiveFlowLayoutData with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.LayoutData.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getLinebreak linebreak}.

If this property is set, the control in which the LayoutData is added, will always cause a line break within the ResponsiveFlowLayout.

Default value is <code>false</code>.
	* @return	Value of property <code>linebreak</code>
	*/
	public function getLinebreak( ):Bool;

	/**
	* Gets current value of property {@link #getLinebreakable linebreakable}.

Shows if an element can be wrapped into a new row. If this value is set to false, the min-width will be set to 0 and the wrapping is up to the previous element.

Default value is <code>true</code>.
	* @return	Value of property <code>linebreakable</code>
	*/
	public function getLinebreakable( ):Bool;

	/**
	* Gets current value of property {@link #getMargin margin}.

Prevents any margin of the element if set to false.

Default value is <code>true</code>.
	* @return	Value of property <code>margin</code>
	*/
	public function getMargin( ):Bool;

	/**
	* Returns a metadata object for class sap.ui.layout.ResponsiveFlowLayoutData.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getMinWidth minWidth}.

Defines the minimal size in px of a ResponsiveFlowLayout element. The element will be shrunk down to this value.

Default value is <code>100</code>.
	* @return	Value of property <code>minWidth</code>
	*/
	public function getMinWidth( ):Int;

	/**
	* Gets current value of property {@link #getWeight weight}.

Defines the weight of the element, that influences the resulting width. If there are several elements within a row of the ResponsiveFlowLayout, each element could have another weight. The bigger the weight of a single element, the wider it will be stretched, i.e. a bigger weight results in a larger width.

Default value is <code>1</code>.
	* @return	Value of property <code>weight</code>
	*/
	public function getWeight( ):Int;

	/**
	* Sets a new value for property {@link #getLinebreak linebreak}.

If this property is set, the control in which the LayoutData is added, will always cause a line break within the ResponsiveFlowLayout.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bLinebreak New value for property <code>linebreak</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLinebreak( ?bLinebreak:Bool):sap.ui.layout.ResponsiveFlowLayoutData;

	/**
	* Sets a new value for property {@link #getLinebreakable linebreakable}.

Shows if an element can be wrapped into a new row. If this value is set to false, the min-width will be set to 0 and the wrapping is up to the previous element.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bLinebreakable New value for property <code>linebreakable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLinebreakable( ?bLinebreakable:Bool):sap.ui.layout.ResponsiveFlowLayoutData;

	/**
	* Sets a new value for property {@link #getMargin margin}.

Prevents any margin of the element if set to false.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bMargin New value for property <code>margin</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMargin( ?bMargin:Bool):sap.ui.layout.ResponsiveFlowLayoutData;

	/**
	* Sets a new value for property {@link #getMinWidth minWidth}.

Defines the minimal size in px of a ResponsiveFlowLayout element. The element will be shrunk down to this value.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100</code>.
	* @param	iMinWidth New value for property <code>minWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMinWidth( ?iMinWidth:Int):sap.ui.layout.ResponsiveFlowLayoutData;

	/**
	* Sets a new value for property {@link #getWeight weight}.

Defines the weight of the element, that influences the resulting width. If there are several elements within a row of the ResponsiveFlowLayout, each element could have another weight. The bigger the weight of a single element, the wider it will be stretched, i.e. a bigger weight results in a larger width.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	iWeight New value for property <code>weight</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWeight( ?iWeight:Int):sap.ui.layout.ResponsiveFlowLayoutData;
}

typedef ResponsiveFlowLayoutDataArgs = sap.ui.core.LayoutData.LayoutDataArgs & {

	/**
	* Defines the minimal size in px of a ResponsiveFlowLayout element. The element will be shrunk down to this value.
	*/
	@:optional var minWidth:haxe.extern.EitherType<String,Int>;

	/**
	* Defines the weight of the element, that influences the resulting width. If there are several elements within a row of the ResponsiveFlowLayout, each element could have another weight. The bigger the weight of a single element, the wider it will be stretched, i.e. a bigger weight results in a larger width.
	*/
	@:optional var weight:haxe.extern.EitherType<String,Int>;

	/**
	* If this property is set, the control in which the LayoutData is added, will always cause a line break within the ResponsiveFlowLayout.
	*/
	@:optional var linebreak:haxe.extern.EitherType<String,Bool>;

	/**
	* Prevents any margin of the element if set to false.
	*/
	@:optional var margin:haxe.extern.EitherType<String,Bool>;

	/**
	* Shows if an element can be wrapped into a new row. If this value is set to false, the min-width will be set to 0 and the wrapping is up to the previous element.
	*/
	@:optional var linebreakable:haxe.extern.EitherType<String,Bool>;
}
