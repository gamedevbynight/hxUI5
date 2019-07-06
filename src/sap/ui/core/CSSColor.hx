package sap.ui.core;


/**
* A string type that represents CSS color values.

Allowed values are CSS hex colors like "#666666" or "#fff", RGB/HSL values like "rgb(0,0,0)" or "hsla(50%,10%,30%,0.5)" as well as CSS color names like "green" and "darkblue" and special values like "inherit" and "transparent".

The empty string is also allowed and has the same effect as setting no color.
*/
abstract CSSColor(String) from String to String {
    inline function new(i:String) {
        this = i;
    }
}
