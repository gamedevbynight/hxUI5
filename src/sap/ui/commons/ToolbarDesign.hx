package sap.ui.commons;

@:native("sap.ui.commons.ToolbarDesign")
@:enum extern abstract ToolbarDesign(String)
{
    /**
    * The included controls have a very light appearance. The feature might be not supported by all themes.
    */
    var Flat= "Flat";
    /**
    * The toolbar elements such as buttons for example have their normal visual design, and the toolbar appears solid. The feature might be not supported by all themes.
    */
    var Standard= "Standard";
    /**
    * The controls included in the toolbar have a normal visual design where the toolbar appears transparent. The feature might be not supported by all themes.
    */
    var Transparent= "Transparent";
}
