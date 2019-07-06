package sap.uxap;

@:native("sap.uxap.ObjectPageConfigurationMode")
@:enum extern abstract ObjectPageConfigurationMode(String)
{
    /**
    * Determines the JSON model.
    */
    var JsonModel= "JsonModel";
    /**
    * Determines the JSON URL.
    */
    var JsonURL= "JsonURL";
}
