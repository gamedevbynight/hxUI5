package sap.m;

@:native("sap.m.FlexItemData")

/**
* Holds layout data for a FlexBox / HBox / VBox.
*/
extern class FlexItemData extends sap.ui.core.LayoutData
{
	@:overload(function(?sId:String, ?mSettings:FlexItemDataArgs):Void {})
	public function new(?mSettings:FlexItemDataArgs):Void;

	/**
	* Creates a new subclass of class sap.m.FlexItemData with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.LayoutData.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAlignSelf alignSelf}.

Determines cross-axis alignment of individual element (not currently supported in Internet Explorer).

Default value is <code>Auto</code>.
	* @return	Value of property <code>alignSelf</code>
	*/
	public function getAlignSelf( ):sap.m.FlexAlignSelf;

	/**
	* Gets current value of property {@link #getBackgroundDesign backgroundDesign}.

Defines the background style of the flex item.

Default value is <code>Transparent</code>.
	* @return	Value of property <code>backgroundDesign</code>
	*/
	public function getBackgroundDesign( ):sap.m.BackgroundDesign;

	/**
	* Gets current value of property {@link #getBaseSize baseSize}.

The base size is the initial main size of the item for the flex algorithm. If set to "auto", this will be the computed size of the item.

Default value is <code>auto</code>.
	* @return	Value of property <code>baseSize</code>
	*/
	public function getBaseSize( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getGrowFactor growFactor}.

Determines the flexibility of the flex item when allocatable space is remaining.

Default value is <code>0</code>.
	* @return	Value of property <code>growFactor</code>
	*/
	public function getGrowFactor( ):Float;

	/**
	* Gets current value of property {@link #getMaxHeight maxHeight}.

The maximum height of the flex item.

Default value is <code>empty string</code>.
	* @return	Value of property <code>maxHeight</code>
	*/
	public function getMaxHeight( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getMaxWidth maxWidth}.

The maximum height of the flex item.

Default value is <code>empty string</code>.
	* @return	Value of property <code>maxWidth</code>
	*/
	public function getMaxWidth( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.m.FlexItemData.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getMinHeight minHeight}.

The minimum height of the flex item.

Default value is <code>auto</code>.
	* @return	Value of property <code>minHeight</code>
	*/
	public function getMinHeight( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getMinWidth minWidth}.

The minimum height of the flex item.

Default value is <code>auto</code>.
	* @return	Value of property <code>minWidth</code>
	*/
	public function getMinWidth( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getOrder order}.

Determines the display order of flex items independent of their source code order.

Default value is <code>0</code>.
	* @return	Value of property <code>order</code>
	*/
	public function getOrder( ):Int;

	/**
	* Gets current value of property {@link #getShrinkFactor shrinkFactor}.

The shrink factor determines how much the flex item will shrink relative to the rest of the flex items in the flex container when negative free space is distributed.

Default value is <code>1</code>.
	* @return	Value of property <code>shrinkFactor</code>
	*/
	public function getShrinkFactor( ):Float;

	/**
	* Gets current value of property {@link #getStyleClass styleClass}.

The style class will be applied to the flex item and can be used for CSS selectors.

Default value is <code>empty string</code>.
	* @return	Value of property <code>styleClass</code>
	*/
	public function getStyleClass( ):String;

	/**
	* Sets the <code>alignSelf</code> property.
	* @param	sValue Align option.
	* @return	<code>this</code> FlexItemData reference for chaining.
	*/
	public function setAlignSelf( sValue:String):sap.m.FlexItemData;

	/**
	* Sets background design for flex items.
	* @param	sValue Background design in string format.
	* @return	<code>this</code> FlexItemData reference for chaining.
	*/
	public function setBackgroundDesign( sValue:String):sap.m.FlexItemData;

	/**
	* Sets the base size for flex items.
	* @param	sValue Base size in string format.
	* @return	<code>this</code> FlexItemData reference for chaining.
	*/
	public function setBaseSize( sValue:String):sap.m.FlexItemData;

	/**
	* Sets the <code>growFactor</code> property.
	* @param	sValue Grow factor in string format.
	* @return	this FlexItemData reference for chaining.
	*/
	public function setGrowFactor( sValue:String):sap.m.FlexItemData;

	/**
	* Sets maximum height.
	* @param	sValue Maximum height in string format.
	* @return	<code>this</code> FlexItemData reference for chaining.
	*/
	public function setMaxHeight( sValue:String):sap.m.FlexItemData;

	/**
	* Sets maximum width.
	* @param	sValue Maximum width in string format.
	* @return	<code>this</code> FlexItemData reference for chaining.
	*/
	public function setMaxWidth( sValue:String):sap.m.FlexItemData;

	/**
	* Sets minimum height.
	* @param	sValue Minimum height in string format.
	* @return	<code>this</code> FlexItemData reference for chaining.
	*/
	public function setMinHeight( sValue:String):sap.m.FlexItemData;

	/**
	* Sets minimum width.
	* @param	sValue Minimum width in string format.
	* @return	<code>this</code> FlexItemData reference for chaining.
	*/
	public function setMinWidth( sValue:String):sap.m.FlexItemData;

	/**
	* Sets the order.
	* @param	sValue Order in string format.
	* @return	<code>this</code> FlexItemData reference for chaining.
	*/
	public function setOrder( sValue:String):sap.m.FlexItemData;

	/**
	* Sets the <code>shrinkFactor</code> property.
	* @param	sValue Shrink factor in string format.
	* @return	<code>this</code> FlexItemData reference for chaining.
	*/
	public function setShrinkFactor( sValue:String):sap.m.FlexItemData;

	/**
	* Sets style class.
	* @param	sValue Style class.
	* @return	<code>this</code> FlexItemData reference for chaining.
	*/
	public function setStyleClass( sValue:String):sap.m.FlexItemData;
}

typedef FlexItemDataArgs = sap.ui.core.LayoutData.LayoutDataArgs & {

	/**
	* Determines cross-axis alignment of individual element (not currently supported in Internet Explorer).
	*/
	@:optional var alignSelf:haxe.extern.EitherType<String,sap.m.FlexAlignSelf>;

	/**
	* Determines the display order of flex items independent of their source code order.
	*/
	@:optional var order:haxe.extern.EitherType<String,Int>;

	/**
	* Determines the flexibility of the flex item when allocatable space is remaining.
	*/
	@:optional var growFactor:haxe.extern.EitherType<String,Float>;

	/**
	* The shrink factor determines how much the flex item will shrink relative to the rest of the flex items in the flex container when negative free space is distributed.
	*/
	@:optional var shrinkFactor:haxe.extern.EitherType<String,Float>;

	/**
	* The base size is the initial main size of the item for the flex algorithm. If set to "auto", this will be the computed size of the item.
	*/
	@:optional var baseSize:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* The minimum height of the flex item.
	*/
	@:optional var minHeight:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* The maximum height of the flex item.
	*/
	@:optional var maxHeight:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* The minimum height of the flex item.
	*/
	@:optional var minWidth:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* The maximum height of the flex item.
	*/
	@:optional var maxWidth:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* The style class will be applied to the flex item and can be used for CSS selectors.
	*/
	@:optional var styleClass:String;

	/**
	* Defines the background style of the flex item.
	*/
	@:optional var backgroundDesign:haxe.extern.EitherType<String,sap.m.BackgroundDesign>;
}
