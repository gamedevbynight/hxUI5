package sap.ui.core;

@:native("sap.ui.core.Icon")

/**
* Icon uses embedded font instead of pixel image. Comparing to image, Icon is easily scalable, color can be altered live and various effects can be added using css.

A set of built in Icons is available and they can be fetched by calling sap.ui.core.IconPool.getIconURI and set this value to the src property on the Icon.
*/
extern class Icon extends sap.ui.core.Control implements sap.ui.core.IFormContent
{
	@:overload(function(?sId:String, ?mSettings:IconArgs):Void {})
	public function new(?mSettings:IconArgs):Void;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.Icon{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.Icon;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.ui.core.Icon</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.core.Icon</code> itself.

This event is fired when icon is pressed/activated by the user. When a handler is attached to this event, the Icon gets tab stop. If you want to disable this behavior, set the noTabStop property to true.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.core.Icon</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.Icon;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.ui.core.Icon</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.Icon;

	/**
	* Creates a new subclass of class sap.ui.core.Icon with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getActiveBackgroundColor activeBackgroundColor}.

Background color for Icon in active state.

The property can be set with {@link sap.ui.core.CSSColor CSS Color} or {@link sap.ui.core.IconColor Semantic Icon Color}.
	* @return	Value of property <code>activeBackgroundColor</code>
	*/
	public function getActiveBackgroundColor( ):String;

	/**
	* Gets current value of property {@link #getActiveColor activeColor}.

This color is shown when icon is pressed/activated by the user.

The property can be set with {@link sap.ui.core.CSSColor CSS Color} or {@link sap.ui.core.IconColor Semantic Icon Color}.
	* @return	Value of property <code>activeColor</code>
	*/
	public function getActiveColor( ):String;

	/**
	* Gets current value of property {@link #getAlt alt}.

This defines the alternative text which is used for outputting the aria-label attribute on the DOM.
	* @return	Value of property <code>alt</code>
	*/
	public function getAlt( ):String;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets current value of property {@link #getBackgroundColor backgroundColor}.

Background color of the Icon in normal state.

The property can be set with {@link sap.ui.core.CSSColor CSS Color} or {@link sap.ui.core.IconColor Semantic Icon Color}.
	* @return	Value of property <code>backgroundColor</code>
	*/
	public function getBackgroundColor( ):String;

	/**
	* Gets current value of property {@link #getColor color}.

The color of the Icon. If color is not defined here, the Icon inherits the color from its DOM parent.

The property can be set with {@link sap.ui.core.CSSColor CSS Color} or {@link sap.ui.core.IconColor Semantic Icon Color}.
	* @return	Value of property <code>color</code>
	*/
	public function getColor( ):String;

	/**
	* Gets current value of property {@link #getDecorative decorative}.

A decorative icon is included for design reasons. Accessibility tools will ignore decorative icons. Tab stop isn't affected by this property anymore and it's now controlled by the existence of press event handler and the noTabStop property.

Default value is <code>true</code>.
	* @return	Value of property <code>decorative</code>
	*/
	public function getDecorative( ):Bool;

	/**
	* Gets current value of property {@link #getHeight height}.

This is the height of the DOM element which contains the Icon. Setting this property doesn't affect the size of the font. If you want to make the font bigger, increase the size property.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getHoverBackgroundColor hoverBackgroundColor}.

Background color for Icon in hover state. This property has no visual effect when run on mobile device.

The property can be set with {@link sap.ui.core.CSSColor CSS Color} or {@link sap.ui.core.IconColor Semantic Icon Color}.
	* @return	Value of property <code>hoverBackgroundColor</code>
	*/
	public function getHoverBackgroundColor( ):String;

	/**
	* Gets current value of property {@link #getHoverColor hoverColor}.

This color is shown when icon is hovered. This property has no visual effect when run on mobile device.

The property can be set with {@link sap.ui.core.CSSColor CSS Color} or {@link sap.ui.core.IconColor Semantic Icon Color}.
	* @return	Value of property <code>hoverColor</code>
	*/
	public function getHoverColor( ):String;

	/**
	* Returns a metadata object for class sap.ui.core.Icon.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getNoTabStop noTabStop}.

Defines whether the tab stop of icon is controlled by the existence of press event handler. When it's set to false, Icon control has tab stop when press event handler is attached. If it's set to true, Icon control never has tab stop no matter whether press event handler exists or not.

Default value is <code>false</code>.
	* @return	Value of property <code>noTabStop</code>
	*/
	public function getNoTabStop( ):Bool;

	/**
	* Gets current value of property {@link #getSize size}.

Since Icon uses font, this property will be applied to the css font-size property on the rendered DOM element.
	* @return	Value of property <code>size</code>
	*/
	public function getSize( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getSrc src}.

This property should be set by the return value of calling sap.ui.core.IconPool.getIconURI with an Icon name parameter and an optional collection parameter which is required when using application extended Icons. A list of standard FontIcon is available here.
	* @return	Value of property <code>src</code>
	*/
	public function getSrc( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getUseIconTooltip useIconTooltip}.

Decides whether a default Icon tooltip should be used if no tooltip is set.

Default value is <code>true</code>.
	* @return	Value of property <code>useIconTooltip</code>
	*/
	public function getUseIconTooltip( ):Bool;

	/**
	* Gets current value of property {@link #getWidth width}.

This is the width of the DOM element which contains the Icon. Setting this property doesn't affect the size of the font. If you want to make the font bigger, increase the size property.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;

	/**
	* Sets a new value for property {@link #getActiveBackgroundColor activeBackgroundColor}.

Background color for Icon in active state.

The property can be set with {@link sap.ui.core.CSSColor CSS Color} or {@link sap.ui.core.IconColor Semantic Icon Color}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sActiveBackgroundColor New value for property <code>activeBackgroundColor</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setActiveBackgroundColor( sActiveBackgroundColor:String):sap.ui.core.Icon;

	/**
	* Sets a new value for property {@link #getActiveColor activeColor}.

This color is shown when icon is pressed/activated by the user.

The property can be set with {@link sap.ui.core.CSSColor CSS Color} or {@link sap.ui.core.IconColor Semantic Icon Color}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sActiveColor New value for property <code>activeColor</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setActiveColor( sActiveColor:String):sap.ui.core.Icon;

	/**
	* Sets a new value for property {@link #getAlt alt}.

This defines the alternative text which is used for outputting the aria-label attribute on the DOM.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sAlt New value for property <code>alt</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAlt( sAlt:String):sap.ui.core.Icon;

	/**
	* Sets a new value for property {@link #getBackgroundColor backgroundColor}.

Background color of the Icon in normal state.

The property can be set with {@link sap.ui.core.CSSColor CSS Color} or {@link sap.ui.core.IconColor Semantic Icon Color}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sBackgroundColor New value for property <code>backgroundColor</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundColor( sBackgroundColor:String):sap.ui.core.Icon;

	/**
	* Sets a new value for property {@link #getColor color}.

The color of the Icon. If color is not defined here, the Icon inherits the color from its DOM parent.

The property can be set with {@link sap.ui.core.CSSColor CSS Color} or {@link sap.ui.core.IconColor Semantic Icon Color}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sColor New value for property <code>color</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColor( sColor:String):sap.ui.core.Icon;

	/**
	* Sets a new value for property {@link #getDecorative decorative}.

A decorative icon is included for design reasons. Accessibility tools will ignore decorative icons. Tab stop isn't affected by this property anymore and it's now controlled by the existence of press event handler and the noTabStop property.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bDecorative New value for property <code>decorative</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDecorative( bDecorative:Bool):sap.ui.core.Icon;

	/**
	* Sets a new value for property {@link #getHeight height}.

This is the height of the DOM element which contains the Icon. Setting this property doesn't affect the size of the font. If you want to make the font bigger, increase the size property.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( sHeight:sap.ui.core.CSSSize):sap.ui.core.Icon;

	/**
	* Sets a new value for property {@link #getHoverBackgroundColor hoverBackgroundColor}.

Background color for Icon in hover state. This property has no visual effect when run on mobile device.

The property can be set with {@link sap.ui.core.CSSColor CSS Color} or {@link sap.ui.core.IconColor Semantic Icon Color}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHoverBackgroundColor New value for property <code>hoverBackgroundColor</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHoverBackgroundColor( sHoverBackgroundColor:String):sap.ui.core.Icon;

	/**
	* Sets a new value for property {@link #getHoverColor hoverColor}.

This color is shown when icon is hovered. This property has no visual effect when run on mobile device.

The property can be set with {@link sap.ui.core.CSSColor CSS Color} or {@link sap.ui.core.IconColor Semantic Icon Color}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHoverColor New value for property <code>hoverColor</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHoverColor( sHoverColor:String):sap.ui.core.Icon;

	/**
	* Sets a new value for property {@link #getNoTabStop noTabStop}.

Defines whether the tab stop of icon is controlled by the existence of press event handler. When it's set to false, Icon control has tab stop when press event handler is attached. If it's set to true, Icon control never has tab stop no matter whether press event handler exists or not.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bNoTabStop New value for property <code>noTabStop</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNoTabStop( bNoTabStop:Bool):sap.ui.core.Icon;

	/**
	* Sets a new value for property {@link #getSize size}.

Since Icon uses font, this property will be applied to the css font-size property on the rendered DOM element.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sSize New value for property <code>size</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSize( sSize:sap.ui.core.CSSSize):sap.ui.core.Icon;

	/**
	* Sets a new value for property {@link #getSrc src}.

This property should be set by the return value of calling sap.ui.core.IconPool.getIconURI with an Icon name parameter and an optional collection parameter which is required when using application extended Icons. A list of standard FontIcon is available here.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sSrc New value for property <code>src</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSrc( sSrc:sap.ui.core.URI):sap.ui.core.Icon;

	/**
	* Sets a new value for property {@link #getUseIconTooltip useIconTooltip}.

Decides whether a default Icon tooltip should be used if no tooltip is set.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bUseIconTooltip New value for property <code>useIconTooltip</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUseIconTooltip( bUseIconTooltip:Bool):sap.ui.core.Icon;

	/**
	* Sets a new value for property {@link #getWidth width}.

This is the width of the DOM element which contains the Icon. Setting this property doesn't affect the size of the font. If you want to make the font bigger, increase the size property.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.core.Icon;
}

typedef IconArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* This property should be set by the return value of calling sap.ui.core.IconPool.getIconURI with an Icon name parameter and an optional collection parameter which is required when using application extended Icons. A list of standard FontIcon is available here.
	*/
	@:optional var src:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Since Icon uses font, this property will be applied to the css font-size property on the rendered DOM element.
	*/
	@:optional var size:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* The color of the Icon. If color is not defined here, the Icon inherits the color from its DOM parent.

The property can be set with {@link sap.ui.core.CSSColor CSS Color} or {@link sap.ui.core.IconColor Semantic Icon Color}.
	*/
	@:optional var color:String;

	/**
	* This color is shown when icon is hovered. This property has no visual effect when run on mobile device.

The property can be set with {@link sap.ui.core.CSSColor CSS Color} or {@link sap.ui.core.IconColor Semantic Icon Color}.
	*/
	@:optional var hoverColor:String;

	/**
	* This color is shown when icon is pressed/activated by the user.

The property can be set with {@link sap.ui.core.CSSColor CSS Color} or {@link sap.ui.core.IconColor Semantic Icon Color}.
	*/
	@:optional var activeColor:String;

	/**
	* This is the width of the DOM element which contains the Icon. Setting this property doesn't affect the size of the font. If you want to make the font bigger, increase the size property.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* This is the height of the DOM element which contains the Icon. Setting this property doesn't affect the size of the font. If you want to make the font bigger, increase the size property.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Background color of the Icon in normal state.

The property can be set with {@link sap.ui.core.CSSColor CSS Color} or {@link sap.ui.core.IconColor Semantic Icon Color}.
	*/
	@:optional var backgroundColor:String;

	/**
	* Background color for Icon in hover state. This property has no visual effect when run on mobile device.

The property can be set with {@link sap.ui.core.CSSColor CSS Color} or {@link sap.ui.core.IconColor Semantic Icon Color}.
	*/
	@:optional var hoverBackgroundColor:String;

	/**
	* Background color for Icon in active state.

The property can be set with {@link sap.ui.core.CSSColor CSS Color} or {@link sap.ui.core.IconColor Semantic Icon Color}.
	*/
	@:optional var activeBackgroundColor:String;

	/**
	* A decorative icon is included for design reasons. Accessibility tools will ignore decorative icons. Tab stop isn't affected by this property anymore and it's now controlled by the existence of press event handler and the noTabStop property.
	*/
	@:optional var decorative:haxe.extern.EitherType<String,Bool>;

	/**
	* Decides whether a default Icon tooltip should be used if no tooltip is set.
	*/
	@:optional var useIconTooltip:haxe.extern.EitherType<String,Bool>;

	/**
	* This defines the alternative text which is used for outputting the aria-label attribute on the DOM.
	*/
	@:optional var alt:String;

	/**
	* Defines whether the tab stop of icon is controlled by the existence of press event handler. When it's set to false, Icon control has tab stop when press event handler is attached. If it's set to true, Icon control never has tab stop no matter whether press event handler exists or not.
	*/
	@:optional var noTabStop:haxe.extern.EitherType<String,Bool>;

    /**
    * Hidden aggregation for holding the InvisibleText instance which is used for outputing the text labeling the control
    */
	@:optional var _invisibleText:haxe.extern.EitherType<String,sap.ui.core.InvisibleText>;

	/**
	* Association to controls / ids which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* This event is fired when icon is pressed/activated by the user. When a handler is attached to this event, the Icon gets tab stop. If you want to disable this behavior, set the noTabStop property to true.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
