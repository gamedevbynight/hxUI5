package sap.ui.commons.layout;

@:native("sap.ui.commons.layout.HAlign")
@:enum extern abstract HAlign(String)
{
    /**
    * Aligned towards the beginning of a line, in the current locale's writing direction.
    */
    var Begin= "Begin";
    /**
    * Horizontally centered.
    */
    var Center= "Center";
    /**
    * Aligned towards the end of a line, in the current locale's writing direction.
    */
    var End= "End";
    /**
    * Left aligned, regardless of the current locale's writing direction.
    */
    var Left= "Left";
    /**
    * Right aligned, regardless of the current locale's writing direction.
    */
    var Right= "Right";
}
