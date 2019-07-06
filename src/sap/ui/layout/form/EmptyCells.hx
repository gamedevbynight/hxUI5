package sap.ui.layout.form;


/**
* An <code>int</code> type that defines how many cells beside the controls inside of a column of a <code>Form</code> control using the <code>ColumnLayout</code> control as layout are empty.

Allowed values are numbers from 0 to 11.
*/
abstract EmptyCells(Int) from Int to Int {
    inline function new(i:Int) {
        this = i;
    }
}
