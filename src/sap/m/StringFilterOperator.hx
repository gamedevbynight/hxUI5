package sap.m;

@:native("sap.m.StringFilterOperator")
@:enum extern abstract StringFilterOperator(String)
{
    /**
    * Checks if any word in the text starts with the search string.
    */
    var AnyWordStartsWith= "AnyWordStartsWith";
    /**
    * Checks if the text contains the search string.
    */
    var Contains= "Contains";
    /**
    * Checks if the text is equal with the search string.
    */
    var Equals= "Equals";
    /**
    * Checks if the text starts with the search string.
    */
    var StartsWith= "StartsWith";
}
