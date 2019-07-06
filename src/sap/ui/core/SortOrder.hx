package sap.ui.core;

@:native("sap.ui.core.SortOrder")
@:enum extern abstract SortOrder(String)
{
    /**
    * Sorting is done in ascending order.
    */
    var Ascending= "Ascending";
    /**
    * Sorting is done in descending order.
    */
    var Descending= "Descending";
    /**
    * Sorting is not applied.
    */
    var None= "None";
}
