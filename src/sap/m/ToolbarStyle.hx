package sap.m;

@:native("sap.m.ToolbarStyle")
@:enum extern abstract ToolbarStyle(String)
{
    /**
    * Simplified visual style dependent on the used theme.

<b>Note:</b> For the Belize themes, the <code>sap.m.Toolbar</code> is displayed with no border.
    */
    var Clear= "Clear";
    /**
    * Default visual style dependent on the used theme.
    */
    var Standard= "Standard";
}
