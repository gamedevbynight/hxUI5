package sap.ui.model.odata;

@:native("sap.ui.model.odata.MessageScope")
@:enum extern abstract MessageScope(String)
{
    /**
    * Retrieve messages for the whole business object. If the service does not support this option it fallbacks to requested.
    */
    var BusinessObject= "BusinessObject";
    /**
    * Retrieve messages only for the requested/changed entities.
    */
    var RequestedObjects= "RequestedObjects";
}
