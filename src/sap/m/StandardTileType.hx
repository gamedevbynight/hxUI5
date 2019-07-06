package sap.m;

@:native("sap.m.StandardTileType")
@:enum extern abstract StandardTileType(String)
{
    /**
    * Tile representing that something needs to be created
    */
    var Create= "Create";
    /**
    * Monitor tile
    */
    var Monitor= "Monitor";
    /**
    * Default type
    */
    var None= "None";
}
