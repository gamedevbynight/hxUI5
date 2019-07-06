package sap.ui.layout.form;


/**
* A string that defines the number of used cells in a <code>GridLayout</code>. This can be a number from 1 to 16, "auto" or "full". If set to "auto" the size is determined by the number of fields and the available cells. For labels the auto size is 3 cells. If set to "full" only one field is allowed within the <code>FormElement</code>. It gets the full width of the row and the label is displayed above. <b>Note:</b> For labels full size has no effect.
*/
abstract GridElementCells(String) from String to String {
    inline function new(i:String) {
        this = i;
    }
}
