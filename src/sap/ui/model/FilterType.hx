package sap.ui.model;

@:native("sap.ui.model.FilterType")
@:enum extern abstract FilterType(String)
{
    /**
    * Filters which are provided by the application.
    */
    var Application= "Application";
    /**
    * Filters which are set by a control itself.

Some controls implement filter capabilities as part of their behavior, e.g. table columns or facet filters. When such controls define filters for a binding, they should use filter type <code>Control</code> to keep their filters separated from filters that the application might define in addition.
    */
    var Control= "Control";
}
