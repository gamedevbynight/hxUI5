package sap.m;

@:native("sap.m.SwipeDirection")
@:enum extern abstract SwipeDirection(String)
{
    /**
    * Swipe from the beginning to the end - left to right in LTR languages and right to left in RTL languages.
    */
    var BeginToEnd= "BeginToEnd";
    /**
    * Both directions (left to right or right to left)
    */
    var Both= "Both";
    /**
    * Swipe from the end to the beginning - right to left in LTR languages and left to right in RTL languages.
    */
    var EndToBegin= "EndToBegin";
    /**
    * Swipe from left to right
    */
    var LeftToRight= "LeftToRight";
    /**
    * Swipe from right to left.
    */
    var RightToLeft= "RightToLeft";
}
