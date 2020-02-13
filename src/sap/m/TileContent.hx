package sap.m;

@:native("sap.m.TileContent")

/**
* This control is used within the GenericTile control.
*/
extern class TileContent extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:TileContentArgs):Void {})
	public function new(?mSettings:TileContentArgs):Void;

	/**
	* Binds aggregation {@link #getContent content} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindContent( oBindingInfo:Dynamic):sap.m.TileContent;

	/**
	* Destroys the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.m.TileContent;

	/**
	* Creates a new subclass of class sap.m.TileContent with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getContent content}.

The switchable view that depends on the tile type.
	* @return	null
	*/
	public function getContent( ):sap.ui.core.Control;

	/**
	* Gets current value of property {@link #getDisabled disabled}.

Disables control if true.

Default value is <code>false</code>.
	* @return	Value of property <code>disabled</code>
	*/
	public function getDisabled( ):Bool;

	/**
	* Gets current value of property {@link #getFooter footer}.

The footer text of the tile.
	* @return	Value of property <code>footer</code>
	*/
	public function getFooter( ):String;

	/**
	* Gets current value of property {@link #getFooterColor footerColor}.

The semantic color of the footer.

Default value is <code>Neutral</code>.
	* @return	Value of property <code>footerColor</code>
	*/
	public function getFooterColor( ):sap.m.ValueColor;

	/**
	* Gets current value of property {@link #getFrameType frameType}.

Frame types: 1x1, 2x1, and auto.

Default value is <code>Auto</code>.
	* @return	Value of property <code>frameType</code>
	*/
	public function getFrameType( ):sap.m.FrameType;

	/**
	* Returns a metadata object for class sap.m.TileContent.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getUnit unit}.

The percent sign, the currency symbol, or the unit of measure.
	* @return	Value of property <code>unit</code>
	*/
	public function getUnit( ):String;

	/**
	* Sets the aggregated {@link #getContent content}.
	* @param	oContent The content to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContent( oContent:sap.ui.core.Control):sap.m.TileContent;

	/**
	* Sets a new value for property {@link #getDisabled disabled}.

Disables control if true.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bDisabled New value for property <code>disabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDisabled( bDisabled:Bool):sap.m.TileContent;

	/**
	* Sets a new value for property {@link #getFooter footer}.

The footer text of the tile.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sFooter New value for property <code>footer</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFooter( sFooter:String):sap.m.TileContent;

	/**
	* Sets a new value for property {@link #getFooterColor footerColor}.

The semantic color of the footer.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Neutral</code>.
	* @param	sFooterColor New value for property <code>footerColor</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFooterColor( sFooterColor:sap.m.ValueColor):sap.m.TileContent;

	/**
	* Sets a new value for property {@link #getFrameType frameType}.

Frame types: 1x1, 2x1, and auto.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Auto</code>.
	* @param	sFrameType New value for property <code>frameType</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFrameType( sFrameType:sap.m.FrameType):sap.m.TileContent;

	/**
	* Sets a new value for property {@link #getUnit unit}.

The percent sign, the currency symbol, or the unit of measure.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sUnit New value for property <code>unit</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUnit( sUnit:String):sap.m.TileContent;

	/**
	* Unbinds aggregation {@link #getContent content} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindContent( ):sap.m.TileContent;
}

typedef TileContentArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The footer text of the tile.
	*/
	@:optional var footer:String;

	/**
	* The semantic color of the footer.
	*/
	@:optional var footerColor:haxe.extern.EitherType<String,sap.m.ValueColor>;

	/**
	* The percent sign, the currency symbol, or the unit of measure.
	*/
	@:optional var unit:String;

	/**
	* Disables control if true.
	*/
	@:optional var disabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Frame types: 1x1, 2x1, and auto.
	*/
	@:optional var frameType:haxe.extern.EitherType<String,sap.m.FrameType>;

    /**
    * The switchable view that depends on the tile type.
    */
	@:optional var content:haxe.extern.EitherType<String,sap.ui.core.Control>;
}
