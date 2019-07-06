package sap.ui.commons.layout;

@:native("sap.ui.commons.layout.BackgroundDesign")
@:enum extern abstract BackgroundDesign(String)
{
    /**
    * A background design suitable for borders.
    */
    var Border= "Border";
    /**
    * An opaque background design that looks dark filled.
    */
    var Fill1= "Fill1";
    /**
    * An opaque background design that looks medium filled.
    */
    var Fill2= "Fill2";
    /**
    * An opaque background design that looks light filled.
    */
    var Fill3= "Fill3";
    /**
    * A background design suitable for headers.
    */
    var Header= "Header";
    /**
    * A plain but opaque background design.
    */
    var Plain= "Plain";
    /**
    * A transparent background.
    */
    var Transparent= "Transparent";
}
