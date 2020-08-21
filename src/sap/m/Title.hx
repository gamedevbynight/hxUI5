package sap.m;

@:native("sap.m.Title")

/**
* A simple, large-sized text with explicit header / title semantics.

<h3>Overview</h3> The <code>Title</code> control is a simple, large-sized text containing additional semantic information for accessibility purposes.

As of version 1.52, you can truncate or wrap long titles if the screen is narrower than the full title by using the with the use of the <code>wrapping</code> property.

As of version 1.60, you can hyphenate the label's text with the use of the <code>wrappingType</code> property. For more information, see {@link topic:6322164936f047de941ec522b95d7b70 Text Controls Hyphenation}.

<h3>Usage</h3> <h4>When to use</h4> <ul> <li>If you want to set the title above a table or form.</li> <li>If you want to show text in the page header.</li> </ul> <h4>When not to use</h4> <ul> <li>If the text is inside a text block.</li> <li>If The text is inside a form element.</li> </ul>
*/
extern class Title extends sap.ui.core.Control implements sap.ui.core.IShrinkable implements sap.m.IHyphenation
{
	@:overload(function(?sId:String, ?mSettings:TitleArgs):Void {})
	public function new(?mSettings:TitleArgs):Void;

	/**
	* Creates a new subclass of class sap.m.Title with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getLevel level}.

Defines the semantic level of the title. This information is e.g. used by assistive technologies like screenreaders to create a hierarchical site map for faster navigation. Depending on this setting either an HTML h1-h6 element is used or when using level <code>Auto</code> no explicit level information is written (HTML5 header element). This property does not influence the style of the control. Use the property <code>titleStyle</code> for this purpose instead.

Default value is <code>Auto</code>.
	* @return	Value of property <code>level</code>
	*/
	public function getLevel( ):sap.ui.core.TitleLevel;

	/**
	* Returns a metadata object for class sap.m.Title.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getText text}.

Defines the text which should be displayed as a title.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Gets current value of property {@link #getTextAlign textAlign}.

Defines the alignment of the text within the title. <b>Note:</b> This property only has an effect if the overall width of the title control is larger than the displayed text.

Default value is <code>Initial</code>.
	* @return	Value of property <code>textAlign</code>
	*/
	public function getTextAlign( ):sap.ui.core.TextAlign;

	/**
	* ID of the element which is the current target of the association {@link #getTitle title}, or <code>null</code>.
	* @return	null
	*/
	public function getTitle( ):sap.ui.core.ID;

	/**
	* Gets current value of property {@link #getTitleStyle titleStyle}.

Defines the style of the title. When using the <code>Auto</code> styling, the appearance of the title depends on the current position of the title (e.g. inside a <code>Toolbar</code>). This default behavior can be overridden by setting a different style explicitly. The actual appearance of the title and the different styles always depends on the theme being used.

Default value is <code>Auto</code>.
	* @return	Value of property <code>titleStyle</code>
	*/
	public function getTitleStyle( ):sap.ui.core.TitleLevel;

	/**
	* Gets current value of property {@link #getWidth width}.

Defines the width of the title.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getWrapping wrapping}.

Enables text wrapping. <b>Note:</b> Wrapping must only be activated if the surrounding container allows flexible heights.

Default value is <code>false</code>.
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
	* Sets a new value for property {@link #getLevel level}.

Defines the semantic level of the title. This information is e.g. used by assistive technologies like screenreaders to create a hierarchical site map for faster navigation. Depending on this setting either an HTML h1-h6 element is used or when using level <code>Auto</code> no explicit level information is written (HTML5 header element). This property does not influence the style of the control. Use the property <code>titleStyle</code> for this purpose instead.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Auto</code>.
	* @param	sLevel New value for property <code>level</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLevel( ?sLevel:sap.ui.core.TitleLevel):sap.m.Title;

	/**
	* Sets a new value for property {@link #getText text}.

Defines the text which should be displayed as a title.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( ?sText:String):sap.m.Title;

	/**
	* Sets a new value for property {@link #getTextAlign textAlign}.

Defines the alignment of the text within the title. <b>Note:</b> This property only has an effect if the overall width of the title control is larger than the displayed text.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Initial</code>.
	* @param	sTextAlign New value for property <code>textAlign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextAlign( ?sTextAlign:sap.ui.core.TextAlign):sap.m.Title;
	@:overload( function(vTitle:sap.m.Title):sap.m.Title{ })

	/**
	* Sets the title for a <code>sap.m.Title</code> or <code>sap.ui.core.Title</code>
	* @param	vTitle Given variant of the a title which can be <code>sap.m.Title</code> or <code>sap.ui.core.Title</code>.
	* @return	this Title reference for chaining.
	*/
	public static function setTitle( vTitle:sap.ui.core.Title):sap.m.Title;

	/**
	* Sets a new value for property {@link #getTitleStyle titleStyle}.

Defines the style of the title. When using the <code>Auto</code> styling, the appearance of the title depends on the current position of the title (e.g. inside a <code>Toolbar</code>). This default behavior can be overridden by setting a different style explicitly. The actual appearance of the title and the different styles always depends on the theme being used.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Auto</code>.
	* @param	sTitleStyle New value for property <code>titleStyle</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleStyle( ?sTitleStyle:sap.ui.core.TitleLevel):sap.m.Title;

	/**
	* Sets a new value for property {@link #getWidth width}.

Defines the width of the title.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.m.Title;

	/**
	* Sets a new value for property {@link #getWrapping wrapping}.

Enables text wrapping. <b>Note:</b> Wrapping must only be activated if the surrounding container allows flexible heights.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bWrapping New value for property <code>wrapping</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWrapping( ?bWrapping:Bool):sap.m.Title;

	/**
	* Sets a new value for property {@link #getWrappingType wrappingType}.

Defines the type of text wrapping to be used (hyphenated or normal).

<b>Note:</b> This property takes effect only when the <code>wrapping</code> property is set to <code>true</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Normal</code>.
	* @param	sWrappingType New value for property <code>wrappingType</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWrappingType( ?sWrappingType:sap.m.WrappingType):sap.m.Title;
}

typedef TitleArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the text which should be displayed as a title.
	*/
	@:optional var text:String;

	/**
	* Defines the semantic level of the title. This information is e.g. used by assistive technologies like screenreaders to create a hierarchical site map for faster navigation. Depending on this setting either an HTML h1-h6 element is used or when using level <code>Auto</code> no explicit level information is written (HTML5 header element). This property does not influence the style of the control. Use the property <code>titleStyle</code> for this purpose instead.
	*/
	@:optional var level:haxe.extern.EitherType<String,sap.ui.core.TitleLevel>;

	/**
	* Defines the style of the title. When using the <code>Auto</code> styling, the appearance of the title depends on the current position of the title (e.g. inside a <code>Toolbar</code>). This default behavior can be overridden by setting a different style explicitly. The actual appearance of the title and the different styles always depends on the theme being used.
	*/
	@:optional var titleStyle:haxe.extern.EitherType<String,sap.ui.core.TitleLevel>;

	/**
	* Defines the width of the title.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Defines the alignment of the text within the title. <b>Note:</b> This property only has an effect if the overall width of the title control is larger than the displayed text.
	*/
	@:optional var textAlign:haxe.extern.EitherType<String,sap.ui.core.TextAlign>;

	/**
	* Enables text wrapping. <b>Note:</b> Wrapping must only be activated if the surrounding container allows flexible heights.
	*/
	@:optional var wrapping:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the type of text wrapping to be used (hyphenated or normal).

<b>Note:</b> This property takes effect only when the <code>wrapping</code> property is set to <code>true</code>.
	*/
	@:optional var wrappingType:haxe.extern.EitherType<String,sap.m.WrappingType>;

	/**
	* Defines a relationship to a generic title description. If such a title element is associated, the properties text, level and tooltip (text only) of this element are consumed. The corresponding properties of the title control are ignored.
	*/
	@:optional var title:haxe.extern.EitherType<String,sap.ui.core.Title>;
}
