package sap.m;

@:native("sap.m.SwipeDirection")
@:enum extern abstract SwipeDirection(String)
{
    /**
    * Both directions (left to right or right to left)
    */
    var Both= "Both";
    /**
    * Swipe from left to right
    */
    var LeftToRight= "LeftToRight";
    /**
    * Swipe from right to left.
    */
    var RightToLeft= "RightToLeft";
}
