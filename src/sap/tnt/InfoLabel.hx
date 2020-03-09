package sap.tnt;

@:native("sap.tnt.InfoLabel")

/**
* The <code>InfoLabel</code> is a small non-interactive control which contains text information and non-semantic color chosen from a list of predefined color schemes. It serves the purpose to attract the user attention to some piece of information (state, quantity, condition, etc.).

<h3>Overview</h3>

The control visualizes text information without user interaction. The text inside the control is always in upper case. It can have smaller or larger side paddings which can be specified by the <code>renderMode</code> property. The text-background color pair can be changed by setting a number between 1 and 10 that corresponds to the 10 predefined color combinations of the <code>colorScheme</code> property. The control is designed to be vertically aligned with UI5 Input and Button control families. When using <code>InfoLabel</code> in non-editable <code>Forms</code>, <code>Tables</code>, etc., set <code>displayOnly=true</code> for best visual results.

<h3>Usage Guidelines</h3> <ul> <li>If the text is longer than the width of the control, it doesn’t wrap. Instead, it’s represented as ellipsis. </li> <li>When truncated, the full text in the control is not visible. Therefore, it’s recommended to make more space for longer items to be fully displayed.</li> <li>Colors are not semantic and have no visual representation in sap_belize_hcb and sap_belize_hcw themes.</li> <li>The control shows plain text only, formatting is not visualized.</li> </ul>
*/
extern class InfoLabel extends sap.ui.core.Control implements sap.ui.core.IFormContent
{
	@:overload(function(?sId:String, ?mSettings:InfoLabelArgs):Void {})
	public function new(?mSettings:InfoLabelArgs):Void;

	/**
	* Binds property {@link #getText text} to model data.

See {@link sap.ui.base.ManagedObject#bindProperty ManagedObject.bindProperty} for a detailed description of the possible properties of <code>oBindingInfo</code>
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindText( oBindingInfo:Dynamic):sap.tnt.InfoLabel;

	/**
	* Creates a new subclass of class sap.tnt.InfoLabel with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getColorScheme colorScheme}.

Specifies the fill and text color of the control. Accepts a number between 1 and 10 as a value. You can choose from 10 predefined background and text color combinations. The color schemes are non-semantic, you can select them according to your own preferences. <b>Note:</b> ColorScheme 10 is available only in Fiori 3 theme. The default <code>colorScheme</code> is 7.

Default value is <code>7</code>.
	* @return	Value of property <code>colorScheme</code>
	*/
	public function getColorScheme( ):Int;

	/**
	* Gets current value of property {@link #getDisplayOnly displayOnly}.

Determines if the <code>InfoLabel</code> is in <code>displayOnly</code> mode. When set to <code>true</code> the control size adjusts to fit other controls, for example non-editable <code>Forms</code>.

Default value is <code>false</code>.
	* @return	Value of property <code>displayOnly</code>
	*/
	public function getDisplayOnly( ):Bool;

	/**
	* Gets current value of property {@link #getIcon icon}.

Defines the icon to be displayed as graphical element within the <code>InfoLabel</code>. It can be an icon from the icon font.

Default value is <code>empty string</code>.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* Returns a metadata object for class sap.tnt.InfoLabel.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getRenderMode renderMode}.

Specifies the type of the <code>InfoLabel</code> paddings - loose or narrow. <b>Note:</b> By default the padding is loose. It is recommended to use narrow (smaller) paddings for numeric texts.

Default value is <code>Loose</code>.
	* @return	Value of property <code>renderMode</code>
	*/
	public function getRenderMode( ):sap.tnt.RenderMode;

	/**
	* Gets current value of property {@link #getText text}.

Specifies the text inside the <code>InfoLabel</code> control.

Default value is <code>empty string</code>.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Gets current value of property {@link #getTextDirection textDirection}.

Available options for the text direction are LTR and RTL. By default the control inherits the text direction from its parent control.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>textDirection</code>
	*/
	public function getTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Gets current value of property {@link #getWidth width}.

Specifies the width of the <code>InfoLabel</code> control. By default, the <code>InfoLabel</code> control has the width of the content. Set this property to restrict the width to a custom value.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Sets a new value for property {@link #getColorScheme colorScheme}.

Specifies the fill and text color of the control. Accepts a number between 1 and 10 as a value. You can choose from 10 predefined background and text color combinations. The color schemes are non-semantic, you can select them according to your own preferences. <b>Note:</b> ColorScheme 10 is available only in Fiori 3 theme. The default <code>colorScheme</code> is 7.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>7</code>.
	* @param	iColorScheme New value for property <code>colorScheme</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColorScheme( iColorScheme:Int):sap.tnt.InfoLabel;

	/**
	* Sets a new value for property {@link #getDisplayOnly displayOnly}.

Determines if the <code>InfoLabel</code> is in <code>displayOnly</code> mode. When set to <code>true</code> the control size adjusts to fit other controls, for example non-editable <code>Forms</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bDisplayOnly New value for property <code>displayOnly</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDisplayOnly( bDisplayOnly:Bool):sap.tnt.InfoLabel;

	/**
	* Sets a new value for property {@link #getIcon icon}.

Defines the icon to be displayed as graphical element within the <code>InfoLabel</code>. It can be an icon from the icon font.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( sIcon:sap.ui.core.URI):sap.tnt.InfoLabel;

	/**
	* Sets a new value for property {@link #getRenderMode renderMode}.

Specifies the type of the <code>InfoLabel</code> paddings - loose or narrow. <b>Note:</b> By default the padding is loose. It is recommended to use narrow (smaller) paddings for numeric texts.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Loose</code>.
	* @param	sRenderMode New value for property <code>renderMode</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRenderMode( sRenderMode:sap.tnt.RenderMode):sap.tnt.InfoLabel;

	/**
	* Sets a new value for property {@link #getText text}.

Specifies the text inside the <code>InfoLabel</code> control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( sText:String):sap.tnt.InfoLabel;

	/**
	* Sets a new value for property {@link #getTextDirection textDirection}.

Available options for the text direction are LTR and RTL. By default the control inherits the text direction from its parent control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sTextDirection New value for property <code>textDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextDirection( sTextDirection:sap.ui.core.TextDirection):sap.tnt.InfoLabel;

	/**
	* Sets a new value for property {@link #getWidth width}.

Specifies the width of the <code>InfoLabel</code> control. By default, the <code>InfoLabel</code> control has the width of the content. Set this property to restrict the width to a custom value.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.tnt.InfoLabel;

	/**
	* Unbinds property {@link #getText text} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindText( ):sap.tnt.InfoLabel;
}

typedef InfoLabelArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Specifies the text inside the <code>InfoLabel</code> control.
	*/
	@:optional var text:String;

	/**
	* Specifies the type of the <code>InfoLabel</code> paddings - loose or narrow. <b>Note:</b> By default the padding is loose. It is recommended to use narrow (smaller) paddings for numeric texts.
	*/
	@:optional var renderMode:haxe.extern.EitherType<String,sap.tnt.RenderMode>;

	/**
	* Specifies the fill and text color of the control. Accepts a number between 1 and 10 as a value. You can choose from 10 predefined background and text color combinations. The color schemes are non-semantic, you can select them according to your own preferences. <b>Note:</b> ColorScheme 10 is available only in Fiori 3 theme. The default <code>colorScheme</code> is 7.
	*/
	@:optional var colorScheme:haxe.extern.EitherType<String,Int>;

	/**
	* Specifies the width of the <code>InfoLabel</code> control. By default, the <code>InfoLabel</code> control has the width of the content. Set this property to restrict the width to a custom value.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Determines if the <code>InfoLabel</code> is in <code>displayOnly</code> mode. When set to <code>true</code> the control size adjusts to fit other controls, for example non-editable <code>Forms</code>.
	*/
	@:optional var displayOnly:haxe.extern.EitherType<String,Bool>;

	/**
	* Available options for the text direction are LTR and RTL. By default the control inherits the text direction from its parent control.
	*/
	@:optional var textDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

	/**
	* Defines the icon to be displayed as graphical element within the <code>InfoLabel</code>. It can be an icon from the icon font.
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;
}
