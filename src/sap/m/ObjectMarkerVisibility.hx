package sap.m;

@:native("sap.m.ObjectMarkerVisibility")
@:enum extern abstract ObjectMarkerVisibility(String)
{
    /**
    * Shows icon and text
    */
    var IconAndText= "IconAndText";
    /**
    * Shows only icon
    */
    var IconOnly= "IconOnly";
    /**
    * Shows only text
    */
    var TextOnly= "TextOnly";
}
