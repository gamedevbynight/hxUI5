package sap.ui.core;


/**
* A string type that represents a percentage value.
*/
abstract Percentage(String) from String to String {
    inline function new(i:String) {
        this = i;
    }
}
