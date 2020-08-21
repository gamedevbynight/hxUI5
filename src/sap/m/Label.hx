package sap.m;

@:native("sap.m.Label")

/**
* Provides a textual label for other controls.

<h3>Overview</h3> Labels are used as titles for single controls or groups of controls. Labels for required fields are marked with an asterisk.

Label appearance can be influenced by properties, such as <code>textAlign</code>, <code>design</code>, <code>displayOnly</code>, <code>wrapping</code> and <code>wrappingType</code>.

As of version 1.50, the default value of the <code>wrapping</code> property is set to <code>false</code>.

As of version 1.60, you can hyphenate the label's text with the use of the <code>wrappingType</code> property. For more information, see {@link topic:6322164936f047de941ec522b95d7b70 Text Controls Hyphenation}.

<h3>Usage</h3> <h4>When to use</h4> <ul> <li>It's recommended to use the <code>Label</code> in Form controls.</li> <li>Use title case for labels.</li> </ul> <h4>When not to use</h4> <ul> <li> It is not recommended to use labels in Bold.</li> </ul>
*/
extern class Label extends sap.ui.core.Control implements sap.ui.core.Label implements sap.ui.core.IShrinkable implements sap.m.IOverflowToolbarContent implements sap.m.IHyphenation
{
	@:overload(function(?sId:String, ?mSettings:LabelArgs):Void {})
	public function new(?mSettings:LabelArgs):Void;

	/**
	* Creates a new subclass of class sap.m.Label with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getDesign design}.

Sets the design of a Label to either Standard or Bold.

Default value is <code>Standard</code>.
	* @return	Value of property <code>design</code>
	*/
	public function getDesign( ):sap.m.LabelDesign;

	/**
	* Gets current value of property {@link #getDisplayOnly displayOnly}.

Determines if the label is in displayOnly mode.

<b>Note:</b> This property should be used only in Form controls in preview mode.

Default value is <code>false</code>.
	* @return	Value of property <code>displayOnly</code>
	*/
	public function getDisplayOnly( ):Bool;

	/**
	* ID of the element which is the current target of the association {@link #getLabelFor labelFor}, or <code>null</code>.
	* @return	null
	*/
	public function getLabelFor( ):sap.ui.core.ID;

	/**
	* Returns a metadata object for class sap.m.Label.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Enables the <code>sap.m.Label</code> to move inside the sap.m.OverflowToolbar. Required by the {@link sap.m.IOverflowToolbarContent} interface.
	* @return	Configuration information for the <code>sap.m.IOverflowToolbarContent</code> interface.
	*/
	public function getOverflowToolbarConfig( ):Dynamic;

	/**
	* Gets current value of property {@link #getRequired required}.

Indicates that user input is required for input control labeled by the sap.m.Label. When the property is set to true and associated input field is empty an asterisk character is added to the label text.

Default value is <code>false</code>.
	* @return	Value of property <code>required</code>
	*/
	public function getRequired( ):Bool;

	/**
	* Gets current value of property {@link #getText text}.

Determines the Label text to be displayed.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Gets current value of property {@link #getTextAlign textAlign}.

Available alignment settings are "Begin", "Center", "End", "Left", and "Right".

Default value is <code>Begin</code>.
	* @return	Value of property <code>textAlign</code>
	*/
	public function getTextAlign( ):sap.ui.core.TextAlign;

	/**
	* Gets current value of property {@link #getTextDirection textDirection}.

Options for the text direction are RTL and LTR. Alternatively, the control can inherit the text direction from its parent container.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>textDirection</code>
	*/
	public function getTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Gets current value of property {@link #getVAlign vAlign}.

Specifies the vertical alignment of the <code>Label</code> related to the tallest and lowest element on the line.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>vAlign</code>
	*/
	public function getVAlign( ):sap.ui.core.VerticalAlign;

	/**
	* Gets current value of property {@link #getWidth width}.

Determines the width of the label.

Default value is <code>empty string</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getWrapping wrapping}.

Determines the wrapping of the text within the <code>Label</code>. If set to true the <code>Label</code> will wrap, when set to false the <code>Label</code> will be truncated and replaced with ellipsis which is the default behavior.

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
	* Sets a new value for property {@link #getDesign design}.

Sets the design of a Label to either Standard or Bold.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Standard</code>.
	* @param	sDesign New value for property <code>design</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDesign( ?sDesign:sap.m.LabelDesign):sap.m.Label;

	/**
	* Sets a new value for property {@link #getDisplayOnly displayOnly}.

Determines if the label is in displayOnly mode.

<b>Note:</b> This property should be used only in Form controls in preview mode.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bDisplayOnly New value for property <code>displayOnly</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDisplayOnly( ?bDisplayOnly:Bool):sap.m.Label;
	@:overload( function(oLabelFor:sap.ui.core.ID):sap.m.Label{ })

	/**
	* Sets the associated {@link #getLabelFor labelFor}.
	* @param	oLabelFor ID of an element which becomes the new target of this labelFor association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLabelFor( oLabelFor:sap.ui.core.Control):sap.m.Label;

	/**
	* Sets a new value for property {@link #getRequired required}.

Indicates that user input is required for input control labeled by the sap.m.Label. When the property is set to true and associated input field is empty an asterisk character is added to the label text.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bRequired New value for property <code>required</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRequired( ?bRequired:Bool):sap.m.Label;

	/**
	* Sets a new value for property {@link #getText text}.

Determines the Label text to be displayed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( ?sText:String):sap.m.Label;

	/**
	* Sets a new value for property {@link #getTextAlign textAlign}.

Available alignment settings are "Begin", "Center", "End", "Left", and "Right".

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Begin</code>.
	* @param	sTextAlign New value for property <code>textAlign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextAlign( ?sTextAlign:sap.ui.core.TextAlign):sap.m.Label;

	/**
	* Sets a new value for property {@link #getTextDirection textDirection}.

Options for the text direction are RTL and LTR. Alternatively, the control can inherit the text direction from its parent container.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sTextDirection New value for property <code>textDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextDirection( ?sTextDirection:sap.ui.core.TextDirection):sap.m.Label;

	/**
	* Sets a new value for property {@link #getVAlign vAlign}.

Specifies the vertical alignment of the <code>Label</code> related to the tallest and lowest element on the line.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sVAlign New value for property <code>vAlign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVAlign( ?sVAlign:sap.ui.core.VerticalAlign):sap.m.Label;

	/**
	* Sets a new value for property {@link #getWidth width}.

Determines the width of the label.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.m.Label;

	/**
	* Sets a new value for property {@link #getWrapping wrapping}.

Determines the wrapping of the text within the <code>Label</code>. If set to true the <code>Label</code> will wrap, when set to false the <code>Label</code> will be truncated and replaced with ellipsis which is the default behavior.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bWrapping New value for property <code>wrapping</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWrapping( ?bWrapping:Bool):sap.m.Label;

	/**
	* Sets a new value for property {@link #getWrappingType wrappingType}.

Defines the type of text wrapping to be used (hyphenated or normal).

<b>Note:</b> This property takes effect only when the <code>wrapping</code> property is set to <code>true</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Normal</code>.
	* @param	sWrappingType New value for property <code>wrappingType</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWrappingType( ?sWrappingType:sap.m.WrappingType):sap.m.Label;
}

typedef LabelArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Sets the design of a Label to either Standard or Bold.
	*/
	@:optional var design:haxe.extern.EitherType<String,sap.m.LabelDesign>;

	/**
	* Determines the Label text to be displayed.
	*/
	@:optional var text:String;

	/**
	* Available alignment settings are "Begin", "Center", "End", "Left", and "Right".
	*/
	@:optional var textAlign:haxe.extern.EitherType<String,sap.ui.core.TextAlign>;

	/**
	* Options for the text direction are RTL and LTR. Alternatively, the control can inherit the text direction from its parent container.
	*/
	@:optional var textDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

	/**
	* Determines the width of the label.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Indicates that user input is required for input control labeled by the sap.m.Label. When the property is set to true and associated input field is empty an asterisk character is added to the label text.
	*/
	@:optional var required:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines if the label is in displayOnly mode.

<b>Note:</b> This property should be used only in Form controls in preview mode.
	*/
	@:optional var displayOnly:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the wrapping of the text within the <code>Label</code>. If set to true the <code>Label</code> will wrap, when set to false the <code>Label</code> will be truncated and replaced with ellipsis which is the default behavior.
	*/
	@:optional var wrapping:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the type of text wrapping to be used (hyphenated or normal).

<b>Note:</b> This property takes effect only when the <code>wrapping</code> property is set to <code>true</code>.
	*/
	@:optional var wrappingType:haxe.extern.EitherType<String,sap.m.WrappingType>;

	/**
	* Specifies the vertical alignment of the <code>Label</code> related to the tallest and lowest element on the line.
	*/
	@:optional var vAlign:haxe.extern.EitherType<String,sap.ui.core.VerticalAlign>;

	/**
	* Association to the labeled control. By default the label set the for attribute to the ID of the labeled control. This can be changed by implementing the function getIdForLabel on the labelled control.
	*/
	@:optional var labelFor:haxe.extern.EitherType<String,sap.ui.core.Control>;
}
