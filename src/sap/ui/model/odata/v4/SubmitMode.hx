package sap.ui.model.odata.v4;

@:native("sap.ui.model.odata.v4.SubmitMode")
@:enum extern abstract SubmitMode(String)
{
    /**
    * Requests associated with the group ID are sent in a batch request via {@link sap.ui.model.odata.v4.ODataModel#submitBatch}.
    */
    var API= "API";
    /**
    * Requests associated with the group ID are sent in a batch request which is triggered automatically before rendering.
    */
    var Auto= "Auto";
    /**
    * Requests associated with the group ID are sent directly without batch.
    */
    var Direct= "Direct";
}
