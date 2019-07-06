package sap.m;

@:native("sap.m.RatingIndicatorVisualMode")
@:enum extern abstract RatingIndicatorVisualMode(String)
{
    /**
    * Values are rounded to the nearest integer value (e.g. 1.7 -> 2).
    */
    var Full= "Full";
    /**
    * Values are rounded to the nearest half value (e.g. 1.7 -> 1.5).
    */
    var Half= "Half";
}
