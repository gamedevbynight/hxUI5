package sap.m;

@:native("sap.m.DateTimeInputType")
@:enum extern abstract DateTimeInputType(String)
{
    /**
    * An input control for specifying a date value. The user can select a month, day of the month, and year.
    */
    var Date= "Date";
    /**
    * An input control for specifying a date and time value. The user can select a month, day of the month, year, and time of day.
    */
    var DateTime= "DateTime";
    /**
    * An input control for specifying a time value. The user can select the hour, minute, and optionally AM or PM.
    */
    var Time= "Time";
}
