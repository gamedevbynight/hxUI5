package sap.m;

@:native("sap.m.P13nPanelType")
@:enum extern abstract P13nPanelType(String)
{
    /**
    * Panel type for column settings.
    */
    var columns= "columns";
    /**
    * Panel type for dimension and measure settings.
    */
    var dimeasure= "dimeasure";
    /**
    * Panel type for filtering.
    */
    var filter= "filter";
    /**
    * Panel type for grouping.
    */
    var group= "group";
    /**
    * Panel type for sorting.
    */
    var sort= "sort";
}
