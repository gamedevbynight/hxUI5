package sap.m;

@:native("sap.m.ListGrowingDirection")
@:enum extern abstract ListGrowingDirection(String)
{
    /**
    * User has to scroll down to load more items or the growing button is displayed at the bottom.
    */
    var Downwards= "Downwards";
    /**
    * User has to scroll up to load more items or the growing button is displayed at the top.

<b>Note:</b> If this option is active, there should not be any other control than <code>sap.m.List</code> inside its <code>ScollContainer</code>.
    */
    var Upwards= "Upwards";
}
