package sap.m;

@:native("sap.m.FlexBox")

/**
* The <code>sap.m.FlexBox</code> control builds the container for a flexible box layout.<br> <br> <b>Note:</b> Be sure to check the <code>renderType</code> setting to avoid issues due to browser inconsistencies.
*/
extern class FlexBox extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:FlexBoxArgs):Void {})
	public function new(?mSettings:FlexBoxArgs):Void;

	/**
	* Adds item in the FlexBox.
	* @param	oItem Added item.
	* @return	<code>this</code> FlexBox reference for chaining.
	*/
	public function addItem( oItem:Dynamic):sap.m.FlexBox;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.m.FlexBox;

	/**
	* Creates a new subclass of class sap.m.FlexBox with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAlignContent alignContent}.

Determines the layout behavior of container lines when there's extra space along the cross-axis.

Default value is <code>Stretch</code>.
	* @return	Value of property <code>alignContent</code>
	*/
	public function getAlignContent( ):sap.m.FlexAlignContent;

	/**
	* Gets current value of property {@link #getAlignItems alignItems}.

Determines the layout behavior of items along the cross-axis.

Default value is <code>Stretch</code>.
	* @return	Value of property <code>alignItems</code>
	*/
	public function getAlignItems( ):sap.m.FlexAlignItems;

	/**
	* Gets current value of property {@link #getBackgroundDesign backgroundDesign}.

Defines the background style of the <code>sap.m.FlexBox</code>.

Default value is <code>Transparent</code>.
	* @return	Value of property <code>backgroundDesign</code>
	*/
	public function getBackgroundDesign( ):sap.m.BackgroundDesign;

	/**
	* Gets current value of property {@link #getDirection direction}.

Determines the direction of the layout of child elements.

Default value is <code>Row</code>.
	* @return	Value of property <code>direction</code>
	*/
	public function getDirection( ):sap.m.FlexDirection;

	/**
	* Gets current value of property {@link #getDisplayInline displayInline}.

Determines whether the <code>sap.m.FlexBox</code> is in block or inline mode.

Default value is <code>false</code>.
	* @return	Value of property <code>displayInline</code>
	*/
	public function getDisplayInline( ):Bool;

	/**
	* Gets current value of property {@link #getFitContainer fitContainer}.

Determines whether the <code>sap.m.FlexBox</code> will be sized to completely fill its container. If the <code>sap.m.FlexBox</code> is inserted into a Page, the property 'enableScrolling' of the Page needs to be set to 'false' for the FlexBox to fit the entire viewport.

Default value is <code>false</code>.
	* @return	Value of property <code>fitContainer</code>
	*/
	public function getFitContainer( ):Bool;

	/**
	* Gets current value of property {@link #getHeight height}.

The height of the <code>sap.m.FlexBox</code>. Note that when a percentage is given, for the height to work as expected, the height of the surrounding container must be defined.

Default value is <code>empty string</code>.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Gets content of aggregation {@link #getItems items}.

Flex items within the flexible box layout
	* @return	null
	*/
	public function getItems( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getJustifyContent justifyContent}.

Determines the layout behavior along the main axis.

Default value is <code>Start</code>.
	* @return	Value of property <code>justifyContent</code>
	*/
	public function getJustifyContent( ):sap.m.FlexJustifyContent;

	/**
	* Returns a metadata object for class sap.m.FlexBox.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getRenderType renderType}.

Determines whether the layout is rendered as a series of divs or as an unordered list (ul).<br> <br> We recommend to use <code>Bare</code> in most cases to avoid layout issues due to browser inconsistencies.

Default value is <code>Div</code>.
	* @return	Value of property <code>renderType</code>
	*/
	public function getRenderType( ):sap.m.FlexRendertype;

	/**
	* Gets current value of property {@link #getWidth width}.

The width of the <code>sap.m.FlexBox</code>. Note that when a percentage is given, for the width to work as expected, the width of the surrounding container must be defined.

Default value is <code>empty string</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getWrap wrap}.

Determines the wrapping behavior of the flex container. This property has no effect in older browsers, e.g. Android Native 4.3 and below.

Default value is <code>NoWrap</code>.
	* @return	Value of property <code>wrap</code>
	*/
	public function getWrap( ):sap.m.FlexWrap;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.ui.core.Control):Int;

	/**
	* Inserts single item.
	* @param	oItem Inserted item.
	* @param	iIndex Index of the inserted item.
	* @return	<code>this</code> FlexBox reference for chaining.
	*/
	public function insertItem( oItem:Dynamic, iIndex:Int):sap.m.FlexBox;

	/**
	* Removes all items.
	* @return	The removed items from flexbox.
	*/
	public function removeAllItems( ):Dynamic;

	/**
	* Removes single item.
	* @param	vItem Item to be removed.
	* @return	The removed item.
	*/
	public function removeItem( vItem:Dynamic):Dynamic;

	/**
	* Sets a new value for property {@link #getAlignContent alignContent}.

Determines the layout behavior of container lines when there's extra space along the cross-axis.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Stretch</code>.
	* @param	sAlignContent New value for property <code>alignContent</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAlignContent( ?sAlignContent:sap.m.FlexAlignContent):sap.m.FlexBox;

	/**
	* Sets a new value for property {@link #getAlignItems alignItems}.

Determines the layout behavior of items along the cross-axis.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Stretch</code>.
	* @param	sAlignItems New value for property <code>alignItems</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAlignItems( ?sAlignItems:sap.m.FlexAlignItems):sap.m.FlexBox;

	/**
	* Sets a new value for property {@link #getBackgroundDesign backgroundDesign}.

Defines the background style of the <code>sap.m.FlexBox</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Transparent</code>.
	* @param	sBackgroundDesign New value for property <code>backgroundDesign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundDesign( ?sBackgroundDesign:sap.m.BackgroundDesign):sap.m.FlexBox;

	/**
	* Sets a new value for property {@link #getDirection direction}.

Determines the direction of the layout of child elements.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Row</code>.
	* @param	sDirection New value for property <code>direction</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDirection( ?sDirection:sap.m.FlexDirection):sap.m.FlexBox;

	/**
	* Sets a new value for property {@link #getDisplayInline displayInline}.

Determines whether the <code>sap.m.FlexBox</code> is in block or inline mode.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bDisplayInline New value for property <code>displayInline</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDisplayInline( ?bDisplayInline:Bool):sap.m.FlexBox;

	/**
	* Sets a new value for property {@link #getFitContainer fitContainer}.

Determines whether the <code>sap.m.FlexBox</code> will be sized to completely fill its container. If the <code>sap.m.FlexBox</code> is inserted into a Page, the property 'enableScrolling' of the Page needs to be set to 'false' for the FlexBox to fit the entire viewport.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bFitContainer New value for property <code>fitContainer</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFitContainer( ?bFitContainer:Bool):sap.m.FlexBox;

	/**
	* Sets a new value for property {@link #getHeight height}.

The height of the <code>sap.m.FlexBox</code>. Note that when a percentage is given, for the height to work as expected, the height of the surrounding container must be defined.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sHeight= New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( ?sHeight:sap.ui.core.CSSSize):sap.m.FlexBox;

	/**
	* Sets a new value for property {@link #getJustifyContent justifyContent}.

Determines the layout behavior along the main axis.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Start</code>.
	* @param	sJustifyContent New value for property <code>justifyContent</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setJustifyContent( ?sJustifyContent:sap.m.FlexJustifyContent):sap.m.FlexBox;

	/**
	* Sets the render type of the FlexBox.
	* @param	sValue Render type in string format.
	* @return	<code>this</code> FlexBox reference for chaining.
	*/
	public function setRenderType( sValue:String):sap.m.FlexBox;

	/**
	* Sets a new value for property {@link #getWidth width}.

The width of the <code>sap.m.FlexBox</code>. Note that when a percentage is given, for the width to work as expected, the width of the surrounding container must be defined.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sWidth= New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.m.FlexBox;

	/**
	* Sets a new value for property {@link #getWrap wrap}.

Determines the wrapping behavior of the flex container. This property has no effect in older browsers, e.g. Android Native 4.3 and below.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>NoWrap</code>.
	* @param	sWrap New value for property <code>wrap</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWrap( ?sWrap:sap.m.FlexWrap):sap.m.FlexBox;
}

typedef FlexBoxArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The height of the <code>sap.m.FlexBox</code>. Note that when a percentage is given, for the height to work as expected, the height of the surrounding container must be defined.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* The width of the <code>sap.m.FlexBox</code>. Note that when a percentage is given, for the width to work as expected, the width of the surrounding container must be defined.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Determines whether the <code>sap.m.FlexBox</code> is in block or inline mode.
	*/
	@:optional var displayInline:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the direction of the layout of child elements.
	*/
	@:optional var direction:haxe.extern.EitherType<String,sap.m.FlexDirection>;

	/**
	* Determines whether the <code>sap.m.FlexBox</code> will be sized to completely fill its container. If the <code>sap.m.FlexBox</code> is inserted into a Page, the property 'enableScrolling' of the Page needs to be set to 'false' for the FlexBox to fit the entire viewport.
	*/
	@:optional var fitContainer:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the layout is rendered as a series of divs or as an unordered list (ul).<br> <br> We recommend to use <code>Bare</code> in most cases to avoid layout issues due to browser inconsistencies.
	*/
	@:optional var renderType:haxe.extern.EitherType<String,sap.m.FlexRendertype>;

	/**
	* Determines the layout behavior along the main axis.
	*/
	@:optional var justifyContent:haxe.extern.EitherType<String,sap.m.FlexJustifyContent>;

	/**
	* Determines the layout behavior of items along the cross-axis.
	*/
	@:optional var alignItems:haxe.extern.EitherType<String,sap.m.FlexAlignItems>;

	/**
	* Determines the wrapping behavior of the flex container. This property has no effect in older browsers, e.g. Android Native 4.3 and below.
	*/
	@:optional var wrap:haxe.extern.EitherType<String,sap.m.FlexWrap>;

	/**
	* Determines the layout behavior of container lines when there's extra space along the cross-axis.
	*/
	@:optional var alignContent:haxe.extern.EitherType<String,sap.m.FlexAlignContent>;

	/**
	* Defines the background style of the <code>sap.m.FlexBox</code>.
	*/
	@:optional var backgroundDesign:haxe.extern.EitherType<String,sap.m.BackgroundDesign>;

    /**
    * Flex items within the flexible box layout
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;
}
