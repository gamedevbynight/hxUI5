package sap.ui.core.routing;

@:native("sap.ui.core.routing.HistoryDirection")
@:enum extern abstract HistoryDirection(String)
{
    /**
    * The page has already been navigated to and it was the predecessor of the previous page.
    */
    var Backwards= "Backwards";
    /**
    * The page has already been navigated to and it was the successor of the previous page.
    */
    var Forwards= "Forwards";
    /**
    * A new entry is added to the history.
    */
    var NewEntry= "NewEntry";
    /**
    * A navigation took place, but it could be any of the other three states.
    */
    var Unknown= "Unknown";
}
