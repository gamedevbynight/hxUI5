package sap.ui.model;

@:native("sap.ui.model.TreeAutoExpandMode")
@:enum extern abstract TreeAutoExpandMode(String)
{
    /**
    * If supported by a backend provider with analytical capabilities, the requests needed for an automatic node expansion are bundled.
    */
    var Bundled= "Bundled";
    /**
    * Tree nodes will be expanded in sequence, level by level (Single requests are sent).
    */
    var Sequential= "Sequential";
}
