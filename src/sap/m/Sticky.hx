package sap.m;

@:native("sap.m.Sticky")
@:enum extern abstract Sticky(String)
{
    /**
    * The column headers remain in a fixed position.
    */
    var ColumnHeaders= "ColumnHeaders";
    /**
    * The header toolbar remains in a fixed position.
    */
    var HeaderToolbar= "HeaderToolbar";
    /**
    * The info toolbar remains in a fixed position.
    */
    var InfoToolbar= "InfoToolbar";
}
