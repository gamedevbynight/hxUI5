package sap.ui.layout;

@:native("sap.ui.layout.GridData")

/**
* Defines layout data for the {@link sap.ui.layout.Grid}.

<b>Note:</b> When <code>GridData</code> is used for controls inside a form, the <code>linebreak</code> property has to be set to <code>true</code> if the next form element has to be displayed on a new line. Otherwise the <code>GridData</code> overrides the layout provided by the <code>Form</code>.
*/
extern class GridData extends sap.ui.core.LayoutData
{
	@:overload(function(?sId:String, ?mSettings:GridDataArgs):Void {})
	public function new(?mSettings:GridDataArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.layout.GridData with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.LayoutData.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getIndent indent}.

A string type that represents the indent values of the <code>Grid</code> for large, medium and small screens.

Allowed values are separated by space Letters L, M or S followed by number of columns from 1 to 11 that the container has to take, for example, <code>L2 M4 S6</code>, <code>M11</code>, <code>s10</code> or <code>l4 m4</code>.

<b>Note:</b> The parameters must be provided in the order <large medium small>.
	* @return	Value of property <code>indent</code>
	*/
	public function getIndent( ):sap.ui.layout.GridIndent;

	/**
	* Gets current value of property {@link #getIndentL indentL}.

Optional. Defines an indent value for large screens. This value overwrites the value for large screens defined in the <code>indent</code> property.
	* @return	Value of property <code>indentL</code>
	*/
	public function getIndentL( ):Int;

	/**
	* Gets current value of property {@link #getIndentM indentM}.

Optional. Defines an indent value for medium size screens. This value overwrites the value for medium screens defined in the <code>indent</code> property.
	* @return	Value of property <code>indentM</code>
	*/
	public function getIndentM( ):Int;

	/**
	* Gets current value of property {@link #getIndentS indentS}.

Optional. Defines an indent value for small screens. This value overwrites the value for small screens defined in the <code>indent</code> property.
	* @return	Value of property <code>indentS</code>
	*/
	public function getIndentS( ):Int;

	/**
	* Gets current value of property {@link #getIndentXL indentXL}.

Optional. Defines an indent value for extra large screens. This value overwrites the value for extra large screens defined in the <code>indent</code> property.
	* @return	Value of property <code>indentXL</code>
	*/
	public function getIndentXL( ):Int;

	/**
	* Gets current value of property {@link #getLinebreak linebreak}.

Optional. If set to <code>true</code>, the control causes a line break on all-size screens within the <code>Grid</code> and becomes the first within the next line.

Default value is <code>false</code>.
	* @return	Value of property <code>linebreak</code>
	*/
	public function getLinebreak( ):Bool;

	/**
	* Gets current value of property {@link #getLinebreakL linebreakL}.

Optional. If set to <code>true</code>, the control causes a line break on large screens within the <code>Grid</code> and becomes the first within the next line.

Default value is <code>false</code>.
	* @return	Value of property <code>linebreakL</code>
	*/
	public function getLinebreakL( ):Bool;

	/**
	* Gets current value of property {@link #getLinebreakM linebreakM}.

Optional. If set to <code>true</code>, the control causes a line break on medium screens within the <code>Grid</code> and becomes the first within the next line.

Default value is <code>false</code>.
	* @return	Value of property <code>linebreakM</code>
	*/
	public function getLinebreakM( ):Bool;

	/**
	* Gets current value of property {@link #getLinebreakS linebreakS}.

Optional. If set to <code>true</code>, the control causes a line break on small screens within the <code>Grid</code> and becomes the first within the next line.

Default value is <code>false</code>.
	* @return	Value of property <code>linebreakS</code>
	*/
	public function getLinebreakS( ):Bool;

	/**
	* Gets current value of property {@link #getLinebreakXL linebreakXL}.

Optional. If set to <code>true</code>, the control causes a line break on extra large screens within the <code>Grid</code> and becomes the first within the next line.

Default value is <code>false</code>.
	* @return	Value of property <code>linebreakXL</code>
	*/
	public function getLinebreakXL( ):Bool;

	/**
	* Returns a metadata object for class sap.ui.layout.GridData.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getMoveBackwards moveBackwards}.

Optional. Moves a cell backwards with as many columns as specified.
	* @return	Value of property <code>moveBackwards</code>
	*/
	public function getMoveBackwards( ):sap.ui.layout.GridIndent;

	/**
	* Gets current value of property {@link #getMoveForward moveForward}.

Optional. Moves a cell forwards with as many columns as specified.
	* @return	Value of property <code>moveForward</code>
	*/
	public function getMoveForward( ):sap.ui.layout.GridIndent;

	/**
	* Gets current value of property {@link #getSpan span}.

A string type that represents the span values of the <code>Grid</code> for large, medium and small screens.

Allowed values are separated by space Letters L, M or S followed by number of columns from 1 to 12 that the container has to take, for example: <code>L2 M4 S6</code>, <code>M12</code>, <code>s10</code> or <code>l4 m4</code>.

<b>Note:</b> The parameters must be provided in the order <large medium small>.
	* @return	Value of property <code>span</code>
	*/
	public function getSpan( ):sap.ui.layout.GridSpan;

	/**
	* Gets current value of property {@link #getSpanL spanL}.

Optional. Defines a span value for large screens. This value overwrites the value for large screens defined in the <code>span</code> property.
	* @return	Value of property <code>spanL</code>
	*/
	public function getSpanL( ):Int;

	/**
	* Gets current value of property {@link #getSpanM spanM}.

Optional. Defines a span value for medium size screens. This value overwrites the value for medium screens defined in the <code>span</code> property.
	* @return	Value of property <code>spanM</code>
	*/
	public function getSpanM( ):Int;

	/**
	* Gets current value of property {@link #getSpanS spanS}.

Optional. Defines a span value for small screens. This value overwrites the value for small screens defined in the <code>span</code> property.
	* @return	Value of property <code>spanS</code>
	*/
	public function getSpanS( ):Int;

	/**
	* Gets current value of property {@link #getSpanXL spanXL}.

Optional. Defines a span value for extra large screens. This value overwrites the value for extra large screens defined in the <code>span</code> property.
	* @return	Value of property <code>spanXL</code>
	*/
	public function getSpanXL( ):Int;

	/**
	* Gets current value of property {@link #getVisibleL visibleL}.

Defines if this control is visible on large screens.

Default value is <code>true</code>.
	* @return	Value of property <code>visibleL</code>
	*/
	public function getVisibleL( ):Bool;

	/**
	* Gets current value of property {@link #getVisibleM visibleM}.

Defines if this control is visible on medium screens.

Default value is <code>true</code>.
	* @return	Value of property <code>visibleM</code>
	*/
	public function getVisibleM( ):Bool;

	/**
	* Gets current value of property {@link #getVisibleS visibleS}.

Defines if this control is visible on small screens.

Default value is <code>true</code>.
	* @return	Value of property <code>visibleS</code>
	*/
	public function getVisibleS( ):Bool;

	/**
	* Gets current value of property {@link #getVisibleXL visibleXL}.

Defines if this control is visible on extra Large screens.

Default value is <code>true</code>.
	* @return	Value of property <code>visibleXL</code>
	*/
	public function getVisibleXL( ):Bool;

	/**
	* Sets a new value for property {@link #getIndent indent}.

A string type that represents the indent values of the <code>Grid</code> for large, medium and small screens.

Allowed values are separated by space Letters L, M or S followed by number of columns from 1 to 11 that the container has to take, for example, <code>L2 M4 S6</code>, <code>M11</code>, <code>s10</code> or <code>l4 m4</code>.

<b>Note:</b> The parameters must be provided in the order <large medium small>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIndent New value for property <code>indent</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIndent( sIndent:sap.ui.layout.GridIndent):sap.ui.layout.GridData;

	/**
	* Sets a new value for property {@link #getIndentL indentL}.

Optional. Defines an indent value for large screens. This value overwrites the value for large screens defined in the <code>indent</code> property.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iIndentL New value for property <code>indentL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIndentL( iIndentL:Int):sap.ui.layout.GridData;

	/**
	* Sets a new value for property {@link #getIndentM indentM}.

Optional. Defines an indent value for medium size screens. This value overwrites the value for medium screens defined in the <code>indent</code> property.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iIndentM New value for property <code>indentM</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIndentM( iIndentM:Int):sap.ui.layout.GridData;

	/**
	* Sets a new value for property {@link #getIndentS indentS}.

Optional. Defines an indent value for small screens. This value overwrites the value for small screens defined in the <code>indent</code> property.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iIndentS New value for property <code>indentS</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIndentS( iIndentS:Int):sap.ui.layout.GridData;

	/**
	* Sets a new value for property {@link #getIndentXL indentXL}.

Optional. Defines an indent value for extra large screens. This value overwrites the value for extra large screens defined in the <code>indent</code> property.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iIndentXL New value for property <code>indentXL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIndentXL( iIndentXL:Int):sap.ui.layout.GridData;

	/**
	* Sets a new value for property {@link #getLinebreak linebreak}.

Optional. If set to <code>true</code>, the control causes a line break on all-size screens within the <code>Grid</code> and becomes the first within the next line.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bLinebreak New value for property <code>linebreak</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLinebreak( ?bLinebreak:Bool):sap.ui.layout.GridData;

	/**
	* Sets a new value for property {@link #getLinebreakL linebreakL}.

Optional. If set to <code>true</code>, the control causes a line break on large screens within the <code>Grid</code> and becomes the first within the next line.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bLinebreakL New value for property <code>linebreakL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLinebreakL( ?bLinebreakL:Bool):sap.ui.layout.GridData;

	/**
	* Sets a new value for property {@link #getLinebreakM linebreakM}.

Optional. If set to <code>true</code>, the control causes a line break on medium screens within the <code>Grid</code> and becomes the first within the next line.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bLinebreakM New value for property <code>linebreakM</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLinebreakM( ?bLinebreakM:Bool):sap.ui.layout.GridData;

	/**
	* Sets a new value for property {@link #getLinebreakS linebreakS}.

Optional. If set to <code>true</code>, the control causes a line break on small screens within the <code>Grid</code> and becomes the first within the next line.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bLinebreakS New value for property <code>linebreakS</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLinebreakS( ?bLinebreakS:Bool):sap.ui.layout.GridData;

	/**
	* Sets a new value for property {@link #getLinebreakXL linebreakXL}.

Optional. If set to <code>true</code>, the control causes a line break on extra large screens within the <code>Grid</code> and becomes the first within the next line.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bLinebreakXL New value for property <code>linebreakXL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLinebreakXL( ?bLinebreakXL:Bool):sap.ui.layout.GridData;

	/**
	* Sets a new value for property {@link #getMoveBackwards moveBackwards}.

Optional. Moves a cell backwards with as many columns as specified.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sMoveBackwards New value for property <code>moveBackwards</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMoveBackwards( sMoveBackwards:sap.ui.layout.GridIndent):sap.ui.layout.GridData;

	/**
	* Sets a new value for property {@link #getMoveForward moveForward}.

Optional. Moves a cell forwards with as many columns as specified.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sMoveForward New value for property <code>moveForward</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMoveForward( sMoveForward:sap.ui.layout.GridIndent):sap.ui.layout.GridData;

	/**
	* Sets a new value for property {@link #getSpan span}.

A string type that represents the span values of the <code>Grid</code> for large, medium and small screens.

Allowed values are separated by space Letters L, M or S followed by number of columns from 1 to 12 that the container has to take, for example: <code>L2 M4 S6</code>, <code>M12</code>, <code>s10</code> or <code>l4 m4</code>.

<b>Note:</b> The parameters must be provided in the order <large medium small>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sSpan New value for property <code>span</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSpan( sSpan:sap.ui.layout.GridSpan):sap.ui.layout.GridData;

	/**
	* Sets a new value for property {@link #getSpanL spanL}.

Optional. Defines a span value for large screens. This value overwrites the value for large screens defined in the <code>span</code> property.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iSpanL New value for property <code>spanL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSpanL( iSpanL:Int):sap.ui.layout.GridData;

	/**
	* Sets a new value for property {@link #getSpanM spanM}.

Optional. Defines a span value for medium size screens. This value overwrites the value for medium screens defined in the <code>span</code> property.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iSpanM New value for property <code>spanM</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSpanM( iSpanM:Int):sap.ui.layout.GridData;

	/**
	* Sets a new value for property {@link #getSpanS spanS}.

Optional. Defines a span value for small screens. This value overwrites the value for small screens defined in the <code>span</code> property.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iSpanS New value for property <code>spanS</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSpanS( iSpanS:Int):sap.ui.layout.GridData;

	/**
	* Sets a new value for property {@link #getSpanXL spanXL}.

Optional. Defines a span value for extra large screens. This value overwrites the value for extra large screens defined in the <code>span</code> property.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iSpanXL New value for property <code>spanXL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSpanXL( iSpanXL:Int):sap.ui.layout.GridData;

	/**
	* Sets a new value for property {@link #getVisibleL visibleL}.

Defines if this control is visible on large screens.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisibleL New value for property <code>visibleL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisibleL( ?bVisibleL:Bool):sap.ui.layout.GridData;

	/**
	* Sets a new value for property {@link #getVisibleM visibleM}.

Defines if this control is visible on medium screens.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisibleM New value for property <code>visibleM</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisibleM( ?bVisibleM:Bool):sap.ui.layout.GridData;

	/**
	* Sets a new value for property {@link #getVisibleS visibleS}.

Defines if this control is visible on small screens.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisibleS New value for property <code>visibleS</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisibleS( ?bVisibleS:Bool):sap.ui.layout.GridData;

	/**
	* Sets a new value for property {@link #getVisibleXL visibleXL}.

Defines if this control is visible on extra Large screens.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisibleXL New value for property <code>visibleXL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisibleXL( ?bVisibleXL:Bool):sap.ui.layout.GridData;
}

typedef GridDataArgs = sap.ui.core.LayoutData.LayoutDataArgs & {

	/**
	* A string type that represents the span values of the <code>Grid</code> for large, medium and small screens.

Allowed values are separated by space Letters L, M or S followed by number of columns from 1 to 12 that the container has to take, for example: <code>L2 M4 S6</code>, <code>M12</code>, <code>s10</code> or <code>l4 m4</code>.

<b>Note:</b> The parameters must be provided in the order <large medium small>.
	*/
	@:optional var span:haxe.extern.EitherType<String,sap.ui.layout.GridSpan>;

	/**
	* Optional. Defines a span value for extra large screens. This value overwrites the value for extra large screens defined in the <code>span</code> property.
	*/
	@:optional var spanXL:haxe.extern.EitherType<String,Int>;

	/**
	* Optional. Defines a span value for large screens. This value overwrites the value for large screens defined in the <code>span</code> property.
	*/
	@:optional var spanL:haxe.extern.EitherType<String,Int>;

	/**
	* Optional. Defines a span value for medium size screens. This value overwrites the value for medium screens defined in the <code>span</code> property.
	*/
	@:optional var spanM:haxe.extern.EitherType<String,Int>;

	/**
	* Optional. Defines a span value for small screens. This value overwrites the value for small screens defined in the <code>span</code> property.
	*/
	@:optional var spanS:haxe.extern.EitherType<String,Int>;

	/**
	* A string type that represents the indent values of the <code>Grid</code> for large, medium and small screens.

Allowed values are separated by space Letters L, M or S followed by number of columns from 1 to 11 that the container has to take, for example, <code>L2 M4 S6</code>, <code>M11</code>, <code>s10</code> or <code>l4 m4</code>.

<b>Note:</b> The parameters must be provided in the order <large medium small>.
	*/
	@:optional var indent:haxe.extern.EitherType<String,sap.ui.layout.GridIndent>;

	/**
	* Optional. Defines an indent value for extra large screens. This value overwrites the value for extra large screens defined in the <code>indent</code> property.
	*/
	@:optional var indentXL:haxe.extern.EitherType<String,Int>;

	/**
	* Optional. Defines an indent value for large screens. This value overwrites the value for large screens defined in the <code>indent</code> property.
	*/
	@:optional var indentL:haxe.extern.EitherType<String,Int>;

	/**
	* Optional. Defines an indent value for medium size screens. This value overwrites the value for medium screens defined in the <code>indent</code> property.
	*/
	@:optional var indentM:haxe.extern.EitherType<String,Int>;

	/**
	* Optional. Defines an indent value for small screens. This value overwrites the value for small screens defined in the <code>indent</code> property.
	*/
	@:optional var indentS:haxe.extern.EitherType<String,Int>;

	/**
	* Defines if this control is visible on extra Large screens.
	*/
	@:optional var visibleXL:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines if this control is visible on large screens.
	*/
	@:optional var visibleL:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines if this control is visible on medium screens.
	*/
	@:optional var visibleM:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines if this control is visible on small screens.
	*/
	@:optional var visibleS:haxe.extern.EitherType<String,Bool>;

	/**
	* Optional. Moves a cell backwards with as many columns as specified.
	*/
	@:optional var moveBackwards:haxe.extern.EitherType<String,sap.ui.layout.GridIndent>;

	/**
	* Optional. Moves a cell forwards with as many columns as specified.
	*/
	@:optional var moveForward:haxe.extern.EitherType<String,sap.ui.layout.GridIndent>;

	/**
	* Optional. If set to <code>true</code>, the control causes a line break on all-size screens within the <code>Grid</code> and becomes the first within the next line.
	*/
	@:optional var linebreak:haxe.extern.EitherType<String,Bool>;

	/**
	* Optional. If set to <code>true</code>, the control causes a line break on extra large screens within the <code>Grid</code> and becomes the first within the next line.
	*/
	@:optional var linebreakXL:haxe.extern.EitherType<String,Bool>;

	/**
	* Optional. If set to <code>true</code>, the control causes a line break on large screens within the <code>Grid</code> and becomes the first within the next line.
	*/
	@:optional var linebreakL:haxe.extern.EitherType<String,Bool>;

	/**
	* Optional. If set to <code>true</code>, the control causes a line break on medium screens within the <code>Grid</code> and becomes the first within the next line.
	*/
	@:optional var linebreakM:haxe.extern.EitherType<String,Bool>;

	/**
	* Optional. If set to <code>true</code>, the control causes a line break on small screens within the <code>Grid</code> and becomes the first within the next line.
	*/
	@:optional var linebreakS:haxe.extern.EitherType<String,Bool>;
}
