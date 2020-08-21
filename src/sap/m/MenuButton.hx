package sap.m;

@:native("sap.m.MenuButton")

/**
* The <code>sap.m.MenuButton</code> control enables the user to show a hierarchical menu.
*/
extern class MenuButton extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:MenuButtonArgs):Void {})
	public function new(?mSettings:MenuButtonArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.m.MenuButton{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.m.MenuButton;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.MenuButton{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.MenuButton;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:defaultAction defaultAction} event of this <code>sap.m.MenuButton</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.MenuButton</code> itself.

Fired when the <code>buttonMode</code> is set to <code>Split</code> and the user presses the main button unless <code>useDefaultActionOnly</code> is set to <code>false</code> and another action from the menu has been selected previously.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.MenuButton</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachDefaultAction( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.MenuButton;

	/**
	* Destroys the menu in the aggregation {@link #getMenu menu}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyMenu( ):sap.m.MenuButton;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:defaultAction defaultAction} event of this <code>sap.m.MenuButton</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachDefaultAction( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.MenuButton;

	/**
	* Creates a new subclass of class sap.m.MenuButton with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getActiveIcon activeIcon}.

The source property of an alternative icon for the active (pressed) state of the button. Both active and default icon properties should be defined and of the same type - image or icon font. If the <code>icon</code> property is not set or has a different type, the active icon is not displayed.
	* @return	Value of property <code>activeIcon</code>
	*/
	public function getActiveIcon( ):sap.ui.core.URI;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @return	null
	*/
	public function getAriaDescribedBy( ):Array<sap.ui.core.ID>;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets current value of property {@link #getButtonMode buttonMode}.

Defines whether the <code>MenuButton</code> is set to <code>Regular</code> or <code>Split</code> mode.

Default value is <code>Regular</code>.
	* @return	Value of property <code>buttonMode</code>
	*/
	public function getButtonMode( ):sap.m.MenuButtonMode;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Boolean property to enable the control (default is <code>true</code>). <br/><b>Note:</b> Depending on custom settings, the buttons that are disabled have other colors than the enabled ones.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets current value of property {@link #getIcon icon}.

Defines the icon to be displayed as a graphical element within the button. It can be an image or an icon from the icon font.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getIconDensityAware iconDensityAware}.

When set to <code>true</code> (default), one or more requests are sent trying to get the density perfect version of image if this version of image doesn't exist on the server. If only one version of image is provided, set this value to <code>false</code> to avoid the attempt of fetching density perfect image.

Default value is <code>true</code>.
	* @return	Value of property <code>iconDensityAware</code>
	*/
	public function getIconDensityAware( ):Bool;

	/**
	* Returns the DOMNode Id to be used for the "labelFor" attribute of the label.

By default, this is the Id of the control itself.
	* @return	Id to be used for the <code>labelFor</code>
	*/
	public function getIdForLabel( ):String;

	/**
	* Gets content of aggregation {@link #getMenu menu}.

Defines the menu that opens for this button.
	* @return	null
	*/
	public function getMenu( ):sap.m.Menu;

	/**
	* Gets current value of property {@link #getMenuPosition menuPosition}.

Specifies the position of the popup menu with enumerated options. By default, the control opens the menu at its bottom left side.

<b>Note:</b> In the case that the menu has no space to show itself in the view port of the current window it tries to open itself to the inverted direction.

Default value is <code>BeginBottom</code>.
	* @return	Value of property <code>menuPosition</code>
	*/
	public function getMenuPosition( ):sap.ui.core.Popup.Dock;

	/**
	* Returns a metadata object for class sap.m.MenuButton.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getText text}.

Defines the text of the <code>MenuButton</code>. <br/><b>Note:</b> In <code>Split</code> <code>buttonMode</code> with <code>useDefaultActionOnly</code> set to <code>false</code>, the text is changed to display the last selected item's text, while in <code>Regular</code> <code>buttonMode</code> the text stays unchanged.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Gets current value of property {@link #getTextDirection textDirection}.

Specifies the element's text directionality with enumerated options. By default, the control inherits text direction from the DOM.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>textDirection</code>
	*/
	public function getTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Gets current value of property {@link #getType type}.

Defines the type of the <code>MenuButton</code> (for example, Default, Accept, Reject, Back, etc.)

<b>Note:</b> Not all existing types are valid for the control. See {@link sap.m.ButtonType} documentation.

Default value is <code>Default</code>.
	* @return	Value of property <code>type</code>
	*/
	public function getType( ):sap.m.ButtonType;

	/**
	* Gets current value of property {@link #getUseDefaultActionOnly useDefaultActionOnly}.

Controls whether the default action handler is invoked always or it is invoked only until a menu item is selected. Usable only if <code>buttonMode</code> is set to <code>Split</code>.

Default value is <code>false</code>.
	* @return	Value of property <code>useDefaultActionOnly</code>
	*/
	public function getUseDefaultActionOnly( ):Bool;

	/**
	* Gets current value of property {@link #getWidth width}.

Defines the width of the <code>MenuButton</code>. <br/><b>Note:</b>As per visual design this width can be maximum of 12rem (192px).
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Initializes the control.
	* @return	Void
	*/
	public function init( ):Void;

	/**
	* Removes all the controls in the association named {@link #getAriaDescribedBy ariaDescribedBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaDescribedBy( ):Array<sap.ui.core.ID>;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;
	@:overload( function(vAriaDescribedBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaDescribedBy from the association named {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to be removed or its index or ID
	* @return	The removed ariaDescribedBy or <code>null</code>
	*/
	public function removeAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.ui.core.ID;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;

	/**
	* Sets a new value for property {@link #getActiveIcon activeIcon}.

The source property of an alternative icon for the active (pressed) state of the button. Both active and default icon properties should be defined and of the same type - image or icon font. If the <code>icon</code> property is not set or has a different type, the active icon is not displayed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sActiveIcon New value for property <code>activeIcon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setActiveIcon( ?sActiveIcon:sap.ui.core.URI):sap.m.MenuButton;

	/**
	* Sets the <code>buttonMode</code> of the control.
	* @param	sMode The new button mode
	* @return	This instance
	*/
	public function setButtonMode( sMode:sap.m.MenuButtonMode):sap.m.MenuButton;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Boolean property to enable the control (default is <code>true</code>). <br/><b>Note:</b> Depending on custom settings, the buttons that are disabled have other colors than the enabled ones.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( ?bEnabled:Bool):sap.m.MenuButton;

	/**
	* Sets a new value for property {@link #getIcon icon}.

Defines the icon to be displayed as a graphical element within the button. It can be an image or an icon from the icon font.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( ?sIcon:sap.ui.core.URI):sap.m.MenuButton;

	/**
	* Sets a new value for property {@link #getIconDensityAware iconDensityAware}.

When set to <code>true</code> (default), one or more requests are sent trying to get the density perfect version of image if this version of image doesn't exist on the server. If only one version of image is provided, set this value to <code>false</code> to avoid the attempt of fetching density perfect image.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bIconDensityAware New value for property <code>iconDensityAware</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconDensityAware( ?bIconDensityAware:Bool):sap.m.MenuButton;

	/**
	* Sets the aggregated {@link #getMenu menu}.
	* @param	oMenu The menu to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMenu( oMenu:sap.m.Menu):sap.m.MenuButton;

	/**
	* Sets a new value for property {@link #getMenuPosition menuPosition}.

Specifies the position of the popup menu with enumerated options. By default, the control opens the menu at its bottom left side.

<b>Note:</b> In the case that the menu has no space to show itself in the view port of the current window it tries to open itself to the inverted direction.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>BeginBottom</code>.
	* @param	sMenuPosition New value for property <code>menuPosition</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMenuPosition( ?sMenuPosition:sap.ui.core.Popup.Dock):sap.m.MenuButton;

	/**
	* Sets a new value for property {@link #getText text}.

Defines the text of the <code>MenuButton</code>. <br/><b>Note:</b> In <code>Split</code> <code>buttonMode</code> with <code>useDefaultActionOnly</code> set to <code>false</code>, the text is changed to display the last selected item's text, while in <code>Regular</code> <code>buttonMode</code> the text stays unchanged.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( ?sText:String):sap.m.MenuButton;

	/**
	* Sets a new value for property {@link #getTextDirection textDirection}.

Specifies the element's text directionality with enumerated options. By default, the control inherits text direction from the DOM.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sTextDirection New value for property <code>textDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextDirection( ?sTextDirection:sap.ui.core.TextDirection):sap.m.MenuButton;

	/**
	* Sets the tooltip for the <code>MenuButton</code>. Can either be an instance of a TooltipBase subclass or a simple string.
	* @param	vTooltip The tooltip that should be shown.
	* @return	this instance
	*/
	public function setTooltip( vTooltip:sap.ui.core.TooltipBase):Dynamic;

	/**
	* Sets a new value for property {@link #getType type}.

Defines the type of the <code>MenuButton</code> (for example, Default, Accept, Reject, Back, etc.)

<b>Note:</b> Not all existing types are valid for the control. See {@link sap.m.ButtonType} documentation.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Default</code>.
	* @param	sType New value for property <code>type</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setType( ?sType:sap.m.ButtonType):sap.m.MenuButton;

	/**
	* Sets a new value for property {@link #getUseDefaultActionOnly useDefaultActionOnly}.

Controls whether the default action handler is invoked always or it is invoked only until a menu item is selected. Usable only if <code>buttonMode</code> is set to <code>Split</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bUseDefaultActionOnly New value for property <code>useDefaultActionOnly</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUseDefaultActionOnly( ?bUseDefaultActionOnly:Bool):sap.m.MenuButton;

	/**
	* Sets a new value for property {@link #getWidth width}.

Defines the width of the <code>MenuButton</code>. <br/><b>Note:</b>As per visual design this width can be maximum of 12rem (192px).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.m.MenuButton;
}

typedef MenuButtonArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the text of the <code>MenuButton</code>. <br/><b>Note:</b> In <code>Split</code> <code>buttonMode</code> with <code>useDefaultActionOnly</code> set to <code>false</code>, the text is changed to display the last selected item's text, while in <code>Regular</code> <code>buttonMode</code> the text stays unchanged.
	*/
	@:optional var text:String;

	/**
	* Defines the type of the <code>MenuButton</code> (for example, Default, Accept, Reject, Back, etc.)

<b>Note:</b> Not all existing types are valid for the control. See {@link sap.m.ButtonType} documentation.
	*/
	@:optional var type:haxe.extern.EitherType<String,sap.m.ButtonType>;

	/**
	* Defines the width of the <code>MenuButton</code>. <br/><b>Note:</b>As per visual design this width can be maximum of 12rem (192px).
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Boolean property to enable the control (default is <code>true</code>). <br/><b>Note:</b> Depending on custom settings, the buttons that are disabled have other colors than the enabled ones.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the icon to be displayed as a graphical element within the button. It can be an image or an icon from the icon font.
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* The source property of an alternative icon for the active (pressed) state of the button. Both active and default icon properties should be defined and of the same type - image or icon font. If the <code>icon</code> property is not set or has a different type, the active icon is not displayed.
	*/
	@:optional var activeIcon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* When set to <code>true</code> (default), one or more requests are sent trying to get the density perfect version of image if this version of image doesn't exist on the server. If only one version of image is provided, set this value to <code>false</code> to avoid the attempt of fetching density perfect image.
	*/
	@:optional var iconDensityAware:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies the element's text directionality with enumerated options. By default, the control inherits text direction from the DOM.
	*/
	@:optional var textDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

	/**
	* Defines whether the <code>MenuButton</code> is set to <code>Regular</code> or <code>Split</code> mode.
	*/
	@:optional var buttonMode:haxe.extern.EitherType<String,sap.m.MenuButtonMode>;

	/**
	* Specifies the position of the popup menu with enumerated options. By default, the control opens the menu at its bottom left side.

<b>Note:</b> In the case that the menu has no space to show itself in the view port of the current window it tries to open itself to the inverted direction.
	*/
	@:optional var menuPosition:haxe.extern.EitherType<String,sap.ui.core.Popup.Dock>;

	/**
	* Controls whether the default action handler is invoked always or it is invoked only until a menu item is selected. Usable only if <code>buttonMode</code> is set to <code>Split</code>.
	*/
	@:optional var useDefaultActionOnly:haxe.extern.EitherType<String,Bool>;

    /**
    * Defines the menu that opens for this button.
    */
	@:optional var menu:haxe.extern.EitherType<String,sap.m.Menu>;

    /**
    * Internal aggregation that contains the button part.
    */
	@:optional var _button:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* Association to controls / ids which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / ids which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Fired when the <code>buttonMode</code> is set to <code>Split</code> and the user presses the main button unless <code>useDefaultActionOnly</code> is set to <code>false</code> and another action from the menu has been selected previously.
	*/
	@:optional var defaultAction:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
