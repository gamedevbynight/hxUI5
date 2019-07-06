package sap.ui.commons;

@:native("sap.ui.commons.TriStateCheckBoxState")
@:enum extern abstract TriStateCheckBoxState(String)
{
    /**
    * checked value for tri-state checkbox
    */
    var Checked= "Checked";
    /**
    * mixed state for tri-state checkbox
    */
    var Mixed= "Mixed";
    /**
    * unchecked, default value for tri-state checkbox
    */
    var Unchecked= "Unchecked";
}
