package sap.ui.model.odata.v4;

@:native("sap.ui.model.odata.v4.ValueListType")
@:enum extern abstract ValueListType(String)
{
    /**
    * There is one enumeration of fixed values.
    */
    var Fixed= "Fixed";
    /**
    * There is no value list.
    */
    var None= "None";
    /**
    * There is a dynamic value list with multiple queries including selection criteria.
    */
    var Standard= "Standard";
}
