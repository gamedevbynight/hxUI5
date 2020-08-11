package sap.ui.model.odata;

@:native("sap.ui.model.odata.MessageScope")
@:enum extern abstract MessageScope(String)
{
    /**
    * Retrieve messages for the requested or changed entities and for all their child entities that belong to the same business object. The service needs to set the OData V2 annotation "message-scope-supported" at the <code>EntityContainer</code> to <code>true</code>. If the service does set this OData V2 annotation, the OData model falls back to <code>sap.ui.model.odata.MessageScope.RequestedObjects</code>.
    */
    var BusinessObject= "BusinessObject";
    /**
    * Retrieve messages only for the requested or changed entities.
    */
    var RequestedObjects= "RequestedObjects";
}
