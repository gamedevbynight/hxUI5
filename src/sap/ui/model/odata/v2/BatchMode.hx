package sap.ui.model.odata.v2;

@:native("sap.ui.model.odata.v2.BatchMode")
@:enum extern abstract BatchMode(String)
{
    /**
    * Batch grouping enabled
    */
    var Group= "Group";
    /**
    * No batch requests
    */
    var None= "None";
}
