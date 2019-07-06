package sap.ui.core;


/**
* A string type representing an ID or a name.

Allowed is a sequence of characters (capital/lowercase), digits, underscores, dashes, points and/or colons. It may start with a character or underscore only.
*/
abstract ID(String) from String to String {
    inline function new(i:String) {
        this = i;
    }
}
