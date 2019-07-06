package sap.m;

@:native("sap.m.ToolbarDesign")
@:enum extern abstract ToolbarDesign(String)
{
    /**
    * The toolbar can be inserted into other controls and if the design is "Auto" then it inherits the design from parent control.
    */
    var Auto= "Auto";
    /**
    * The toolbar appears smaller than the regular size to show information(e.g: text, icon).
    */
    var Info= "Info";
    /**
    * The toolbar has a solid background. Its content will be rendered in a standard way.
    */
    var Solid= "Solid";
    /**
    * The toolbar and its content will be displayed transparent.
    */
    var Transparent= "Transparent";
}
