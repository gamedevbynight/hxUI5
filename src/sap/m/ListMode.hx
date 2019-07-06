package sap.m;

@:native("sap.m.ListMode")
@:enum extern abstract ListMode(String)
{
    /**
    * Delete mode (only one list item can be deleted via provided delete button)
    */
    var Delete= "Delete";
    /**
    * Multi selection mode (more than one list item can be selected).
    */
    var MultiSelect= "MultiSelect";
    /**
    * Default mode (no selection).
    */
    var None= "None";
    /**
    * Right-positioned single selection mode (only one list item can be selected).
    */
    var SingleSelect= "SingleSelect";
    /**
    * Left-positioned single selection mode (only one list item can be selected).
    */
    var SingleSelectLeft= "SingleSelectLeft";
    /**
    * Selected item is highlighted but no selection control is visible (only one list item can be selected).
    */
    var SingleSelectMaster= "SingleSelectMaster";
}
