package sap.m;

@:native("sap.m.CustomTile")

/**
* Use the CustomTile control to display application specific content in the Tile control. The tile width is 8.5em and height is 10em.
*/
extern class CustomTile extends sap.m.Tile
{
	@:overload(function(?sId:String, ?mSettings:CustomTileArgs):Void {})
	public function new(?mSettings:CustomTileArgs):Void;

	/**
	* Destroys the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.m.CustomTile;

	/**
	* Creates a new subclass of class sap.m.CustomTile with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.Tile.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets content of aggregation {@link #getContent content}.

Defines the content of the CustomTile.
	* @return	null
	*/
	public function getContent( ):sap.ui.core.Control;

	/**
	* Returns a metadata object for class sap.m.CustomTile.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Sets the aggregated {@link #getContent content}.
	* @param	oContent The content to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContent( oContent:sap.ui.core.Control):sap.m.CustomTile;
}

typedef CustomTileArgs = sap.m.Tile.TileArgs & {

    /**
    * Defines the content of the CustomTile.
    */
	@:optional var content:haxe.extern.EitherType<String,sap.ui.core.Control>;
}
