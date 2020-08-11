package sap.m;

@:native("sap.m.Tile")

/**
* A tile to be displayed in the tile container. Use this tile as the base class for specialized tile implementations. Use the renderer _addOuterClass methods to add a style class to the main surface of the Tile. In this class set the background color, gradients or background images. Instead of implementing the default render method in the renderer, implement your content HTML in the _renderContent method of the specialized tile.
*/
extern class Tile extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:TileArgs):Void {})
	public function new(?mSettings:TileArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.m.Tile</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Tile</code> itself.

Tap event is raised if the user taps or clicks the control.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Tile</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Tile;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.m.Tile</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Tile;

	/**
	* Creates a new subclass of class sap.m.Tile with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.m.Tile.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getRemovable removable}.

Determines whether the tile is movable within the surrounding tile container. The remove event is fired by the tile container.

Default value is <code>true</code>.
	* @return	Value of property <code>removable</code>
	*/
	public function getRemovable( ):Bool;

	/**
	* Sets a new value for property {@link #getRemovable removable}.

Determines whether the tile is movable within the surrounding tile container. The remove event is fired by the tile container.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bRemovable New value for property <code>removable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRemovable( ?bRemovable:Bool):sap.m.Tile;
}

typedef TileArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines whether the tile is movable within the surrounding tile container. The remove event is fired by the tile container.
	*/
	@:optional var removable:haxe.extern.EitherType<String,Bool>;

	/**
	* Tap event is raised if the user taps or clicks the control.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
