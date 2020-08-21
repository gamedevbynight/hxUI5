package sap.m;

@:native("sap.m.ColorPalette")

/**
* Represents a predefined range of colors for easier selection.

<h3>Overview</h3> The <code>ColorPalette</code> provides the users with a range of predefined colors.

You can customize them with the use of the <code>colors</code> property. You can specify a <code>defaultColor</code> and display a "Default color" button for the user to choose directly. You can display a "More colors..." button that opens an additional color picker for the user to choose specific colors that are not present in the predefined range.

<h3>Usage</h3>

The palette is intended for users, who don't want to check and remember the different values of the colors and spend large amount of time to configure the right color through the color picker.

The control can be embedded in a form or can be opened as popover (by use of thin wrapper control <code>sap.m.ColorPalettePopover</code>).
*/
extern class ColorPalette extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ColorPaletteArgs):Void {})
	public function new(?mSettings:ColorPaletteArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:colorSelect colorSelect} event of this <code>sap.m.ColorPalette</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ColorPalette</code> itself.

Fired when the user selects a color.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ColorPalette</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachColorSelect( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ColorPalette;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:colorSelect colorSelect} event of this <code>sap.m.ColorPalette</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachColorSelect( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ColorPalette;

	/**
	* Creates a new subclass of class sap.m.ColorPalette with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getColors colors}.

Defines the List of colors displayed in the palette. Minimum is 2 colors, maximum is 15 colors.

Default value is <code>["gold", "darkorange", "indianred", "darkmagenta", "cornflowerblue", "deepskyblue", "darkcyan", "olivedrab", "darkslategray", "azure", "white", "lightgray", "darkgray", "dimgray", "black"]</code>.
	* @return	Value of property <code>colors</code>
	*/
	public function getColors( ):Array<sap.ui.core.CSSColor>;

	/**
	* Returns a metadata object for class sap.m.ColorPalette.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Sets a selected color for the ColorPicker control.
	* @param	color the selected color
	* @return	<code>this</code> for method chaining
	*/
	public function setColorPickerSelectedColor( color:sap.ui.core.CSSColor):sap.m.ColorPalette;

	/**
	* Sets a new value for property {@link #getColors colors}.

Defines the List of colors displayed in the palette. Minimum is 2 colors, maximum is 15 colors.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>["gold", "darkorange", "indianred", "darkmagenta", "cornflowerblue", "deepskyblue", "darkcyan", "olivedrab", "darkslategray", "azure", "white", "lightgray", "darkgray", "dimgray", "black"]</code>.
	* @param	sColors New value for property <code>colors</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColors( ?sColors:Array<sap.ui.core.CSSColor>):sap.m.ColorPalette;
}

typedef ColorPaletteArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the List of colors displayed in the palette. Minimum is 2 colors, maximum is 15 colors.
	*/
	@:optional var colors:Array<haxe.extern.EitherType<String,sap.ui.core.CSSColor>>;

    /**
    * null
    */
	@:optional var _defaultColorButton:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * null
    */
	@:optional var _moreColorsButton:haxe.extern.EitherType<String,sap.m.Button>;

	/**
	* Fired when the user selects a color.
	*/
	@:optional var colorSelect:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
