package sap.ui.layout;


/**
* A string type that represents how many boxes per row should be displayed for each screen size. The breakpoints are for extra large (XL), large (L), medium (M) and small (S) screen sizes.

<b>Note:</b> The parameters must be provided in the order <XL L M S>.
*/
abstract BoxesPerRowConfig(String) from String to String {
    inline function new(i:String) {
        this = i;
    }
}
