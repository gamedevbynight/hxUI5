package sap.ui.table;

@:native("sap.ui.table.GroupEventType")
@:enum extern abstract GroupEventType(String)
{
    /**
    * Group Column
    */
    var group= "group";
    /**
    * Show grouped column only as group header
    */
    var hideGroupedColumn= "hideGroupedColumn";
    /**
    * Change the group order of the columns. Move column one position down in the group sequence
    */
    var moveDown= "moveDown";
    /**
    * Change the group order of the columns. Move column one position up in the group sequence
    */
    var moveUp= "moveUp";
    /**
    * Show grouped column also as a column, not just as group header
    */
    var showGroupedColumn= "showGroupedColumn";
    /**
    * Ungroup Column
    */
    var ungroup= "ungroup";
    /**
    * Ungroup All Columns
    */
    var ungroupAll= "ungroupAll";
}
