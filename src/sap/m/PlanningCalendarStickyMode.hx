package sap.m;

@:native("sap.m.PlanningCalendarStickyMode")
@:enum extern abstract PlanningCalendarStickyMode(String)
{
    /**
    * Actions toolbar, navigation toolbar and the column headers will be sticky.
    */
    var All= "All";
    /**
    * Only the navigation toolbar and column headers will be sticky.
    */
    var NavBarAndColHeaders= "NavBarAndColHeaders";
    /**
    * Nothing will stick at the top.
    */
    var None= "None";
}
