package sap.m;

@:native("sap.m.TitleAlignment")
@:enum extern abstract TitleAlignment(String)
{
    /**
    * The default type (if specified in the theme)
    */
    var Auto= "Auto";
    /**
    * Explicitly sets the alignment to the start (left or right depending on LTR/RTL)
    */
    var Center= "Center";
    /**
    * Explicitly sets the alignment to the start (left or right depending on LTR/RTL)
    */
    var Start= "Start";
}
