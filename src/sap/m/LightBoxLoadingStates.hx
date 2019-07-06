package sap.m;

@:native("sap.m.LightBoxLoadingStates")
@:enum extern abstract LightBoxLoadingStates(String)
{
    /**
    * The LightBox image could not load.
    */
    var Error= "Error";
    /**
    * The LightBox image has loaded.
    */
    var Loaded= "Loaded";
    /**
    * The LightBox image is still loading.
    */
    var Loading= "Loading";
    /**
    * The LightBox image has timed out, could not load.
    */
    var TimeOutError= "TimeOutError";
}
