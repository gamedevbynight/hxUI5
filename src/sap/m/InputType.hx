package sap.m;

@:native("sap.m.InputType")
@:enum extern abstract InputType(String)
{
    /**
    * An input control for specifying a date value. The user can select a month, day of the month, and year.
    */
    var Date= "Date";
    /**
    * An input control for specifying a date and time value. The user can select a month, day of the month, year, and time of day.
    */
    var Datetime= "Datetime";
    /**
    * An input control for specifying a date and time value where the format depends on the locale.
    */
    var DatetimeLocale= "DatetimeLocale";
    /**
    * A text field for specifying an email address. Brings up a keyboard optimized for email address entry.
    */
    var Email= "Email";
    /**
    * An input control for selecting a month.
    */
    var Month= "Month";
    /**
    * A text field for specifying a number. Brings up a number pad keyboard. Specifying an input type of \d* or [0-9]* is equivalent to using this type.
    */
    var Number= "Number";
    /**
    * Password input where the user entry cannot be seen.
    */
    var Password= "Password";
    /**
    * A text field for specifying a phone number. Brings up a phone pad keyboard.
    */
    var Tel= "Tel";
    /**
    * default (text)
    */
    var Text= "Text";
    /**
    * An input control for specifying a time value. The user can select the hour, minute, and optionally AM or PM.
    */
    var Time= "Time";
    /**
    * A text field for specifying a URL. Brings up a keyboard optimized for URL entry.
    */
    var Url= "Url";
    /**
    * An input control for selecting a week.
    */
    var Week= "Week";
}
