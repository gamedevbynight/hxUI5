package sap.ui.table;

@:native("sap.ui.table.SelectionMode")
@:enum extern abstract SelectionMode(String)
{
    /**
    * Select multiple rows at a time.
    */
    var Multi= "Multi";
    /**
    * Select multiple rows at a time (toggle behavior).
    */
    var MultiToggle= "MultiToggle";
    /**
    * No rows can be selected.
    */
    var None= "None";
    /**
    * Select one row at a time.
    */
    var Single= "Single";
}
