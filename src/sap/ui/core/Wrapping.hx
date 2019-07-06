package sap.ui.core;

@:native("sap.ui.core.Wrapping")
@:enum extern abstract Wrapping(String)
{
    /**
    * Inserts actual line breaks in the text at the wrap point.
    */
    var Hard= "Hard";
    /**
    * The standard browser behavior is considered for wrapping.
    */
    var None= "None";
    /**
    * Wrapping shall not be allowed.
    */
    var Off= "Off";
    /**
    * The text is actually on the same line but displayed within several lines.
    */
    var Soft= "Soft";
}
