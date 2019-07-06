package sap.ui.core;

@:native("sap.ui.core.TextDirection")
@:enum extern abstract TextDirection(String)
{
    /**
    * Inherits the direction from its parent control/container.
    */
    var Inherit= "Inherit";
    /**
    * Specifies left-to-right text direction.
    */
    var LTR= "LTR";
    /**
    * Specifies right-to-left text direction.
    */
    var RTL= "RTL";
}
