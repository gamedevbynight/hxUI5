package sap.m;

@:native("sap.m.FlexAlignSelf")
@:enum extern abstract FlexAlignSelf(String)
{
    /**
    * Takes up the value of alignItems from the parent FlexBox
    */
    var Auto= "Auto";
    /**
    * If the flex item's inline axis is the same as the cross axis, this value is identical to "Start".

Otherwise, it participates in baseline alignment: all participating box items on the line are aligned such that their baselines align, and the item with the largest distance between its baseline and its cross-start margin edge is placed flush against the cross-start edge of the line.
    */
    var Baseline= "Baseline";
    /**
    * The flex item's margin box is centered in the cross axis within the line.
    */
    var Center= "Center";
    /**
    * The cross-start margin edges of the flex item is placed flush with the cross-end edge of the line.
    */
    var End= "End";
    /**
    * Inherits the value from its parent.
    */
    var Inherit= "Inherit";
    /**
    * The cross-start margin edges of the flex item is placed flush with the cross-start edge of the line.
    */
    var Start= "Start";
    /**
    * Make the cross size of the item's margin box as close to the same size as the line as possible.
    */
    var Stretch= "Stretch";
}
