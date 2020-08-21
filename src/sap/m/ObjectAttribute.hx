package sap.m;

@:native("sap.m.ObjectAttribute")

/**
* The <code>ObjectAttribute</code> control displays a text field that can be normal or active. The <code>ObjectAttribute</code> fires a <code>press</code> event when the user chooses the active text.

<b>Note:</b> If property <code>active</code> is set to <code>true</code>, only the value of the <code>text</code> property is styled and acts as a link. In this case the <code>text</code> property must also be set, as otherwise there will be no link displayed for the user.
*/
extern class ObjectAttribute extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ObjectAttributeArgs):Void {})
	public function new(?mSettings:ObjectAttributeArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.m.ObjectAttribute</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ObjectAttribute</code> itself.

Fires when the user clicks on active text.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ObjectAttribute</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ObjectAttribute;

	/**
	* Destroys the customContent in the aggregation {@link #getCustomContent customContent}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyCustomContent( ):sap.m.ObjectAttribute;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.m.ObjectAttribute</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ObjectAttribute;

	/**
	* Creates a new subclass of class sap.m.ObjectAttribute with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getActive active}.

Indicates if the <code>ObjectAttribute</code> text is selectable for the user.

<b>Note:</b> As of version 1.48, only the value of the <code>text</code> property becomes active (styled and acts like a link) as opposed to both the <code>title</code> and <code>text</code> in the previous versions. If you set this property to <code>true</code>, you have to also set the <code>text</code> property.
	* @return	Value of property <code>active</code>
	*/
	public function getActive( ):Bool;

	/**
	* Gets content of aggregation {@link #getCustomContent customContent}.

When the aggregation is set, it replaces the text, active and textDirection properties. This also ignores the press event. The provided control is displayed as an active link in case it is a sap.m.Link. <b>Note:</b> It will only allow sap.m.Text and sap.m.Link controls.
	* @return	null
	*/
	public function getCustomContent( ):sap.ui.core.Control;

	/**
	* Returns a metadata object for class sap.m.ObjectAttribute.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getText text}.

Defines the ObjectAttribute text.
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

Defines the ObjectAttribute title.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Sets a new value for property {@link #getActive active}.

Indicates if the <code>ObjectAttribute</code> text is selectable for the user.

<b>Note:</b> As of version 1.48, only the value of the <code>text</code> property becomes active (styled and acts like a link) as opposed to both the <code>title</code> and <code>text</code> in the previous versions. If you set this property to <code>true</code>, you have to also set the <code>text</code> property.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	bActive New value for property <code>active</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setActive( ?bActive:Bool):sap.m.ObjectAttribute;

	/**
	* Sets the aggregated {@link #getCustomContent customContent}.
	* @param	oCustomContent The customContent to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCustomContent( oCustomContent:sap.ui.core.Control):sap.m.ObjectAttribute;

	/**
	* Sets a new value for property {@link #getText text}.

Defines the ObjectAttribute text.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( ?sText:String):sap.m.ObjectAttribute;

	/**
	* Sets a new value for property {@link #getTextDirection textDirection}.

Determines the direction of the text, not including the title. Available options for the text direction are LTR (left-to-right) and RTL (right-to-left). By default the control inherits the text direction from its parent control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sTextDirection New value for property <code>textDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextDirection( ?sTextDirection:sap.ui.core.TextDirection):sap.m.ObjectAttribute;

	/**
	* Sets a new value for property {@link #getTitle title}.

Defines the ObjectAttribute title.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( ?sTitle:String):sap.m.ObjectAttribute;
}

typedef ObjectAttributeArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the ObjectAttribute title.
	*/
	@:optional var title:String;

	/**
	* Defines the ObjectAttribute text.
	*/
	@:optional var text:String;

	/**
	* Indicates if the <code>ObjectAttribute</code> text is selectable for the user.

<b>Note:</b> As of version 1.48, only the value of the <code>text</code> property becomes active (styled and acts like a link) as opposed to both the <code>title</code> and <code>text</code> in the previous versions. If you set this property to <code>true</code>, you have to also set the <code>text</code> property.
	*/
	@:optional var active:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the direction of the text, not including the title. Available options for the text direction are LTR (left-to-right) and RTL (right-to-left). By default the control inherits the text direction from its parent control.
	*/
	@:optional var textDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

    /**
    * When the aggregation is set, it replaces the text, active and textDirection properties. This also ignores the press event. The provided control is displayed as an active link in case it is a sap.m.Link. <b>Note:</b> It will only allow sap.m.Text and sap.m.Link controls.
    */
	@:optional var customContent:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * Text control to display title and text property.
    */
	@:optional var _textControl:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* Fires when the user clicks on active text.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
