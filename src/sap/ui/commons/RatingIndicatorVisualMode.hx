package sap.ui.commons;

@:native("sap.ui.commons.RatingIndicatorVisualMode")
@:enum extern abstract RatingIndicatorVisualMode(String)
{
    /**
    * Values are not rounded.
    */
    var Continuous= "Continuous";
    /**
    * Values are rounded to the nearest integer value (e.g. 1.7 -> 2).
    */
    var Full= "Full";
    /**
    * Values are rounded to the nearest half value (e.g. 1.7 -> 1.5).
    */
    var Half= "Half";
}
