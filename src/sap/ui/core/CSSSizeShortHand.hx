package sap.ui.core;


/**
* This type checks the short hand form of a margin or padding definition.

E.g. "1px 1px" or up to four CSSSize values are allowed or tHe special keyword <code>inherit</code>.
*/
abstract CSSSizeShortHand(String) from String to String {
    inline function new(i:String) {
        this = i;
    }
}
