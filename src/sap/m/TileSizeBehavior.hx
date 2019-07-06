package sap.m;

@:native("sap.m.TileSizeBehavior")
@:enum extern abstract TileSizeBehavior(String)
{
    /**
    * Default behavior: Tiles adapt to the size of the screen, getting smaller on small screens.
    */
    var Responsive= "Responsive";
    /**
    * Tiles are small all the time, regardless of the actual screen size.
    */
    var Small= "Small";
}
