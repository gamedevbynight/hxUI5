package sap.m;

@:native("sap.m.GenericTileMode")
@:enum extern abstract GenericTileMode(String)
{
    /**
    * Default mode (Two lines for the header and one line for the subtitle).
    */
    var ContentMode= "ContentMode";
    /**
    * Header mode (Four lines for the header and one line for the subtitle).
    */
    var HeaderMode= "HeaderMode";
    /**
    * Line mode (Implemented for both, cozy and compact densities).

Generic Tile is displayed as in-line element, header and subheader are displayed in one line. In case the texts need more than one line, the representation depends on the used density. <b>Cozy:</b> The text will be truncated and the full text is shown in a tooltip as soon as the tile is hovered (desktop only). <b>Compact:</b> Header and subheader are rendered continuously spanning multiple lines, no tooltip is provided).
    */
    var LineMode= "LineMode";
}
