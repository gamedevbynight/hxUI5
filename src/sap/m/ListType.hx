package sap.m;

@:native("sap.m.ListType")
@:enum extern abstract ListType(String)
{
    /**
    * Indicates that the item is clickable via active feedback when item is pressed.
    */
    var Active= "Active";
    /**
    * Enables detail button of the list item that fires <code>detailPress</code> event. Also see {@link sap.m.ListItemBase#attachDetailPress}.
    */
    var Detail= "Detail";
    /**
    * Enables {@link sap.m.ListType.Detail} and {@link sap.m.ListType.Active} enumerations together.
    */
    var DetailAndActive= "DetailAndActive";
    /**
    * Indicates the list item does not have any active feedback when item is pressed. <b>Note:</b> <code>Inactive</code> type cannot be used to disable list items.
    */
    var Inactive= "Inactive";
    /**
    * Indicates the list item is navigable to show extra information about the item.
    */
    var Navigation= "Navigation";
}
