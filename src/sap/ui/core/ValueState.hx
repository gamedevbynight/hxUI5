package sap.ui.core;

@:native("sap.ui.core.ValueState")
@:enum extern abstract ValueState(String)
{
    /**
    * State is not valid.
    */
    var Error= "Error";
    /**
    * State is informative.
    */
    var Information= "Information";
    /**
    * State is not specified.
    */
    var None= "None";
    /**
    * State is valid.
    */
    var Success= "Success";
    /**
    * State is valid but with a warning.
    */
    var Warning= "Warning";
}
