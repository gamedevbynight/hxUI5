package sap.m;

@:native("sap.m.Button")

/**
* Enables users to trigger actions.

<h3>Overview</h3>

The user triggers an action by clicking or tapping the <code>Button</code> or by pressing certain keyboard keys, such as Enter.

<h3>Usage</h3>

For the <code>Button</code> UI, you can define text, icon, or both. You can also specify whether the text or the icon is displayed first.

You can choose from a set of predefined {@link sap.m.ButtonType ButtonTypes} that offer different styling to correspond to the triggered action.

You can set the <code>Button</code> as enabled or disabled. An enabled <code>Button</code> can be pressed by clicking or tapping it and it changes its style to provide visual feedback to the user that it is pressed or hovered over with the mouse cursor. A disabled <code>Button</code> appears inactive and cannot be pressed.
*/
extern class Button extends sap.ui.core.Control implements sap.ui.core.IFormContent
{
	@:overload(function(?sId:String, ?mSettings:ButtonArgs):Void {})
	public function new(?mSettings:ButtonArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.m.Button{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.m.Button;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.Button{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.Button;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.m.Button</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Button</code> itself.

Fired when the user clicks or taps on the control.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Button</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.Button;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.m.Button</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.Button;

	/**
	* Creates a new subclass of class sap.m.Button with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getActiveIcon activeIcon}.

The source property of an alternative icon for the active (depressed) state of the button. Both active and default icon properties should be defined and have the same type: image or icon font. If the <code>icon</code> property is not set or has a different type, the active icon is not displayed.
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
	* Gets current value of property {@link #getEnabled enabled}.

Determines whether the <code>Button</code> is enabled (default is set to <code>true</code>). A disabled <code>Button</code> has different colors depending on the {@link sap.m.ButtonType ButtonType}.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets current value of property {@link #getIcon icon}.

Defines the icon to be displayed as graphical element within the <code>Button</code>. It can be an image or an icon from the icon font.

Default value is <code>empty string</code>.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getIconDensityAware iconDensityAware}.

By default, this is set to true but then one or more requests are sent trying to get the density perfect version of image if this version of image doesn't exist on the server.

If only one version of image is provided, set this value to false to avoid the attempt of fetching density perfect image.

Default value is <code>true</code>.
	* @return	Value of property <code>iconDensityAware</code>
	*/
	public function getIconDensityAware( ):Bool;

	/**
	* Gets current value of property {@link #getIconFirst iconFirst}.

Determines whether the icon is displayed before the text.

Default value is <code>true</code>.
	* @return	Value of property <code>iconFirst</code>
	*/
	public function getIconFirst( ):Bool;

	/**
	* Returns a metadata object for class sap.m.Button.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getText text}.

Determines the text of the <code>Button</code>.

Default value is <code>empty string</code>.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Gets current value of property {@link #getTextDirection textDirection}.

This property specifies the element's text directionality with enumerated options. By default, the control inherits text direction from the DOM.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>textDirection</code>
	*/
	public function getTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Gets current value of property {@link #getType type}.

Defines the <code>Button</code> type.

Default value is <code>Default</code>.
	* @return	Value of property <code>type</code>
	*/
	public function getType( ):sap.m.ButtonType;

	/**
	* Gets current value of property {@link #getWidth width}.

Defines the <code>Button</code> width.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

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

The source property of an alternative icon for the active (depressed) state of the button. Both active and default icon properties should be defined and have the same type: image or icon font. If the <code>icon</code> property is not set or has a different type, the active icon is not displayed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sActiveIcon New value for property <code>activeIcon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setActiveIcon( ?sActiveIcon:sap.ui.core.URI):sap.m.Button;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Determines whether the <code>Button</code> is enabled (default is set to <code>true</code>). A disabled <code>Button</code> has different colors depending on the {@link sap.m.ButtonType ButtonType}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( ?bEnabled:Bool):sap.m.Button;

	/**
	* Sets a new value for property {@link #getIcon icon}.

Defines the icon to be displayed as graphical element within the <code>Button</code>. It can be an image or an icon from the icon font.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( ?sIcon:sap.ui.core.URI):sap.m.Button;

	/**
	* Sets a new value for property {@link #getIconDensityAware iconDensityAware}.

By default, this is set to true but then one or more requests are sent trying to get the density perfect version of image if this version of image doesn't exist on the server.

If only one version of image is provided, set this value to false to avoid the attempt of fetching density perfect image.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bIconDensityAware New value for property <code>iconDensityAware</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconDensityAware( ?bIconDensityAware:Bool):sap.m.Button;

	/**
	* Sets a new value for property {@link #getIconFirst iconFirst}.

Determines whether the icon is displayed before the text.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bIconFirst New value for property <code>iconFirst</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconFirst( ?bIconFirst:Bool):sap.m.Button;

	/**
	* Sets a new value for property {@link #getText text}.

Determines the text of the <code>Button</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( ?sText:String):sap.m.Button;

	/**
	* Sets a new value for property {@link #getTextDirection textDirection}.

This property specifies the element's text directionality with enumerated options. By default, the control inherits text direction from the DOM.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sTextDirection New value for property <code>textDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextDirection( ?sTextDirection:sap.ui.core.TextDirection):sap.m.Button;

	/**
	* Sets a new value for property {@link #getType type}.

Defines the <code>Button</code> type.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Default</code>.
	* @param	sType New value for property <code>type</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setType( ?sType:sap.m.ButtonType):sap.m.Button;

	/**
	* Sets a new value for property {@link #getWidth width}.

Defines the <code>Button</code> width.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.m.Button;
}

typedef ButtonArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines the text of the <code>Button</code>.
	*/
	@:optional var text:String;

	/**
	* Defines the <code>Button</code> type.
	*/
	@:optional var type:haxe.extern.EitherType<String,sap.m.ButtonType>;

	/**
	* Defines the <code>Button</code> width.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Determines whether the <code>Button</code> is enabled (default is set to <code>true</code>). A disabled <code>Button</code> has different colors depending on the {@link sap.m.ButtonType ButtonType}.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the icon to be displayed as graphical element within the <code>Button</code>. It can be an image or an icon from the icon font.
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Determines whether the icon is displayed before the text.
	*/
	@:optional var iconFirst:haxe.extern.EitherType<String,Bool>;

	/**
	* The source property of an alternative icon for the active (depressed) state of the button. Both active and default icon properties should be defined and have the same type: image or icon font. If the <code>icon</code> property is not set or has a different type, the active icon is not displayed.
	*/
	@:optional var activeIcon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* By default, this is set to true but then one or more requests are sent trying to get the density perfect version of image if this version of image doesn't exist on the server.

If only one version of image is provided, set this value to false to avoid the attempt of fetching density perfect image.
	*/
	@:optional var iconDensityAware:haxe.extern.EitherType<String,Bool>;

	/**
	* This property specifies the element's text directionality with enumerated options. By default, the control inherits text direction from the DOM.
	*/
	@:optional var textDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

	/**
	* Association to controls / ids which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / ids which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Fired when the user clicks or taps on the control.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
