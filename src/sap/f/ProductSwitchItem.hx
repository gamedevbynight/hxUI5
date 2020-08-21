package sap.f;

@:native("sap.f.ProductSwitchItem")

/**
* A control that is used as a child of <code>ProductSwitch</code>

<b>Note:</b> <code>ProductSwitchItem</code> is not supported when used outside of <code>ProductSwitch</code>.
*/
extern class ProductSwitchItem extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ProductSwitchItemArgs):Void {})
	public function new(?mSettings:ProductSwitchItemArgs):Void;

	/**
	* Creates a new subclass of class sap.f.ProductSwitchItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.f.ProductSwitchItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getSrc src}.

Defines the icon to be displayed as graphical element within the <code>ProductSwitchItem</code>. It can be an image or an icon from the SAP icon font.
	* @return	Value of property <code>src</code>
	*/
	public function getSrc( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getSubTitle subTitle}.

Determines the subtitle of the <code>ProductSwitchItem</code>.
	* @return	Value of property <code>subTitle</code>
	*/
	public function getSubTitle( ):String;

	/**
	* Gets current value of property {@link #getTarget target}.

Specifies a target where the <code>targetSrc</code> content must be open.

Options are the standard values for window.open() supported by browsers: <code>_self</code>, <code>_top</code>, <code>_blank</code>, <code>_parent</code>, <code>_search</code>. Alternatively, a frame name can be entered.
	* @return	Value of property <code>target</code>
	*/
	public function getTarget( ):String;

	/**
	* Gets current value of property {@link #getTargetSrc targetSrc}.

Defines the <code>ProductSwitchItem</code> target URI. Supports standard hyperlink behavior.
	* @return	Value of property <code>targetSrc</code>
	*/
	public function getTargetSrc( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getTitle title}.

Determines the title of the <code>ProductSwitchItem</code>.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Sets a new value for property {@link #getSrc src}.

Defines the icon to be displayed as graphical element within the <code>ProductSwitchItem</code>. It can be an image or an icon from the SAP icon font.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sSrc New value for property <code>src</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSrc( ?sSrc:sap.ui.core.URI):sap.f.ProductSwitchItem;

	/**
	* Sets a new value for property {@link #getSubTitle subTitle}.

Determines the subtitle of the <code>ProductSwitchItem</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sSubTitle New value for property <code>subTitle</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSubTitle( ?sSubTitle:String):sap.f.ProductSwitchItem;

	/**
	* Sets a new value for property {@link #getTarget target}.

Specifies a target where the <code>targetSrc</code> content must be open.

Options are the standard values for window.open() supported by browsers: <code>_self</code>, <code>_top</code>, <code>_blank</code>, <code>_parent</code>, <code>_search</code>. Alternatively, a frame name can be entered.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTarget New value for property <code>target</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTarget( ?sTarget:String):sap.f.ProductSwitchItem;

	/**
	* Sets a new value for property {@link #getTargetSrc targetSrc}.

Defines the <code>ProductSwitchItem</code> target URI. Supports standard hyperlink behavior.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTargetSrc New value for property <code>targetSrc</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTargetSrc( ?sTargetSrc:sap.ui.core.URI):sap.f.ProductSwitchItem;

	/**
	* Sets a new value for property {@link #getTitle title}.

Determines the title of the <code>ProductSwitchItem</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( ?sTitle:String):sap.f.ProductSwitchItem;
}

typedef ProductSwitchItemArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the icon to be displayed as graphical element within the <code>ProductSwitchItem</code>. It can be an image or an icon from the SAP icon font.
	*/
	@:optional var src:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Determines the title of the <code>ProductSwitchItem</code>.
	*/
	@:optional var title:String;

	/**
	* Determines the subtitle of the <code>ProductSwitchItem</code>.
	*/
	@:optional var subTitle:String;

	/**
	* Defines the <code>ProductSwitchItem</code> target URI. Supports standard hyperlink behavior.
	*/
	@:optional var targetSrc:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Specifies a target where the <code>targetSrc</code> content must be open.

Options are the standard values for window.open() supported by browsers: <code>_self</code>, <code>_top</code>, <code>_blank</code>, <code>_parent</code>, <code>_search</code>. Alternatively, a frame name can be entered.
	*/
	@:optional var target:String;

    /**
    * Holds the internally created Icon.
    */
	@:optional var _icon:haxe.extern.EitherType<String,sap.ui.core.Icon>;

    /**
    * Holds the internally created Text.
    */
	@:optional var _title:haxe.extern.EitherType<String,sap.m.Text>;
}
