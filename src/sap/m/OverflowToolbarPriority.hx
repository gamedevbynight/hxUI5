package sap.m;

@:native("sap.m.OverflowToolbarPriority")
@:enum extern abstract OverflowToolbarPriority(String)
{
    /**
    * Deprecated - Use <code>sap.m.OverflowToolbarPriority.AlwaysOverflow</code> instead
    */
    var Always= "Always";
    /**
    * Forces <code>OverflowToolbar</code> items to remain always in the overflow area.
    */
    var AlwaysOverflow= "AlwaysOverflow";
    /**
    * Items with priority <code>Disappear</code> overflow before the items with higher priority, such as <code>Low</code> and <code>High</code>, and remain hidden in the overflow area.
    */
    var Disappear= "Disappear";
    /**
    * Items with priority <code>High</code> overflow after the items with lower priority.
    */
    var High= "High";
    /**
    * Items with priority <code>Low</code> overflow before the items with higher priority, such as <code>High</code> priority items.
    */
    var Low= "Low";
    /**
    * Deprecated - Use <code>sap.m.OverflowToolbarPriority.NeverOverflow</code> instead.
    */
    var Never= "Never";
    /**
    * Forces <code>OverflowToolbar</code> items to remain always in the toolbar.
    */
    var NeverOverflow= "NeverOverflow";
}
