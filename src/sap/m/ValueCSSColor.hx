package sap.m;


/**
* A string type that represents CSS color values, sap.m.ValueColor or less parameter values.

Allowed values are {@link sap.ui.core.CSSColor}, {@link sap.m.ValueColor} or a less parameter name (string). In case the less parameter color cannot be determined, the validation fails. You need to check if less parameters are supported on control level. An empty string is also allowed and has the same effect as setting no color.
*/
abstract ValueCSSColor(String) from String to String {
    inline function new(i:String) {
        this = i;
    }
}
