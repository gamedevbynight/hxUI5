package sap.m;

@:native("sap.m.GenericTagValueState")
@:enum extern abstract GenericTagValueState(String)
{
    /**
    * Warning icon is rendered that overrides the control set in the <code>value</code> aggregation of the <code>GenericTag</code> control.
    */
    var Error= "Error";
    /**
    * The value is rendered in its normal state.
    */
    var None= "None";
}
