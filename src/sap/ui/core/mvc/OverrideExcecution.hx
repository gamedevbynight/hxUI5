package sap.ui.core.mvc;

@:native("sap.ui.core.mvc.OverrideExcecution")
@:enum extern abstract OverrideExcecution(String)
{
    /**
    * The override function gets executed after the original function
    */
    var After= "After";
    /**
    * The override function gets executed before the original function
    */
    var Before= "Before";
    /**
    * The override function is called instead of the original function

This is the default option for ControllerExtension overrides
    */
    var Instead= "Instead";
}
