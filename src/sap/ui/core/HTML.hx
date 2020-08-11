package sap.ui.core;

@:native("sap.ui.core.HTML")

/**
* Embeds standard HTML in an SAPUI5 control tree.

Security Hint: By default, the HTML content (property 'content') is not sanitized and therefore open to XSS attacks. Applications that want to show user defined input in an HTML control, should either sanitize the content on their own or activate automatic sanitizing through the {@link #setSanitizeContent sanitizeContent} property.

Although this control inherits the <code>tooltip</code> aggregation/property and the <code>hasStyleClass</code>, <code>addStyleClass</code>, <code>removeStyleClass</code> and <code>toggleStyleClass</code> methods from its base class, it doesn't support them. Instead, the defined HTML content can contain a tooltip (title attribute) or custom CSS classes.

For further hints about usage restrictions for this control, see also the documentation of the <code>content</code> property.
*/
extern class HTML extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:HTMLArgs):Void {})
	public function new(?mSettings:HTMLArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:afterRendering afterRendering} event of this <code>sap.ui.core.HTML</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.core.HTML</code> itself.

Fired after the HTML control has been rendered. Allows to manipulate the resulting DOM.

When the control doesn't have string content and no preserved DOM existed for this control, then this event will fire, but there won't be a DOM node for this control.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.core.HTML</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAfterRendering( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.HTML;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:afterRendering afterRendering} event of this <code>sap.ui.core.HTML</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAfterRendering( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.HTML;

	/**
	* Creates a new subclass of class sap.ui.core.HTML with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getContent content}.

HTML content to be displayed, defined as a string.

The content is converted to DOM nodes with a call to <code>new jQuery(content)</code>, so any restrictions for the jQuery constructor apply to the content of the HTML control as well.

Some of these restrictions (there might be others!) are: <ul> <li>the content must be enclosed in tags, pure text is not supported. </li> <li>if the content contains script tags, they will be executed but they will not appear in the resulting DOM tree. When the contained code tries to find the corresponding script tag, it will fail.</li> </ul>

Please consider to consult the jQuery documentation as well.

The HTML control currently doesn't prevent the usage of multiple root nodes in its DOM content (e.g. <code>setContent("&lt;div/>&lt;div/>")</code>), but this is not a guaranteed feature. The accepted content might be restricted to single root nodes in future versions. To notify applications about this fact, a warning is written in the log when multiple root nodes are used.

When changing the content dynamically, ensure that the ID of the root node remains the same as the HTML control's ID. Otherwise it cannot be guaranteed that certain lifecycle events take place.
	* @return	Value of property <code>content</code>
	*/
	public function getContent( ):String;

	/**
	* null
	* @param	sSuffix Suffix of the Element to be retrieved or empty
	* @return	The element's DOM reference or null
	*/
	public function getDomRef( ?sSuffix:String):js.html.Element;

	/**
	* Returns a metadata object for class sap.ui.core.HTML.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getPreferDOM preferDOM}.

Whether existing DOM content is preferred over the given content string.

There are two scenarios where this flag is relevant (when set to true): <ul> <li>for the initial rendering: when an HTML control is added to a UIArea for the first time and if the root node of that UIArea contained DOM content with the same id as the HTML control, then that content will be used for rendering instead of any specified string content</li> <li>any follow-up rendering: when an HTML control is rendered for the second or any later time and the preferDOM flag is set, then the DOM from the first rendering is preserved and not replaced by the string content</li> </ul>

As preserving the existing DOM is the most common use case of the HTML control, the default value is true.

Default value is <code>true</code>.
	* @return	Value of property <code>preferDOM</code>
	*/
	public function getPreferDOM( ):Bool;

	/**
	* Gets current value of property {@link #getSanitizeContent sanitizeContent}.

Whether to run the HTML sanitizer once the content (HTML markup) is applied or not.

To configure the set of allowed URLs, you can use the {@link jQuery.sap.addUrlWhitelist whitelist API}.

Default value is <code>false</code>.
	* @return	Value of property <code>sanitizeContent</code>
	*/
	public function getSanitizeContent( ):Bool;

	/**
	* Gets current value of property {@link #getVisible visible}.

Specifies whether the control is visible. Invisible controls are not rendered.

Default value is <code>true</code>.
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

	/**
	* Sets a new value for property {@link #getContent content}.

HTML content to be displayed, defined as a string.

The content is converted to DOM nodes with a call to <code>new jQuery(content)</code>, so any restrictions for the jQuery constructor apply to the content of the HTML control as well.

Some of these restrictions (there might be others!) are: <ul> <li>the content must be enclosed in tags, pure text is not supported. </li> <li>if the content contains script tags, they will be executed but they will not appear in the resulting DOM tree. When the contained code tries to find the corresponding script tag, it will fail.</li> </ul>

Please consider to consult the jQuery documentation as well.

The HTML control currently doesn't prevent the usage of multiple root nodes in its DOM content (e.g. <code>setContent("&lt;div/>&lt;div/>")</code>), but this is not a guaranteed feature. The accepted content might be restricted to single root nodes in future versions. To notify applications about this fact, a warning is written in the log when multiple root nodes are used.

When changing the content dynamically, ensure that the ID of the root node remains the same as the HTML control's ID. Otherwise it cannot be guaranteed that certain lifecycle events take place.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sContent New value for property <code>content</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContent( sContent:String):sap.ui.core.HTML;

	/**
	* Sets some new DOM content for this HTML control. The content will replace the existing content after the next rendering. Properties are not modified, but preferDOM should be set to true.
	* @param	oDom the new DOM content
	* @return	<code>this</code> to facilitate method chaining
	*/
	public function setDOMContent( oDom:js.html.Element):sap.ui.core.HTML;

	/**
	* Sets a new value for property {@link #getPreferDOM preferDOM}.

Whether existing DOM content is preferred over the given content string.

There are two scenarios where this flag is relevant (when set to true): <ul> <li>for the initial rendering: when an HTML control is added to a UIArea for the first time and if the root node of that UIArea contained DOM content with the same id as the HTML control, then that content will be used for rendering instead of any specified string content</li> <li>any follow-up rendering: when an HTML control is rendered for the second or any later time and the preferDOM flag is set, then the DOM from the first rendering is preserved and not replaced by the string content</li> </ul>

As preserving the existing DOM is the most common use case of the HTML control, the default value is true.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bPreferDOM New value for property <code>preferDOM</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPreferDOM( ?bPreferDOM:Bool):sap.ui.core.HTML;

	/**
	* Sets a new value for property {@link #getSanitizeContent sanitizeContent}.

Whether to run the HTML sanitizer once the content (HTML markup) is applied or not.

To configure the set of allowed URLs, you can use the {@link jQuery.sap.addUrlWhitelist whitelist API}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bSanitizeContent New value for property <code>sanitizeContent</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSanitizeContent( ?bSanitizeContent:Bool):sap.ui.core.HTML;

	/**
	* Sets a new value for property {@link #getVisible visible}.

Specifies whether the control is visible. Invisible controls are not rendered.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisible New value for property <code>visible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisible( ?bVisible:Bool):sap.ui.core.HTML;
}

typedef HTMLArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* HTML content to be displayed, defined as a string.

The content is converted to DOM nodes with a call to <code>new jQuery(content)</code>, so any restrictions for the jQuery constructor apply to the content of the HTML control as well.

Some of these restrictions (there might be others!) are: <ul> <li>the content must be enclosed in tags, pure text is not supported. </li> <li>if the content contains script tags, they will be executed but they will not appear in the resulting DOM tree. When the contained code tries to find the corresponding script tag, it will fail.</li> </ul>

Please consider to consult the jQuery documentation as well.

The HTML control currently doesn't prevent the usage of multiple root nodes in its DOM content (e.g. <code>setContent("&lt;div/>&lt;div/>")</code>), but this is not a guaranteed feature. The accepted content might be restricted to single root nodes in future versions. To notify applications about this fact, a warning is written in the log when multiple root nodes are used.

When changing the content dynamically, ensure that the ID of the root node remains the same as the HTML control's ID. Otherwise it cannot be guaranteed that certain lifecycle events take place.
	*/
	@:optional var content:String;

	/**
	* Whether existing DOM content is preferred over the given content string.

There are two scenarios where this flag is relevant (when set to true): <ul> <li>for the initial rendering: when an HTML control is added to a UIArea for the first time and if the root node of that UIArea contained DOM content with the same id as the HTML control, then that content will be used for rendering instead of any specified string content</li> <li>any follow-up rendering: when an HTML control is rendered for the second or any later time and the preferDOM flag is set, then the DOM from the first rendering is preserved and not replaced by the string content</li> </ul>

As preserving the existing DOM is the most common use case of the HTML control, the default value is true.
	*/
	@:optional var preferDOM:haxe.extern.EitherType<String,Bool>;

	/**
	* Whether to run the HTML sanitizer once the content (HTML markup) is applied or not.

To configure the set of allowed URLs, you can use the {@link jQuery.sap.addUrlWhitelist whitelist API}.
	*/
	@:optional var sanitizeContent:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies whether the control is visible. Invisible controls are not rendered.
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

	/**
	* Fired after the HTML control has been rendered. Allows to manipulate the resulting DOM.

When the control doesn't have string content and no preserved DOM existed for this control, then this event will fire, but there won't be a DOM node for this control.
	*/
	@:optional var afterRendering:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
