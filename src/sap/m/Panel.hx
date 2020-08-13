package sap.m;

@:native("sap.m.Panel")

/**
* A container control which has a header and content. <h3>Overview</h3> The panel is a container for grouping and displaying information. It can be collapsed to save space on the screen. <h4>Guidelines:</h4> <ul> <li>Nesting two or more panels is not recommended.</li> <li>Do not stack too many panels on one page.</li> </ul> <h3>Structure</h3> A panel consists of a title bar with a header text or header toolbar, an info toolbar (optional), and a content area. Using the <code>headerToolbar</code> aggregation, you can add a toolbar with any toolbar content (i.e. custom buttons, spacers, titles) inside the title bar.

There are two types of panels: fixed and expandable. Expendable panels are enabled by the <code>expandable</code> property. Furthermore you can define an expand animation with the property <code>expandAnimation</code>. <h3>Usage</h3> <h4>When to use:</h4> <ul> <li>You need to group or display information and want to give users the option of hiding this information.</li> <li>You want to show additional information on demand (for example, a panel could show optional input fields for an advanced search).</li> <li>You want to create a panel with controls that do not require user interaction and are not part of a form. Depending on the usage, change the <code>accessibleRole</code> property from the default <code>{@link sap.m.PanelAccessibleRole Form}</code> to <code>{@link sap.m.PanelAccessibleRole Region}</code> or <code>{@link sap.m.PanelAccessibleRole Complementary}</code>.</li> </ul> <h3>Responsive Behavior</h3> <ul> <li>If the width of the panel is set to 100% (default), the panel and its children are resized responsively, depending on its parent container.</li> <li>If the panel has a fixed defined height, it will take up the space, even if the panel is collapsed.</li> <li>When the panel is expandable, an arrow icon (pointing to the right) appears in front of the header.</li> <li>When the animation is activated, expand/collapse uses a smooth animation to open or close the content area.</li> <li>When the panel expands/collapses, the arrow icon rotates 90 degrees clockwise/counter-clockwise.</li> <li>When the height uses the default property <code>auto</code>, the height of the content area is automatically adjusted to match the height of its content.</li> <li>When the height of the panel is set to a fixed size, the content area can be scrolled through.</li> </ul>
*/
extern class Panel extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:PanelArgs):Void {})
	public function new(?mSettings:PanelArgs):Void;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.m.Panel;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:expand expand} event of this <code>sap.m.Panel</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Panel</code> itself.

Indicates that the panel will expand or collapse.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Panel</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachExpand( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Panel;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.m.Panel;

	/**
	* Destroys the headerToolbar in the aggregation {@link #getHeaderToolbar headerToolbar}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyHeaderToolbar( ):sap.m.Panel;

	/**
	* Destroys the infoToolbar in the aggregation {@link #getInfoToolbar infoToolbar}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyInfoToolbar( ):sap.m.Panel;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:expand expand} event of this <code>sap.m.Panel</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachExpand( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Panel;

	/**
	* Creates a new subclass of class sap.m.Panel with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAccessibleRole accessibleRole}.

This property is used to set the accessible aria role of the Panel. Depending on the usage you can change the role from the default <code>Form</code> to <code>Region</code> or <code>Complementary</code>.

Default value is <code>Form</code>.
	* @return	Value of property <code>accessibleRole</code>
	*/
	public function getAccessibleRole( ):sap.m.PanelAccessibleRole;

	/**
	* Gets current value of property {@link #getBackgroundDesign backgroundDesign}.

This property is used to set the background color of the Panel. Depending on the theme you can change the state of the background from "Solid" over "Translucent" to "Transparent".

Default value is <code>Translucent</code>.
	* @return	Value of property <code>backgroundDesign</code>
	*/
	public function getBackgroundDesign( ):sap.m.BackgroundDesign;

	/**
	* Gets content of aggregation {@link #getContent content}.

Determines the content of the Panel. The content will be visible only when the Panel is expanded.
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getExpandable expandable}.

Specifies whether the control is expandable. This allows for collapsing or expanding the infoToolbar (if available) and content of the Panel. Note: If expandable is set to false, the Panel will always be rendered expanded.

Default value is <code>false</code>.
	* @return	Value of property <code>expandable</code>
	*/
	public function getExpandable( ):Bool;

	/**
	* Gets current value of property {@link #getExpandAnimation expandAnimation}.

Indicates whether the transition between the expanded and the collapsed state of the control is animated. By default the animation is enabled.

Default value is <code>true</code>.
	* @return	Value of property <code>expandAnimation</code>
	*/
	public function getExpandAnimation( ):Bool;

	/**
	* Gets current value of property {@link #getExpanded expanded}.

Indicates whether the Panel is expanded or not. If expanded is set to true, then both the infoToolbar (if available) and the content are rendered. If expanded is set to false, then only the headerText or headerToolbar is rendered.

Default value is <code>false</code>.
	* @return	Value of property <code>expanded</code>
	*/
	public function getExpanded( ):Bool;

	/**
	* Gets current value of property {@link #getHeaderText headerText}.

This property is used to set the header text of the Panel. The "headerText" is visible in both expanded and collapsed state. Note: This property is overwritten by the "headerToolbar" aggregation.

Default value is <code>empty string</code>.
	* @return	Value of property <code>headerText</code>
	*/
	public function getHeaderText( ):String;

	/**
	* Gets content of aggregation {@link #getHeaderToolbar headerToolbar}.

This aggregation allows the use of a custom Toolbar as header for the Panel. The "headerToolbar" is visible in both expanded and collapsed state. Use it when you want to add extra controls for user interactions in the header. Note: This aggregation overwrites "headerText" property.
	* @return	null
	*/
	public function getHeaderToolbar( ):sap.m.Toolbar;

	/**
	* Gets current value of property {@link #getHeight height}.

Determines the Panel height.

Default value is <code>auto</code>.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Gets content of aggregation {@link #getInfoToolbar infoToolbar}.

This aggregation allows the use of a custom Toolbar as information bar for the Panel. The "infoToolbar" is placed below the header and is visible only in expanded state. Use it when you want to show extra information to the user.
	* @return	null
	*/
	public function getInfoToolbar( ):sap.m.Toolbar;

	/**
	* Returns a metadata object for class sap.m.Panel.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getWidth width}.

Determines the Panel width.

Default value is <code>100%</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getContent content}. and returns its index if found or -1 otherwise.
	* @param	oContent The content whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfContent( oContent:sap.ui.core.Control):Int;

	/**
	* Inserts a content into the aggregation {@link #getContent content}.
	* @param	oContent The content to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the content should be inserted at; for a negative value of <code>iIndex</code>, the content is inserted at position 0; for a value greater than the current size of the aggregation, the content is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.m.Panel;

	/**
	* Sets the height of the panel.
	* @param	sHeight The height of the panel as CSS size.
	* @return	Pointer to the control instance to allow method chaining.
	*/
	public function onThemeChanged( sHeight:sap.ui.core.CSSSize):sap.m.Panel;

	/**
	* Removes all the controls from the aggregation {@link #getContent content}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllContent( ):Array<sap.ui.core.Control>;
	@:overload( function(vContent:Int):sap.ui.core.Control{ })
	@:overload( function(vContent:String):sap.ui.core.Control{ })

	/**
	* Removes a content from the aggregation {@link #getContent content}.
	* @param	vContent The content to remove or its index or id
	* @return	The removed content or <code>null</code>
	*/
	public function removeContent( vContent:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Sets a new value for property {@link #getAccessibleRole accessibleRole}.

This property is used to set the accessible aria role of the Panel. Depending on the usage you can change the role from the default <code>Form</code> to <code>Region</code> or <code>Complementary</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Form</code>.
	* @param	sAccessibleRole New value for property <code>accessibleRole</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAccessibleRole( ?sAccessibleRole:sap.m.PanelAccessibleRole):sap.m.Panel;

	/**
	* Sets a new value for property {@link #getBackgroundDesign backgroundDesign}.

This property is used to set the background color of the Panel. Depending on the theme you can change the state of the background from "Solid" over "Translucent" to "Transparent".

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Translucent</code>.
	* @param	sBackgroundDesign New value for property <code>backgroundDesign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundDesign( ?sBackgroundDesign:sap.m.BackgroundDesign):sap.m.Panel;

	/**
	* Sets a new value for property {@link #getExpandable expandable}.

Specifies whether the control is expandable. This allows for collapsing or expanding the infoToolbar (if available) and content of the Panel. Note: If expandable is set to false, the Panel will always be rendered expanded.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bExpandable New value for property <code>expandable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setExpandable( ?bExpandable:Bool):sap.m.Panel;

	/**
	* Sets a new value for property {@link #getExpandAnimation expandAnimation}.

Indicates whether the transition between the expanded and the collapsed state of the control is animated. By default the animation is enabled.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bExpandAnimation New value for property <code>expandAnimation</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setExpandAnimation( ?bExpandAnimation:Bool):sap.m.Panel;

	/**
	* Sets the expanded property of the control.
	* @param	bExpanded Defines whether control is expanded or not.
	* @return	Pointer to the control instance to allow method chaining.
	*/
	public function setExpanded( bExpanded:Bool):sap.m.Panel;

	/**
	* Sets a new value for property {@link #getHeaderText headerText}.

This property is used to set the header text of the Panel. The "headerText" is visible in both expanded and collapsed state. Note: This property is overwritten by the "headerToolbar" aggregation.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sHeaderText New value for property <code>headerText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeaderText( ?sHeaderText:String):sap.m.Panel;

	/**
	* Sets the aggregated {@link #getHeaderToolbar headerToolbar}.
	* @param	oHeaderToolbar The headerToolbar to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeaderToolbar( oHeaderToolbar:sap.m.Toolbar):sap.m.Panel;

	/**
	* Sets a new value for property {@link #getHeight height}.

Determines the Panel height.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>auto</code>.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( ?sHeight:sap.ui.core.CSSSize):sap.m.Panel;

	/**
	* Sets the aggregated {@link #getInfoToolbar infoToolbar}.
	* @param	oInfoToolbar The infoToolbar to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInfoToolbar( oInfoToolbar:sap.m.Toolbar):sap.m.Panel;

	/**
	* Sets a new value for property {@link #getWidth width}.

Determines the Panel width.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100%</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.m.Panel;
}

typedef PanelArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* This property is used to set the header text of the Panel. The "headerText" is visible in both expanded and collapsed state. Note: This property is overwritten by the "headerToolbar" aggregation.
	*/
	@:optional var headerText:String;

	/**
	* Determines the Panel width.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Determines the Panel height.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Specifies whether the control is expandable. This allows for collapsing or expanding the infoToolbar (if available) and content of the Panel. Note: If expandable is set to false, the Panel will always be rendered expanded.
	*/
	@:optional var expandable:haxe.extern.EitherType<String,Bool>;

	/**
	* Indicates whether the Panel is expanded or not. If expanded is set to true, then both the infoToolbar (if available) and the content are rendered. If expanded is set to false, then only the headerText or headerToolbar is rendered.
	*/
	@:optional var expanded:haxe.extern.EitherType<String,Bool>;

	/**
	* Indicates whether the transition between the expanded and the collapsed state of the control is animated. By default the animation is enabled.
	*/
	@:optional var expandAnimation:haxe.extern.EitherType<String,Bool>;

	/**
	* This property is used to set the background color of the Panel. Depending on the theme you can change the state of the background from "Solid" over "Translucent" to "Transparent".
	*/
	@:optional var backgroundDesign:haxe.extern.EitherType<String,sap.m.BackgroundDesign>;

	/**
	* This property is used to set the accessible aria role of the Panel. Depending on the usage you can change the role from the default <code>Form</code> to <code>Region</code> or <code>Complementary</code>.
	*/
	@:optional var accessibleRole:haxe.extern.EitherType<String,sap.m.PanelAccessibleRole>;

    /**
    * Determines the content of the Panel. The content will be visible only when the Panel is expanded.
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * This aggregation allows the use of a custom Toolbar as header for the Panel. The "headerToolbar" is visible in both expanded and collapsed state. Use it when you want to add extra controls for user interactions in the header. Note: This aggregation overwrites "headerText" property.
    */
	@:optional var headerToolbar:haxe.extern.EitherType<String,sap.m.Toolbar>;

    /**
    * This aggregation allows the use of a custom Toolbar as information bar for the Panel. The "infoToolbar" is placed below the header and is visible only in expanded state. Use it when you want to show extra information to the user.
    */
	@:optional var infoToolbar:haxe.extern.EitherType<String,sap.m.Toolbar>;

	/**
	* Indicates that the panel will expand or collapse.
	*/
	@:optional var expand:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
