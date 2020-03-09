package sap.m;

@:native("sap.m.Link")

/**
* A hyperlink control used to navigate to other apps and web pages or to trigger actions.

<h3>Overview</h3>

The <code>Link</code> control is a clickable text element visualized in such a way that it stands out from the standard text. On hover, it changes its style to underlined text to provide additional feedback to the user.

<h3>Usage</h3>

You can set the <code>Link</code> to be enabled or disabled.

To create a visual hierarchy in large lists of links, you can set the less important links as <code>subtle</code> or the more important ones as <code>emphasized</code>.

To specify where the linked content is opened, you can use the <code>target</code> property.

<h3>Responsive behavior</h3>

If there is not enough space, the text of the <code>Link</code> becomes truncated. If the <code>wrapping</code> property is set to <code>true</code>, the text will be displayed on several lines, instead of being truncated.
*/
extern class Link extends sap.ui.core.Control implements sap.ui.core.IShrinkable implements sap.ui.core.IFormContent
{
	@:overload(function(?sId:String, ?mSettings:LinkArgs):Void {})
	public function new(?mSettings:LinkArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.m.Link{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.m.Link;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.Link{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.Link;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.m.Link</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Link</code> itself.

Event is fired when the user triggers the link control.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Link</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Link;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.m.Link</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Link;

	/**
	* Creates a new subclass of class sap.m.Link with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

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
	* Gets current value of property {@link #getEmphasized emphasized}.

Emphasized links look visually more important than regular links.

Default value is <code>false</code>.
	* @return	Value of property <code>emphasized</code>
	*/
	public function getEmphasized( ):Bool;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Determines whether the link can be triggered by the user.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets current value of property {@link #getHref href}.

Defines the link target URI. Supports standard hyperlink behavior. If a JavaScript action should be triggered, this should not be set, but instead an event handler for the <code>press</code> event should be registered.
	* @return	Value of property <code>href</code>
	*/
	public function getHref( ):sap.ui.core.URI;

	/**
	* Returns a metadata object for class sap.m.Link.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getSubtle subtle}.

Subtle links look more like standard text than like links. They should only be used to help with visual hierarchy between large data lists of important and less important links. Subtle links should not be used in any other use case.

Default value is <code>false</code>.
	* @return	Value of property <code>subtle</code>
	*/
	public function getSubtle( ):Bool;

	/**
	* Gets current value of property {@link #getTarget target}.

Specifies a target where the linked content will open.

Options are the standard values for window.open() supported by browsers: <code>_self</code>, <code>_top</code>, <code>_blank</code>, <code>_parent</code>, <code>_search</code>. Alternatively, a frame name can be entered. This property is only used when the <code>href</code> property is set.
	* @return	Value of property <code>target</code>
	*/
	public function getTarget( ):String;

	/**
	* Gets current value of property {@link #getText text}.

Defines the displayed link text.

Default value is <code>empty string</code>.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Gets current value of property {@link #getTextAlign textAlign}.

Determines the horizontal alignment of the text.

Default value is <code>Initial</code>.
	* @return	Value of property <code>textAlign</code>
	*/
	public function getTextAlign( ):sap.ui.core.TextAlign;

	/**
	* Gets current value of property {@link #getTextDirection textDirection}.

This property specifies the element's text directionality with enumerated options. By default, the control inherits text direction from the parent DOM.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>textDirection</code>
	*/
	public function getTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Gets current value of property {@link #getValidateUrl validateUrl}.

Defines whether the link target URI should be validated.

If validation fails, the value of the <code>href</code> property will still be set, but will not be applied to the DOM.

<b>Note:</b> Additional whitelisting of URLs is allowed through {@link module:sap/base/security/URLWhitelist URLWhitelist}.

Default value is <code>false</code>.
	* @return	Value of property <code>validateUrl</code>
	*/
	public function getValidateUrl( ):Bool;

	/**
	* Gets current value of property {@link #getWidth width}.

Determines the width of the link (CSS-size such as % or px). When it is set, this is the exact size. When left blank, the text defines the size.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getWrapping wrapping}.

Determines whether the link text is allowed to wrap when there is no sufficient space.

Default value is <code>false</code>.
	* @return	Value of property <code>wrapping</code>
	*/
	public function getWrapping( ):Bool;

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
	* Sets a new value for property {@link #getEmphasized emphasized}.

Emphasized links look visually more important than regular links.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bEmphasized New value for property <code>emphasized</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEmphasized( bEmphasized:Bool):sap.m.Link;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Determines whether the link can be triggered by the user.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( bEnabled:Bool):sap.m.Link;

	/**
	* Sets a new value for property {@link #getHref href}.

Defines the link target URI. Supports standard hyperlink behavior. If a JavaScript action should be triggered, this should not be set, but instead an event handler for the <code>press</code> event should be registered.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHref New value for property <code>href</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHref( sHref:sap.ui.core.URI):sap.m.Link;

	/**
	* Sets a new value for property {@link #getSubtle subtle}.

Subtle links look more like standard text than like links. They should only be used to help with visual hierarchy between large data lists of important and less important links. Subtle links should not be used in any other use case.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bSubtle New value for property <code>subtle</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSubtle( bSubtle:Bool):sap.m.Link;

	/**
	* Sets a new value for property {@link #getTarget target}.

Specifies a target where the linked content will open.

Options are the standard values for window.open() supported by browsers: <code>_self</code>, <code>_top</code>, <code>_blank</code>, <code>_parent</code>, <code>_search</code>. Alternatively, a frame name can be entered. This property is only used when the <code>href</code> property is set.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTarget New value for property <code>target</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTarget( sTarget:String):sap.m.Link;

	/**
	* Sets a new value for property {@link #getText text}.

Defines the displayed link text.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( sText:String):sap.m.Link;

	/**
	* Sets a new value for property {@link #getTextAlign textAlign}.

Determines the horizontal alignment of the text.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Initial</code>.
	* @param	sTextAlign New value for property <code>textAlign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextAlign( sTextAlign:sap.ui.core.TextAlign):sap.m.Link;

	/**
	* Sets a new value for property {@link #getTextDirection textDirection}.

This property specifies the element's text directionality with enumerated options. By default, the control inherits text direction from the parent DOM.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sTextDirection New value for property <code>textDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextDirection( sTextDirection:sap.ui.core.TextDirection):sap.m.Link;

	/**
	* Sets a new value for property {@link #getValidateUrl validateUrl}.

Defines whether the link target URI should be validated.

If validation fails, the value of the <code>href</code> property will still be set, but will not be applied to the DOM.

<b>Note:</b> Additional whitelisting of URLs is allowed through {@link module:sap/base/security/URLWhitelist URLWhitelist}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bValidateUrl New value for property <code>validateUrl</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValidateUrl( bValidateUrl:Bool):sap.m.Link;

	/**
	* Sets a new value for property {@link #getWidth width}.

Determines the width of the link (CSS-size such as % or px). When it is set, this is the exact size. When left blank, the text defines the size.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.m.Link;

	/**
	* Sets a new value for property {@link #getWrapping wrapping}.

Determines whether the link text is allowed to wrap when there is no sufficient space.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bWrapping New value for property <code>wrapping</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWrapping( bWrapping:Bool):sap.m.Link;
}

typedef LinkArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the displayed link text.
	*/
	@:optional var text:String;

	/**
	* Determines whether the link can be triggered by the user.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies a target where the linked content will open.

Options are the standard values for window.open() supported by browsers: <code>_self</code>, <code>_top</code>, <code>_blank</code>, <code>_parent</code>, <code>_search</code>. Alternatively, a frame name can be entered. This property is only used when the <code>href</code> property is set.
	*/
	@:optional var target:String;

	/**
	* Determines the width of the link (CSS-size such as % or px). When it is set, this is the exact size. When left blank, the text defines the size.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Defines the link target URI. Supports standard hyperlink behavior. If a JavaScript action should be triggered, this should not be set, but instead an event handler for the <code>press</code> event should be registered.
	*/
	@:optional var href:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Defines whether the link target URI should be validated.

If validation fails, the value of the <code>href</code> property will still be set, but will not be applied to the DOM.

<b>Note:</b> Additional whitelisting of URLs is allowed through {@link module:sap/base/security/URLWhitelist URLWhitelist}.
	*/
	@:optional var validateUrl:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the link text is allowed to wrap when there is no sufficient space.
	*/
	@:optional var wrapping:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the horizontal alignment of the text.
	*/
	@:optional var textAlign:haxe.extern.EitherType<String,sap.ui.core.TextAlign>;

	/**
	* This property specifies the element's text directionality with enumerated options. By default, the control inherits text direction from the parent DOM.
	*/
	@:optional var textDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

	/**
	* Subtle links look more like standard text than like links. They should only be used to help with visual hierarchy between large data lists of important and less important links. Subtle links should not be used in any other use case.
	*/
	@:optional var subtle:haxe.extern.EitherType<String,Bool>;

	/**
	* Emphasized links look visually more important than regular links.
	*/
	@:optional var emphasized:haxe.extern.EitherType<String,Bool>;

	/**
	* Association to controls / ids which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / ids which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Event is fired when the user triggers the link control.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
