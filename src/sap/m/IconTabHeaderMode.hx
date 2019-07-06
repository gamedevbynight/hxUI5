package sap.m;

@:native("sap.m.IconTabHeaderMode")
@:enum extern abstract IconTabHeaderMode(String)
{
    /**
    * Inline. In this mode when the <code>count</code> and the <code>text</code> are set, they are displayed in one line.
    */
    var Inline= "Inline";
    /**
    * Standard. In this mode when the <code>count</code> and the <code>text</code> are set, they are displayed in two separate lines.
    */
    var Standard= "Standard";
}
