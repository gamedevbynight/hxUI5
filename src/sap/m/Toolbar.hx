package sap.m;

@:native("sap.m.Toolbar")

/**
* Horizontal container most commonly used to display buttons, labels, selects and various other input controls.

<h3>Overview</h3>

By default, the <code>Toolbar</code> items are shrinkable if they have percent-based width (for example, {@link sap.m.Input} and {@link sap.m.Slider}) or implement the {@link sap.ui.core.IShrinkable} interface (for example, {@link sap.m.Text} and {@link sap.m.Label}). This behavior can be overridden by providing {@link sap.m.ToolbarLayoutData} for the <code>Toolbar</code> items.

<b>Note:</b> It is recommended that you use {@link sap.m.OverflowToolbar} over <code>sap.m.Toolbar</code>, unless you want to avoid the overflow behavior in favor of shrinking.

<h3>Usage</h3>

You can add a visual separator between the preceding and succeeding {@link sap.m.Toolbar} item with the use of the {@link sap.m.ToolbarSeparator}. The separator is theme dependent and can be a padding, a margin or a line.

To add horizontal space between the <code>Toolbar</code> items, use the {@link sap.m.ToolbarSpacer}. You can define the width of the horizontal space or make it flexible to cover the remaining space between the <code>Toolbar</code> items (for example, to to push an item to the edge of the <code>Toolbar</code>.

<b>Note:</b> The {@link sap.m.ToolbarSpacer} is a flex control that is intended to control its own behavior, thus {@link sap.m.ToolbarLayoutData} is not supported as value for the <code>layoutData</code> aggregation of {@link sap.m.ToolbarSpacer} and if set it's ignored.
*/
extern class Toolbar extends sap.ui.core.Control implements sap.ui.core.Toolbar implements sap.m.IBar
{
	@:overload(function(?sId:String, ?mSettings:ToolbarArgs):Void {})
	public function new(?mSettings:ToolbarArgs):Void;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.Toolbar{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.Toolbar;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.m.Toolbar;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.m.Toolbar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Toolbar</code> itself.

Fired when the user clicks on the toolbar, if the Active property is set to "true".
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Toolbar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Toolbar;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.m.Toolbar;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.m.Toolbar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Toolbar;

	/**
	* Creates a new subclass of class sap.m.Toolbar with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getActive active}.

Indicates that the whole toolbar is clickable. The Press event is fired only if Active is set to true. Note: This property should be used when there are no interactive controls inside the toolbar and the toolbar itself is meant to be interactive.

Default value is <code>false</code>.
	* @return	Value of property <code>active</code>
	*/
	public function getActive( ):Bool;

	/**
	* Gets current value of property {@link #getAriaHasPopup ariaHasPopup}.

Defines the aria-haspopup attribute of the <code>Toolbar</code>. if the active <code>design</code> is true.
	* @return	Value of property <code>ariaHasPopup</code>
	*/
	public function getAriaHasPopup( ):String;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets content of aggregation {@link #getContent content}.

The content of the toolbar.
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getDesign design}.

Defines the toolbar design.

<b>Note:</b> Design settings are theme-dependent. They also determine the default height of the toolbar.

Default value is <code>Auto</code>.
	* @return	Value of property <code>design</code>
	*/
	public function getDesign( ):sap.m.ToolbarDesign;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Sets the enabled property of all controls defined in the content aggregation. Note: This property does not apply to the toolbar itself, but rather to its items.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets current value of property {@link #getHeight height}.

Defines the height of the control. By default, the <code>height</code> property depends on the used theme and the <code>design</code> property.

<b>Note:</b> It is not recommended to use this property if the <code>sapMTBHeader-CTX</code> class is used

Default value is <code>empty string</code>.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.m.Toolbar.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getStyle style}.

Defines the visual style of the <code>Toolbar</code>.

<b>Note:</b> The visual styles are theme-dependent.

Default value is <code>Standard</code>.
	* @return	Value of property <code>style</code>
	*/
	public function getStyle( ):sap.m.ToolbarStyle;

	/**
	* Gets current value of property {@link #getWidth width}.

Defines the width of the control. By default, Toolbar is a block element. If the width is not explicitly set, the control will assume its natural size.
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
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.m.Toolbar;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Removes all the controls from the aggregation {@link #getContent content}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllContent( ):Array<sap.ui.core.Control>;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;
	@:overload( function(vContent:Int):sap.ui.core.Control{ })
	@:overload( function(vContent:String):sap.ui.core.Control{ })

	/**
	* Removes a content from the aggregation {@link #getContent content}.
	* @param	vContent The content to remove or its index or id
	* @return	The removed content or <code>null</code>
	*/
	public function removeContent( vContent:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Sets a new value for property {@link #getActive active}.

Indicates that the whole toolbar is clickable. The Press event is fired only if Active is set to true. Note: This property should be used when there are no interactive controls inside the toolbar and the toolbar itself is meant to be interactive.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bActive New value for property <code>active</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setActive( ?bActive:Bool):sap.m.Toolbar;

	/**
	* Sets a new value for property {@link #getAriaHasPopup ariaHasPopup}.

Defines the aria-haspopup attribute of the <code>Toolbar</code>. if the active <code>design</code> is true.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sAriaHasPopup New value for property <code>ariaHasPopup</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAriaHasPopup( sAriaHasPopup:String):sap.m.Toolbar;

	/**
	* Sets a new value for property {@link #getDesign design}.

Defines the toolbar design.

<b>Note:</b> Design settings are theme-dependent. They also determine the default height of the toolbar.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Auto</code>.
	* @param	sDesign New value for property <code>design</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDesign( ?sDesign:sap.m.ToolbarDesign):sap.m.Toolbar;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Sets the enabled property of all controls defined in the content aggregation. Note: This property does not apply to the toolbar itself, but rather to its items.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( ?bEnabled:Bool):sap.m.Toolbar;

	/**
	* Sets a new value for property {@link #getHeight height}.

Defines the height of the control. By default, the <code>height</code> property depends on the used theme and the <code>design</code> property.

<b>Note:</b> It is not recommended to use this property if the <code>sapMTBHeader-CTX</code> class is used

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sHeight= New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( ?sHeight:sap.ui.core.CSSSize):sap.m.Toolbar;

	/**
	* Sets a new value for property {@link #getStyle style}.

Defines the visual style of the <code>Toolbar</code>.

<b>Note:</b> The visual styles are theme-dependent.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Standard</code>.
	* @param	sStyle New value for property <code>style</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setStyle( ?sStyle:sap.m.ToolbarStyle):sap.m.Toolbar;

	/**
	* Sets a new value for property {@link #getWidth width}.

Defines the width of the control. By default, Toolbar is a block element. If the width is not explicitly set, the control will assume its natural size.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.m.Toolbar;
}

typedef ToolbarArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the width of the control. By default, Toolbar is a block element. If the width is not explicitly set, the control will assume its natural size.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Indicates that the whole toolbar is clickable. The Press event is fired only if Active is set to true. Note: This property should be used when there are no interactive controls inside the toolbar and the toolbar itself is meant to be interactive.
	*/
	@:optional var active:haxe.extern.EitherType<String,Bool>;

	/**
	* Sets the enabled property of all controls defined in the content aggregation. Note: This property does not apply to the toolbar itself, but rather to its items.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the height of the control. By default, the <code>height</code> property depends on the used theme and the <code>design</code> property.

<b>Note:</b> It is not recommended to use this property if the <code>sapMTBHeader-CTX</code> class is used
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Defines the toolbar design.

<b>Note:</b> Design settings are theme-dependent. They also determine the default height of the toolbar.
	*/
	@:optional var design:haxe.extern.EitherType<String,sap.m.ToolbarDesign>;

	/**
	* Defines the visual style of the <code>Toolbar</code>.

<b>Note:</b> The visual styles are theme-dependent.
	*/
	@:optional var style:haxe.extern.EitherType<String,sap.m.ToolbarStyle>;

	/**
	* Defines the aria-haspopup attribute of the <code>Toolbar</code>. if the active <code>design</code> is true.
	*/
	@:optional var ariaHasPopup:String;

    /**
    * The content of the toolbar.
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / ids which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Fired when the user clicks on the toolbar, if the Active property is set to "true".
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
