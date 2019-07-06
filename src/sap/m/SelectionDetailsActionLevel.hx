package sap.m;

@:native("sap.m.SelectionDetailsActionLevel")
@:enum extern abstract SelectionDetailsActionLevel(String)
{
    /**
    * ActionGroup on SelectionDetails list level.
    */
    var Group= "Group";
    /**
    * Action on SelectionDetailsItem level.
    */
    var Item= "Item";
    /**
    * Action on SelectionDetails list level.
    */
    var List= "List";
}
