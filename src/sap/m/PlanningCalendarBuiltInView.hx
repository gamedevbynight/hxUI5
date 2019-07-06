package sap.m;

@:native("sap.m.PlanningCalendarBuiltInView")
@:enum extern abstract PlanningCalendarBuiltInView(String)
{
    /**
    * Represents the key of the built-in view, in which the intervals have the size of one day.
    */
    var Day= "Day";
    /**
    * Represents the key of the built-in view, in which the intervals have the size of one hour.
    */
    var Hour= "Hour";
    /**
    * Represents the key of the built-in view, in which the intervals have the size of one month.
    */
    var Month= "Month";
    /**
    * Represents the key of the built-in view, in which the intervals have the size of one day where 31 days are displayed, starting with the first day of the month.
    */
    var OneMonth= "OneMonth";
    /**
    * Represents the key of the built-in view, in which the intervals have the size of one day where 7 days are displayed, starting with the first day of the week.
    */
    var Week= "Week";
}
