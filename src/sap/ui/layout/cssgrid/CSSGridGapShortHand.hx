package sap.ui.layout.cssgrid;


/**
* A string type that represents a short hand CSS grid gap.
*/
abstract CSSGridGapShortHand(String) from String to String {
    inline function new(i:String) {
        this = i;
    }
}
