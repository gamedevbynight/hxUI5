package sap.ui.unified;

@:native("sap.ui.unified.ColorPickerPopover")

/**
* A thin wrapper over {@link sap.ui.unified.ColorPicker} allowing the latter to be used in a popover.
*/
extern class ColorPickerPopover extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ColorPickerPopoverArgs):Void {})
	public function new(?mSettings:ColorPickerPopoverArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:change change} event of this <code>sap.ui.unified.ColorPickerPopover</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.ColorPickerPopover</code> itself.

Fired when the submit button of the popover is clicked.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.ColorPickerPopover</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.ColorPickerPopover;

	/**
	* Closes the <code>ColorPickerPopover</code>.
	* @return	null
	*/
	public function close( ):sap.ui.core.Control;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:change change} event of this <code>sap.ui.unified.ColorPickerPopover</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachChange( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.ColorPickerPopover;

	/**
	* Creates a new subclass of class sap.ui.unified.ColorPickerPopover with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
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
	* Returns a metadata object for class sap.ui.unified.ColorPickerPopover.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getMode mode}.

Determines the color mode of the <code>ColorPicker</code>.

Default value is <code>HSV</code>.
	* @return	Value of property <code>mode</code>
	*/
	public function getMode( ):sap.ui.unified.ColorPickerMode;

	/**
	* Opens the <code>ColorPickerPopover</code>. The popover is positioned relative to the control parameter on tablet or desktop and is full screen on phone. Therefore the openBy parameter is only used on tablet or desktop and is ignored on phone.
	* @param	openBy When this control is displayed on tablet or desktop, the <code>ColorPickerPopover</code> is positioned relative to this control
	* @return	Reference to the opening control
	*/
	public function openBy( openBy:Dynamic):Dynamic;

	/**
	* Sets a new value for property {@link #getColorString colorString}.

Determines the input parameter that can be a string of type HEX, RGB, HSV, or a CSS color name: <ul> <li>HEX - #FFFFFF</li> <li>RGB - rgb(255,255,255)</li> <li>HSV - hsv(360,100,100)</li> <li>CSS - red</li> </ul> <b>Note:</b> The output parameter is an RGB string of the current color.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sColorString New value for property <code>colorString</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColorString( sColorString:String):sap.ui.unified.ColorPickerPopover;

	/**
	* Sets a new value for property {@link #getDisplayMode displayMode}.

Determines the display mode of the <code>ColorPicker</code> among three types - Default, Large and Simplified

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Default</code>.
	* @param	sDisplayMode New value for property <code>displayMode</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDisplayMode( sDisplayMode:sap.ui.unified.ColorPickerDisplayMode):sap.ui.unified.ColorPickerPopover;

	/**
	* Sets a new value for property {@link #getMode mode}.

Determines the color mode of the <code>ColorPicker</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>HSV</code>.
	* @param	sMode New value for property <code>mode</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMode( sMode:sap.ui.unified.ColorPickerMode):sap.ui.unified.ColorPickerPopover;
}

typedef ColorPickerPopoverArgs = sap.ui.core.Control.ControlArgs & {

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
	* Fired when the submit button of the popover is clicked.
	*/
	@:optional var change:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
