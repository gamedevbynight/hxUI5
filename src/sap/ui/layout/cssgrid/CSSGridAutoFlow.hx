package sap.ui.layout.cssgrid;

@:native("sap.ui.layout.cssgrid.CSSGridAutoFlow")
@:enum extern abstract CSSGridAutoFlow(String)
{
    /**
    * Insert auto-placed items by filling each column.
    */
    var Column= "Column";
    /**
    * Insert auto-placed items by filling each column, and fill any holes in the grid.
    */
    var ColumnDense= "ColumnDense";
    /**
    * Insert auto-placed items by filling each row.
    */
    var Row= "Row";
    /**
    * Insert auto-placed items by filling each row, and fill any holes in the grid.
    */
    var RowDense= "RowDense";
}
