package sap.ui.core;

@:native("sap.ui.core.RenderManager")

/**
* A class that handles the rendering of controls.

For the default rendering task of UI5, a shared RenderManager is created and owned by <code>sap.ui.core.Core</code>. Controls or other code that want to render controls outside the default rendering task can create a private instance of RenderManager by calling the {@link sap.ui.core.Core#createRenderManager sap.ui.getCore().createRenderManager()} method. When such a private instance is no longer needed, it should be {@link #destroy destroyed}.

Control renderers only have access to a subset of the public and protected instance methods of this class. The instance methods {@link #flush}, {@link #render} and {@link #destroy} are not part of that subset and are reserved to the owner of the corresponding RenderManager instance. Renderers will use the provided methods to create their HTML output. The RenderManager will collect the HTML output and inject the final HTML DOM at the desired location.

<h3>Renderers</h3> When the {@link #renderControl} method of the RenderManager is invoked, it will retrieve the default renderer for that control. By convention, the default renderer is implemented in its own namespace (static class) which matches the name of the control's class with the additional suffix 'Renderer'. So for a control <code>sap.m.Input</code> the default renderer will be searched for under the global name <code>sap.m.Input<i>Renderer</i></code>.

<h3>In-place DOM patching</h3> As of 1.67, <code>RenderManager</code> provides a set of new APIs to describe the structure of the DOM that can be used by the control renderers.

<pre>

  myButtonRenderer.render = function(rm, oButton) {

      rm.openStart("button", oButton);
      rm.attr("tabindex", 1);
      rm.class("myButton");
      rm.style("width", oButton.getWidth());
      rm.openEnd();
          rm.text(oButton.getText());
      rm.close("button");

  };

</pre>

By default, when the control is invalidated (e.g. a property is changed, an aggregation is removed, or an association is added), it will be registered for re-rendering. During the (re)rendering, the <code>render</code> method of the control renderer is executed via a specified <code>RenderManager</code> interface and the control instance.

Traditional string-based rendering creates a new HTML structure of the control in every rendering cycle and removes the existing control DOM structure from the DOM tree.

The set of new semantic <code>RenderManager</code> APIs lets us understand the structure of the DOM, walk along the live DOM tree, and figure out changes as new APIs are called. If there is a change, then <code>RenderManager</code> patches only the required parts of the live DOM tree. This allows control developers to remove their DOM-related custom setters.

<b>Note:</b> To enable the new in-place rendering technology, the <code>apiVersion</code> property of the control renderer must be set to <code>2</code>. This property is not inherited by subclass renderers. It has to be set anew by each subclass to assure that the extended contract between framework and renderer is fulfilled (see next paragraph).

<pre>

  var myButtonRenderer = {
      apiVersion: 2    // enable in-place DOM patching
  };

  myButtonRenderer.render = function(rm, oButton) {

      rm.openStart("button", oButton);
      ...
      ...
      rm.close("button");

  };

</pre>

<h3>Contract for Renderer.apiVersion 2</h3> To allow a more efficient in-place DOM patching and to ensure the compatibility of the control, the following prerequisites must be fulfilled for the controls using the new rendering technology:

<ul> <li>Legacy control renderers must be migrated to the new semantic renderer API: {@link sap.ui.core.RenderManager#openStart openStart}, {@link sap.ui.core.RenderManager#voidStart voidStart}, {@link sap.ui.core.RenderManager#style style}, {@link sap.ui.core.RenderManager#class class}, {@link sap.ui.core.RenderManager#attr attr}, {@link sap.ui.core.RenderManager#openEnd openEnd}, {@link sap.ui.core.RenderManager#voidEnd voidEnd}, {@link sap.ui.core.RenderManager#text text}, {@link sap.ui.core.RenderManager#unsafeHtml unsafeHtml}, {@link sap.ui.core.RenderManager#icon icon}, {@link sap.ui.core.RenderManager#accessibilityState accessibilityState}, {@link sap.ui.core.RenderManager#renderControl renderControl}, {@link sap.ui.core.RenderManager#cleanupControlWithoutRendering cleanupControlWithoutRendering} </li> <li>During the migration, restrictions that are defined in the API documentation of those methods must be taken into account, e.g. tag and attribute names must be set in their canonical form.</li> <li>Fault tolerance of HTML5 markup is not applicable for the new semantic rendering API, e.g. except void tags, all tags must be closed; duplicate attributes within one HTML element must not exist.</li> <li>Existing control DOM structure will not be removed from the DOM tree; therefore all custom events, including the ones that are registered with jQuery, must be de-registered correctly at the <code>onBeforeRendering</code> and <code>exit</code> hooks.</li> <li>Classes and attribute names must not be escaped.</li> <li>Styles should be validated via types (e.g. <code>sap.ui.core.CSSSize</code>). But this might not be sufficient in all cases, e.g. validated URL values can contain harmful content; in this case {@link module:sap/base/security/encodeCSS encodeCSS} can be used.</li> <li>To allow a more efficient DOM update, second parameter of the {@link sap.ui.core.RenderManager#openStart openStart} or {@link sap.ui.core.RenderManager#voidStart voidStart} methods must be used to identify elements, e.g. use <code>rm.openStart("div", oControl.getId() + "-suffix");</code> instead of <code>rm.openStart("div").attr("id", oControl.getId() + "-suffix");</code></li> <li>Controls that listen to the <code>focusin</code> event must double check their focus handling. Since DOM nodes are not removed and only reused, the <code>focusin</code> event might not be fired during re-rendering.</li> </ul>
*/
extern class RenderManager
{
public function new():Void;

	/**
	* Collects accessibility related attributes for an <code>Element</code> and renders them as part of the currently rendered DOM element.

See the WAI-ARIA specification for a general description of the accessibility related attributes. Attributes are only rendered when the accessibility feature is activated in the UI5 runtime configuration.

The values for the attributes are collected from the following sources (last one wins): <ol> <li>from the properties and associations of the given <code>oElement</code>, using a heuristic mapping (described below)</li> <li>from the <code>mProps</code> parameter, as provided by the caller</li> <li>from the parent of the given <code>oElement</code>, if it has a parent and if the parent implements the method {@link sap.ui.core.Element#enhanceAccessibilityState enhanceAccessibilityState}</li> </ol> If no <code>oElement</code> is given, only <code>mProps</code> will be taken into account.

<h3>Heuristic Mapping</h3> The following mapping from properties/values to ARIA attributes is used (if the element does have such properties): <ul> <li><code>editable===false</code> => <code>aria-readonly="true"</code></li> <li><code>enabled===false</code> => <code>aria-disabled="true"</code></li> <li><code>visible===false</code> => <code>aria-hidden="true"</code></li> <li><code>required===true</code> => <code>aria-required="true"</code></li> <li><code>selected===true</code> => <code>aria-selected="true"</code></li> <li><code>checked===true</code> => <code>aria-checked="true"</code></li> </ul>

In case of the <code>required</code> property, all label controls which reference the given element in their <code>labelFor</code> relation are additionally taken into account when determining the value for the <code>aria-required</code> attribute.

Additionally, the associations <code>ariaDescribedBy</code> and <code>ariaLabelledBy</code> are used to determine the lists of IDS for the ARIA attributes <code>aria-describedby</code> and <code>aria-labelledby</code>.

Label controls that reference the given element in their <code>labelFor</code> relation are automatically added to the <code>aria-labelledby</code> attributes.

Note: This function is only a heuristic of a control property to ARIA attribute mapping. Control developers have to check whether it fulfills their requirements. In case of problems (for example the RadioButton has a <code>selected</code> property but must provide an <code>aria-checked</code> attribute) the auto-generated result of this function can be influenced via the parameter <code>mProps</code> as described below.

The parameter <code>mProps</code> can be used to either provide additional attributes which should be rendered and/or to avoid the automatic generation of single ARIA attributes. The 'aria-' prefix will be prepended automatically to the keys (Exception: Attribute <code>role</code> does not get the prefix 'aria-').

Examples:<br> <code>{hidden : true}</code> results in <code>aria-hidden="true"</code> independent of the presence or absence of the visibility property.<br> <code>{hidden : null}</code> ensures that no <code>aria-hidden</code> attribute is written independent of the presence or absence of the visibility property.<br>

The function behaves in the same way for the associations <code>ariaDescribedBy</code> and <code>ariaLabelledBy</code>. To append additional values to the auto-generated <code>aria-describedby</code> and <code>aria-labelledby</code> attributes, the following format can be used: <pre>
  {describedby : {value: "id1 id2", append: true}} =>  aria-describedby = "ida idb id1 id2"
</pre> (assuming that "ida idb" is the auto-generated part based on the association <code>ariaDescribedBy</code>).
	* @param	oElement The <code>Element</code> whose accessibility state should be rendered
	* @param	mProps A map of additional properties that should be added or changed.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function accessibilityState( ?oElement:sap.ui.core.Element, ?mProps:Dynamic):sap.ui.core.RenderManager;

	/**
	* Adds a class to the class collection if the name is not empty or null. The class collection is flushed if it is written to the buffer using {@link #writeClasses}
	* @param	sName name of the class to be added; null values are ignored
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addClass( sName:String):sap.ui.core.RenderManager;
	@:overload( function(sName:String, vValue:String):sap.ui.core.RenderManager{ })
	@:overload( function(sName:String, vValue:Float):sap.ui.core.RenderManager{ })

	/**
	* Adds a style property to the style collection if the value is not empty or null The style collection is flushed if it is written to the buffer using {@link #writeStyle}
	* @param	sName Name of the CSS property to write
	* @param	vValue Value to write
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addStyle( sName:String, vValue:Int):sap.ui.core.RenderManager;

	/**
	* Adds an attribute name-value pair to the last open HTML element.

This is only valid when called between <code>openStart/voidStart</code> and <code>openEnd/voidEnd</code>. The attribute name must not be equal to <code>style</code> or <code>class</code>. Styles and classes must be set via dedicated <code>class</code> or <code>style</code> methods. To update the DOM correctly, all attribute names have to be used in their canonical form. For HTML elements, {@link https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes attribute names} must all be set in lowercase. For foreign elements, such as SVG, {@link https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute attribute names} can be set in upper camel case (e.g. viewBox).
	* @param	sName Name of the attribute
	* @param	vValue Value of the attribute
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attr( sName:String, vValue:Dynamic):sap.ui.core.RenderManager;

	/**
	* Cleans up the rendering state of the given control without rendering it.

A control is responsible for the rendering of all its child controls. But in some cases it makes sense that a control only renders a subset of its children based on some criterion. For example, a typical carousel control might, for performance reasons, only render the currently visible children (and maybe some child before and after the visible area to facilitate slide-in / slide-out animations), but not all children. This leads to situations where a child had been rendered before, but shouldn't be rendered anymore after an update of the carousel's position. The DOM related state of that child then must be cleaned up correctly, e.g. by de-registering resize handlers or native event handlers. <code>cleanupControlWithoutRendering</code> helps with that task by triggering the same activities that the normal rendering triggers before the rendering of a control (e.g. it fires the <code>BeforeRendering</code> event). It just doesn't call the renderer and the control will not receive an <code>AfterRendering</code> event.

The following example shows how <code>renderControl</code> and <code>cleanupControlWithoutRendering</code> should be used:

<pre>
  CarouselRenderer.render = function(rm, oCarousel){

    ...

    oCarousel.getPages().forEach( function( oPage ) {
       if ( oCarousel.isPageToBeRendered( oPage ) ) {
          rm.renderControl( oPage ); // onBeforeRendering, render, later onAfterRendering
       } else {
          rm.cleanupControlWithoutRendering( oPage ); // onBeforeRendering
       }
    });

    ...

  };
</pre>

<h3>DOM Removal</h3> The method does not remove the DOM of the given control. The caller of this method has to take care to remove it at some later point in time. It should indeed be <i>later</i>, not <i>before</i> as the <code>onBeforeRendering</code> hook of the control might need access to the old DOM for a proper cleanup.

For parents which are rendered with the normal mechanism as shown in the example above, the removal of the old child DOM is guaranteed. The whole DOM of the parent control (including the DOM of the no longer rendered child) will be replaced with new DOM (no longer containing the child) when the rendering cycle finishes.

<b>Note:</b>: the functionality of this method is different from the default handling for invisible controls (controls with <code>visible == false</code>). The standard rendering for invisible controls still renders a placeholder DOM. This allows re-rendering of the invisible control once it becomes visible again without a need to render its parent, too. Children that are cleaned up with this method here, are supposed to have no more DOM at all. Rendering them later on therefore requires an involvement (typically: a rendering) of their parent.
	* @param	oControl Control that should be cleaned up
	* @return	Void
	*/
	public function cleanupControlWithoutRendering( oControl:sap.ui.core.Control):Void;

	/**
	* Closes an open tag started with <code>openStart</code> and ended with <code>openEnd</code>.

This indicates that there are no more children to append to the open tag.
	* @param	sTagName Tag name of the HTML element
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function close( sTagName:String):sap.ui.core.RenderManager;

	/**
	* Cleans up the resources associated with this instance.

After the instance has been destroyed, it must not be used anymore. Applications should call this function if they don't need the instance any longer.
	* @return	Void
	*/
	public function destroy( ):Void;

	/**
	* Searches "to-be-preserved" nodes for the given control id.
	* @param	sId control id to search content for.
	* @return	a jQuery collection representing the found content
	*/
	public static function findPreservedContent( sId:String):Dynamic;
	@:overload( function(oTargetDomNode:js.html.Element, bDoNotPreserve:Bool, vInsert:Bool):Void{ })

	/**
	* Renders the content of the rendering buffer into the provided DOM node.

This function must not be called within control renderers.

Usage: <pre>

  // Create a new instance of the RenderManager
  var rm = sap.ui.getCore().createRenderManager();

  // Use the writer API to fill the buffers
  rm.write(...);
  rm.renderControl(oControl);
  rm.write(...);
  ...

  // Finally flush the buffer into the provided DOM node (The current content is removed)
  rm.flush(oDomNode);

  // If the instance is not needed anymore, destroy it
  rm.destroy();

</pre>
	* @param	oTargetDomNode Node in the DOM where the buffer should be flushed into
	* @param	bDoNotPreserve Determines whether the content is preserved (<code>false</code>) or not (<code>true</code>)
	* @param	vInsert Determines whether the buffer of the target DOM node is expanded (<code>true</code>) or replaced (<code>false</code>), or the new entry is inserted at a specific position (value of type <code>int</code>)
	* @return	Void
	*/
	public function flush( oTargetDomNode:js.html.Element, bDoNotPreserve:Bool, vInsert:Int):Void;

	/**
	* Returns the configuration object Shortcut for <code>sap.ui.getCore().getConfiguration()</code>
	* @return	the configuration object
	*/
	public function getConfiguration( ):sap.ui.core.Configuration;

	/**
	* Returns the hidden area reference belonging to the current window instance.
	* @return	The hidden area reference belonging to the current window instance.
	*/
	public static function getPreserveAreaRef( ):js.html.Element;

	/**
	* Returns the renderer class for a given control instance
	* @param	oControl the control that should be rendered
	* @return	the renderer class for a given control instance
	*/
	public static function getRenderer( oControl:sap.ui.core.Control):Dynamic;
	@:overload( function(sURI:sap.ui.core.URI, ?aClasses:Array<Dynamic>, ?mAttributes:Dynamic):sap.ui.core.RenderManager{ })

	/**
	* Writes either an &lt;img&gt; tag for normal URI or a &lt;span&gt; tag with needed properties for an icon URI.

Additional classes and attributes can be added to the tag with the second and third parameter. All of the given attributes are escaped for security consideration.

When an &lt;img&gt; tag is rendered, the following two attributes are added by default and can be overwritten with corresponding values in the <code>mAttributes</code> parameter: <ul> <li><code>role: "presentation"</code></Li> <li><code>alt: ""</code></li> </ul>
	* @param	sURI URI of an image or of an icon registered in {@link sap.ui.core.IconPool}
	* @param	aClasses Additional classes that are added to the rendered tag
	* @param	mAttributes Additional attributes that will be added to the rendered tag
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function icon( sURI:sap.ui.core.URI, ?aClasses:String, ?mAttributes:Dynamic):sap.ui.core.RenderManager;

	/**
	* Ends an open tag started with <code>openStart</code>.

This indicates that there are no more attributes to set to the open tag.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function openEnd( ):sap.ui.core.RenderManager;
	@:overload( function(sTagName:String, ?vControlOrId:sap.ui.core.Element):sap.ui.core.RenderManager{ })

	/**
	* Opens the start tag of an HTML element.

This must be followed by <code>openEnd</code> and concluded with <code>close</code>. To allow a more efficient DOM update, all tag names have to be used in their canonical form. For HTML elements, {@link https://developer.mozilla.org/en-US/docs/Web/HTML/Element tag names} must all be set in lowercase. For foreign elements, such as SVG, {@link https://developer.mozilla.org/en-US/docs/Web/SVG/Element tag names} can be set in upper camel case (e.g. linearGradient).
	* @param	sTagName Tag name of the HTML element
	* @param	vControlOrId Control instance or ID to identify the element
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function openStart( sTagName:String, ?vControlOrId:sap.ui.core.ID):sap.ui.core.RenderManager;

	/**
	* Collects descendants of the given root node that need to be preserved before the root node is wiped out. The "to-be-preserved" nodes are moved to a special, hidden 'preserve' area.

A node is declared "to-be-preserved" when it has the <code>data-sap-ui-preserve</code> attribute set. When the optional parameter <code>bPreserveNodesWithId</code> is set to true, then nodes with an id are preserved as well and their <code>data-sap-ui-preserve</code> attribute is set automatically. This option is used by UIAreas when they render for the first time and simplifies the handling of predefined HTML content in a web page.

The "to-be-preserved" nodes are searched with a depth first search and moved to the 'preserve' area in the order that they are found. So for direct siblings the order should be stable.
	* @param	oRootNode to search for "to-be-preserved" nodes
	* @param	bPreserveRoot whether to preserve the root itself
	* @param	bPreserveNodesWithId whether to preserve nodes with an id as well
	* @return	Void
	*/
	public static function preserveContent( oRootNode:js.html.Element, ?bPreserveRoot:Bool, ?bPreserveNodesWithId:Bool):Void;

	/**
	* Renders the given control to the provided DOMNode.

If the control is already rendered in the provided DOMNode the DOM of the control is replaced. If the control is already rendered somewhere else the current DOM of the control is removed and the new DOM is appended to the provided DOMNode.

This function must not be called within control renderers.
	* @param	oControl the Control that should be rendered.
	* @param	oTargetDomNode The node in the DOM where the result of the rendering should be inserted.
	* @return	Void
	*/
	public function render( oControl:sap.ui.core.Control, oTargetDomNode:js.html.Element):Void;

	/**
	* Turns the given control into its HTML representation and appends it to the rendering buffer.

If the given control is undefined or null, then nothing is rendered.
	* @param	oControl the control that should be rendered
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function renderControl( oControl:sap.ui.core.Control):sap.ui.core.RenderManager;

	/**
	* Adds a style name-value pair to the style collection of the last open HTML element.

This is only valid when called between <code>openStart/voidStart</code> and <code>openEnd/voidEnd</code>.
	* @param	sName Name of the style property
	* @param	sValue Value of the style property
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function style( sName:String, sValue:String):sap.ui.core.RenderManager;

	/**
	* Sets the text content with the given text.
	* @param	sText The text to be written
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function text( sText:String):sap.ui.core.RenderManager;

	/**
	* Sets the given HTML markup without any encoding or sanitizing.

This must not be used for plain texts; use the <code>text</code> method instead.
	* @param	sHtml Well-formed, valid HTML markup
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unsafeHtml( sHtml:String):sap.ui.core.RenderManager;

	/**
	* Ends an open self-closing tag started with <code>voidStart</code>.

This indicates that there are no more attributes to set to the open tag. For self-closing tags <code>close</code> must not be called.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function voidEnd( ):sap.ui.core.RenderManager;
	@:overload( function(sTagName:String, ?vControlOrId:sap.ui.core.Element):sap.ui.core.RenderManager{ })

	/**
	* Starts a self-closing tag, such as <code>img</code> or <code>input</code>.

This must be followed by <code>voidEnd</code>. For self-closing tags, the <code>close</code> method must not be called. To allow a more efficient DOM update, void tag names have to be set in lowercase. This API is specific for void elements and must not be used for foreign elements. For more information, see {@link https://www.w3.org/TR/html5/syntax.html#void-elements}.
	* @param	sTagName Tag name of the HTML element
	* @param	vControlOrId Control instance or ID to identify the element
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function voidStart( sTagName:String, ?vControlOrId:sap.ui.core.ID):sap.ui.core.RenderManager;
	@:overload( function(sText:String):sap.ui.core.RenderManager{ })

	/**
	* Write the given texts to the buffer
	* @param	sText (can be a number too)
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function write( sText:String):sap.ui.core.RenderManager;

	/**
	* Collects accessibility related attributes for an <code>Element</code> and renders them as part of the currently rendered DOM element.

See the WAI-ARIA specification for a general description of the accessibility related attributes. Attributes are only rendered when the accessibility feature is activated in the UI5 runtime configuration.

The values for the attributes are collected from the following sources (last one wins): <ol> <li>from the properties and associations of the given <code>oElement</code>, using a heuristic mapping (described below)</li> <li>from the <code>mProps</code> parameter, as provided by the caller</li> <li>from the parent of the given <code>oElement</code>, if it has a parent and if the parent implements the method {@link sap.ui.core.Element#enhanceAccessibilityState enhanceAccessibilityState}</li> </ol> If no <code>oElement</code> is given, only <code>mProps</code> will be taken into account.

<h3>Heuristic Mapping</h3> The following mapping from properties/values to ARIA attributes is used (if the element does have such properties): <ul> <li><code>editable===false</code> => <code>aria-readonly="true"</code></li> <li><code>enabled===false</code> => <code>aria-disabled="true"</code></li> <li><code>visible===false</code> => <code>aria-hidden="true"</code></li> <li><code>required===true</code> => <code>aria-required="true"</code></li> <li><code>selected===true</code> => <code>aria-selected="true"</code></li> <li><code>checked===true</code> => <code>aria-checked="true"</code></li> </ul>

In case of the <code>required</code> property, all label controls which reference the given element in their <code>labelFor</code> relation are additionally taken into account when determining the value for the <code>aria-required</code> attribute.

Additionally, the associations <code>ariaDescribedBy</code> and <code>ariaLabelledBy</code> are used to determine the lists of IDS for the ARIA attributes <code>aria-describedby</code> and <code>aria-labelledby</code>.

Label controls that reference the given element in their <code>labelFor</code> relation are automatically added to the <code>aria-labelledby</code> attributes.

Note: This function is only a heuristic of a control property to ARIA attribute mapping. Control developers have to check whether it fulfills their requirements. In case of problems (for example the RadioButton has a <code>selected</code> property but must provide an <code>aria-checked</code> attribute) the auto-generated result of this function can be influenced via the parameter <code>mProps</code> as described below.

The parameter <code>mProps</code> can be used to either provide additional attributes which should be rendered and/or to avoid the automatic generation of single ARIA attributes. The 'aria-' prefix will be prepended automatically to the keys (Exception: Attribute <code>role</code> does not get the prefix 'aria-').

Examples:<br> <code>{hidden : true}</code> results in <code>aria-hidden="true"</code> independent of the presence or absence of the visibility property.<br> <code>{hidden : null}</code> ensures that no <code>aria-hidden</code> attribute is written independent of the presence or absence of the visibility property.<br>

The function behaves in the same way for the associations <code>ariaDescribedBy</code> and <code>ariaLabelledBy</code>. To append additional values to the auto-generated <code>aria-describedby</code> and <code>aria-labelledby</code> attributes, the following format can be used: <pre>
  {describedby : {value: "id1 id2", append: true}} =>  aria-describedby = "ida idb id1 id2"
</pre> (assuming that "ida idb" is the auto-generated part based on the association <code>ariaDescribedBy</code>).
	* @param	oElement The <code>Element</code> whose accessibility state should be rendered
	* @param	mProps A map of additional properties that should be added or changed.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function writeAccessibilityState( ?oElement:sap.ui.core.Element, ?mProps:Dynamic):sap.ui.core.RenderManager;
	@:overload( function(sName:String, vValue:String):sap.ui.core.RenderManager{ })
	@:overload( function(sName:String, vValue:String):sap.ui.core.RenderManager{ })

	/**
	* Writes the attribute and its value into the HTML.

For details about the escaping refer to {@link jQuery.sap.encodeHTML}
	* @param	sName Name of the attribute
	* @param	vValue Value of the attribute
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function writeAttribute( sName:String, vValue:Bool):sap.ui.core.RenderManager;

	/**
	* Writes the attribute and a value into the HTML, the value will be encoded.

The value is properly encoded to avoid XSS attacks.
	* @param	sName Name of the attribute
	* @param	vValue Value of the attribute
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function writeAttributeEscaped( sName:String, vValue:Dynamic):sap.ui.core.RenderManager;
	@:overload( function(?oElement:sap.ui.core.Element):sap.ui.core.RenderManager{ })

	/**
	* Writes and flushes the class collection (all CSS classes added by "addClass()" since the last flush). Also writes the custom style classes added by the application with "addStyleClass(...)". Custom classes are added by default from the currently rendered control. If an oElement is given, this Element's custom style classes are added instead. If oElement === false, no custom style classes are added.
	* @param	oElement an Element from which to add custom style classes (instead of adding from the control itself)
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function writeClasses( ?oElement:Bool):sap.ui.core.RenderManager;

	/**
	* Writes the controls data into the HTML. Control Data consists at least of the id of a control
	* @param	oControl the control whose identifying information should be written to the buffer
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function writeControlData( oControl:sap.ui.core.Control):sap.ui.core.RenderManager;

	/**
	* Writes the elements data into the HTML. Element Data consists at least of the id of an element
	* @param	oElement the element whose identifying information should be written to the buffer
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function writeElementData( oElement:sap.ui.core.Element):sap.ui.core.RenderManager;

	/**
	* Escape text for HTML and write it to the buffer.

For details about the escaping refer to {@link jQuery.sap.encodeHTML}
	* @param	sText the text to escape
	* @param	bLineBreaks Whether to convert line breaks into <br> tags
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function writeEscaped( sText:Dynamic, bLineBreaks:Bool):sap.ui.core.RenderManager;
	@:overload( function(sURI:sap.ui.core.URI, ?aClasses:Array<Dynamic>, ?mAttributes:Dynamic):sap.ui.core.RenderManager{ })

	/**
	* Writes either an &lt;img&gt; tag for normal URI or a &lt;span&gt; tag with needed properties for an icon URI.

Additional classes and attributes can be added to the tag with the second and third parameter. All of the given attributes are escaped for security consideration.

When an &lt;img&gt; tag is rendered, the following two attributes are added by default and can be overwritten with corresponding values in the <code>mAttributes</code> parameter: <ul> <li><code>role: "presentation"</code></Li> <li><code>alt: ""</code></li> </ul>
	* @param	sURI URI of an image or of an icon registered in {@link sap.ui.core.IconPool}
	* @param	aClasses Additional classes that are added to the rendered tag
	* @param	mAttributes Additional attributes that will be added to the rendered tag
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function writeIcon( sURI:sap.ui.core.URI, ?aClasses:String, ?mAttributes:Dynamic):sap.ui.core.RenderManager;

	/**
	* Writes and flushes the style collection
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function writeStyles( ):sap.ui.core.RenderManager;
}

