package sap.m;

@:native("sap.m.SlideTile")

/**
* The control that displays multiple GenericTile controls as changing slides.
*/
extern class SlideTile extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:SlideTileArgs):Void {})
	public function new(?mSettings:SlideTileArgs):Void;

	/**
	* Adds some tile to the aggregation {@link #getTiles tiles}.
	* @param	oTile The tile to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addTile( oTile:sap.m.GenericTile):sap.m.SlideTile;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.m.SlideTile</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SlideTile</code> itself.

The event is fired when the user chooses the tile. The event is available only in Actions scope.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SlideTile</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SlideTile;

	/**
	* Binds aggregation {@link #getTiles tiles} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindTiles( oBindingInfo:Dynamic):sap.m.SlideTile;

	/**
	* Destroys all the tiles in the aggregation {@link #getTiles tiles}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyTiles( ):sap.m.SlideTile;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.m.SlideTile</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SlideTile;

	/**
	* Creates a new subclass of class sap.m.SlideTile with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getDisplayTime displayTime}.

The time of the slide display in milliseconds.

Default value is <code>5000</code>.
	* @return	Value of property <code>displayTime</code>
	*/
	public function getDisplayTime( ):Int;

	/**
	* Returns a metadata object for class sap.m.SlideTile.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getScope scope}.

Changes the visualization in order to enable additional actions with the SlideTile control.

Default value is <code>Display</code>.
	* @return	Value of property <code>scope</code>
	*/
	public function getScope( ):sap.m.GenericTileScope;

	/**
	* Gets current value of property {@link #getSizeBehavior sizeBehavior}.

If set to <code>TileSizeBehavior.Small</code>, the tile size is the same as it would be on a small-screened phone (374px wide and lower), regardless of the screen size of the actual device being used. If set to <code>TileSizeBehavior.Responsive</code>, the tile size adapts to the size of the screen. This property has to be set consistently for the <code>SlideTile</code> along with all its inner <code>GenericTile</code> elements, so that they match one another visually.

Default value is <code>Responsive</code>.
	* @return	Value of property <code>sizeBehavior</code>
	*/
	public function getSizeBehavior( ):sap.m.TileSizeBehavior;

	/**
	* Gets content of aggregation {@link #getTiles tiles}.

The set of Generic Tiles to be shown in the control.
	* @return	null
	*/
	public function getTiles( ):Array<sap.m.GenericTile>;

	/**
	* Gets current value of property {@link #getTransitionTime transitionTime}.

The time of the slide changing in milliseconds.

Default value is <code>500</code>.
	* @return	Value of property <code>transitionTime</code>
	*/
	public function getTransitionTime( ):Int;

	/**
	* Gets current value of property {@link #getWidth width}.

Width of the control.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.m.GenericTile</code> in the aggregation {@link #getTiles tiles}. and returns its index if found or -1 otherwise.
	* @param	oTile The tile whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfTile( oTile:sap.m.GenericTile):Int;

	/**
	* Inserts a tile into the aggregation {@link #getTiles tiles}.
	* @param	oTile The tile to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the tile should be inserted at; for a negative value of <code>iIndex</code>, the tile is inserted at position 0; for a value greater than the current size of the aggregation, the tile is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertTile( oTile:sap.m.GenericTile, iIndex:Int):sap.m.SlideTile;

	/**
	* Removes all the controls from the aggregation {@link #getTiles tiles}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllTiles( ):Array<sap.m.GenericTile>;
	@:overload( function(vTile:Int):sap.m.GenericTile{ })
	@:overload( function(vTile:String):sap.m.GenericTile{ })

	/**
	* Removes a tile from the aggregation {@link #getTiles tiles}.
	* @param	vTile The tile to remove or its index or id
	* @return	The removed tile or <code>null</code>
	*/
	public function removeTile( vTile:sap.m.GenericTile):sap.m.GenericTile;

	/**
	* Sets a new value for property {@link #getDisplayTime displayTime}.

The time of the slide display in milliseconds.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>5000</code>.
	* @param	iDisplayTime New value for property <code>displayTime</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDisplayTime( ?iDisplayTime:Int):sap.m.SlideTile;

	/**
	* Sets a new value for property {@link #getScope scope}.

Changes the visualization in order to enable additional actions with the SlideTile control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Display</code>.
	* @param	sScope New value for property <code>scope</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setScope( ?sScope:sap.m.GenericTileScope):sap.m.SlideTile;

	/**
	* Sets a new value for property {@link #getSizeBehavior sizeBehavior}.

If set to <code>TileSizeBehavior.Small</code>, the tile size is the same as it would be on a small-screened phone (374px wide and lower), regardless of the screen size of the actual device being used. If set to <code>TileSizeBehavior.Responsive</code>, the tile size adapts to the size of the screen. This property has to be set consistently for the <code>SlideTile</code> along with all its inner <code>GenericTile</code> elements, so that they match one another visually.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Responsive</code>.
	* @param	sSizeBehavior New value for property <code>sizeBehavior</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSizeBehavior( ?sSizeBehavior:sap.m.TileSizeBehavior):sap.m.SlideTile;

	/**
	* Sets a new value for property {@link #getTransitionTime transitionTime}.

The time of the slide changing in milliseconds.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>500</code>.
	* @param	iTransitionTime New value for property <code>transitionTime</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTransitionTime( ?iTransitionTime:Int):sap.m.SlideTile;

	/**
	* Sets a new value for property {@link #getWidth width}.

Width of the control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.m.SlideTile;

	/**
	* Unbinds aggregation {@link #getTiles tiles} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindTiles( ):sap.m.SlideTile;
}

typedef SlideTileArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The time of the slide display in milliseconds.
	*/
	@:optional var displayTime:haxe.extern.EitherType<String,Int>;

	/**
	* The time of the slide changing in milliseconds.
	*/
	@:optional var transitionTime:haxe.extern.EitherType<String,Int>;

	/**
	* Changes the visualization in order to enable additional actions with the SlideTile control.
	*/
	@:optional var scope:haxe.extern.EitherType<String,sap.m.GenericTileScope>;

	/**
	* If set to <code>TileSizeBehavior.Small</code>, the tile size is the same as it would be on a small-screened phone (374px wide and lower), regardless of the screen size of the actual device being used. If set to <code>TileSizeBehavior.Responsive</code>, the tile size adapts to the size of the screen. This property has to be set consistently for the <code>SlideTile</code> along with all its inner <code>GenericTile</code> elements, so that they match one another visually.
	*/
	@:optional var sizeBehavior:haxe.extern.EitherType<String,sap.m.TileSizeBehavior>;

	/**
	* Width of the control.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

    /**
    * The set of Generic Tiles to be shown in the control.
    */
	@:optional var tiles:Array<haxe.extern.EitherType<String,sap.m.GenericTile>>;

    /**
    * The pause/play icon that is being used to display the pause/play state of the control.
    */
	@:optional var _pausePlayIcon:haxe.extern.EitherType<String,sap.ui.core.Icon>;

	/**
	* The event is fired when the user chooses the tile. The event is available only in Actions scope.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
