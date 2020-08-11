package sap.ui.core;

@:native("sap.ui.core.Control")

/**
* Base Class for Controls.

Controls provide the following features: <ul> <li><b>Rendering</b>: the <code>RenderManager</code> only expects instances of class <code>Control</code> in its {@link sap.ui.core.RenderManager#renderControl renderControl} method. By convention, each control class has an associated static class that takes care of rendering the control (its 'Renderer').</li> <li><b>show / hide</b>: a control can be hidden, although it is still part of the control tree, see property {@link #getVisible visible}</li> <li><b>local busy indicator</b>: marks a control visually as 'busy', see properties {@link #getBusy busy} and {@link #getBusyIndicatorDelay busyIndicatorDelay}</li> <li><b>field groups</b>: by assigning the same group ID to a set of editable controls, they form a group which can be validated together. See property {@link #getFieldGroupIds fieldGroupIds} and event {@link #event:validateFieldGroup validateFieldGroup}. The term <i>field</i> was chosen as most often this feature will be used to group editable fields in a form.</li> See the documentation for {@link topic:5b0775397e394b1fb973fa207554003e Field Groups} for more details. <li><b>custom style classes</b>: all controls allow to add custom CSS classes to their rendered DOM without modifying their renderer code. See methods {@link #addStyleClass addStyleClass}, {@link #removeStyleClass removeStyleClass}, {@link #toggleStyleClass toggleStyleClass} and {@link #hasStyleClass hasStyleClass}.</br> The necessary implementation is encapsulated in {@link sap.ui.core.CustomStyleClassSupport CustomStyleClassSupport} and can be applied to selected element classes as well.</li> <li><b>browser events</b>: by calling the methods {@link #attachBrowserEvent attachBrowserEvent} and {@link #detachBrowserEvent detachBrowserEvent}, consumers can let the control class take care of registering / de-registering a given set of event listeners to the control's root DOM node. The framework will adapt the registration whenever the DOM node changes (e.g. before or after rendering or when the control is destroyed).</li> </ul>

See section "{@link topic:8dcab0011d274051808f959800cabf9f Developing Controls}" in the documentation for an introduction to control development.
*/
extern class Control extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:ControlArgs):Void {})
	public function new(?mSettings:ControlArgs):Void;

	/**
	* The string given as "sStyleClass" will be added to the "class" attribute of this control's root HTML element.

This method is intended to be used to mark controls as being of a special type for which special styling can be provided using CSS selectors that reference this style class name.

<pre>
Example:
   myButton.addStyleClass("myRedTextButton"); // add a CSS class to one button instance

...and in CSS:
   .myRedTextButton {
      color: red;
   }
</pre>

This will add the CSS class "myRedTextButton" to the Button HTML and the CSS code above will then make the text in this particular button red.

Only characters allowed inside HTML attributes are allowed. Quotes are not allowed and this method will ignore any strings containing quotes. Strings containing spaces are interpreted as multiple custom style classes which are split by space and can be removed individually later by calling removeStyleClass. Multiple calls with the same sStyleClass will have no different effect than calling once. If sStyleClass is null, empty string or it contains quotes, the call is ignored.
	* @param	sStyleClass the CSS class name to be added
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function addStyleClass( sStyleClass:String):sap.ui.core.Control;

	/**
	* Defines whether the user can select text inside this control. Defaults to <code>true</code> as long as this method has not been called.

<b>Note:</b>This only works in IE and Safari; for Firefox the element's style must be set to: <pre>
  -moz-user-select: none;
</pre> in order to prevent text selection.
	* @param	bAllow whether to allow text selection or not
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function allowTextSelection( bAllow:Bool):sap.ui.core.Control;

	/**
	* Allows binding handlers for any native browser event to the root HTML element of this Control. This internally handles DOM element replacements caused by re-rendering.

<b>IMPORTANT:</b></br> This should be only used as FALLBACK when the Control events do not cover a specific use-case! Always try using SAPUI5 control events, as e.g. accessibility-related functionality is then provided automatically. E.g. when working with a <code>sap.ui.commons.Button</code>, always use the Button's "press" event, not the native "click" event, because "press" is also guaranteed to be fired when certain keyboard activity is supposed to trigger the Button.

In the event handler, <code>this</code> refers to the Control - not to the root DOM element like in jQuery. While the DOM element can be used and modified, the general caveats for working with SAPUI5 control DOM elements apply. In particular the DOM element may be destroyed and replaced by a new one at any time, so modifications that are required to have permanent effect may not be done. E.g. use {@link #addStyleClass} instead if the modification is of visual nature.

Use {@link #detachBrowserEvent} to remove the event handler(s) again.
	* @param	sEventType A string containing one or more JavaScript event types, such as "click" or "blur".
	* @param	fnHandler A function to execute each time the event is triggered.
	* @param	oListener The object, that wants to be notified, when the event occurs
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function attachBrowserEvent( ?sEventType:String, ?fnHandler:()->Void, ?oListener:Dynamic):sap.ui.core.Control;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:validateFieldGroup validateFieldGroup} event of this <code>sap.ui.core.Control</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.core.Control</code> itself.

Event is fired if a logical field group defined by <code>fieldGroupIds</code> of a control was left or when the user explicitly pressed the key combination that triggers validation.

By default, the <code>RETURN</code> key without any modifier keys triggers validation, see {@link #triggerValidateFieldGroup}.

Listen to this event to validate data of the controls belonging to a field group. See {@link #setFieldGroupIds}, or consult the {@link topic:5b0775397e394b1fb973fa207554003e Field Group} documentation.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.core.Control</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachValidateFieldGroup( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.Control;
	@:overload( function(?vFieldGroupIds:String):Bool{ })

	/**
	* Returns whether this control belongs to a given combination of field groups.

If the <code>vFieldGroupIds</code> parameter is not specified, the method checks whether this control belongs to <strong>any</strong> field group, that is, whether any field group ID is defined for it.

If a list of field group IDs is specified, either as an array of strings or as a single string (interpreted as a comma separated list of IDs), then the method will check whether this control belongs to <strong>all</strong> given field groups. Accordingly, an empty list of IDs (empty array or empty string) will always return true.

Note that a string value for <code>vFieldGroupIds</code> (comma separated list) will not be trimmed. All whitespace characters are significant, but in general not recommended in field group IDs.
	* @param	vFieldGroupIds An array of field group IDs or a single string with a comma separated list of IDs to match
	* @return	Whether the field group IDs defined for the control match the given ones
	*/
	public function checkFieldGroupIds( ?vFieldGroupIds:Array<String>):Bool;

	/**
	* Overrides {@link sap.ui.core.Element#clone Element.clone} to clone additional internal state.

The additionally cloned information contains: <ul> <li>browser event handlers attached with {@link #attachBrowserEvent}</li> <li>text selection behavior</li> <li>style classes added with {@link #addStyleClass}</li> </ul>
	* @param	sIdSuffix a suffix to be appended to the cloned element id
	* @param	aLocalIds an array of local IDs within the cloned hierarchy (internally used)
	* @return	reference to the newly created clone
	*/
	public function clone( ?sIdSuffix:String, ?aLocalIds:Array<String>):sap.ui.core.Control;

	/**
	* Removes event handlers which have been previously attached using {@link #attachBrowserEvent}.

Note: listeners are only removed, if the same combination of event type, callback function and context object is given as in the call to <code>attachBrowserEvent</code>.
	* @param	sEventType A string containing one or more JavaScript event types, such as "click" or "blur".
	* @param	fnHandler The function that is to be no longer executed.
	* @param	oListener The context object that was given in the call to <code>attachBrowserEvent</code>.
	* @return	Void
	*/
	public function detachBrowserEvent( ?sEventType:String, ?fnHandler:()->Void, ?oListener:Dynamic):Void;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:validateFieldGroup validateFieldGroup} event of this <code>sap.ui.core.Control</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachValidateFieldGroup( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.Control;

	/**
	* Defines a new subclass of Control with the name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> can contain the same information that {@link sap.ui.core.Element.extend} already accepts, plus the following <code>renderer</code> property:

Example: <pre>
Control.extend("sap.mylib.MyControl", {
  metadata : {
    library : "sap.mylib",
    properties : {
      text : "string",
      width : "sap.ui.core.CSSSize"
    }
  },
  renderer: {
    apiVersion: 2,
    render: function(oRM, oControl) {
      oRM.openStart("div", oControl);
      oRM.style("width", oControl.getWidth());
      oRM.openEnd();
      oRM.text(oControl.getText());
      oRM.close("div");
    }
  }
});
</pre>

There are multiple ways how a renderer can be specified: <ul> <li>As a <b>plain object</b>: The object will be used to create a new renderer by using {@link sap.ui.core.Renderer.extend} to extend the renderer of the base class of this control. The new renderer will have the same global name as this control class with the additional suffix 'Renderer'.<br> <b>Note:</b> The <code>Renderer.extend</code> method expects a plain object (no prototype chain).</li> <li>As a <b>function</b>: The given function will be used as <code>render</code> function of a new renderer; the renderer will be created in the same way as described for the <i>plain object</i> case.</li> <li>As a <b>ready-made renderer</b>, e.g. imported from the corresponding renderer module. As renderers are simple objects (not instances of a specific class), some heuristic is used to distinguish renderers from the <i>plain object</i> case above: An object is assumed to be a ready-made renderer when it has a <code>render</code> function and either is already exposed under the expected global name or has an <code>extend</code> method.</li> <li>As a <b>fully qualified name</b>: The name will be looked up as a global property. If not defined, a module name will be derived from the global name (dots replaced by slashes), the module will be required and provides the renderer, either as AMD export or via the named global property.</li> <li><b>Omitting the <code>renderer</code> property</b> or setting it to <code>undefined</code>: The fully qualified name of the renderer will be derived from the fully qualified name of the control by adding the suffix "Renderer". The renderer then is retrieved in the same way as described for the <i>fully qualified name</i> case.</li> <li><b><code>null</code> or empty string</b>: The control will have no renderer, a call to <code>oControl.getMetadata().getRenderer()</code> will return <code>undefined</code>.</li> </ul>

If the resulting renderer is incomplete (has no <code>render</code> function) or if it cannot be found at all, rendering of the control will be skipped.

<b>Note:</b> The <code>apiVersion: 2</code> flag is required to enable in-place rendering technology. Before setting this property, please ensure that the constraints documented in section "Contract for Renderer.apiVersion 2" of the {@link sap.ui.core.RenderManager RenderManager} API documentation are fulfilled.
	* @param	sClassName fully qualified name of the class that is described by this metadata object
	* @param	oStaticInfo static info to construct the metadata from
	* @return	Constructor of the newly created class
	*/
	public static function extend( sClassName:String, oStaticInfo:Dynamic):()->Void;

	/**
	* Gets current value of property {@link #getBusy busy}.

Whether the control is currently in busy state.

Default value is <code>false</code>.
	* @return	Value of property <code>busy</code>
	*/
	public function getBusy( ):Bool;

	/**
	* Gets current value of property {@link #getBusyIndicatorDelay busyIndicatorDelay}.

The delay in milliseconds, after which the busy indicator will show up for this control.

Default value is <code>1000</code>.
	* @return	Value of property <code>busyIndicatorDelay</code>
	*/
	public function getBusyIndicatorDelay( ):Int;

	/**
	* Gets current value of property {@link #getBusyIndicatorSize busyIndicatorSize}.

The size of the BusyIndicator. For controls with a width smaller 3rem a <code>sap.ui.core.BusyIndicatorSize.Small</code> should be used. If the size could vary in width and the width could get smaller than 3rem, the <code>sap.ui.core.BusyIndicatorSize.Auto</code> option could be used. The default is set to <code>sap.ui.core.BusyIndicatorSize.Medium</code> For a full screen BusyIndicator use <code>sap.ui.core.BusyIndicatorSize.Large</code>.

Default value is <code>Medium</code>.
	* @return	Value of property <code>busyIndicatorSize</code>
	*/
	public function getBusyIndicatorSize( ):sap.ui.core.BusyIndicatorSize;
	@:overload( function(?vFieldGroupIds:String):Array<sap.ui.core.Control>{ })

	/**
	* Returns a list of all child controls with a field group ID. See {@link #checkFieldGroupIds checkFieldGroupIds} for a description of the <code>vFieldGroupIds</code> parameter. Associated controls are not taken into account.
	* @param	vFieldGroupIds ID of the field group or an array of field group IDs to match
	* @return	The list of controls with a field group ID
	*/
	public function getControlsByFieldGroupId( ?vFieldGroupIds:Array<String>):Array<sap.ui.core.Control>;

	/**
	* Returns a copy of the field group IDs array. Modification of the field group IDs need to call {@link #setFieldGroupIds setFieldGroupIds} to apply the changes.
	* @return	copy of the field group IDs
	*/
	public function getFieldGroupIds( ):Array<String>;

	/**
	* Returns the DOMNode Id to be used for the "labelFor" attribute of the label.

By default, this is the Id of the control itself.
	* @return	Id to be used for the <code>labelFor</code>
	*/
	public function getIdForLabel( ):String;

	/**
	* Returns a metadata object for class sap.ui.core.Control.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getVisible visible}.

Whether the control should be visible on the screen.

If set to false, a placeholder will be rendered to mark the location of the invisible control in the DOM of the current page. The placeholder will be hidden and have zero dimensions (<code>display: none</code>).

Also see {@link module:sap/ui/core/InvisibleRenderer InvisibleRenderer}.

Default value is <code>true</code>.
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

	/**
	* Returns true if the given style class or all multiple style classes which are generated by splitting the given string with space are already set on the control via previous call(s) to addStyleClass().
	* @param	sStyleClass the style to check for
	* @return	null
	*/
	public function hasStyleClass( sStyleClass:String):Bool;
	@:overload( function(oRef:String, ?vPosition:String):sap.ui.core.Control{ })
	@:overload( function(oRef:String, ?vPosition:Int):sap.ui.core.Control{ })
	@:overload( function(oRef:js.html.Element, ?vPosition:String):sap.ui.core.Control{ })
	@:overload( function(oRef:js.html.Element, ?vPosition:Int):sap.ui.core.Control{ })
	@:overload( function(oRef:sap.ui.core.Control, ?vPosition:String):sap.ui.core.Control{ })

	/**
	* Puts <code>this</code> control into the specified container (<code>oRef</code>) at the given position (<code>oPosition</code>).

First it is checked whether <code>oRef</code> is a container element / control (has a multiple aggregation with type <code>sap.ui.core.Control</code> and name 'content') or is an Id String of such a container. If this is not the case <code>oRef</code> can either be a Dom Reference or Id String of the UIArea (if it does not yet exist implicitly a new UIArea is created),

The <code>oPosition</code> can be one of the following:

<ul> <li>"first": The control is added as the first element to the container.</li> <li>"last": The control is added as the last element to the container (default).</li> <li>"only": All existing children of the container are removed (not destroyed!) and the control is added as new child.</li> <li><i>index</i>: The control is added at the specified <i>index</i> to the container.</li> </ul>
	* @param	oRef container into which the control should be put
	* @param	vPosition Describes the position where the control should be put into the container
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function placeAt( oRef:sap.ui.core.Control, ?vPosition:Int):sap.ui.core.Control;

	/**
	* Removes the given string from the list of custom style classes that have been set previously. Regular style classes like "sapUiBtn" cannot be removed.
	* @param	sStyleClass the style to be removed
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function removeStyleClass( sStyleClass:String):sap.ui.core.Control;

	/**
	* Set the controls busy state.

<b>Note:</b> The busy state can't be set on controls (e.g. sap.m.ColumnListItem) which renderings have the following tags as DOM root element: area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr|tr
	* @param	bBusy The new busy state to be set
	* @return	<code>this</code> to allow method chaining
	*/
	public function setBusy( bBusy:Bool):sap.ui.core.Control;

	/**
	* Define the delay, after which the busy indicator will show up.
	* @param	iDelay The delay in ms
	* @return	<code>this</code> to allow method chaining
	*/
	public function setBusyIndicatorDelay( iDelay:Int):sap.ui.core.Control;

	/**
	* Sets a new value for property {@link #getBusyIndicatorSize busyIndicatorSize}.

The size of the BusyIndicator. For controls with a width smaller 3rem a <code>sap.ui.core.BusyIndicatorSize.Small</code> should be used. If the size could vary in width and the width could get smaller than 3rem, the <code>sap.ui.core.BusyIndicatorSize.Auto</code> option could be used. The default is set to <code>sap.ui.core.BusyIndicatorSize.Medium</code> For a full screen BusyIndicator use <code>sap.ui.core.BusyIndicatorSize.Large</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Medium</code>.
	* @param	sBusyIndicatorSize New value for property <code>busyIndicatorSize</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBusyIndicatorSize( ?sBusyIndicatorSize:sap.ui.core.BusyIndicatorSize):sap.ui.core.Control;

	/**
	* Sets a new value for property {@link #getFieldGroupIds fieldGroupIds}.

The IDs of a logical field group that this control belongs to.

All fields in a logical field group should share the same <code>fieldGroupId</code>. Once a logical field group is left, the <code>validateFieldGroup</code> event is fired.

For backward compatibility with older releases, field group IDs are syntactically not limited, but it is suggested to use only valid {@link sap.ui.core.ID}s.

See {@link #attachValidateFieldGroup} or consult the {@link topic:5b0775397e394b1fb973fa207554003e Field Group} documentation.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>[]</code>.
	* @param	sFieldGroupIds New value for property <code>fieldGroupIds</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFieldGroupIds( ?sFieldGroupIds:Array<String>):sap.ui.core.Control;

	/**
	* Sets a new value for property {@link #getVisible visible}.

Whether the control should be visible on the screen.

If set to false, a placeholder will be rendered to mark the location of the invisible control in the DOM of the current page. The placeholder will be hidden and have zero dimensions (<code>display: none</code>).

Also see {@link module:sap/ui/core/InvisibleRenderer InvisibleRenderer}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisible New value for property <code>visible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisible( ?bVisible:Bool):sap.ui.core.Control;

	/**
	* The string given as "sStyleClass" will be be either added to or removed from the "class" attribute of this control's root HTML element, depending on the value of "bAdd": if bAdd is true, sStyleClass will be added. If bAdd is not given, sStyleClass will be removed if it is currently present and will be added if not present. If sStyleClass is null or empty string, the call is ignored.

See addStyleClass and removeStyleClass for further documentation.
	* @param	sStyleClass the CSS class name to be added or removed
	* @param	bAdd whether sStyleClass should be added (or removed); when this parameter is not given, sStyleClass will be toggled (removed, if present, and added if not present)
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function toggleStyleClass( sStyleClass:String, bAdd:Bool):sap.ui.core.Control;

	/**
	* Triggers the <code>validateFieldGroup</code> event for this control.

Called by <code>sap.ui.core.UIArea</code> if a field group should be validated after it lost the focus or when the key combination was pressed that was configured to trigger validation.

By default, the <code>RETURN</code> key without any modifier keys triggers validation. There's no public API to change that key combination.

See {@link #attachValidateFieldGroup}.
	* @return	Void
	*/
	public function triggerValidateFieldGroup( ):Void;
}

typedef ControlArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Whether the control is currently in busy state.
	*/
	@:optional var busy:haxe.extern.EitherType<String,Bool>;

	/**
	* The delay in milliseconds, after which the busy indicator will show up for this control.
	*/
	@:optional var busyIndicatorDelay:haxe.extern.EitherType<String,Int>;

	/**
	* The size of the BusyIndicator. For controls with a width smaller 3rem a <code>sap.ui.core.BusyIndicatorSize.Small</code> should be used. If the size could vary in width and the width could get smaller than 3rem, the <code>sap.ui.core.BusyIndicatorSize.Auto</code> option could be used. The default is set to <code>sap.ui.core.BusyIndicatorSize.Medium</code> For a full screen BusyIndicator use <code>sap.ui.core.BusyIndicatorSize.Large</code>.
	*/
	@:optional var busyIndicatorSize:haxe.extern.EitherType<String,sap.ui.core.BusyIndicatorSize>;

	/**
	* Whether the control should be visible on the screen.

If set to false, a placeholder will be rendered to mark the location of the invisible control in the DOM of the current page. The placeholder will be hidden and have zero dimensions (<code>display: none</code>).

Also see {@link module:sap/ui/core/InvisibleRenderer InvisibleRenderer}.
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

	/**
	* The IDs of a logical field group that this control belongs to.

All fields in a logical field group should share the same <code>fieldGroupId</code>. Once a logical field group is left, the <code>validateFieldGroup</code> event is fired.

For backward compatibility with older releases, field group IDs are syntactically not limited, but it is suggested to use only valid {@link sap.ui.core.ID}s.

See {@link #attachValidateFieldGroup} or consult the {@link topic:5b0775397e394b1fb973fa207554003e Field Group} documentation.
	*/
	@:optional var fieldGroupIds:Array<String>;

	/**
	* Event is fired if a logical field group defined by <code>fieldGroupIds</code> of a control was left or when the user explicitly pressed the key combination that triggers validation.

By default, the <code>RETURN</code> key without any modifier keys triggers validation, see {@link #triggerValidateFieldGroup}.

Listen to this event to validate data of the controls belonging to a field group. See {@link #setFieldGroupIds}, or consult the {@link topic:5b0775397e394b1fb973fa207554003e Field Group} documentation.
	*/
	@:optional var validateFieldGroup:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
