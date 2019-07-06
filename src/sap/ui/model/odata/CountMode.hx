package sap.ui.model.odata;

@:native("sap.ui.model.odata.CountMode")
@:enum extern abstract CountMode(String)
{
    /**
    * Count is retrieved by a separate request upfront and inline with each data request.

The only purpose of this mode is to reflect the behavior of the {@link sap.ui.model.odata.ODataModel ODataModel (v1)} before the introduction of the <code>CountMode</code>. For compatibility reasons, it is the default for the <code>ODataModel</code> (v1) and shouldn't be used otherwise.
    */
    var Both= "Both";
    /**
    * Count is retrieved by adding <code>$inlinecount=allpages</code> to data requests as long as no count has been determined yet.
    */
    var Inline= "Inline";
    /**
    * Count is retrieved by adding <code>$inlinecount=allpages</code> to every data request.
    */
    var InlineRepeat= "InlineRepeat";
    /**
    * Count is not requested from the server.
    */
    var None= "None";
    /**
    * Count is retrieved by sending a separate <code>$count</code> request before requesting data.

It depends on the concrete model implementation whether and how the <code>$count</code> request and the data request are synchronized.
    */
    var Request= "Request";
}
