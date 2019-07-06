package sap.ui.layout;

@:native("sap.ui.layout.BlockBackgroundType")
@:enum extern abstract BlockBackgroundType(String)
{
    /**
    * Background with pre-defined accent colors
    */
    var Accent= "Accent";
    /**
    * For applications that want to make use of e.g. charts in the Blocks, this layout type has spacings around the Blocks
    */
    var Dashboard= "Dashboard";
    /**
    * Background is transparent
    */
    var Default= "Default";
    /**
    * Background is with predefined light colors
    */
    var Light= "Light";
    /**
    * Background with bright and dark background colors
    */
    var Mixed= "Mixed";
}
