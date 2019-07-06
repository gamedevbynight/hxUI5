package sap.ui.commons;

@:native("sap.ui.commons.RowRepeaterDesign")
@:enum extern abstract RowRepeaterDesign(String)
{
    /**
    * The RowRepeater will be displayed without header, toolbar or footer. Background will be transparent.
    */
    var BareShell= "BareShell";
    /**
    * The RowRepeater header and footer elements, as well as the row container background, appear solid.
    */
    var Standard= "Standard";
    /**
    * The RowRepeater header and footer elements, as well as the row container background, appear transparent.
    */
    var Transparent= "Transparent";
}
