package sap.ui.commons;

@:native("sap.ui.commons.Link")

/**
* Provides an absolute or relative reference to an internal or external URL. The classical target parameters are supported. Another usage scenario is triggering an action, for example to open a popup window. In both cases, the link is a hypertext link.
*/
extern class Link extends sap.ui.core.Control implements sap.ui.commons.ToolbarItem implements sap.ui.commons.FormattedTextViewControl implements sap.ui.core.IFormContent
{
	@:overload(function(?sId:String, ?mSettings:LinkArgs):Void {})
	public function new(?mSettings:LinkArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.ui.commons.Link{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.ui.commons.Link;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.commons.Link{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.commons.Link;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.ui.commons.Link</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.Link</code> itself.

Event is fired when the user clicks the control.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.Link</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.Link;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.ui.commons.Link</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.Link;

	/**
	* Creates a new subclass of class sap.ui.commons.Link with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Puts the focus to the link.
	* @return	Void
	*/
	public function focus( ):Void;

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

Whether the link can be triggered by the user.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets current value of property {@link #getHelpId helpId}.

Unique identifier used for help service.

Default value is <code>empty string</code>.
	* @return	Value of property <code>helpId</code>
	*/
	public function getHelpId( ):String;

	/**
	* Gets current value of property {@link #getHref href}.

The link target URI. Supports standard hyperlink behavior. If an action should be triggered, this should not be set, but instead an event handler for the "press" event should be registered.
	* @return	Value of property <code>href</code>
	*/
	public function getHref( ):sap.ui.core.URI;

	/**
	* Returns a metadata object for class sap.ui.commons.Link.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getTarget target}.

Options are _self, _top, _blank, _parent, _search. Alternatively, a frame name can be entered.
	* @return	Value of property <code>target</code>
	*/
	public function getTarget( ):String;

	/**
	* Gets current value of property {@link #getText text}.

Link text to be displayed.

Default value is <code>empty string</code>.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Gets current value of property {@link #getWidth width}.

Width of text link. When it is set (CSS-size such as % or px), this is the exact size. When left blank, the text defines the size.
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
	* Sets a new value for property {@link #getEnabled enabled}.

Whether the link can be triggered by the user.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( bEnabled:Bool):sap.ui.commons.Link;

	/**
	* Sets a new value for property {@link #getHelpId helpId}.

Unique identifier used for help service.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sHelpId New value for property <code>helpId</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHelpId( sHelpId:String):sap.ui.commons.Link;

	/**
	* Sets a new value for property {@link #getHref href}.

The link target URI. Supports standard hyperlink behavior. If an action should be triggered, this should not be set, but instead an event handler for the "press" event should be registered.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHref New value for property <code>href</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHref( sHref:sap.ui.core.URI):sap.ui.commons.Link;

	/**
	* Sets a new value for property {@link #getTarget target}.

Options are _self, _top, _blank, _parent, _search. Alternatively, a frame name can be entered.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTarget New value for property <code>target</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTarget( sTarget:String):sap.ui.commons.Link;

	/**
	* Sets a new value for property {@link #getText text}.

Link text to be displayed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( sText:String):sap.ui.commons.Link;

	/**
	* Sets a new value for property {@link #getWidth width}.

Width of text link. When it is set (CSS-size such as % or px), this is the exact size. When left blank, the text defines the size.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.commons.Link;
}

typedef LinkArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Link text to be displayed.
	*/
	@:optional var text:String;

	/**
	* Whether the link can be triggered by the user.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Unique identifier used for help service.
	*/
	@:optional var helpId:String;

	/**
	* The link target URI. Supports standard hyperlink behavior. If an action should be triggered, this should not be set, but instead an event handler for the "press" event should be registered.
	*/
	@:optional var href:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Options are _self, _top, _blank, _parent, _search. Alternatively, a frame name can be entered.
	*/
	@:optional var target:String;

	/**
	* Width of text link. When it is set (CSS-size such as % or px), this is the exact size. When left blank, the text defines the size.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Association to controls / ids which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / ids which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Event is fired when the user clicks the control.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
