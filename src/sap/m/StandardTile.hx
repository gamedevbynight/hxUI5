package sap.m;

@:native("sap.m.StandardTile")

/**
* The StandardTile control is displayed in the tile container.
*/
extern class StandardTile extends sap.m.Tile
{
	@:overload(function(?sId:String, ?mSettings:StandardTileArgs):Void {})
	public function new(?mSettings:StandardTileArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.m.StandardTile{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.m.StandardTile;

	/**
	* Creates a new subclass of class sap.m.StandardTile with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.Tile.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getActiveIcon activeIcon}.

Defines the active icon of the StandardTile.
	* @return	Value of property <code>activeIcon</code>
	*/
	public function getActiveIcon( ):sap.ui.core.URI;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @return	null
	*/
	public function getAriaDescribedBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets the icon of the <code>StandardTile</code> control.
	* @return	The icon of the control
	*/
	public function getIcon( ):Dynamic;

	/**
	* Gets current value of property {@link #getIconDensityAware iconDensityAware}.

By default, this is set to true but then one or more requests are sent trying to get the density perfect version of image if this version of image doesn't exist on the server.

If bandwidth is key for the application, set this value to false.

Default value is <code>true</code>.
	* @return	Value of property <code>iconDensityAware</code>
	*/
	public function getIconDensityAware( ):Bool;

	/**
	* Gets current value of property {@link #getInfo info}.

Defines the description of the StandardTile.
	* @return	Value of property <code>info</code>
	*/
	public function getInfo( ):String;

	/**
	* Gets current value of property {@link #getInfoState infoState}.

Defines the color of the info text. Possible values are Error, Warning, Success and so on.

Default value is <code>None</code>.
	* @return	Value of property <code>infoState</code>
	*/
	public function getInfoState( ):sap.ui.core.ValueState;

	/**
	* Returns a metadata object for class sap.m.StandardTile.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getNumber number}.

Defines the number field of the StandardTile.
	* @return	Value of property <code>number</code>
	*/
	public function getNumber( ):String;

	/**
	* Gets current value of property {@link #getNumberUnit numberUnit}.

Defines the number units qualifier of the StandardTile.
	* @return	Value of property <code>numberUnit</code>
	*/
	public function getNumberUnit( ):String;

	/**
	* Gets current value of property {@link #getTitle title}.

Defines the title of the StandardTile.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Gets current value of property {@link #getType type}.

Defines the type of the StandardTile.

Default value is <code>None</code>.
	* @return	Value of property <code>type</code>
	*/
	public function getType( ):sap.m.StandardTileType;

	/**
	* Removes all the controls in the association named {@link #getAriaDescribedBy ariaDescribedBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaDescribedBy( ):Array<sap.ui.core.ID>;
	@:overload( function(vAriaDescribedBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaDescribedBy from the association named {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to be removed or its index or ID
	* @return	The removed ariaDescribedBy or <code>null</code>
	*/
	public function removeAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.ui.core.ID;

	/**
	* Sets a new value for property {@link #getActiveIcon activeIcon}.

Defines the active icon of the StandardTile.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sActiveIcon New value for property <code>activeIcon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setActiveIcon( sActiveIcon:sap.ui.core.URI):sap.m.StandardTile;

	/**
	* Sets a new value for property {@link #getIcon icon}.

Defines the icon of the StandardTile.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( sIcon:sap.ui.core.URI):sap.m.StandardTile;

	/**
	* Sets a new value for property {@link #getIconDensityAware iconDensityAware}.

By default, this is set to true but then one or more requests are sent trying to get the density perfect version of image if this version of image doesn't exist on the server.

If bandwidth is key for the application, set this value to false.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bIconDensityAware New value for property <code>iconDensityAware</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconDensityAware( bIconDensityAware:Bool):sap.m.StandardTile;

	/**
	* Sets a new value for property {@link #getInfo info}.

Defines the description of the StandardTile.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sInfo New value for property <code>info</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInfo( sInfo:String):sap.m.StandardTile;

	/**
	* Sets a new value for property {@link #getInfoState infoState}.

Defines the color of the info text. Possible values are Error, Warning, Success and so on.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sInfoState New value for property <code>infoState</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInfoState( sInfoState:sap.ui.core.ValueState):sap.m.StandardTile;

	/**
	* Sets a new value for property {@link #getNumber number}.

Defines the number field of the StandardTile.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sNumber New value for property <code>number</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNumber( sNumber:String):sap.m.StandardTile;

	/**
	* Sets a new value for property {@link #getNumberUnit numberUnit}.

Defines the number units qualifier of the StandardTile.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sNumberUnit New value for property <code>numberUnit</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNumberUnit( sNumberUnit:String):sap.m.StandardTile;

	/**
	* Sets a new value for property {@link #getTitle title}.

Defines the title of the StandardTile.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( sTitle:String):sap.m.StandardTile;

	/**
	* Sets a new value for property {@link #getType type}.

Defines the type of the StandardTile.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sType New value for property <code>type</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setType( sType:sap.m.StandardTileType):sap.m.StandardTile;
}

typedef StandardTileArgs = sap.m.Tile.TileArgs & {

	/**
	* Defines the title of the StandardTile.
	*/
	@:optional var title:String;

	/**
	* Defines the description of the StandardTile.
	*/
	@:optional var info:String;

	/**
	* Defines the icon of the StandardTile.
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Defines the active icon of the StandardTile.
	*/
	@:optional var activeIcon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Defines the number field of the StandardTile.
	*/
	@:optional var number:String;

	/**
	* Defines the number units qualifier of the StandardTile.
	*/
	@:optional var numberUnit:String;

	/**
	* Defines the color of the info text. Possible values are Error, Warning, Success and so on.
	*/
	@:optional var infoState:haxe.extern.EitherType<String,sap.ui.core.ValueState>;

	/**
	* Defines the type of the StandardTile.
	*/
	@:optional var type:haxe.extern.EitherType<String,sap.m.StandardTileType>;

	/**
	* By default, this is set to true but then one or more requests are sent trying to get the density perfect version of image if this version of image doesn't exist on the server.

If bandwidth is key for the application, set this value to false.
	*/
	@:optional var iconDensityAware:haxe.extern.EitherType<String,Bool>;

	/**
	* Association to controls / IDs, which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;
}
