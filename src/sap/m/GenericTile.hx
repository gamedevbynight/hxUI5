package sap.m;

@:native("sap.m.GenericTile")

/**
* Displays header, subheader, and a customizable main area in a tile format. Since 1.44, also an in-line format which contains only header and subheader is supported.
*/
extern class GenericTile extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:GenericTileArgs):Void {})
	public function new(?mSettings:GenericTileArgs):Void;

	/**
	* Adds some tileContent to the aggregation {@link #getTileContent tileContent}.
	* @param	oTileContent The tileContent to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addTileContent( oTileContent:sap.m.TileContent):sap.m.GenericTile;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.m.GenericTile</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.GenericTile</code> itself.

The event is triggered when the user presses the tile.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.GenericTile</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.GenericTile;

	/**
	* Binds aggregation {@link #getTileContent tileContent} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindTileContent( oBindingInfo:Dynamic):sap.m.GenericTile;

	/**
	* Destroys all the tileContent in the aggregation {@link #getTileContent tileContent}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyTileContent( ):sap.m.GenericTile;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.m.GenericTile</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.GenericTile;

	/**
	* Creates a new subclass of class sap.m.GenericTile with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAriaLabel ariaLabel}.

Additional description for aria-label. The aria-label is rendered before the standard aria-label.
	* @return	Value of property <code>ariaLabel</code>
	*/
	public function getAriaLabel( ):String;

	/**
	* Gets current value of property {@link #getBackgroundImage backgroundImage}.

The URI of the background image.
	* @return	Value of property <code>backgroundImage</code>
	*/
	public function getBackgroundImage( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getFailedText failedText}.

The message that appears when the control is in the Failed state.
	* @return	Value of property <code>failedText</code>
	*/
	public function getFailedText( ):String;

	/**
	* Gets current value of property {@link #getFrameType frameType}.

The frame type: OneByOne or TwoByOne. Set to OneByOne as default if no property is defined or set to Auto by the app.

Default value is <code>OneByOne</code>.
	* @return	Value of property <code>frameType</code>
	*/
	public function getFrameType( ):sap.m.FrameType;

	/**
	* Gets current value of property {@link #getHeader header}.

The header of the tile.
	* @return	Value of property <code>header</code>
	*/
	public function getHeader( ):String;

	/**
	* Gets current value of property {@link #getHeaderImage headerImage}.

The image to be displayed as a graphical element within the header. This can be an image or an icon from the icon font.
	* @return	Value of property <code>headerImage</code>
	*/
	public function getHeaderImage( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getImageDescription imageDescription}.

Description of a header image that is used in the tooltip.
	* @return	Value of property <code>imageDescription</code>
	*/
	public function getImageDescription( ):String;

	/**
	* Returns a metadata object for class sap.m.GenericTile.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getMode mode}.

The mode of the GenericTile.

Default value is <code>ContentMode</code>.
	* @return	Value of property <code>mode</code>
	*/
	public function getMode( ):sap.m.GenericTileMode;

	/**
	* Gets current value of property {@link #getScope scope}.

Changes the visualization in order to enable additional actions with the Generic Tile.

Default value is <code>Display</code>.
	* @return	Value of property <code>scope</code>
	*/
	public function getScope( ):sap.m.GenericTileScope;

	/**
	* Gets current value of property {@link #getSizeBehavior sizeBehavior}.

If set to <code>TileSizeBehavior.Small</code>, the tile size is the same as it would be on a small-screened phone (374px wide and lower), regardless of the screen size of the actual device being used. If set to <code>TileSizeBehavior.Responsive</code>, the tile size adapts to the size of the screen.

Default value is <code>Responsive</code>.
	* @return	Value of property <code>sizeBehavior</code>
	*/
	public function getSizeBehavior( ):sap.m.TileSizeBehavior;

	/**
	* Gets current value of property {@link #getState state}.

The load status.

Default value is <code>Loaded</code>.
	* @return	Value of property <code>state</code>
	*/
	public function getState( ):sap.m.LoadState;

	/**
	* Gets current value of property {@link #getSubheader subheader}.

The subheader of the tile.
	* @return	Value of property <code>subheader</code>
	*/
	public function getSubheader( ):String;

	/**
	* Gets content of aggregation {@link #getTileContent tileContent}.

The content of the tile.
	* @return	null
	*/
	public function getTileContent( ):Array<sap.m.TileContent>;

	/**
	* Gets current value of property {@link #getUrl url}.

Renders the given link as root element and therefore enables the open in new tab / window functionality
	* @return	Value of property <code>url</code>
	*/
	public function getUrl( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getWidth width}.

Width of the control.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getWrappingType wrappingType}.

Defines the type of text wrapping to be used (hyphenated or normal).

Default value is <code>Normal</code>.
	* @return	Value of property <code>wrappingType</code>
	*/
	public function getWrappingType( ):sap.m.WrappingType;

	/**
	* Checks for the provided <code>sap.m.TileContent</code> in the aggregation {@link #getTileContent tileContent}. and returns its index if found or -1 otherwise.
	* @param	oTileContent The tileContent whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfTileContent( oTileContent:sap.m.TileContent):Int;

	/**
	* Inserts a tileContent into the aggregation {@link #getTileContent tileContent}.
	* @param	oTileContent The tileContent to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the tileContent should be inserted at; for a negative value of <code>iIndex</code>, the tileContent is inserted at position 0; for a value greater than the current size of the aggregation, the tileContent is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertTileContent( oTileContent:sap.m.TileContent, iIndex:Int):sap.m.GenericTile;

	/**
	* Removes all the controls from the aggregation {@link #getTileContent tileContent}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllTileContent( ):Array<sap.m.TileContent>;
	@:overload( function(vTileContent:Int):sap.m.TileContent{ })
	@:overload( function(vTileContent:String):sap.m.TileContent{ })

	/**
	* Removes a tileContent from the aggregation {@link #getTileContent tileContent}.
	* @param	vTileContent The tileContent to remove or its index or id
	* @return	The removed tileContent or <code>null</code>
	*/
	public function removeTileContent( vTileContent:sap.m.TileContent):sap.m.TileContent;

	/**
	* Sets a new value for property {@link #getAriaLabel ariaLabel}.

Additional description for aria-label. The aria-label is rendered before the standard aria-label.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sAriaLabel New value for property <code>ariaLabel</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAriaLabel( sAriaLabel:String):sap.m.GenericTile;

	/**
	* Sets a new value for property {@link #getBackgroundImage backgroundImage}.

The URI of the background image.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sBackgroundImage New value for property <code>backgroundImage</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundImage( sBackgroundImage:sap.ui.core.URI):sap.m.GenericTile;

	/**
	* Sets a new value for property {@link #getFailedText failedText}.

The message that appears when the control is in the Failed state.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sFailedText New value for property <code>failedText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFailedText( sFailedText:String):sap.m.GenericTile;

	/**
	* Sets a new value for property {@link #getFrameType frameType}.

The frame type: OneByOne or TwoByOne. Set to OneByOne as default if no property is defined or set to Auto by the app.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>OneByOne</code>.
	* @param	sFrameType New value for property <code>frameType</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFrameType( ?sFrameType:sap.m.FrameType):sap.m.GenericTile;

	/**
	* Sets a new value for property {@link #getHeader header}.

The header of the tile.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHeader New value for property <code>header</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeader( sHeader:String):sap.m.GenericTile;

	/**
	* Sets a new value for property {@link #getHeaderImage headerImage}.

The image to be displayed as a graphical element within the header. This can be an image or an icon from the icon font.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHeaderImage New value for property <code>headerImage</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeaderImage( sHeaderImage:sap.ui.core.URI):sap.m.GenericTile;

	/**
	* Sets a new value for property {@link #getImageDescription imageDescription}.

Description of a header image that is used in the tooltip.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sImageDescription New value for property <code>imageDescription</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setImageDescription( sImageDescription:String):sap.m.GenericTile;

	/**
	* Sets a new value for property {@link #getMode mode}.

The mode of the GenericTile.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>ContentMode</code>.
	* @param	sMode New value for property <code>mode</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMode( ?sMode:sap.m.GenericTileMode):sap.m.GenericTile;

	/**
	* Sets a new value for property {@link #getScope scope}.

Changes the visualization in order to enable additional actions with the Generic Tile.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Display</code>.
	* @param	sScope New value for property <code>scope</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setScope( ?sScope:sap.m.GenericTileScope):sap.m.GenericTile;

	/**
	* Sets a new value for property {@link #getSizeBehavior sizeBehavior}.

If set to <code>TileSizeBehavior.Small</code>, the tile size is the same as it would be on a small-screened phone (374px wide and lower), regardless of the screen size of the actual device being used. If set to <code>TileSizeBehavior.Responsive</code>, the tile size adapts to the size of the screen.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Responsive</code>.
	* @param	sSizeBehavior New value for property <code>sizeBehavior</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSizeBehavior( ?sSizeBehavior:sap.m.TileSizeBehavior):sap.m.GenericTile;

	/**
	* Sets a new value for property {@link #getState state}.

The load status.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Loaded</code>.
	* @param	sState New value for property <code>state</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setState( ?sState:sap.m.LoadState):sap.m.GenericTile;

	/**
	* Sets a new value for property {@link #getSubheader subheader}.

The subheader of the tile.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sSubheader New value for property <code>subheader</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSubheader( sSubheader:String):sap.m.GenericTile;

	/**
	* Sets a new value for property {@link #getUrl url}.

Renders the given link as root element and therefore enables the open in new tab / window functionality

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sUrl New value for property <code>url</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUrl( sUrl:sap.ui.core.URI):sap.m.GenericTile;

	/**
	* Sets a new value for property {@link #getWidth width}.

Width of the control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.m.GenericTile;

	/**
	* Sets a new value for property {@link #getWrappingType wrappingType}.

Defines the type of text wrapping to be used (hyphenated or normal).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Normal</code>.
	* @param	sWrappingType New value for property <code>wrappingType</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWrappingType( ?sWrappingType:sap.m.WrappingType):sap.m.GenericTile;

	/**
	* Unbinds aggregation {@link #getTileContent tileContent} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindTileContent( ):sap.m.GenericTile;
}

typedef GenericTileArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The mode of the GenericTile.
	*/
	@:optional var mode:haxe.extern.EitherType<String,sap.m.GenericTileMode>;

	/**
	* The header of the tile.
	*/
	@:optional var header:String;

	/**
	* The subheader of the tile.
	*/
	@:optional var subheader:String;

	/**
	* The message that appears when the control is in the Failed state.
	*/
	@:optional var failedText:String;

	/**
	* The frame type: OneByOne or TwoByOne. Set to OneByOne as default if no property is defined or set to Auto by the app.
	*/
	@:optional var frameType:haxe.extern.EitherType<String,sap.m.FrameType>;

	/**
	* The URI of the background image.
	*/
	@:optional var backgroundImage:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* The image to be displayed as a graphical element within the header. This can be an image or an icon from the icon font.
	*/
	@:optional var headerImage:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* The load status.
	*/
	@:optional var state:haxe.extern.EitherType<String,sap.m.LoadState>;

	/**
	* Description of a header image that is used in the tooltip.
	*/
	@:optional var imageDescription:String;

	/**
	* Changes the visualization in order to enable additional actions with the Generic Tile.
	*/
	@:optional var scope:haxe.extern.EitherType<String,sap.m.GenericTileScope>;

	/**
	* If set to <code>TileSizeBehavior.Small</code>, the tile size is the same as it would be on a small-screened phone (374px wide and lower), regardless of the screen size of the actual device being used. If set to <code>TileSizeBehavior.Responsive</code>, the tile size adapts to the size of the screen.
	*/
	@:optional var sizeBehavior:haxe.extern.EitherType<String,sap.m.TileSizeBehavior>;

	/**
	* Additional description for aria-label. The aria-label is rendered before the standard aria-label.
	*/
	@:optional var ariaLabel:String;

	/**
	* Renders the given link as root element and therefore enables the open in new tab / window functionality
	*/
	@:optional var url:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Defines the type of text wrapping to be used (hyphenated or normal).
	*/
	@:optional var wrappingType:haxe.extern.EitherType<String,sap.m.WrappingType>;

	/**
	* Width of the control.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

    /**
    * The content of the tile.
    */
	@:optional var tileContent:Array<haxe.extern.EitherType<String,sap.m.TileContent>>;

    /**
    * The hidden aggregation for the title.
    */
	@:optional var _titleText:haxe.extern.EitherType<String,sap.m.Text>;

    /**
    * The hidden aggregation for the message in the failed state.
    */
	@:optional var _failedMessageText:haxe.extern.EitherType<String,sap.m.Text>;

	/**
	* The event is triggered when the user presses the tile.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
