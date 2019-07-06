package sap.ui.core;


/**
* A string type that represents an RFC 3986 conformant URI.
*/
abstract URI(String) from String to String {
    inline function new(i:String) {
        this = i;
    }
}
