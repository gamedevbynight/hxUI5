package sap.m;

@:native("sap.m.StepInputValidationMode")
@:enum extern abstract StepInputValidationMode(String)
{
    /**
    * Validation happens on <code>FocusOut</code>.
    */
    var FocusOut= "FocusOut";
    /**
    * Validation happens on <code>LiveChange</code>.
    */
    var LiveChange= "LiveChange";
}
