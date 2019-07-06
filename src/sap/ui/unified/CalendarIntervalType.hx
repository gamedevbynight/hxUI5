package sap.ui.unified;

@:native("sap.ui.unified.CalendarIntervalType")
@:enum extern abstract CalendarIntervalType(String)
{
    /**
    * Intervals have the size of one day.
    */
    var Day= "Day";
    /**
    * Intervals have the size of one hour.
    */
    var Hour= "Hour";
    /**
    * Intervals have the size of one month.
    */
    var Month= "Month";
}
