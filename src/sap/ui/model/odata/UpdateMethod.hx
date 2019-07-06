package sap.ui.model.odata;

@:native("sap.ui.model.odata.UpdateMethod")
@:enum extern abstract UpdateMethod(String)
{
    /**
    * Update requests will be send with HTTP method <code>MERGE</code>.
    */
    var Merge= "Merge";
    /**
    * Update requests will be send with HTTP method <code>PUT</code>.
    */
    var Put= "Put";
}
