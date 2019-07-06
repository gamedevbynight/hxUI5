package sap.m;

@:native("sap.m.FlexWrap")
@:enum extern abstract FlexWrap(String)
{
    /**
    * The flex container is single-line.
    */
    var NoWrap= "NoWrap";
    /**
    * The flex container is multi-line.
    */
    var Wrap= "Wrap";
    /**
    * The flex container is multi-line with the cross-axis start and end being swapped.
    */
    var WrapReverse= "WrapReverse";
}
