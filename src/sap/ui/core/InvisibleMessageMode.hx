package sap.ui.core;

@:native("sap.ui.core.InvisibleMessageMode")
@:enum extern abstract InvisibleMessageMode(String)
{
    /**
    * Indicates that updates to the region have the highest priority and should be presented to the user immediately.
    */
    var Assertive= "Assertive";
    /**
    * Indicates that updates to the region should be presented at the next graceful opportunity, such as at the end of reading the current sentence, or when the user pauses typing.
    */
    var Polite= "Polite";
}
