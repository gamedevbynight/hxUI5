package sap.ui.core;

@:native("sap.ui.core.HorizontalAlign")
@:enum extern abstract HorizontalAlign(String)
{
    /**
    * Locale-specific positioning at the beginning of the line
    */
    var Begin= "Begin";
    /**
    * Centered alignment of text
    */
    var Center= "Center";
    /**
    * Locale-specific positioning at the end of the line
    */
    var End= "End";
    /**
    * Hard option for left alignment
    */
    var Left= "Left";
    /**
    * Hard option for right alignment
    */
    var Right= "Right";
}
