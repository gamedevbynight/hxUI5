package sap.uxap;

@:native("sap.uxap.Importance")
@:enum extern abstract Importance(String)
{
    /**
    * High importance of the content.
    */
    var High= "High";
    /**
    * Low importance of the content.
    */
    var Low= "Low";
    /**
    * Medium importance of the content.
    */
    var Medium= "Medium";
}
