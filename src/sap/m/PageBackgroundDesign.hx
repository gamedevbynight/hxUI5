package sap.m;

@:native("sap.m.PageBackgroundDesign")
@:enum extern abstract PageBackgroundDesign(String)
{
    /**
    * Page background color when a List is set as the Page content.
    */
    var List= "List";
    /**
    * A solid background color dependent on the theme.
    */
    var Solid= "Solid";
    /**
    * Standard Page background color.
    */
    var Standard= "Standard";
    /**
    * Transparent background for the page.
    */
    var Transparent= "Transparent";
}
