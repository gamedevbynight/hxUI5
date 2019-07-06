package sap.m;

@:native("sap.m.LoadState")
@:enum extern abstract LoadState(String)
{
    /**
    * The control is disabled.
    */
    var Disabled= "Disabled";
    /**
    * The control failed to load.
    */
    var Failed= "Failed";
    /**
    * The control has loaded.
    */
    var Loaded= "Loaded";
    /**
    * The control is loading.
    */
    var Loading= "Loading";
}
