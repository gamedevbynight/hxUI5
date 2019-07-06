package sap.ui.layout;


/**
* A string type that represents the indent values of the <code>Grid</code> for large, medium and small screens.

Allowed values are separated by space Letters L, M or S followed by number of columns from 1 to 11 that the container has to take, for example: <code>L2 M4 S6</code>, <code>M11</code>, <code>s10</code> or <code>l4 m4</code>.

<b>Note:</b> The parameters must be provided in the order <large medium small>.
*/
abstract GridIndent(String) from String to String {
    inline function new(i:String) {
        this = i;
    }
}
