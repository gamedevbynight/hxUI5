package sap.m;

@:native("sap.m.GenericTileScope")
@:enum extern abstract GenericTileScope(String)
{
    /**
    * Action scope (Possible footer and Error State information is overlaid, "Remove" and "More" icons are added to the tile).
    */
    var Actions= "Actions";
    /**
    * Default scope (The default scope of the tile, no action icons are rendered).
    */
    var Display= "Display";
}
