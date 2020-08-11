package sap.ui.core;

@:native("sap.ui.core.IconColor")
@:enum extern abstract IconColor(String)
{
    /**
    * Contrast color.
    */
    var Contrast= "Contrast";
    /**
    * Critical color
    */
    var Critical= "Critical";
    /**
    * Default color (brand color)
    */
    var Default= "Default";
    /**
    * Color for icon used as a marker
    */
    var Marker= "Marker";
    /**
    * Negative color
    */
    var Negative= "Negative";
    /**
    * Neutral color.
    */
    var Neutral= "Neutral";
    /**
    * Color that indicates an icon which isn't interactive
    */
    var NonInteractive= "NonInteractive";
    /**
    * Positive color
    */
    var Positive= "Positive";
    /**
    * Color for icon used in a Tile
    */
    var Tile= "Tile";
}
