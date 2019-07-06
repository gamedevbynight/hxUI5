package sap.ui.commons;

@:native("sap.ui.commons.PaginatorEvent")
@:enum extern abstract PaginatorEvent(String)
{
    /**
    * First page event
    */
    var First= "First";
    /**
    * Go to page event
    */
    var Goto= "Goto";
    /**
    * Last page event
    */
    var Last= "Last";
    /**
    * Next page event
    */
    var Next= "Next";
    /**
    * Previous page event
    */
    var Previous= "Previous";
}
