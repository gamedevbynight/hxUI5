package sap.m;

@:native("sap.m.FacetFilterListDataType")
@:enum extern abstract FacetFilterListDataType(String)
{
    /**
    * An input control for specifying a Boolean value
    */
    var Boolean= "Boolean";
    /**
    * An input control for specifying a date value. The user can select a month, day of the month, and year.
    */
    var Date= "Date";
    /**
    * An input control for specifying a date and time value. The user can select a month, day of the month, year, and time of day.
    */
    var DateTime= "DateTime";
    /**
    * An input control for specifying a Float value
    */
    var Float= "Float";
    /**
    * >An input control for specifying an Integer value
    */
    var Integer= "Integer";
    /**
    * An input control for specifying a String value
    */
    var String= "String";
    /**
    * An input control for specifying a time value. The user can select the hour, minute, and optionally AM or PM.
    */
    var Time= "Time";
}
