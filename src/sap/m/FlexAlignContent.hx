package sap.m;

@:native("sap.m.FlexAlignContent")
@:enum extern abstract FlexAlignContent(String)
{
    /**
    * Line are packed toward the center of the line.
    */
    var Center= "Center";
    /**
    * Lines are packed toward the end of the line.
    */
    var End= "End";
    /**
    * Inherits the value from its parent.
    */
    var Inherit= "Inherit";
    /**
    * Lines are evenly distributed in the line, with half-size spaces on either end. <b>Note:</b> This value behaves like SpaceBetween in Internet Explorer 10.
    */
    var SpaceAround= "SpaceAround";
    /**
    * Lines are evenly distributed in the line.
    */
    var SpaceBetween= "SpaceBetween";
    /**
    * Lines are packed toward the start of the line.
    */
    var Start= "Start";
    /**
    * Lines stretch to take up the remaining space.
    */
    var Stretch= "Stretch";
}
