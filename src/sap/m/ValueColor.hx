package sap.m;

@:native("sap.m.ValueColor")
@:enum extern abstract ValueColor(String)
{
    /**
    * Critical value color.
    */
    var Critical= "Critical";
    /**
    * Error value color.
    */
    var Error= "Error";
    /**
    * Good value color.
    */
    var Good= "Good";
    /**
    * Neutral value color.
    */
    var Neutral= "Neutral";
}
