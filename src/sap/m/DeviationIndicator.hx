package sap.m;

@:native("sap.m.DeviationIndicator")
@:enum extern abstract DeviationIndicator(String)
{
    /**
    * The actual value is less than the target value.
    */
    var Down= "Down";
    /**
    * No value.
    */
    var None= "None";
    /**
    * The actual value is more than the target value.
    */
    var Up= "Up";
}
