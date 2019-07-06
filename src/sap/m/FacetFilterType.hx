package sap.m;

@:native("sap.m.FacetFilterType")
@:enum extern abstract FacetFilterType(String)
{
    /**
    * Forces FacetFilter to display in light mode.
    */
    var Light= "Light";
    /**
    * Forces FacetFilter to display facet lists as a row of buttons, one button per facet.

The FacetFilter will automatically adapt to the Light type when it detects smart phone sized displays.
    */
    var Simple= "Simple";
}
