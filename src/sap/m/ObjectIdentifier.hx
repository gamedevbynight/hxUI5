package sap.m;

@:native("sap.m.ObjectIdentifier")

/**
* The ObjectIdentifier is a display control that enables the user to easily identify a specific object. The ObjectIdentifier title is the key identifier of the object and additional text and icons can be used to further distinguish it from other objects.

<b>Note:</b> This control should not be used with {@link sap.m.Label} or in Forms along with {@link sap.m.Label}.
*/
extern class ObjectIdentifier extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ObjectIdentifierArgs):Void {})
	public function new(?mSettings:ObjectIdentifierArgs):Void;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.ObjectIdentifier{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.ObjectIdentifier;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:titlePress titlePress} event of this <code>sap.m.ObjectIdentifier</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ObjectIdentifier</code> itself.

Fires when the title is active and the user taps/clicks on it.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ObjectIdentifier</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachTitlePress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.ObjectIdentifier;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:titlePress titlePress} event of this <code>sap.m.ObjectIdentifier</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachTitlePress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.ObjectIdentifier;

	/**
	* Creates a new subclass of class sap.m.ObjectIdentifier with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

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
	* Returns a metadata object for class sap.m.ObjectIdentifier.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getText text}.

Defines the object text.
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
	* Gets current value of property {@link #getTitle title}.

Defines the object title.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Gets current value of property {@link #getTitleActive titleActive}.

Indicates if the ObjectIdentifier's title is clickable.

Default value is <code>false</code>.
	* @return	Value of property <code>titleActive</code>
	*/
	public function getTitleActive( ):Bool;

	/**
	* Gets current value of property {@link #getVisible visible}.

Indicates if the ObjectIdentifier is visible. An invisible ObjectIdentifier is not being rendered.

Default value is <code>true</code>.
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

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
	* Sets text. Default value is empty/undefined.
	* @param	sText New value for property text
	* @return	this to allow method chaining
	*/
	public function setText( sText:String):sap.m.ObjectIdentifier;

	/**
	* Sets a new value for property {@link #getTextDirection textDirection}.

Specifies the element's text directionality with enumerated options. By default, the control inherits text direction from the DOM.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sTextDirection New value for property <code>textDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextDirection( sTextDirection:sap.ui.core.TextDirection):sap.m.ObjectIdentifier;

	/**
	* Sets the title. Default value is empty/undefined.
	* @param	sTitle New value for property title
	* @return	this to allow method chaining
	*/
	public function setTitle( sTitle:String):sap.m.ObjectIdentifier;

	/**
	* Sets property titleActive. Default value is false.
	* @param	bValue new value for property titleActive
	* @return	this to allow method chaining
	*/
	public function setTitleActive( bValue:Bool):sap.m.ObjectIdentifier;

	/**
	* Sets a new value for property {@link #getVisible visible}.

Indicates if the ObjectIdentifier is visible. An invisible ObjectIdentifier is not being rendered.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisible New value for property <code>visible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisible( bVisible:Bool):sap.m.ObjectIdentifier;
}

typedef ObjectIdentifierArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the object title.
	*/
	@:optional var title:String;

	/**
	* Defines the object text.
	*/
	@:optional var text:String;

	/**
	* Indicates if the ObjectIdentifier is visible. An invisible ObjectIdentifier is not being rendered.
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

	/**
	* Indicates if the ObjectIdentifier's title is clickable.
	*/
	@:optional var titleActive:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies the element's text directionality with enumerated options. By default, the control inherits text direction from the DOM.
	*/
	@:optional var textDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

    /**
    * Control to display the object title (can be either Text or Link).
    */
	@:optional var _titleControl:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * Text control to display the object text.
    */
	@:optional var _textControl:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* Association to controls / IDs, which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Fires when the title is active and the user taps/clicks on it.
	*/
	@:optional var titlePress:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
