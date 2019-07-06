package sap.m;

@:native("sap.m.DraftIndicatorState")
@:enum extern abstract DraftIndicatorState(String)
{
    /**
    * This is the default value for DraftIndicatorState type. This state has no visual information displayed.
    */
    var Clear= "Clear";
    /**
    * Indicates that the draft is already saved
    */
    var Saved= "Saved";
    /**
    * Indicates that the draft currently is being saved
    */
    var Saving= "Saving";
}
