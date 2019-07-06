package sap.m;

@:native("sap.m.PlacementType")
@:enum extern abstract PlacementType(String)
{
    /**
    * Popover will be placed automatically at the reference control.
    */
    var Auto= "Auto";
    /**
    * Popover will be placed at the bottom of the reference control.
    */
    var Bottom= "Bottom";
    /**
    * Popover will be placed at the right or left side of the reference control.
    */
    var Horizontal= "Horizontal";
    /**
    * Deprecated - use <code>sap.m.PlacementType.HorizontalPreferredLeft</code> type.
    */
    var HorizontalPreferedLeft= "HorizontalPreferedLeft";
    /**
    * Deprecated - use <code>sap.m.PlacementType.HorizontalPreferredRight</code> type.
    */
    var HorizontalPreferedRight= "HorizontalPreferedRight";
    /**
    * Popover will be placed at the right or left side of the reference control but will try to position on the left side if the space is greater than the Popover's width.
    */
    var HorizontalPreferredLeft= "HorizontalPreferredLeft";
    /**
    * Popover will be placed at the right or left side of the reference control but will try to position on the right side if the space is greater than the Popover's width.
    */
    var HorizontalPreferredRight= "HorizontalPreferredRight";
    /**
    * Popover will be placed at the left side of the reference control.
    */
    var Left= "Left";
    /**
    * Popover will be placed to the bottom of the reference control. If the available space is less than the Popover's height, it will appear to the top of the same reference control bottom border.
    */
    var PreferredBottomOrFlip= "PreferredBottomOrFlip";
    /**
    * Popover will be placed to the left of the reference control. If the available space is less than the Popover's width, it will appear to the right of the same reference control left border.
    */
    var PreferredLeftOrFlip= "PreferredLeftOrFlip";
    /**
    * Popover will be placed to the right of the reference control. If the available space is less than the Popover's width, it will appear to the left of the same reference control right border.
    */
    var PreferredRightOrFlip= "PreferredRightOrFlip";
    /**
    * Popover will be placed to the top of the reference control. If the available space is less than the Popover's height, it will appear to the bottom of the same reference control top border.
    */
    var PreferredTopOrFlip= "PreferredTopOrFlip";
    /**
    * Popover will be placed at the right side of the reference control.
    */
    var Right= "Right";
    /**
    * Popover will be placed at the top of the reference control.
    */
    var Top= "Top";
    /**
    * Popover will be placed at the top or bottom of the reference control.
    */
    var Vertical= "Vertical";
    /**
    * Deprecated - use <code>sap.m.PlacementType.VerticalPreferredBottom</code> type.
    */
    var VerticalPreferedBottom= "VerticalPreferedBottom";
    /**
    * Deprecated - use <code>sap.m.PlacementType.VerticalPreferredTop</code> type.
    */
    var VerticalPreferedTop= "VerticalPreferedTop";
    /**
    * Popover will be placed at the top or bottom of the reference control but will try to position on the bottom side if the space is greater than the Popover's height.
    */
    var VerticalPreferredBottom= "VerticalPreferredBottom";
    /**
    * Popover will be placed at the top or bottom of the reference control but will try to position on the top side if the space is greater than the Popover's height.
    */
    var VerticalPreferredTop= "VerticalPreferredTop";
}
