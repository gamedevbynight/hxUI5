package sap.m;

@:native("sap.m.Text")

/**
* The <code>Text</code> control can be used for embedding longer text paragraphs, that need text wrapping, into your app. If the configured text value contains HTML code or script tags, those will be escaped.

As of version 1.60, you can hyphenate the text with the use of the <code>wrappingType</code> property. For more information, see {@link topic:6322164936f047de941ec522b95d7b70 Text Controls Hyphenation}.

<b>Note:</b> Line breaks will always be visualized except when the <code>wrapping</code> property is set to <code>false</code>. In addition, tabs and whitespace can be preserved by setting the <code>renderWhitespace</code> property to <code>true</code>.
*/
extern class Text extends sap.ui.core.Control implements sap.ui.core.IShrinkable implements sap.ui.core.IFormContent implements sap.m.IHyphenation
{
	@:overload(function(?sId:String, ?mSettings:TextArgs):Void {})
	public function new(?mSettings:TextArgs):Void;

	/**
	* Binds property {@link #getText text} to model data.

See {@link sap.ui.base.ManagedObject#bindProperty ManagedObject.bindProperty} for a detailed description of the possible properties of <code>oBindingInfo</code>
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindText( oBindingInfo:Dynamic):sap.m.Text;

	/**
	* Creates a new subclass of class sap.m.Text with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getMaxLines maxLines}.

Limits the number of lines for wrapping texts.

<b>Note</b>: The multi-line overflow indicator depends on the browser line clamping support. For such browsers, this will be shown as ellipsis, for the other browsers the overflow will just be hidden.
	* @return	Value of property <code>maxLines</code>
	*/
	public function getMaxLines( ):Int;

	/**
	* Returns a metadata object for class sap.m.Text.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getRenderWhitespace renderWhitespace}.

Specifies how whitespace and tabs inside the control are handled. If true, whitespace will be preserved by the browser. Depending on wrapping property text will either only wrap on line breaks or wrap when necessary, and on line breaks.

Default value is <code>false</code>.
	* @return	Value of property <code>renderWhitespace</code>
	*/
	public function getRenderWhitespace( ):Bool;

	/**
	* Gets the text.
	* @param	bNormalize Indication for normalized text.
	* @return	Text value.
	*/
	public function getText( bNormalize:Bool):String;

	/**
	* Gets current value of property {@link #getTextAlign textAlign}.

Sets the horizontal alignment of the text.

Default value is <code>Begin</code>.
	* @return	Value of property <code>textAlign</code>
	*/
	public function getTextAlign( ):sap.ui.core.TextAlign;

	/**
	* Gets current value of property {@link #getTextDirection textDirection}.

Available options for the text direction are LTR and RTL. By default the control inherits the text direction from its parent control.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>textDirection</code>
	*/
	public function getTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Gets current value of property {@link #getWidth width}.

Sets the width of the Text control. By default, the Text control uses the full width available. Set this property to restrict the width to a custom value.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getWrapping wrapping}.

Enables text wrapping.

Default value is <code>true</code>.
	* @return	Value of property <code>wrapping</code>
	*/
	public function getWrapping( ):Bool;

	/**
	* Gets current value of property {@link #getWrappingType wrappingType}.

Defines the type of text wrapping to be used (hyphenated or normal).

<b>Note:</b> This property takes effect only when the <code>wrapping</code> property is set to <code>true</code>.

Default value is <code>Normal</code>.
	* @return	Value of property <code>wrappingType</code>
	*/
	public function getWrappingType( ):sap.m.WrappingType;

	/**
	* Overwrites onAfterRendering
	* @return	Void
	*/
	public function onAfterRendering( ):Void;

	/**
	* Sets a new value for property {@link #getMaxLines maxLines}.

Limits the number of lines for wrapping texts.

<b>Note</b>: The multi-line overflow indicator depends on the browser line clamping support. For such browsers, this will be shown as ellipsis, for the other browsers the overflow will just be hidden.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iMaxLines New value for property <code>maxLines</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxLines( ?iMaxLines:Int):sap.m.Text;

	/**
	* Sets a new value for property {@link #getRenderWhitespace renderWhitespace}.

Specifies how whitespace and tabs inside the control are handled. If true, whitespace will be preserved by the browser. Depending on wrapping property text will either only wrap on line breaks or wrap when necessary, and on line breaks.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bRenderWhitespace New value for property <code>renderWhitespace</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRenderWhitespace( ?bRenderWhitespace:Bool):sap.m.Text;

	/**
	* Sets a new value for property {@link #getText text}.

Determines the text to be displayed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( ?sText:String):sap.m.Text;

	/**
	* Sets a new value for property {@link #getTextAlign textAlign}.

Sets the horizontal alignment of the text.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Begin</code>.
	* @param	sTextAlign New value for property <code>textAlign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextAlign( ?sTextAlign:sap.ui.core.TextAlign):sap.m.Text;

	/**
	* Sets a new value for property {@link #getTextDirection textDirection}.

Available options for the text direction are LTR and RTL. By default the control inherits the text direction from its parent control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sTextDirection New value for property <code>textDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextDirection( ?sTextDirection:sap.ui.core.TextDirection):sap.m.Text;

	/**
	* Sets a new value for property {@link #getWidth width}.

Sets the width of the Text control. By default, the Text control uses the full width available. Set this property to restrict the width to a custom value.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.m.Text;

	/**
	* Sets a new value for property {@link #getWrapping wrapping}.

Enables text wrapping.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bWrapping New value for property <code>wrapping</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWrapping( ?bWrapping:Bool):sap.m.Text;

	/**
	* Sets a new value for property {@link #getWrappingType wrappingType}.

Defines the type of text wrapping to be used (hyphenated or normal).

<b>Note:</b> This property takes effect only when the <code>wrapping</code> property is set to <code>true</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Normal</code>.
	* @param	sWrappingType New value for property <code>wrappingType</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWrappingType( ?sWrappingType:sap.m.WrappingType):sap.m.Text;

	/**
	* Unbinds property {@link #getText text} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindText( ):sap.m.Text;
}

typedef TextArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines the text to be displayed.
	*/
	@:optional var text:String;

	/**
	* Available options for the text direction are LTR and RTL. By default the control inherits the text direction from its parent control.
	*/
	@:optional var textDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

	/**
	* Enables text wrapping.
	*/
	@:optional var wrapping:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the type of text wrapping to be used (hyphenated or normal).

<b>Note:</b> This property takes effect only when the <code>wrapping</code> property is set to <code>true</code>.
	*/
	@:optional var wrappingType:haxe.extern.EitherType<String,sap.m.WrappingType>;

	/**
	* Sets the horizontal alignment of the text.
	*/
	@:optional var textAlign:haxe.extern.EitherType<String,sap.ui.core.TextAlign>;

	/**
	* Sets the width of the Text control. By default, the Text control uses the full width available. Set this property to restrict the width to a custom value.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Limits the number of lines for wrapping texts.

<b>Note</b>: The multi-line overflow indicator depends on the browser line clamping support. For such browsers, this will be shown as ellipsis, for the other browsers the overflow will just be hidden.
	*/
	@:optional var maxLines:haxe.extern.EitherType<String,Int>;

	/**
	* Specifies how whitespace and tabs inside the control are handled. If true, whitespace will be preserved by the browser. Depending on wrapping property text will either only wrap on line breaks or wrap when necessary, and on line breaks.
	*/
	@:optional var renderWhitespace:haxe.extern.EitherType<String,Bool>;
}
