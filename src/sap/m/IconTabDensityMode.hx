package sap.m;

@:native("sap.m.IconTabDensityMode")
@:enum extern abstract IconTabDensityMode(String)
{
    /**
    * Compact. In this mode the tabs will be set explicitly to compact mode independent of what mode is applied globally.
    */
    var Compact= "Compact";
    /**
    * Cozy. In this mode the tabs will be set explicitly to compact mode independent of what mode is applied globally.
    */
    var Cozy= "Cozy";
    /**
    * Inherit. In this mode the global configuration of the density mode will be applied.
    */
    var Inherit= "Inherit";
}
