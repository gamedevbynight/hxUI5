package sap.ui.table;

@:native("sap.ui.table.RowActionType")
@:enum extern abstract RowActionType(String)
{
    /**
    * Custom defined Row Action.
    */
    var Custom= "Custom";
    /**
    * Delete Row Action.
    */
    var Delete= "Delete";
    /**
    * Navigation Row Action.
    */
    var Navigation= "Navigation";
}
