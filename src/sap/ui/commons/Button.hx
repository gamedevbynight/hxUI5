package sap.ui.commons;

@:native("sap.ui.commons.Button")

/**
* Enables users to trigger actions such as save or print. For the button UI, you can define some text or an icon, or both.
*/
extern class Button extends sap.ui.core.Control implements sap.ui.commons.ToolbarItem implements sap.ui.core.IFormContent
{
	@:overload(function(?sId:String, ?mSettings:ButtonArgs):Void {})
	public function new(?mSettings:ButtonArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.ui.commons.Button{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.ui.commons.Button;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.commons.Button{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.commons.Button;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.ui.commons.Button</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.Button</code> itself.

Event is fired when the user presses the control.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.Button</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.Button;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.ui.commons.Button</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.Button;

	/**
	* Creates a new subclass of class sap.ui.commons.Button with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Puts the focus to the button.
	* @return	Void
	*/
	public function focus( ):Void;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @return	null
	*/
	public function getAriaDescribedBy( ):Array<sap.ui.core.ID>;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Boolean property to enable the control (default is true). Buttons that are disabled have other colors than enabled ones, depending on custom settings.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets current value of property {@link #getHeight height}.

Specifies the button height. If this property is set, the height which is specified by the underlying theme is not used any longer.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getHelpId helpId}.

Unique identifier used for help service

Default value is <code>empty string</code>.
	* @return	Value of property <code>helpId</code>
	*/
	public function getHelpId( ):String;

	/**
	* Gets current value of property {@link #getIcon icon}.

Icon to be displayed as graphical element within the button. This can be a URI to an image or an icon font URI.

Default value is <code>empty string</code>.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getIconFirst iconFirst}.

If set to true (default), the display sequence is 1. icon 2. control text .

Default value is <code>true</code>.
	* @return	Value of property <code>iconFirst</code>
	*/
	public function getIconFirst( ):Bool;

	/**
	* Gets current value of property {@link #getIconHovered iconHovered}.

Icon to be displayed as graphical element within the button when it is hovered (only if also a base icon was specified). If not specified the base icon is used. If an icon font icon is used, this property is ignored.

Default value is <code>empty string</code>.
	* @return	Value of property <code>iconHovered</code>
	*/
	public function getIconHovered( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getIconSelected iconSelected}.

Icon to be displayed as graphical element within the button when it is selected (only if also a base icon was specified). If not specified the base or hovered icon is used. If an icon font icon is used, this property is ignored.

Default value is <code>empty string</code>.
	* @return	Value of property <code>iconSelected</code>
	*/
	public function getIconSelected( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getLite lite}.

The button is rendered as lite button.

Default value is <code>false</code>.
	* @return	Value of property <code>lite</code>
	*/
	public function getLite( ):Bool;

	/**
	* Returns a metadata object for class sap.ui.commons.Button.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getStyle style}.

Style of the button. (e.g. emphasized)

Default value is <code>Default</code>.
	* @return	Value of property <code>style</code>
	*/
	public function getStyle( ):sap.ui.commons.ButtonStyle;

	/**
	* Gets current value of property {@link #getStyled styled}.

Indicates if the button is styled. If not it is rendered as native HTML-button. In this case a custom styling can be added usig addStyleClass.

Default value is <code>true</code>.
	* @return	Value of property <code>styled</code>
	*/
	public function getStyled( ):Bool;

	/**
	* Gets current value of property {@link #getText text}.

Button text displayed at runtime.

Default value is <code>empty string</code>.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Gets current value of property {@link #getWidth width}.

Control width as common CSS-size (px or % as unit, for example)
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Removes all the controls in the association named {@link #getAriaDescribedBy ariaDescribedBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaDescribedBy( ):Array<sap.ui.core.ID>;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;
	@:overload( function(vAriaDescribedBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaDescribedBy from the association named {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to be removed or its index or ID
	* @return	The removed ariaDescribedBy or <code>null</code>
	*/
	public function removeAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.ui.core.ID;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Boolean property to enable the control (default is true). Buttons that are disabled have other colors than enabled ones, depending on custom settings.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( bEnabled:Bool):sap.ui.commons.Button;

	/**
	* Sets a new value for property {@link #getHeight height}.

Specifies the button height. If this property is set, the height which is specified by the underlying theme is not used any longer.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( sHeight:sap.ui.core.CSSSize):sap.ui.commons.Button;

	/**
	* Sets a new value for property {@link #getHelpId helpId}.

Unique identifier used for help service

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sHelpId New value for property <code>helpId</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHelpId( sHelpId:String):sap.ui.commons.Button;

	/**
	* Sets a new value for property {@link #getIcon icon}.

Icon to be displayed as graphical element within the button. This can be a URI to an image or an icon font URI.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( sIcon:sap.ui.core.URI):sap.ui.commons.Button;

	/**
	* Sets a new value for property {@link #getIconFirst iconFirst}.

If set to true (default), the display sequence is 1. icon 2. control text .

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bIconFirst New value for property <code>iconFirst</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconFirst( bIconFirst:Bool):sap.ui.commons.Button;

	/**
	* Sets a new value for property {@link #getIconHovered iconHovered}.

Icon to be displayed as graphical element within the button when it is hovered (only if also a base icon was specified). If not specified the base icon is used. If an icon font icon is used, this property is ignored.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sIconHovered New value for property <code>iconHovered</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconHovered( sIconHovered:sap.ui.core.URI):sap.ui.commons.Button;

	/**
	* Sets a new value for property {@link #getIconSelected iconSelected}.

Icon to be displayed as graphical element within the button when it is selected (only if also a base icon was specified). If not specified the base or hovered icon is used. If an icon font icon is used, this property is ignored.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sIconSelected New value for property <code>iconSelected</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconSelected( sIconSelected:sap.ui.core.URI):sap.ui.commons.Button;

	/**
	* Sets a new value for property {@link #getLite lite}.

The button is rendered as lite button.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bLite New value for property <code>lite</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLite( bLite:Bool):sap.ui.commons.Button;

	/**
	* Sets a new value for property {@link #getStyle style}.

Style of the button. (e.g. emphasized)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Default</code>.
	* @param	sStyle New value for property <code>style</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setStyle( sStyle:sap.ui.commons.ButtonStyle):sap.ui.commons.Button;

	/**
	* Sets a new value for property {@link #getStyled styled}.

Indicates if the button is styled. If not it is rendered as native HTML-button. In this case a custom styling can be added usig addStyleClass.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bStyled New value for property <code>styled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setStyled( bStyled:Bool):sap.ui.commons.Button;

	/**
	* Sets a new value for property {@link #getText text}.

Button text displayed at runtime.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( sText:String):sap.ui.commons.Button;

	/**
	* Sets a new value for property {@link #getWidth width}.

Control width as common CSS-size (px or % as unit, for example)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.commons.Button;
}

typedef ButtonArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Button text displayed at runtime.
	*/
	@:optional var text:String;

	/**
	* Boolean property to enable the control (default is true). Buttons that are disabled have other colors than enabled ones, depending on custom settings.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Control width as common CSS-size (px or % as unit, for example)
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Unique identifier used for help service
	*/
	@:optional var helpId:String;

	/**
	* Icon to be displayed as graphical element within the button. This can be a URI to an image or an icon font URI.
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Icon to be displayed as graphical element within the button when it is hovered (only if also a base icon was specified). If not specified the base icon is used. If an icon font icon is used, this property is ignored.
	*/
	@:optional var iconHovered:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Icon to be displayed as graphical element within the button when it is selected (only if also a base icon was specified). If not specified the base or hovered icon is used. If an icon font icon is used, this property is ignored.
	*/
	@:optional var iconSelected:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* If set to true (default), the display sequence is 1. icon 2. control text .
	*/
	@:optional var iconFirst:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies the button height. If this property is set, the height which is specified by the underlying theme is not used any longer.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Indicates if the button is styled. If not it is rendered as native HTML-button. In this case a custom styling can be added usig addStyleClass.
	*/
	@:optional var styled:haxe.extern.EitherType<String,Bool>;

	/**
	* The button is rendered as lite button.
	*/
	@:optional var lite:haxe.extern.EitherType<String,Bool>;

	/**
	* Style of the button. (e.g. emphasized)
	*/
	@:optional var style:haxe.extern.EitherType<String,sap.ui.commons.ButtonStyle>;

	/**
	* Association to controls / ids which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / ids which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Event is fired when the user presses the control.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
