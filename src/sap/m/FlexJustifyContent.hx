package sap.m;

@:native("sap.m.FlexJustifyContent")
@:enum extern abstract FlexJustifyContent(String)
{
    /**
    * Flex items are packed toward the center of the line.
    */
    var Center= "Center";
    /**
    * Flex items are packed toward the end of the line.
    */
    var End= "End";
    /**
    * Inherits the value from its parent.
    */
    var Inherit= "Inherit";
    /**
    * Flex items are evenly distributed in the line, with half-size spaces on either end. <b>Note:</b> This value behaves like SpaceBetween in Internet Explorer 10.
    */
    var SpaceAround= "SpaceAround";
    /**
    * Flex items are evenly distributed in the line.
    */
    var SpaceBetween= "SpaceBetween";
    /**
    * Flex items are packed toward the start of the line.
    */
    var Start= "Start";
}
