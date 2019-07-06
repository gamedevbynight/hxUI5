package sap.ui.table;

@:native("sap.ui.table.VisibleRowCountMode")
@:enum extern abstract VisibleRowCountMode(String)
{
    /**
    * The table automatically fills the height of the surrounding container.
    */
    var Auto= "Auto";
    /**
    * The table always has as many rows as defined in the <code>visibleRowCount</code> property.
    */
    var Fixed= "Fixed";
    /**
    * The user can change the <code>visibleRowCount</code> by dragging a resizer.
    */
    var Interactive= "Interactive";
}
