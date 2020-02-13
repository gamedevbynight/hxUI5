package sap.ui.layout.cssgrid;

@:native("sap.ui.layout.cssgrid.GridBasicLayout")

/**
* Applies a sap.ui.layout.cssgrid.GridSettings to a provided DOM element or Control.
*/
extern class GridBasicLayout extends sap.ui.layout.cssgrid.GridLayoutBase
{
	@:overload(function(?sId:String, ?mSettings:GridBasicLayoutArgs):Void {})
	public function new(?mSettings:GridBasicLayoutArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.layout.cssgrid.GridBasicLayout with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.layout.cssgrid.GridLayoutBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getGridAutoColumns gridAutoColumns}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-auto-columns MDN web docs: grid-auto-columns}

<b>Note:</b> Not supported in IE11, Edge 15.

Default value is <code>empty string</code>.
	* @return	Value of property <code>gridAutoColumns</code>
	*/
	public function getGridAutoColumns( ):sap.ui.layout.cssgrid.CSSGridTrack;

	/**
	* Gets current value of property {@link #getGridAutoFlow gridAutoFlow}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-auto-flow MDN web docs: grid-auto-flow}

<b>Note:</b> Not supported in IE11, Edge 15.

Default value is <code>Row</code>.
	* @return	Value of property <code>gridAutoFlow</code>
	*/
	public function getGridAutoFlow( ):sap.ui.layout.cssgrid.CSSGridAutoFlow;

	/**
	* Gets current value of property {@link #getGridAutoRows gridAutoRows}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-auto-rows MDN web docs: grid-auto-rows}

<b>Note:</b> Not supported in IE11, Edge 15.

Default value is <code>empty string</code>.
	* @return	Value of property <code>gridAutoRows</code>
	*/
	public function getGridAutoRows( ):sap.ui.layout.cssgrid.CSSGridTrack;

	/**
	* Gets current value of property {@link #getGridColumnGap gridColumnGap}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-column-gap MDN web docs: grid-column-gap}

<b>Note:</b> Not supported in IE11, Edge 15.

Default value is <code>empty string</code>.
	* @return	Value of property <code>gridColumnGap</code>
	*/
	public function getGridColumnGap( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getGridGap gridGap}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-gap MDN web docs: grid-gap}

<b>Note:</b> Not supported in IE11, Edge 15.

Default value is <code>empty string</code>.
	* @return	Value of property <code>gridGap</code>
	*/
	public function getGridGap( ):sap.ui.layout.cssgrid.CSSGridGapShortHand;

	/**
	* Gets current value of property {@link #getGridRowGap gridRowGap}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-row-gap MDN web docs: grid-row-gap}

<b>Note:</b> Not supported in IE11, Edge 15.

Default value is <code>empty string</code>.
	* @return	Value of property <code>gridRowGap</code>
	*/
	public function getGridRowGap( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getGridTemplateColumns gridTemplateColumns}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-template-columns MDN web docs: grid-template-columns}

<b>Note:</b> Not supported in IE11, Edge 15.

Default value is <code>empty string</code>.
	* @return	Value of property <code>gridTemplateColumns</code>
	*/
	public function getGridTemplateColumns( ):sap.ui.layout.cssgrid.CSSGridTrack;

	/**
	* Gets current value of property {@link #getGridTemplateRows gridTemplateRows}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-template-rows MDN web docs: grid-template-rows}

<b>Note:</b> Not supported in IE11, Edge 15.

Default value is <code>empty string</code>.
	* @return	Value of property <code>gridTemplateRows</code>
	*/
	public function getGridTemplateRows( ):sap.ui.layout.cssgrid.CSSGridTrack;

	/**
	* Returns a metadata object for class sap.ui.layout.cssgrid.GridBasicLayout.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.ManagedObjectMetadata;

	/**
	* Sets a new value for property {@link #getGridAutoColumns gridAutoColumns}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-auto-columns MDN web docs: grid-auto-columns}

<b>Note:</b> Not supported in IE11, Edge 15.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sGridAutoColumns New value for property <code>gridAutoColumns</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGridAutoColumns( sGridAutoColumns:sap.ui.layout.cssgrid.CSSGridTrack):sap.ui.layout.cssgrid.GridBasicLayout;

	/**
	* Sets a new value for property {@link #getGridAutoFlow gridAutoFlow}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-auto-flow MDN web docs: grid-auto-flow}

<b>Note:</b> Not supported in IE11, Edge 15.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Row</code>.
	* @param	sGridAutoFlow New value for property <code>gridAutoFlow</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGridAutoFlow( sGridAutoFlow:sap.ui.layout.cssgrid.CSSGridAutoFlow):sap.ui.layout.cssgrid.GridBasicLayout;

	/**
	* Sets a new value for property {@link #getGridAutoRows gridAutoRows}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-auto-rows MDN web docs: grid-auto-rows}

<b>Note:</b> Not supported in IE11, Edge 15.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sGridAutoRows New value for property <code>gridAutoRows</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGridAutoRows( sGridAutoRows:sap.ui.layout.cssgrid.CSSGridTrack):sap.ui.layout.cssgrid.GridBasicLayout;

	/**
	* Sets a new value for property {@link #getGridColumnGap gridColumnGap}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-column-gap MDN web docs: grid-column-gap}

<b>Note:</b> Not supported in IE11, Edge 15.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sGridColumnGap New value for property <code>gridColumnGap</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGridColumnGap( sGridColumnGap:sap.ui.core.CSSSize):sap.ui.layout.cssgrid.GridBasicLayout;

	/**
	* Sets a new value for property {@link #getGridGap gridGap}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-gap MDN web docs: grid-gap}

<b>Note:</b> Not supported in IE11, Edge 15.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sGridGap New value for property <code>gridGap</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGridGap( sGridGap:sap.ui.layout.cssgrid.CSSGridGapShortHand):sap.ui.layout.cssgrid.GridBasicLayout;

	/**
	* Sets a new value for property {@link #getGridRowGap gridRowGap}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-row-gap MDN web docs: grid-row-gap}

<b>Note:</b> Not supported in IE11, Edge 15.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sGridRowGap New value for property <code>gridRowGap</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGridRowGap( sGridRowGap:sap.ui.core.CSSSize):sap.ui.layout.cssgrid.GridBasicLayout;

	/**
	* Sets a new value for property {@link #getGridTemplateColumns gridTemplateColumns}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-template-columns MDN web docs: grid-template-columns}

<b>Note:</b> Not supported in IE11, Edge 15.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sGridTemplateColumns New value for property <code>gridTemplateColumns</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGridTemplateColumns( sGridTemplateColumns:sap.ui.layout.cssgrid.CSSGridTrack):sap.ui.layout.cssgrid.GridBasicLayout;

	/**
	* Sets a new value for property {@link #getGridTemplateRows gridTemplateRows}.

Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-template-rows MDN web docs: grid-template-rows}

<b>Note:</b> Not supported in IE11, Edge 15.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sGridTemplateRows New value for property <code>gridTemplateRows</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGridTemplateRows( sGridTemplateRows:sap.ui.layout.cssgrid.CSSGridTrack):sap.ui.layout.cssgrid.GridBasicLayout;
}

typedef GridBasicLayoutArgs = sap.ui.layout.cssgrid.GridLayoutBase.GridLayoutBaseArgs & {

	/**
	* Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-template-columns MDN web docs: grid-template-columns}

<b>Note:</b> Not supported in IE11, Edge 15.
	*/
	@:optional var gridTemplateColumns:haxe.extern.EitherType<String,sap.ui.layout.cssgrid.CSSGridTrack>;

	/**
	* Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-template-rows MDN web docs: grid-template-rows}

<b>Note:</b> Not supported in IE11, Edge 15.
	*/
	@:optional var gridTemplateRows:haxe.extern.EitherType<String,sap.ui.layout.cssgrid.CSSGridTrack>;

	/**
	* Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-row-gap MDN web docs: grid-row-gap}

<b>Note:</b> Not supported in IE11, Edge 15.
	*/
	@:optional var gridRowGap:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-column-gap MDN web docs: grid-column-gap}

<b>Note:</b> Not supported in IE11, Edge 15.
	*/
	@:optional var gridColumnGap:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-gap MDN web docs: grid-gap}

<b>Note:</b> Not supported in IE11, Edge 15.
	*/
	@:optional var gridGap:haxe.extern.EitherType<String,sap.ui.layout.cssgrid.CSSGridGapShortHand>;

	/**
	* Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-auto-rows MDN web docs: grid-auto-rows}

<b>Note:</b> Not supported in IE11, Edge 15.
	*/
	@:optional var gridAutoRows:haxe.extern.EitherType<String,sap.ui.layout.cssgrid.CSSGridTrack>;

	/**
	* Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-auto-columns MDN web docs: grid-auto-columns}

<b>Note:</b> Not supported in IE11, Edge 15.
	*/
	@:optional var gridAutoColumns:haxe.extern.EitherType<String,sap.ui.layout.cssgrid.CSSGridTrack>;

	/**
	* Sets the value for the CSS display:grid property {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-auto-flow MDN web docs: grid-auto-flow}

<b>Note:</b> Not supported in IE11, Edge 15.
	*/
	@:optional var gridAutoFlow:haxe.extern.EitherType<String,sap.ui.layout.cssgrid.CSSGridAutoFlow>;
}
