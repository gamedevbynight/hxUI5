package sap.ui.core;

@:native("sap.ui.core.Scrolling")
@:enum extern abstract Scrolling(String)
{
    /**
    * A scroll bar is shown if the content requires more space than the given space (rectangle) provides.
    */
    var Auto= "Auto";
    /**
    * No scroll bar is shown, and the content stays in the given rectangle.
    */
    var Hidden= "Hidden";
    /**
    * No scroll bar provided even if the content is larger than the available space.
    */
    var None= "None";
    /**
    * A scroll bar is always shown even if the space is large enough for the current content.
    */
    var Scroll= "Scroll";
}
