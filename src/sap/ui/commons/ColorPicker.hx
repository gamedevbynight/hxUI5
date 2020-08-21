package sap.ui.commons;

@:native("sap.ui.commons.ColorPicker")

/**
* This control gives the user the opportunity to choose a color. The color can be defined using HEX-, RGB- or HSV-values or a CSS colorname.
*/
extern class ColorPicker extends sap.ui.unified.ColorPicker
{
	@:overload(function(?sId:String, ?mSettings:ColorPickerArgs):Void {})
	public function new(?mSettings:ColorPickerArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.ColorPicker with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.unified.ColorPicker.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.ui.commons.ColorPicker.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef ColorPickerArgs = sap.ui.unified.ColorPicker.ColorPickerArgs & {
}
