package sap.ui.commons;

@:native("sap.ui.commons.TreeSelectionMode")
@:enum extern abstract TreeSelectionMode(String)
{
    /**
    * Behavior of the former Tree. It is possible to select a plurality of nodes via the API.
    */
    var Legacy= "Legacy";
    /**
    * Select multiple rows at a time.
    */
    var Multi= "Multi";
    /**
    * No rows can be selected.
    */
    var None= "None";
    /**
    * Select one row at a time.
    */
    var Single= "Single";
}
