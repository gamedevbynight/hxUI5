package sap.ui.layout.form;


/**
* An <code>int</code> type that defines how many cells a control inside of a column of a <code>Form</code> control using the <code>ColumnLayout</code> control as layout can use.

Allowed values are numbers from 1 to 12.
*/
abstract ColumnCells(Int) from Int to Int {
    inline function new(i:Int) {
        this = i;
    }
}
