package sap.m;

@:native("sap.m.ObjectStatus")

/**
* Status information that can be either text with a value state, or an icon.

With 1.63, large design of the control is supported by setting <code>sapMObjectStatusLarge</code> CSS class to the <code>ObjectStatus</code>.
*/
extern class ObjectStatus extends sap.ui.core.Control implements sap.ui.core.IFormContent
{
	@:overload(function(?sId:String, ?mSettings:ObjectStatusArgs):Void {})
	public function new(?mSettings:ObjectStatusArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.m.ObjectStatus{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.m.ObjectStatus;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.m.ObjectStatus</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ObjectStatus</code> itself.

Fires when the user clicks/taps on active text.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ObjectStatus</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.ObjectStatus;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.m.ObjectStatus</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.ObjectStatus;

	/**
	* Creates a new subclass of class sap.m.ObjectStatus with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getActive active}.

Indicates if the <code>ObjectStatus</code> text and icon can be clicked/tapped by the user.

<b>Note:</b> If you set this property to <code>true</code>, you have to also set the <code>text</code> or <code>icon</code> property.

Default value is <code>false</code>.
	* @return	Value of property <code>active</code>
	*/
	public function getActive( ):Bool;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @return	null
	*/
	public function getAriaDescribedBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets current value of property {@link #getIcon icon}.

Icon URI. This may be either an icon font or image path.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getIconDensityAware iconDensityAware}.

By default, this is set to true but then one or more requests are sent trying to get the density perfect version of image if this version of image doesn't exist on the server.

If bandwidth is key for the application, set this value to false.

Default value is <code>true</code>.
	* @return	Value of property <code>iconDensityAware</code>
	*/
	public function getIconDensityAware( ):Bool;

	/**
	* Gets current value of property {@link #getInverted inverted}.

Determines whether the background color reflects the set <code>state</code> instead of the control's text.

Default value is <code>false</code>.
	* @return	Value of property <code>inverted</code>
	*/
	public function getInverted( ):Bool;

	/**
	* Returns a metadata object for class sap.m.ObjectStatus.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getState state}.

Defines the text value state. The allowed values are from the enum type <code>sap.ui.core.ValueState</code>. Since version 1.66 the <code>state</code> property also accepts values from enum type <code>sap.ui.core.IndicationColor</code>.

Default value is <code>sap.ui.core.ValueState.None</code>.
	* @return	Value of property <code>state</code>
	*/
	public function getState( ):String;

	/**
	* Gets current value of property {@link #getText text}.

Defines the ObjectStatus text.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Gets current value of property {@link #getTextDirection textDirection}.

Determines the direction of the text, not including the title. Available options for the text direction are LTR (left-to-right) and RTL (right-to-left). By default the control inherits the text direction from its parent control.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>textDirection</code>
	*/
	public function getTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Gets current value of property {@link #getTitle title}.

Defines the ObjectStatus title.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

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
	* Sets a new value for property {@link #getActive active}.

Indicates if the <code>ObjectStatus</code> text and icon can be clicked/tapped by the user.

<b>Note:</b> If you set this property to <code>true</code>, you have to also set the <code>text</code> or <code>icon</code> property.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bActive New value for property <code>active</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setActive( bActive:Bool):sap.m.ObjectStatus;

	/**
	* Sets a new value for property {@link #getIcon icon}.

Icon URI. This may be either an icon font or image path.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( sIcon:sap.ui.core.URI):sap.m.ObjectStatus;

	/**
	* Sets a new value for property {@link #getIconDensityAware iconDensityAware}.

By default, this is set to true but then one or more requests are sent trying to get the density perfect version of image if this version of image doesn't exist on the server.

If bandwidth is key for the application, set this value to false.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bIconDensityAware New value for property <code>iconDensityAware</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconDensityAware( bIconDensityAware:Bool):sap.m.ObjectStatus;

	/**
	* Sets a new value for property {@link #getInverted inverted}.

Determines whether the background color reflects the set <code>state</code> instead of the control's text.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bInverted New value for property <code>inverted</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInverted( bInverted:Bool):sap.m.ObjectStatus;

	/**
	* Sets value for the <code>state</code> property. The default value is <code>ValueState.None</code>.
	* @param	sValue New value for property state. It should be valid value of enumeration <code>sap.ui.core.ValueState</code> or <code>sap.ui.core.IndicationColor</code>
	* @return	this to allow method chaining
	*/
	public function setState( sValue:String):sap.m.ObjectStatus;

	/**
	* Sets a new value for property {@link #getText text}.

Defines the ObjectStatus text.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( sText:String):sap.m.ObjectStatus;

	/**
	* Sets a new value for property {@link #getTextDirection textDirection}.

Determines the direction of the text, not including the title. Available options for the text direction are LTR (left-to-right) and RTL (right-to-left). By default the control inherits the text direction from its parent control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sTextDirection New value for property <code>textDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextDirection( sTextDirection:sap.ui.core.TextDirection):sap.m.ObjectStatus;

	/**
	* Sets a new value for property {@link #getTitle title}.

Defines the ObjectStatus title.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( sTitle:String):sap.m.ObjectStatus;
}

typedef ObjectStatusArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the ObjectStatus title.
	*/
	@:optional var title:String;

	/**
	* Defines the ObjectStatus text.
	*/
	@:optional var text:String;

	/**
	* Indicates if the <code>ObjectStatus</code> text and icon can be clicked/tapped by the user.

<b>Note:</b> If you set this property to <code>true</code>, you have to also set the <code>text</code> or <code>icon</code> property.
	*/
	@:optional var active:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the text value state. The allowed values are from the enum type <code>sap.ui.core.ValueState</code>. Since version 1.66 the <code>state</code> property also accepts values from enum type <code>sap.ui.core.IndicationColor</code>.
	*/
	@:optional var state:String;

	/**
	* Determines whether the background color reflects the set <code>state</code> instead of the control's text.
	*/
	@:optional var inverted:haxe.extern.EitherType<String,Bool>;

	/**
	* Icon URI. This may be either an icon font or image path.
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* By default, this is set to true but then one or more requests are sent trying to get the density perfect version of image if this version of image doesn't exist on the server.

If bandwidth is key for the application, set this value to false.
	*/
	@:optional var iconDensityAware:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the direction of the text, not including the title. Available options for the text direction are LTR (left-to-right) and RTL (right-to-left). By default the control inherits the text direction from its parent control.
	*/
	@:optional var textDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

	/**
	* Association to controls / IDs, which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Fires when the user clicks/taps on active text.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
