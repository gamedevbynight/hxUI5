package sap.m;

@:native("sap.m.GenericTileScope")
@:enum extern abstract GenericTileScope(String)
{
    /**
    * More action scope (Only the More icon is added to the tile)
    */
    var ActionMore= "ActionMore";
    /**
    * Remove action scope (Only the Remove icon is added to the tile)
    */
    var ActionRemove= "ActionRemove";
    /**
    * Action scope (Possible footer and Error State information is overlaid, "Remove" and "More" icons are added to the tile).
    */
    var Actions= "Actions";
    /**
    * Default scope (The default scope of the tile, no action icons are rendered).
    */
    var Display= "Display";
}
