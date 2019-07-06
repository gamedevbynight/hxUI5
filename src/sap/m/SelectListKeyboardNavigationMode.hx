package sap.m;

@:native("sap.m.SelectListKeyboardNavigationMode")
@:enum extern abstract SelectListKeyboardNavigationMode(String)
{
    /**
    * Keyboard navigation is delimited at the last item or first item of the list.
    */
    var Delimited= "Delimited";
    /**
    * Keyboard navigation is disabled.
    */
    var None= "None";
}
