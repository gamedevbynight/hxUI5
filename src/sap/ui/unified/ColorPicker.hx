package sap.ui.unified;

@:native("sap.ui.unified.ColorPicker")

/**
* Enables the user to select a color. The color can be defined using HEX, RGB, or HSV values or a CSS color name.

<b>Note:</b> Keep in mind that this control needs either <code>sap.m</code> or <code>sap.ui.commons</code> library to be loaded in order to work as it depends on controls available in one or the other library.
*/
extern class ColorPicker extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ColorPickerArgs):Void {})
	public function new(?mSettings:ColorPickerArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:change change} event of this <code>sap.ui.unified.ColorPicker</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.ColorPicker</code> itself.

Fired when the value is changed by user action.

<b>Note:</b> When the user action is mouse dragging, the <code>change</code> event fires on the mouseup event.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.ColorPicker</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.ColorPicker;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:liveChange liveChange} event of this <code>sap.ui.unified.ColorPicker</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.ColorPicker</code> itself.

Fired when the value is changed during the mouse move.

<b>Note:</b> When the user action is mouse move, the <code>liveChange</code> event is fired during the mousedown event.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.ColorPicker</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachLiveChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.ColorPicker;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:change change} event of this <code>sap.ui.unified.ColorPicker</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachChange( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.ColorPicker;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:liveChange liveChange} event of this <code>sap.ui.unified.ColorPicker</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachLiveChange( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.ColorPicker;

	/**
	* Creates a new subclass of class sap.ui.unified.ColorPicker with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getColorString colorString}.

Determines the input parameter that can be a string of type HEX, RGB, HSV, or a CSS color name: <ul> <li>HEX - #FFFFFF</li> <li>RGB - rgb(255,255,255)</li> <li>HSV - hsv(360,100,100)</li> <li>CSS - red</li> </ul> <b>Note:</b> The output parameter is an RGB string of the current color.
	* @return	Value of property <code>colorString</code>
	*/
	public function getColorString( ):String;

	/**
	* Gets current value of property {@link #getDisplayMode displayMode}.

Determines the display mode of the <code>ColorPicker</code> among three types - Default, Large and Simplified

Default value is <code>Default</code>.
	* @return	Value of property <code>displayMode</code>
	*/
	public function getDisplayMode( ):sap.ui.unified.ColorPickerDisplayMode;

	/**
	* Returns a metadata object for class sap.ui.unified.ColorPicker.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getMode mode}.

Determines the color mode of the <code>ColorPicker</code>.

Default value is <code>HSV</code>.
	* @return	Value of property <code>mode</code>
	*/
	public function getMode( ):sap.ui.unified.ColorPickerMode;

	/**
	* Gets current RGB values.
	* @return	Containing current RGB values
	*/
	public function getRGB( ):Dynamic;

	/**
	* Checks the validity of the CSS color string.
	* @param	sColorString CSS color string to be validated
	* @return	If the passed string is a valid CSS color string
	*/
	public function isColor( sColorString:String):Bool;

	/**
	* Sets a new value for property {@link #getColorString colorString}.

Determines the input parameter that can be a string of type HEX, RGB, HSV, or a CSS color name: <ul> <li>HEX - #FFFFFF</li> <li>RGB - rgb(255,255,255)</li> <li>HSV - hsv(360,100,100)</li> <li>CSS - red</li> </ul> <b>Note:</b> The output parameter is an RGB string of the current color.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sColorString New value for property <code>colorString</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColorString( sColorString:String):sap.ui.unified.ColorPicker;

	/**
	* Setter for <code>displayMode</code> property.
	* @param	sDisplayMode control displayMode enum
	* @return	Void
	*/
	public function setDisplayMode( sDisplayMode:sap.ui.unified.ColorPickerDisplayMode):Void;

	/**
	* Setter for <code>mode</code> property.
	* @param	sMode control mode enum
	* @param	bSuppressInvalidate should control invalidation be suppressed
	* @return	Void
	*/
	public function setMode( sMode:sap.ui.unified.ColorPickerMode, bSuppressInvalidate:Bool):Void;
}

typedef ColorPickerArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines the input parameter that can be a string of type HEX, RGB, HSV, or a CSS color name: <ul> <li>HEX - #FFFFFF</li> <li>RGB - rgb(255,255,255)</li> <li>HSV - hsv(360,100,100)</li> <li>CSS - red</li> </ul> <b>Note:</b> The output parameter is an RGB string of the current color.
	*/
	@:optional var colorString:String;

	/**
	* Determines the color mode of the <code>ColorPicker</code>.
	*/
	@:optional var mode:haxe.extern.EitherType<String,sap.ui.unified.ColorPickerMode>;

	/**
	* Determines the display mode of the <code>ColorPicker</code> among three types - Default, Large and Simplified
	*/
	@:optional var displayMode:haxe.extern.EitherType<String,sap.ui.unified.ColorPickerDisplayMode>;

    /**
    * Holds the control layout.
    */
	@:optional var _grid:haxe.extern.EitherType<String,sap.ui.layout.Grid>;

    /**
    * Holds the control invisible texts.
    */
	@:optional var _invisibleTexts:Array<haxe.extern.EitherType<String,sap.ui.core.InvisibleText>>;

    /**
    * null
    */
	@:optional var _oCPBox:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * null
    */
	@:optional var _oSlider:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * null
    */
	@:optional var _oAlphaSlider:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * null
    */
	@:optional var _oHexField:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * null
    */
	@:optional var _oRedField:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * null
    */
	@:optional var _oGreenField:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * null
    */
	@:optional var _oBlueField:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * null
    */
	@:optional var _oHueField:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * null
    */
	@:optional var _oSatField:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * null
    */
	@:optional var _oLitField:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * null
    */
	@:optional var _oValField:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * null
    */
	@:optional var _oAlphaField:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * null
    */
	@:optional var _oAlphaField2:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * null
    */
	@:optional var _oRGBorHSLRBUnifiedGroup:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * null
    */
	@:optional var _oButton:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* Fired when the value is changed by user action.

<b>Note:</b> When the user action is mouse dragging, the <code>change</code> event fires on the mouseup event.
	*/
	@:optional var change:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when the value is changed during the mouse move.

<b>Note:</b> When the user action is mouse move, the <code>liveChange</code> event is fired during the mousedown event.
	*/
	@:optional var liveChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
