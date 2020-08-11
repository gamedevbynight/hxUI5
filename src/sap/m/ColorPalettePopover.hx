package sap.m;

@:native("sap.m.ColorPalettePopover")

/**
* A thin wrapper over {@link sap.m.ColorPalette} allowing the latter to be used in a popover.
*/
extern class ColorPalettePopover extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ColorPalettePopoverArgs):Void {})
	public function new(?mSettings:ColorPalettePopoverArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:colorSelect colorSelect} event of this <code>sap.m.ColorPalettePopover</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ColorPalettePopover</code> itself.

Fired when the user selects a color.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ColorPalettePopover</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachColorSelect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.ColorPalettePopover;

	/**
	* Closes the <code>ColorPalettePopover</code>.
	* @return	null
	*/
	public function close( ):sap.ui.core.Control;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:colorSelect colorSelect} event of this <code>sap.m.ColorPalettePopover</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachColorSelect( fnFunction:()->Void, ?oListener:Dynamic):sap.m.ColorPalettePopover;

	/**
	* Creates a new subclass of class sap.m.ColorPalettePopover with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getColors colors}.

Defines the List of colors displayed in the palette. Minimum is 2 colors, maximum is 15 colors.

Default value is <code>gold,darkorange,indianred,darkmagenta,cornflowerblue,deepskyblue,darkcyan,olivedrab,darkslategray,azure,white,lightgray,darkgray,dimgray,black</code>.
	* @return	Value of property <code>colors</code>
	*/
	public function getColors( ):Array<sap.ui.core.CSSColor>;

	/**
	* Gets current value of property {@link #getDefaultColor defaultColor}.

The color, which the app developer will receive when end-user chooses the "Default color" button. See event {@link #event:colorSelect colorSelect}.
	* @return	Value of property <code>defaultColor</code>
	*/
	public function getDefaultColor( ):sap.ui.core.CSSColor;

	/**
	* Gets current value of property {@link #getDisplayMode displayMode}.

Determines the <code>displayMode</code> of the <code>ColorPicker</code> among three types - Default, Large and Simplified

Default value is <code>Default</code>.
	* @return	Value of property <code>displayMode</code>
	*/
	public function getDisplayMode( ):sap.ui.unified.ColorPickerDisplayMode;

	/**
	* Returns a metadata object for class sap.m.ColorPalettePopover.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getShowDefaultColorButton showDefaultColorButton}.

Indicates if the button for default color selection is available.

Default value is <code>true</code>.
	* @return	Value of property <code>showDefaultColorButton</code>
	*/
	public function getShowDefaultColorButton( ):Bool;

	/**
	* Gets current value of property {@link #getShowMoreColorsButton showMoreColorsButton}.

Denotes if the color has been chosen by selecting the "Default Color" button (true or false)

Default value is <code>true</code>.
	* @return	Value of property <code>showMoreColorsButton</code>
	*/
	public function getShowMoreColorsButton( ):Bool;

	/**
	* Gets current value of property {@link #getShowRecentColorsSection showRecentColorsSection}.

Indicates if the Recent Colors section is available

Default value is <code>true</code>.
	* @return	Value of property <code>showRecentColorsSection</code>
	*/
	public function getShowRecentColorsSection( ):Bool;

	/**
	* Sets a selected color for the ColorPicker control.
	* @param	color the selected color
	* @return	<code>this</code> for method chaining
	*/
	public function setColorPickerSelectedColor( color:sap.ui.core.CSSColor):sap.m.ColorPalettePopover;

	/**
	* Sets a new value for property {@link #getColors colors}.

Defines the List of colors displayed in the palette. Minimum is 2 colors, maximum is 15 colors.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>gold,darkorange,indianred,darkmagenta,cornflowerblue,deepskyblue,darkcyan,olivedrab,darkslategray,azure,white,lightgray,darkgray,dimgray,black</code>.
	* @param	sColors New value for property <code>colors</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColors( ?sColors:Array<sap.ui.core.CSSColor>):sap.m.ColorPalettePopover;

	/**
	* Sets a new value for property {@link #getDefaultColor defaultColor}.

The color, which the app developer will receive when end-user chooses the "Default color" button. See event {@link #event:colorSelect colorSelect}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sDefaultColor New value for property <code>defaultColor</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDefaultColor( sDefaultColor:sap.ui.core.CSSColor):sap.m.ColorPalettePopover;

	/**
	* Sets a new value for property {@link #getDisplayMode displayMode}.

Determines the <code>displayMode</code> of the <code>ColorPicker</code> among three types - Default, Large and Simplified

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Default</code>.
	* @param	sDisplayMode New value for property <code>displayMode</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDisplayMode( ?sDisplayMode:sap.ui.unified.ColorPickerDisplayMode):sap.m.ColorPalettePopover;

	/**
	* Sets a new value for property {@link #getShowDefaultColorButton showDefaultColorButton}.

Indicates if the button for default color selection is available.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowDefaultColorButton New value for property <code>showDefaultColorButton</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowDefaultColorButton( ?bShowDefaultColorButton:Bool):sap.m.ColorPalettePopover;

	/**
	* Sets a new value for property {@link #getShowMoreColorsButton showMoreColorsButton}.

Denotes if the color has been chosen by selecting the "Default Color" button (true or false)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowMoreColorsButton New value for property <code>showMoreColorsButton</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowMoreColorsButton( ?bShowMoreColorsButton:Bool):sap.m.ColorPalettePopover;

	/**
	* Sets a new value for property {@link #getShowRecentColorsSection showRecentColorsSection}.

Indicates if the Recent Colors section is available

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowRecentColorsSection New value for property <code>showRecentColorsSection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowRecentColorsSection( ?bShowRecentColorsSection:Bool):sap.m.ColorPalettePopover;
}

typedef ColorPalettePopoverArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The color, which the app developer will receive when end-user chooses the "Default color" button. See event {@link #event:colorSelect colorSelect}.
	*/
	@:optional var defaultColor:haxe.extern.EitherType<String,sap.ui.core.CSSColor>;

	/**
	* Defines the List of colors displayed in the palette. Minimum is 2 colors, maximum is 15 colors.
	*/
	@:optional var colors:Array<haxe.extern.EitherType<String,sap.ui.core.CSSColor>>;

	/**
	* Indicates if the button for default color selection is available.
	*/
	@:optional var showDefaultColorButton:haxe.extern.EitherType<String,Bool>;

	/**
	* Denotes if the color has been chosen by selecting the "Default Color" button (true or false)
	*/
	@:optional var showMoreColorsButton:haxe.extern.EitherType<String,Bool>;

	/**
	* Indicates if the Recent Colors section is available
	*/
	@:optional var showRecentColorsSection:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the <code>displayMode</code> of the <code>ColorPicker</code> among three types - Default, Large and Simplified
	*/
	@:optional var displayMode:haxe.extern.EitherType<String,sap.ui.unified.ColorPickerDisplayMode>;

	/**
	* Fired when the user selects a color.
	*/
	@:optional var colorSelect:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
