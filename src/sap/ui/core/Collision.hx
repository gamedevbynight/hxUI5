package sap.ui.core;


/**
* Collision behavior: horizontal/vertical.

Defines how the position of an element should be adjusted in case it overflows the window in some direction. For both directions this can be "flip", "fit" or "none". If only one behavior is provided it is applied to both directions. Examples: "flip", "fit none".
*/
abstract Collision(String) from String to String {
    inline function new(i:String) {
        this = i;
    }
}
