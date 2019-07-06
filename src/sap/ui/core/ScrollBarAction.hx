package sap.ui.core;

@:native("sap.ui.core.ScrollBarAction")
@:enum extern abstract ScrollBarAction(String)
{
    /**
    * Scrolling done by dragging the scroll bar's paint thumb
    */
    var Drag= "Drag";
    /**
    * Scrolling done by mouse wheel
    */
    var MouseWheel= "MouseWheel";
    /**
    * Range scrolling caused by clicking track area or using page up or page down key.
    */
    var Page= "Page";
    /**
    * Single step scrolling caused by clicking an arrow button or arrow key.
    */
    var Step= "Step";
}
