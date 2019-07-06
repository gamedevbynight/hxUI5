package sap.ui.layout.cssgrid;


/**
* A string type that represents a grid track (the space between two grid lines)
*/
abstract CSSGridTrack(String) from String to String {
    inline function new(i:String) {
        this = i;
    }
}
