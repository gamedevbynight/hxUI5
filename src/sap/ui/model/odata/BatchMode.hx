package sap.ui.model.odata;

@:native("sap.ui.model.odata.BatchMode")
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
