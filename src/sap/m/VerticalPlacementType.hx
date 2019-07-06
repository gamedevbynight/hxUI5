package sap.m;

@:native("sap.m.VerticalPlacementType")
@:enum extern abstract VerticalPlacementType(String)
{
    /**
    * Popover will be placed at the bottom of the reference control.
    */
    var Bottom= "Bottom";
    /**
    * Popover will be placed at the top of the reference control.
    */
    var Top= "Top";
    /**
    * Popover will be placed at the top or bottom of the reference control.
    */
    var Vertical= "Vertical";
}
