package sap.ui.core;

@:native("sap.ui.core.VerticalAlign")
@:enum extern abstract VerticalAlign(String)
{
    /**
    * Content is aligned at the bottom.
    */
    var Bottom= "Bottom";
    /**
    * Content respect the parent's vertical alignment.
    */
    var Inherit= "Inherit";
    /**
    * Content is centered vertically .
    */
    var Middle= "Middle";
    /**
    * Content is aligned at the top.
    */
    var Top= "Top";
}
