package sap.ui.layout.form;


/**
* An <code>int</code> type that defines how many columns a <code>Form</code> control using the <code>ColumnLayout</code> as layout can have if it has large size

Allowed values are numbers from 1 to 3.
*/
abstract ColumnsL(Int) from Int to Int {
    inline function new(i:Int) {
        this = i;
    }
}
