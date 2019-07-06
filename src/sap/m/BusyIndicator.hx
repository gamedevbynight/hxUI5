package sap.m;

@:native("sap.m.BusyIndicator")

/**
* Informs the user about an ongoing operation. <h3>Overview</h3> The busy indicator implies that an action is taking place within a single control. You can set the size of the icon, the text, but also define a custom icon to be used instead. <h3>Usage</h3> <h4>When to use</h4> <ul> <li>The user needs to be able to cancel the operation.</li> <li>Only part of the application or a particular control is affected.</li> </ul> <h4>When not to use</h4> <ul> <li>The operation takes less than one second.</li> <li>You need to block the screen and prevent the user from starting another activity. In this case, use the {@link sap.m.BusyDialog busy dialog}.</li> <li>Do not change the mouse cursor to indicate the ongoing operation.</li> <li>Do not show multiple busy indicators at once</li> </ul>
*/
extern class BusyIndicator extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:BusyIndicatorArgs):Void {})
	public function new(?mSettings:BusyIndicatorArgs):Void;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.BusyIndicator{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.BusyIndicator;

	/**
	* Creates a new subclass of class sap.m.BusyIndicator with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets current value of property {@link #getCustomIcon customIcon}.

Icon URL if an icon is used as the busy indicator.

Default value is <code>empty string</code>.
	* @return	Value of property <code>customIcon</code>
	*/
	public function getCustomIcon( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getCustomIconDensityAware customIconDensityAware}.

If this is set to false, the src image will be loaded directly without attempting to fetch the density perfect image for high density device. By default, this is set to true but then one or more requests are sent to the server, trying to get the density perfect version of the specified image. If bandwidth is the key for the application, set this value to false.

Default value is <code>true</code>.
	* @return	Value of property <code>customIconDensityAware</code>
	*/
	public function getCustomIconDensityAware( ):Bool;

	/**
	* Gets current value of property {@link #getCustomIconHeight customIconHeight}.

Height of the provided icon. By default 44px are used.

Default value is <code>44px</code>.
	* @return	Value of property <code>customIconHeight</code>
	*/
	public function getCustomIconHeight( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getCustomIconRotationSpeed customIconRotationSpeed}.

Defines the rotation speed of the given image. If a .gif is used, the speed has to be set to 0. The unit is in ms. <b>Note:</b> Values are considered valid when greater than or equal to 0. If invalid value is provided the speed defaults to 0.

Default value is <code>1000</code>.
	* @return	Value of property <code>customIconRotationSpeed</code>
	*/
	public function getCustomIconRotationSpeed( ):Int;

	/**
	* Gets current value of property {@link #getCustomIconWidth customIconWidth}.

Width of the provided icon. By default 44px are used.

Default value is <code>44px</code>.
	* @return	Value of property <code>customIconWidth</code>
	*/
	public function getCustomIconWidth( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.m.BusyIndicator.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getSize size}.

Defines the size of the busy indicator. The animation consists of three circles, each of which will be this size. Therefore the total width of the control amounts to three times the given size.

Default value is <code>1rem</code>.
	* @return	Value of property <code>size</code>
	*/
	public function getSize( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getText text}.

Defines text to be displayed below the busy indicator. It can be used to inform the user of the current operation.

Default value is <code>empty string</code>.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Gets current value of property {@link #getTextDirection textDirection}.

Options for the text direction are RTL and LTR. Alternatively, the control can inherit the text direction from its parent container.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>textDirection</code>
	*/
	public function getTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;

	/**
	* Sets a new value for property {@link #getCustomIcon customIcon}.

Icon URL if an icon is used as the busy indicator.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sCustomIcon New value for property <code>customIcon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCustomIcon( sCustomIcon:sap.ui.core.URI):sap.m.BusyIndicator;

	/**
	* Sets a new value for property {@link #getCustomIconDensityAware customIconDensityAware}.

If this is set to false, the src image will be loaded directly without attempting to fetch the density perfect image for high density device. By default, this is set to true but then one or more requests are sent to the server, trying to get the density perfect version of the specified image. If bandwidth is the key for the application, set this value to false.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bCustomIconDensityAware New value for property <code>customIconDensityAware</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCustomIconDensityAware( bCustomIconDensityAware:Bool):sap.m.BusyIndicator;

	/**
	* Sets a new value for property {@link #getCustomIconHeight customIconHeight}.

Height of the provided icon. By default 44px are used.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>44px</code>.
	* @param	sCustomIconHeight New value for property <code>customIconHeight</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCustomIconHeight( sCustomIconHeight:sap.ui.core.CSSSize):sap.m.BusyIndicator;

	/**
	* Sets a new value for property {@link #getCustomIconRotationSpeed customIconRotationSpeed}.

Defines the rotation speed of the given image. If a .gif is used, the speed has to be set to 0. The unit is in ms. <b>Note:</b> Values are considered valid when greater than or equal to 0. If invalid value is provided the speed defaults to 0.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1000</code>.
	* @param	iCustomIconRotationSpeed New value for property <code>customIconRotationSpeed</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCustomIconRotationSpeed( iCustomIconRotationSpeed:Int):sap.m.BusyIndicator;

	/**
	* Sets a new value for property {@link #getCustomIconWidth customIconWidth}.

Width of the provided icon. By default 44px are used.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>44px</code>.
	* @param	sCustomIconWidth New value for property <code>customIconWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCustomIconWidth( sCustomIconWidth:sap.ui.core.CSSSize):sap.m.BusyIndicator;

	/**
	* Sets a new value for property {@link #getSize size}.

Defines the size of the busy indicator. The animation consists of three circles, each of which will be this size. Therefore the total width of the control amounts to three times the given size.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1rem</code>.
	* @param	sSize New value for property <code>size</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSize( sSize:sap.ui.core.CSSSize):sap.m.BusyIndicator;

	/**
	* Sets a new value for property {@link #getText text}.

Defines text to be displayed below the busy indicator. It can be used to inform the user of the current operation.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( sText:String):sap.m.BusyIndicator;

	/**
	* Sets a new value for property {@link #getTextDirection textDirection}.

Options for the text direction are RTL and LTR. Alternatively, the control can inherit the text direction from its parent container.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sTextDirection New value for property <code>textDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextDirection( sTextDirection:sap.ui.core.TextDirection):sap.m.BusyIndicator;
}

typedef BusyIndicatorArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines text to be displayed below the busy indicator. It can be used to inform the user of the current operation.
	*/
	@:optional var text:String;

	/**
	* Options for the text direction are RTL and LTR. Alternatively, the control can inherit the text direction from its parent container.
	*/
	@:optional var textDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

	/**
	* Icon URL if an icon is used as the busy indicator.
	*/
	@:optional var customIcon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Defines the rotation speed of the given image. If a .gif is used, the speed has to be set to 0. The unit is in ms. <b>Note:</b> Values are considered valid when greater than or equal to 0. If invalid value is provided the speed defaults to 0.
	*/
	@:optional var customIconRotationSpeed:haxe.extern.EitherType<String,Int>;

	/**
	* If this is set to false, the src image will be loaded directly without attempting to fetch the density perfect image for high density device. By default, this is set to true but then one or more requests are sent to the server, trying to get the density perfect version of the specified image. If bandwidth is the key for the application, set this value to false.
	*/
	@:optional var customIconDensityAware:haxe.extern.EitherType<String,Bool>;

	/**
	* Width of the provided icon. By default 44px are used.
	*/
	@:optional var customIconWidth:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Height of the provided icon. By default 44px are used.
	*/
	@:optional var customIconHeight:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Defines the size of the busy indicator. The animation consists of three circles, each of which will be this size. Therefore the total width of the control amounts to three times the given size.
	*/
	@:optional var size:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Association to controls / ids which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;
}
