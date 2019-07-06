package sap.m;

@:native("sap.m.FrameType")
@:enum extern abstract FrameType(String)
{
    /**
    * The Auto frame type that adjusts the size of the control to the content. Support for this type in sap.m.GenericTile is deprecated since 1.48.0.
    */
    var Auto= "Auto";
    /**
    * The 1x1 frame type.
    */
    var OneByOne= "OneByOne";
    /**
    * The 2x1 frame type.
    */
    var TwoByOne= "TwoByOne";
    /**
    * The 2/3 frame type.
    */
    var TwoThirds= "TwoThirds";
}
