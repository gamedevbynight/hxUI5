package sap.ui.core;

@:native("sap.ui.core.TextAlign")
@:enum extern abstract TextAlign(String)
{
    /**
    * Locale-specific positioning at the beginning of the line.
    */
    var Begin= "Begin";
    /**
    * Centered text alignment.
    */
    var Center= "Center";
    /**
    * Locale-specific positioning at the end of the line.
    */
    var End= "End";
    /**
    * Sets no text align, so the browser default is used.
    */
    var Initial= "Initial";
    /**
    * Hard option for left alignment.
    */
    var Left= "Left";
    /**
    * Hard option for right alignment.
    */
    var Right= "Right";
}
