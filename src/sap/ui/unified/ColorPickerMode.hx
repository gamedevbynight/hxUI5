package sap.ui.unified;

@:native("sap.ui.unified.ColorPickerMode")
@:enum extern abstract ColorPickerMode(String)
{
    /**
    * Color picker works with HSL values.
    */
    var HSL= "HSL";
    /**
    * Color picker works with HSV values.
    */
    var HSV= "HSV";
}
