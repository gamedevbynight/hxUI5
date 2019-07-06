package sap.ui.table;

@:native("sap.ui.table.SelectionBehavior")
@:enum extern abstract SelectionBehavior(String)
{
    /**
    * Rows can be selected on the complete row.
    */
    var Row= "Row";
    /**
    * Rows can only be selected on the row (and the selector is hidden).
    */
    var RowOnly= "RowOnly";
    /**
    * Rows can only be selected on the row selector.
    */
    var RowSelector= "RowSelector";
}
