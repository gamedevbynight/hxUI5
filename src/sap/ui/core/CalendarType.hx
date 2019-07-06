package sap.ui.core;

@:native("sap.ui.core.CalendarType")
@:enum extern abstract CalendarType(String)
{
    /**
    * The Thai buddhist calendar
    */
    var Buddhist= "Buddhist";
    /**
    * The Gregorian calendar
    */
    var Gregorian= "Gregorian";
    /**
    * The Islamic calendar
    */
    var Islamic= "Islamic";
    /**
    * The Japanese emperor calendar
    */
    var Japanese= "Japanese";
    /**
    * The Persian Jalali calendar
    */
    var Persian= "Persian";
}
