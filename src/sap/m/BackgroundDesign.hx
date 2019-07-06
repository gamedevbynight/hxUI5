package sap.m;

@:native("sap.m.BackgroundDesign")
@:enum extern abstract BackgroundDesign(String)
{
    /**
    * A solid background color dependent on the theme.
    */
    var Solid= "Solid";
    /**
    * A translucent background depending on the opacity value of the theme.
    */
    var Translucent= "Translucent";
    /**
    * Transparent background.
    */
    var Transparent= "Transparent";
}
