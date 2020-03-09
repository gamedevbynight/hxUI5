package sap.ui.commons;

@:native("sap.ui.commons.Label")

/**
* The control is used for labeling other controls. The API provides formatting options, for example, for bold display or alignment. A label can have an icon.
*/
extern class Label extends sap.ui.core.Control implements sap.ui.commons.ToolbarItem implements sap.ui.core.Label
{
	@:overload(function(?sId:String, ?mSettings:LabelArgs):Void {})
	public function new(?mSettings:LabelArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.Label with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getDesign design}.

Defines whether the labels are in bold format.

Default value is <code>Standard</code>.
	* @return	Value of property <code>design</code>
	*/
	public function getDesign( ):sap.ui.commons.LabelDesign;

	/**
	* Gets current value of property {@link #getIcon icon}.

Determines the icon to be displayed in the control. This can be a URI to an image or an icon font URI.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* ID of the element which is the current target of the association {@link #getLabelFor labelFor}, or <code>null</code>.
	* @return	null
	*/
	public function getLabelFor( ):sap.ui.core.ID;

	/**
	* Returns a metadata object for class sap.ui.commons.Label.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getRequired required}.

Allows to enforce the required indicator even when the associated control doesn't have a getRequired method (a required property) or when the flag is not set. If the associated control has a required property, the values of both required flags are combined with the OR operator, so a Label can't override a required=true value.

Default value is <code>false</code>.
	* @return	Value of property <code>required</code>
	*/
	public function getRequired( ):Bool;

	/**
	* Gets current value of property {@link #getRequiredAtBegin requiredAtBegin}.

Determines whether the required indicator is at the beginning of the label (if set) or at the end (if not set).
	* @return	Value of property <code>requiredAtBegin</code>
	*/
	public function getRequiredAtBegin( ):Bool;

	/**
	* Gets current value of property {@link #getText text}.

Determines the text to be displayed.

Default value is <code>empty string</code>.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Gets current value of property {@link #getTextAlign textAlign}.

Determines the alignment of the text. Available options are <code>Begin</code>, <code>Center</code>, <code>End</code>, <code>Left</code>, and <code>Right</code>.

Default value is <code>Begin</code>.
	* @return	Value of property <code>textAlign</code>
	*/
	public function getTextAlign( ):sap.ui.core.TextAlign;

	/**
	* Gets current value of property {@link #getTextDirection textDirection}.

Determines the text direction - right-to-left (RTL) and left-to-right (LTR).

Default value is <code>Inherit</code>.
	* @return	Value of property <code>textDirection</code>
	*/
	public function getTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Gets current value of property {@link #getWidth width}.

Determines the control width as common CSS-size (for example, px or % as unit).

Default value is <code>empty string</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getWrapping wrapping}.

Specifies whether a line wrapping width shall be displayed when the text value is longer than the width is.

Default value is <code>false</code>.
	* @return	Value of property <code>wrapping</code>
	*/
	public function getWrapping( ):Bool;

	/**
	* Sets a new value for property {@link #getDesign design}.

Defines whether the labels are in bold format.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Standard</code>.
	* @param	sDesign New value for property <code>design</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDesign( sDesign:sap.ui.commons.LabelDesign):sap.ui.commons.Label;

	/**
	* Sets a new value for property {@link #getIcon icon}.

Determines the icon to be displayed in the control. This can be a URI to an image or an icon font URI.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( sIcon:sap.ui.core.URI):sap.ui.commons.Label;
	@:overload( function(oLabelFor:sap.ui.core.ID):sap.ui.commons.Label{ })

	/**
	* Sets the associated {@link #getLabelFor labelFor}.
	* @param	oLabelFor ID of an element which becomes the new target of this labelFor association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLabelFor( oLabelFor:sap.ui.core.Control):sap.ui.commons.Label;

	/**
	* Sets a new value for property {@link #getRequired required}.

Allows to enforce the required indicator even when the associated control doesn't have a getRequired method (a required property) or when the flag is not set. If the associated control has a required property, the values of both required flags are combined with the OR operator, so a Label can't override a required=true value.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bRequired New value for property <code>required</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRequired( bRequired:Bool):sap.ui.commons.Label;

	/**
	* Sets a new value for property {@link #getRequiredAtBegin requiredAtBegin}.

Determines whether the required indicator is at the beginning of the label (if set) or at the end (if not set).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	bRequiredAtBegin New value for property <code>requiredAtBegin</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRequiredAtBegin( bRequiredAtBegin:Bool):sap.ui.commons.Label;

	/**
	* Sets a new value for property {@link #getText text}.

Determines the text to be displayed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( sText:String):sap.ui.commons.Label;

	/**
	* Sets a new value for property {@link #getTextAlign textAlign}.

Determines the alignment of the text. Available options are <code>Begin</code>, <code>Center</code>, <code>End</code>, <code>Left</code>, and <code>Right</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Begin</code>.
	* @param	sTextAlign New value for property <code>textAlign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextAlign( sTextAlign:sap.ui.core.TextAlign):sap.ui.commons.Label;

	/**
	* Sets a new value for property {@link #getTextDirection textDirection}.

Determines the text direction - right-to-left (RTL) and left-to-right (LTR).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sTextDirection New value for property <code>textDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextDirection( sTextDirection:sap.ui.core.TextDirection):sap.ui.commons.Label;

	/**
	* Sets a new value for property {@link #getWidth width}.

Determines the control width as common CSS-size (for example, px or % as unit).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.commons.Label;

	/**
	* Sets a new value for property {@link #getWrapping wrapping}.

Specifies whether a line wrapping width shall be displayed when the text value is longer than the width is.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bWrapping New value for property <code>wrapping</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWrapping( bWrapping:Bool):sap.ui.commons.Label;
}

typedef LabelArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines whether the labels are in bold format.
	*/
	@:optional var design:haxe.extern.EitherType<String,sap.ui.commons.LabelDesign>;

	/**
	* Determines the text direction - right-to-left (RTL) and left-to-right (LTR).
	*/
	@:optional var textDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

	/**
	* Specifies whether a line wrapping width shall be displayed when the text value is longer than the width is.
	*/
	@:optional var wrapping:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the control width as common CSS-size (for example, px or % as unit).
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Determines the text to be displayed.
	*/
	@:optional var text:String;

	/**
	* Determines the icon to be displayed in the control. This can be a URI to an image or an icon font URI.
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Determines the alignment of the text. Available options are <code>Begin</code>, <code>Center</code>, <code>End</code>, <code>Left</code>, and <code>Right</code>.
	*/
	@:optional var textAlign:haxe.extern.EitherType<String,sap.ui.core.TextAlign>;

	/**
	* Allows to enforce the required indicator even when the associated control doesn't have a getRequired method (a required property) or when the flag is not set. If the associated control has a required property, the values of both required flags are combined with the OR operator, so a Label can't override a required=true value.
	*/
	@:optional var required:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the required indicator is at the beginning of the label (if set) or at the end (if not set).
	*/
	@:optional var requiredAtBegin:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the association to the labeled control. By default, the label is set the for the attribute to the ID of the labeled control. This can be changed with the implementation of function getIdForLabel on the labelled control.
	*/
	@:optional var labelFor:haxe.extern.EitherType<String,sap.ui.core.Control>;
}
