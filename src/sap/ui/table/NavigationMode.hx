package sap.ui.table;

@:native("sap.ui.table.NavigationMode")
@:enum extern abstract NavigationMode(String)
{
    /**
    * Uses the paginator control. This option must no longer be used. Using a scrollbar is the only navigation mode which is supported by the <code>sap.ui.table</code> library. The <code>navigationMode</code> property has always been a visual representation. No matter which navigation mode is used, data fetched from an OData service is loaded page-wise.
    */
    var Paginator= "Paginator";
    /**
    * Uses the scrollbar control.
    */
    var Scrollbar= "Scrollbar";
}
