package sap.m;

@:native("sap.m.TileContainer")

/**
* A container that arranges same-size tiles nicely on carousel pages.
*/
extern class TileContainer extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:TileContainerArgs):Void {})
	public function new(?mSettings:TileContainerArgs):Void;

	/**
	* Adds a Tile to the end of the tiles collection.
	* @param	oTile The tile to add
	* @return	this pointer for chaining
	*/
	public function addTile( oTile:sap.m.Tile):sap.m.TileContainer;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:tileAdd tileAdd} event of this <code>sap.m.TileContainer</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.TileContainer</code> itself.

Fires when a Tile is added.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.TileContainer</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachTileAdd( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.TileContainer;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:tileDelete tileDelete} event of this <code>sap.m.TileContainer</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.TileContainer</code> itself.

Fires if a Tile is deleted in Edit mode.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.TileContainer</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachTileDelete( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.TileContainer;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:tileMove tileMove} event of this <code>sap.m.TileContainer</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.TileContainer</code> itself.

Fires if a Tile is moved.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.TileContainer</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachTileMove( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.TileContainer;

	/**
	* Deletes a Tile.
	* @param	oTile The tile to move
	* @return	this pointer for chaining
	*/
	public function deleteTile( oTile:sap.m.Tile):sap.m.TileContainer;

	/**
	* Destroys all the tiles in the aggregation {@link #getTiles tiles}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyTiles( ):sap.m.TileContainer;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:tileAdd tileAdd} event of this <code>sap.m.TileContainer</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachTileAdd( fnFunction:()->Void, ?oListener:Dynamic):sap.m.TileContainer;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:tileDelete tileDelete} event of this <code>sap.m.TileContainer</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachTileDelete( fnFunction:()->Void, ?oListener:Dynamic):sap.m.TileContainer;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:tileMove tileMove} event of this <code>sap.m.TileContainer</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachTileMove( fnFunction:()->Void, ?oListener:Dynamic):sap.m.TileContainer;

	/**
	* Creates a new subclass of class sap.m.TileContainer with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAllowAdd allowAdd}.

Determines whether the user is allowed to add Tiles in Edit mode (editable = true).
	* @return	Value of property <code>allowAdd</code>
	*/
	public function getAllowAdd( ):Bool;

	/**
	* Gets current value of property {@link #getEditable editable}.

Determines whether the TileContainer is editable so you can move, delete or add tiles.
	* @return	Value of property <code>editable</code>
	*/
	public function getEditable( ):Bool;

	/**
	* Gets current value of property {@link #getHeight height}.

Defines the height of the TileContainer in px.

Default value is <code>100%</code>.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.m.TileContainer.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Returns the index of the first Tile visible in the current page.
	* @return	The index of the first Tile that is visible in the current page
	*/
	public function getPageFirstTileIndex( ):Int;

	/**
	* Gets content of aggregation {@link #getTiles tiles}.

The Tiles to be displayed by the TileContainer.
	* @return	null
	*/
	public function getTiles( ):Array<sap.m.Tile>;

	/**
	* Gets current value of property {@link #getWidth width}.

Defines the width of the TileContainer in px.

Default value is <code>100%</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.m.Tile</code> in the aggregation {@link #getTiles tiles}. and returns its index if found or -1 otherwise.
	* @param	oTile The tile whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfTile( oTile:sap.m.Tile):Int;

	/**
	* Inserts a Tile to the given index.
	* @param	oTile The Tile to insert
	* @param	iIndex The new Tile position in the tiles aggregation
	* @return	this pointer for chaining
	*/
	public function insertTile( oTile:sap.m.Tile, iIndex:Int):sap.m.TileContainer;

	/**
	* Moves a given Tile to the given index.
	* @param	vTile The tile to move
	* @param	iNewIndex The new Tile position in the tiles aggregation
	* @return	this pointer for chaining
	*/
	public function moveTile( vTile:sap.m.Tile, iNewIndex:Int):sap.m.TileContainer;

	/**
	* Removes all the controls from the aggregation {@link #getTiles tiles}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllTiles( ):Array<sap.m.Tile>;
	@:overload( function(vTile:Int):sap.m.Tile{ })
	@:overload( function(vTile:String):sap.m.Tile{ })

	/**
	* Removes a tile from the aggregation {@link #getTiles tiles}.
	* @param	vTile The tile to remove or its index or id
	* @return	The removed tile or <code>null</code>
	*/
	public function removeTile( vTile:sap.m.Tile):sap.m.Tile;
	@:overload( function(vTile:sap.m.Tile, bAnimated:Bool, ?aVisibleTiles:Array<sap.m.Tile>):Void{ })

	/**
	* Scrolls to the page where the given Tile or tile index is included. Optionally this can be done animated or not. With IE9 the scroll is never animated.
	* @param	vTile The Tile or tile index to be scrolled into view
	* @param	bAnimated Whether the scroll should be animated
	* @param	aVisibleTiles optional list of visible tiles in order to avoid filtering them again.
	* @return	Void
	*/
	public function scrollIntoView( vTile:Int, bAnimated:Bool, ?aVisibleTiles:Array<sap.m.Tile>):Void;

	/**
	* Scrolls one page to the left.
	* @return	Void
	*/
	public function scrollLeft( ):Void;

	/**
	* Scrolls one page to the right.
	* @return	Void
	*/
	public function scrollRight( ):Void;

	/**
	* Sets a new value for property {@link #getAllowAdd allowAdd}.

Determines whether the user is allowed to add Tiles in Edit mode (editable = true).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	bAllowAdd New value for property <code>allowAdd</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAllowAdd( bAllowAdd:Bool):sap.m.TileContainer;

	/**
	* Sets the editable property to the TileContainer, allowing to move icons. This is currently also set with a long tap.
	* @param	bValue Whether the container is in edit mode or not
	* @return	this pointer for chaining
	*/
	public function setEditable( bValue:Bool):sap.m.TileContainer;

	/**
	* Sets a new value for property {@link #getHeight height}.

Defines the height of the TileContainer in px.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100%</code>.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( ?sHeight:sap.ui.core.CSSSize):sap.m.TileContainer;

	/**
	* Sets a new value for property {@link #getWidth width}.

Defines the width of the TileContainer in px.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100%</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.m.TileContainer;
}

typedef TileContainerArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the width of the TileContainer in px.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Defines the height of the TileContainer in px.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Determines whether the TileContainer is editable so you can move, delete or add tiles.
	*/
	@:optional var editable:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the user is allowed to add Tiles in Edit mode (editable = true).
	*/
	@:optional var allowAdd:haxe.extern.EitherType<String,Bool>;

    /**
    * The Tiles to be displayed by the TileContainer.
    */
	@:optional var tiles:Array<haxe.extern.EitherType<String,sap.m.Tile>>;

	/**
	* Fires when a Tile is added.
	*/
	@:optional var tileAdd:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fires if a Tile is deleted in Edit mode.
	*/
	@:optional var tileDelete:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fires if a Tile is moved.
	*/
	@:optional var tileMove:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
