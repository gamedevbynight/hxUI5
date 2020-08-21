package sap.ui.commons;

@:native("sap.ui.commons.HorizontalDivider")

/**
* Divides the screen in visual areas.
*/
extern class HorizontalDivider extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:HorizontalDividerArgs):Void {})
	public function new(?mSettings:HorizontalDividerArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.HorizontalDivider with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getHeight height}.

Defines the height of the divider.

Default value is <code>Medium</code>.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.commons.HorizontalDividerHeight;

	/**
	* Returns a metadata object for class sap.ui.commons.HorizontalDivider.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getType type}.

Defines the type of the divider.

Default value is <code>Area</code>.
	* @return	Value of property <code>type</code>
	*/
	public function getType( ):sap.ui.commons.HorizontalDividerType;

	/**
	* Gets current value of property {@link #getWidth width}.

Defines the width of the divider.

Default value is <code>'100%'</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Sets a new value for property {@link #getHeight height}.

Defines the height of the divider.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Medium</code>.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( ?sHeight:sap.ui.commons.HorizontalDividerHeight):sap.ui.commons.HorizontalDivider;

	/**
	* Sets a new value for property {@link #getType type}.

Defines the type of the divider.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Area</code>.
	* @param	sType New value for property <code>type</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setType( ?sType:sap.ui.commons.HorizontalDividerType):sap.ui.commons.HorizontalDivider;

	/**
	* Sets a new value for property {@link #getWidth width}.

Defines the width of the divider.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>'100%'</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.ui.commons.HorizontalDivider;
}

typedef HorizontalDividerArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the width of the divider.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Defines the type of the divider.
	*/
	@:optional var type:haxe.extern.EitherType<String,sap.ui.commons.HorizontalDividerType>;

	/**
	* Defines the height of the divider.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.commons.HorizontalDividerHeight>;
}
