package sap.m;

@:native("sap.m.ListSeparators")
@:enum extern abstract ListSeparators(String)
{
    /**
    * Separators between the items including the last and the first one.
    */
    var All= "All";
    /**
    * Separators between the items. <b>Note:</b> This enumeration depends on the theme.
    */
    var Inner= "Inner";
    /**
    * No item separators.
    */
    var None= "None";
}
