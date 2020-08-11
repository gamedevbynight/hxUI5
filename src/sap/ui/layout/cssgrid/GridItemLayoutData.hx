package sap.ui.layout.cssgrid;

@:native("sap.ui.layout.cssgrid.GridItemLayoutData")

/**
* Holds layout data for a grid item.
*/
extern class GridItemLayoutData extends sap.ui.core.LayoutData implements sap.ui.layout.cssgrid.IGridItemLayoutData
{
	@:overload(function(?sId:String, ?mSettings:GridItemLayoutDataArgs):Void {})
	public function new(?mSettings:GridItemLayoutDataArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.layout.cssgrid.GridItemLayoutData with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.LayoutData.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getGridColumn gridColumn}.

Sets the value for the CSS display:grid item property grid-column {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-column MDN web docs: grid-column}

Default value is <code>empty string</code>.
	* @return	Value of property <code>gridColumn</code>
	*/
	public function getGridColumn( ):sap.ui.layout.cssgrid.CSSGridLine;

	/**
	* Gets current value of property {@link #getGridColumnEnd gridColumnEnd}.

Sets the value for the CSS display:grid item property grid-column-end {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-column-end MDN web docs: grid-column-end}

Default value is <code>empty string</code>.
	* @return	Value of property <code>gridColumnEnd</code>
	*/
	public function getGridColumnEnd( ):sap.ui.layout.cssgrid.CSSGridLine;

	/**
	* Gets current value of property {@link #getGridColumnStart gridColumnStart}.

Sets the value for the CSS display:grid item property grid-column-start {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-column-start MDN web docs: grid-column-start}

Default value is <code>empty string</code>.
	* @return	Value of property <code>gridColumnStart</code>
	*/
	public function getGridColumnStart( ):sap.ui.layout.cssgrid.CSSGridLine;

	/**
	* Gets current value of property {@link #getGridRow gridRow}.

Sets the value for the CSS display:grid item property grid-row {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-row MDN web docs: grid-row}

Default value is <code>empty string</code>.
	* @return	Value of property <code>gridRow</code>
	*/
	public function getGridRow( ):sap.ui.layout.cssgrid.CSSGridLine;

	/**
	* Gets current value of property {@link #getGridRowEnd gridRowEnd}.

Sets the value for the CSS display:grid item property grid-row-end {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-row-end MDN web docs: grid-row-end}

Default value is <code>empty string</code>.
	* @return	Value of property <code>gridRowEnd</code>
	*/
	public function getGridRowEnd( ):sap.ui.layout.cssgrid.CSSGridLine;

	/**
	* Gets current value of property {@link #getGridRowStart gridRowStart}.

Sets the value for the CSS display:grid item property grid-row-start {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-row-start MDN web docs: grid-row-start}

Default value is <code>empty string</code>.
	* @return	Value of property <code>gridRowStart</code>
	*/
	public function getGridRowStart( ):sap.ui.layout.cssgrid.CSSGridLine;

	/**
	* Returns a metadata object for class sap.ui.layout.cssgrid.GridItemLayoutData.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Sets a new value for property {@link #getGridColumn gridColumn}.

Sets the value for the CSS display:grid item property grid-column {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-column MDN web docs: grid-column}

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sGridColumn= New value for property <code>gridColumn</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGridColumn( ?sGridColumn:sap.ui.layout.cssgrid.CSSGridLine):sap.ui.layout.cssgrid.GridItemLayoutData;

	/**
	* Sets a new value for property {@link #getGridColumnEnd gridColumnEnd}.

Sets the value for the CSS display:grid item property grid-column-end {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-column-end MDN web docs: grid-column-end}

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sGridColumnEnd= New value for property <code>gridColumnEnd</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGridColumnEnd( ?sGridColumnEnd:sap.ui.layout.cssgrid.CSSGridLine):sap.ui.layout.cssgrid.GridItemLayoutData;

	/**
	* Sets a new value for property {@link #getGridColumnStart gridColumnStart}.

Sets the value for the CSS display:grid item property grid-column-start {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-column-start MDN web docs: grid-column-start}

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sGridColumnStart= New value for property <code>gridColumnStart</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGridColumnStart( ?sGridColumnStart:sap.ui.layout.cssgrid.CSSGridLine):sap.ui.layout.cssgrid.GridItemLayoutData;

	/**
	* Sets a new value for property {@link #getGridRow gridRow}.

Sets the value for the CSS display:grid item property grid-row {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-row MDN web docs: grid-row}

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sGridRow= New value for property <code>gridRow</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGridRow( ?sGridRow:sap.ui.layout.cssgrid.CSSGridLine):sap.ui.layout.cssgrid.GridItemLayoutData;

	/**
	* Sets a new value for property {@link #getGridRowEnd gridRowEnd}.

Sets the value for the CSS display:grid item property grid-row-end {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-row-end MDN web docs: grid-row-end}

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sGridRowEnd= New value for property <code>gridRowEnd</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGridRowEnd( ?sGridRowEnd:sap.ui.layout.cssgrid.CSSGridLine):sap.ui.layout.cssgrid.GridItemLayoutData;

	/**
	* Sets a new value for property {@link #getGridRowStart gridRowStart}.

Sets the value for the CSS display:grid item property grid-row-start {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-row-start MDN web docs: grid-row-start}

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sGridRowStart= New value for property <code>gridRowStart</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGridRowStart( ?sGridRowStart:sap.ui.layout.cssgrid.CSSGridLine):sap.ui.layout.cssgrid.GridItemLayoutData;
}

typedef GridItemLayoutDataArgs = sap.ui.core.LayoutData.LayoutDataArgs & {

	/**
	* Sets the value for the CSS display:grid item property grid-column-start {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-column-start MDN web docs: grid-column-start}
	*/
	@:optional var gridColumnStart:haxe.extern.EitherType<String,sap.ui.layout.cssgrid.CSSGridLine>;

	/**
	* Sets the value for the CSS display:grid item property grid-column-end {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-column-end MDN web docs: grid-column-end}
	*/
	@:optional var gridColumnEnd:haxe.extern.EitherType<String,sap.ui.layout.cssgrid.CSSGridLine>;

	/**
	* Sets the value for the CSS display:grid item property grid-row-start {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-row-start MDN web docs: grid-row-start}
	*/
	@:optional var gridRowStart:haxe.extern.EitherType<String,sap.ui.layout.cssgrid.CSSGridLine>;

	/**
	* Sets the value for the CSS display:grid item property grid-row-end {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-row-end MDN web docs: grid-row-end}
	*/
	@:optional var gridRowEnd:haxe.extern.EitherType<String,sap.ui.layout.cssgrid.CSSGridLine>;

	/**
	* Sets the value for the CSS display:grid item property grid-column {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-column MDN web docs: grid-column}
	*/
	@:optional var gridColumn:haxe.extern.EitherType<String,sap.ui.layout.cssgrid.CSSGridLine>;

	/**
	* Sets the value for the CSS display:grid item property grid-row {@link https://developer.mozilla.org/en-US/docs/Web/CSS/grid-row MDN web docs: grid-row}
	*/
	@:optional var gridRow:haxe.extern.EitherType<String,sap.ui.layout.cssgrid.CSSGridLine>;
}
