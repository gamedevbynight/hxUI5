package sap.m;

@:native("sap.m.Popover")

/**
* Displays additional information for an object in a compact way.

<h3>Overview</h3> The popover displays additional information for an object in a compact way and without leaving the page. The popover can contain various UI elements such as fields, tables, images, and charts. It can also include actions in the footer. <h3>Structure</h3> The popover has three main areas: <ul> <li>Header (optional) - with a back button and a title</li> <li>Content - holds all the controls</li> <li>Footer (optional) - with additional action buttons</li> </ul> <h4>Guidelines</h4> <ul> <li>Do not overlap popovers.</li> <li>You can determine the {@link sap.m.PlacementType placement} of the popover relative to the control that opens it.</li> <li>Ensure that the content has a basic design and shows only the most important information.</li> </ul> <h3>Usage</h3> <h4>When to use:</h4> <ul> <li>You need to define your own structure of controls within the popover.</li> </ul> <h4>When not to use:</h4> <ul> <li>The {@link sap.m.QuickView QuickView} is more appropriate for your use case.</li> </ul> <h3>Responsive Behavior</h3> The popover is closed when the user clicks or taps outside the popover or selects an action within the popover. You can prevent this with the <code>modal</code> property. The popover can be resized when the <code>resizable</code> property is enabled.

When using the sap.m.Popover in Sap Quartz theme, the breakpoints and layout paddings could be determined by the container's width. To enable this concept and add responsive paddings to an element of the Popover control, you may add the following classes depending on your use case: <code>sapUiResponsivePadding--header</code>, <code>sapUiResponsivePadding--subHeader</code>, <code>sapUiResponsivePadding--content</code>, <code>sapUiResponsivePadding--footer</code>. <ul> <li>{@link sap.m.Popover} is <u>not</u> responsive on mobile devices - it will always be rendered as a popover and you have to take care of its size and position.</li> <li>{@link sap.m.ResponsivePopover} is adaptive and responsive. It renders as a dialog with a close button in the header on phones, and as a popover on tablets.</li> </ul>
*/
extern class Popover extends sap.ui.core.Control implements sap.ui.core.PopupInterface
{
	@:overload(function(?sId:String, ?mSettings:PopoverArgs):Void {})
	public function new(?mSettings:PopoverArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.m.Popover{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.m.Popover;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.Popover{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.Popover;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.m.Popover;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:afterClose afterClose} event of this <code>sap.m.Popover</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Popover</code> itself.

This event will be fired after the popover is closed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Popover</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAfterClose( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Popover;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:afterOpen afterOpen} event of this <code>sap.m.Popover</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Popover</code> itself.

This event will be fired after the popover is opened.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Popover</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAfterOpen( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Popover;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeClose beforeClose} event of this <code>sap.m.Popover</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Popover</code> itself.

This event will be fired before the popover is closed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Popover</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforeClose( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Popover;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeOpen beforeOpen} event of this <code>sap.m.Popover</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Popover</code> itself.

This event will be fired before the popover is opened.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Popover</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforeOpen( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Popover;

	/**
	* Closes the popover when it's already opened.
	* @return	Reference to the control instance for chaining
	*/
	public function close( ):sap.m.Popover;

	/**
	* Destroys the beginButton in the aggregation {@link #getBeginButton beginButton}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyBeginButton( ):sap.m.Popover;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.m.Popover;

	/**
	* Destroys the customHeader in the aggregation {@link #getCustomHeader customHeader}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyCustomHeader( ):sap.m.Popover;

	/**
	* Destroys the endButton in the aggregation {@link #getEndButton endButton}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyEndButton( ):sap.m.Popover;

	/**
	* Destroys the footer in the aggregation {@link #getFooter footer}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyFooter( ):sap.m.Popover;

	/**
	* Destroys the subHeader in the aggregation {@link #getSubHeader subHeader}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySubHeader( ):sap.m.Popover;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:afterClose afterClose} event of this <code>sap.m.Popover</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAfterClose( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Popover;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:afterOpen afterOpen} event of this <code>sap.m.Popover</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAfterOpen( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Popover;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeClose beforeClose} event of this <code>sap.m.Popover</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforeClose( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Popover;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeOpen beforeOpen} event of this <code>sap.m.Popover</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforeOpen( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Popover;

	/**
	* Creates a new subclass of class sap.m.Popover with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

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
	* Gets content of aggregation {@link #getBeginButton beginButton}.

BeginButton is shown at the left side (right side in RTL mode) inside the header. When showHeader is set to false, the property is ignored.
	* @return	null
	*/
	public function getBeginButton( ):sap.ui.core.Control;

	/**
	* Gets content of aggregation {@link #getContent content}.

The content inside the popover.
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getContentHeight contentHeight}.

Set the height of the content area inside Popover. When controls which adapt their size to the parent control are added directly into Popover, for example sap.m.Page control, a size needs to be specified to the content area of the Popover. Otherwise, Popover control isn't able to display the content in the right way. This values isn't necessary for controls added to Popover directly which can decide their size by themselves, for exmaple sap.m.List, sap.m.Image etc., only needed for controls that adapt their size to the parent control.
	* @return	Value of property <code>contentHeight</code>
	*/
	public function getContentHeight( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getContentMinWidth contentMinWidth}.

Sets the minimum width of the content area inside popover.

Default value is <code>empty string</code>.
	* @return	Value of property <code>contentMinWidth</code>
	*/
	public function getContentMinWidth( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getContentWidth contentWidth}.

Set the width of the content area inside Popover. When controls which adapt their size to the parent control are added directly into Popover, for example sap.m.Page control, a size needs to be specified to the content area of the Popover. Otherwise, Popover control isn't able to display the content in the right way. This values isn't necessary for controls added to Popover directly which can decide their size by themselves, for exmaple sap.m.List, sap.m.Image etc., only needed for controls that adapt their size to the parent control.
	* @return	Value of property <code>contentWidth</code>
	*/
	public function getContentWidth( ):sap.ui.core.CSSSize;

	/**
	* Gets content of aggregation {@link #getCustomHeader customHeader}.

Any control that needed to be displayed in the header area. When this is set, the showHeader property is ignored, and only this customHeader is shown on the top of popover.
	* @return	null
	*/
	public function getCustomHeader( ):sap.ui.core.Control;

	/**
	* Gets content of aggregation {@link #getEndButton endButton}.

EndButton is always shown at the right side (left side in RTL mode) inside the header. When showHeader is set to false, the property is ignored.
	* @return	null
	*/
	public function getEndButton( ):sap.ui.core.Control;

	/**
	* Gets content of aggregation {@link #getFooter footer}.

This is optional footer which is shown on the bottom of the popover.
	* @return	null
	*/
	public function getFooter( ):sap.ui.core.Control;

	/**
	* Gets current value of property {@link #getHorizontalScrolling horizontalScrolling}.

This property indicates if user can scroll horizontally inside popover when the content is bigger than the content area. However, when scrollable control (sap.m.ScrollContainer, sap.m.Page) is in the popover, this property needs to be set to false to disable the scrolling in popover in order to make the scrolling in the child control work properly. Popover detects if there's sap.m.NavContainer, sap.m.Page, or sap.m.ScrollContainer as direct child added to Popover. If there is, Popover will turn off scrolling by setting this property to false automatically ignoring the existing value of this property.

Default value is <code>true</code>.
	* @return	Value of property <code>horizontalScrolling</code>
	*/
	public function getHorizontalScrolling( ):Bool;

	/**
	* ID of the element which is the current target of the association {@link #getInitialFocus initialFocus}, or <code>null</code>.
	* @return	null
	*/
	public function getInitialFocus( ):sap.ui.core.ID;

	/**
	* Returns a metadata object for class sap.m.Popover.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getModal modal}.

If the popover will not be closed when tapping outside the popover. It also blocks any interaction with the background. The default value is false.

Default value is <code>false</code>.
	* @return	Value of property <code>modal</code>
	*/
	public function getModal( ):Bool;

	/**
	* Gets current value of property {@link #getOffsetX offsetX}.

The offset for the popover placement in the x axis. It's with unit pixel.

Default value is <code>0</code>.
	* @return	Value of property <code>offsetX</code>
	*/
	public function getOffsetX( ):Int;

	/**
	* Gets current value of property {@link #getOffsetY offsetY}.

The offset for the popover placement in the y axis. It's with unit pixel.

Default value is <code>0</code>.
	* @return	Value of property <code>offsetY</code>
	*/
	public function getOffsetY( ):Int;

	/**
	* Gets current value of property {@link #getPlacement placement}.

This is the information about on which side will the popover be placed at. Possible values are sap.m.PlacementType.Left, sap.m.PlacementType.Right, sap.m.PlacementType.Top, sap.m.PlacementType.Bottom, sap.m.PlacementType.Horizontal, sap.m.PlacementType.HorizontalPreferredLeft, sap.m.PlacementType.HorizontalPreferredRight, sap.m.PlacementType.Vertical, sap.m.PlacementType.VerticalPreferredTop, sap.m.PlacementType.VerticalPreferredBottom, sap.m.PlacementType.Auto. The default value is sap.m.PlacementType.Right. Setting this property while popover is open won't cause any rerendering of the popover, but it will take effect when it's opened again.

Default value is <code>Right</code>.
	* @return	Value of property <code>placement</code>
	*/
	public function getPlacement( ):sap.m.PlacementType;

	/**
	* Gets current value of property {@link #getResizable resizable}.

Whether resize option is enabled. Note:* This property is effective only on Desktop

Default value is <code>false</code>.
	* @return	Value of property <code>resizable</code>
	*/
	public function getResizable( ):Bool;

	/**
	* Gets current value of property {@link #getShowArrow showArrow}.

Whether Popover arrow should be visible

Default value is <code>true</code>.
	* @return	Value of property <code>showArrow</code>
	*/
	public function getShowArrow( ):Bool;

	/**
	* Gets current value of property {@link #getShowHeader showHeader}.

If a header should be shown at the top of the popover.

Default value is <code>true</code>.
	* @return	Value of property <code>showHeader</code>
	*/
	public function getShowHeader( ):Bool;

	/**
	* Gets content of aggregation {@link #getSubHeader subHeader}.

When subHeader is assigned to Popover, it's rendered directly after the main header if there is, or at the beginning of Popover when there's no main header. SubHeader is out of the content area and won't be scrolled when content's size is bigger than the content area's size.
	* @return	null
	*/
	public function getSubHeader( ):sap.ui.core.Control;

	/**
	* Gets current value of property {@link #getTitle title}.

Title text appears in the header. This property will be ignored when <code>showHeader</code> is set to <code>false</code>. If you want to show a header in the <code>sap.m.Popover</code>, don't forget to set the {@link #setShowHeader showHeader} property to <code>true</code>.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Gets current value of property {@link #getTitleAlignment titleAlignment}.

Specifies the Title alignment (theme specific). If set to <code>TitleAlignment.Auto</code>, the Title will be aligned as it is set in the theme (if not set, the default value is <code>center</code>); Other possible values are <code>TitleAlignment.Start</code> (left or right depending on LTR/RTL), and <code>TitleAlignment.Center</code> (centered)

Default value is <code>Auto</code>.
	* @return	Value of property <code>titleAlignment</code>
	*/
	public function getTitleAlignment( ):sap.m.TitleAlignment;

	/**
	* Gets current value of property {@link #getVerticalScrolling verticalScrolling}.

This property indicates if user can scroll vertically inside popover when the content is bigger than the content area. However, when scrollable control (sap.m.ScrollContainer, sap.m.Page) is in the popover, this property needs to be set to false to disable the scrolling in popover in order to make the scrolling in the child control work properly. Popover detects if there's sap.m.NavContainer, sap.m.Page, or sap.m.ScrollContainer as direct child added to Popover. If there is, Popover will turn off scrolling by setting this property to false automatically ignoring the existing value of this property.

Default value is <code>true</code>.
	* @return	Value of property <code>verticalScrolling</code>
	*/
	public function getVerticalScrolling( ):Bool;

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
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.m.Popover;

	/**
	* The method checks if the Popover is open. It returns true when the Popover is currently open (this includes opening and closing animations), otherwise it returns false.
	* @return	whether the Popover is currently opened
	*/
	public function isOpen( ):Bool;

	/**
	* Opens the Popover and sets the Popover position according to the {@link #getPlacement() placement} property around the <code>oControl</code> parameter.
	* @param	oControl This is the control to which the Popover will be placed. It can be not only a UI5 control, but also an existing DOM reference. The side of the placement depends on the placement property set in the Popover.
	* @param	bSkipInstanceManager Indicates whether popover should be managed by InstanceManager or not
	* @return	Reference to the control instance for chaining
	*/
	public function openBy( oControl:Dynamic, bSkipInstanceManager:Bool):sap.m.Popover;

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

	/**
	* Removes all the controls from the aggregation {@link #getContent content}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllContent( ):Array<sap.ui.core.Control>;
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
	@:overload( function(vContent:Int):sap.ui.core.Control{ })
	@:overload( function(vContent:String):sap.ui.core.Control{ })

	/**
	* Removes a content from the aggregation {@link #getContent content}.
	* @param	vContent The content to remove or its index or id
	* @return	The removed content or <code>null</code>
	*/
	public function removeContent( vContent:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Sets the aggregated {@link #getBeginButton beginButton}.
	* @param	oBeginButton The beginButton to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBeginButton( oBeginButton:sap.ui.core.Control):sap.m.Popover;

	/**
	* Sets a new value for property {@link #getContentHeight contentHeight}.

Set the height of the content area inside Popover. When controls which adapt their size to the parent control are added directly into Popover, for example sap.m.Page control, a size needs to be specified to the content area of the Popover. Otherwise, Popover control isn't able to display the content in the right way. This values isn't necessary for controls added to Popover directly which can decide their size by themselves, for exmaple sap.m.List, sap.m.Image etc., only needed for controls that adapt their size to the parent control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sContentHeight New value for property <code>contentHeight</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContentHeight( sContentHeight:sap.ui.core.CSSSize):sap.m.Popover;

	/**
	* Sets a new value for property {@link #getContentMinWidth contentMinWidth}.

Sets the minimum width of the content area inside popover.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sContentMinWidth New value for property <code>contentMinWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContentMinWidth( sContentMinWidth:sap.ui.core.CSSSize):sap.m.Popover;

	/**
	* Sets a new value for property {@link #getContentWidth contentWidth}.

Set the width of the content area inside Popover. When controls which adapt their size to the parent control are added directly into Popover, for example sap.m.Page control, a size needs to be specified to the content area of the Popover. Otherwise, Popover control isn't able to display the content in the right way. This values isn't necessary for controls added to Popover directly which can decide their size by themselves, for exmaple sap.m.List, sap.m.Image etc., only needed for controls that adapt their size to the parent control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sContentWidth New value for property <code>contentWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContentWidth( sContentWidth:sap.ui.core.CSSSize):sap.m.Popover;

	/**
	* Sets the aggregated {@link #getCustomHeader customHeader}.
	* @param	oCustomHeader The customHeader to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCustomHeader( oCustomHeader:sap.ui.core.Control):sap.m.Popover;

	/**
	* Sets the aggregated {@link #getEndButton endButton}.
	* @param	oEndButton The endButton to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEndButton( oEndButton:sap.ui.core.Control):sap.m.Popover;

	/**
	* Sets the aggregated {@link #getFooter footer}.
	* @param	oFooter The footer to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFooter( oFooter:sap.ui.core.Control):sap.m.Popover;

	/**
	* Sets a new value for property {@link #getHorizontalScrolling horizontalScrolling}.

This property indicates if user can scroll horizontally inside popover when the content is bigger than the content area. However, when scrollable control (sap.m.ScrollContainer, sap.m.Page) is in the popover, this property needs to be set to false to disable the scrolling in popover in order to make the scrolling in the child control work properly. Popover detects if there's sap.m.NavContainer, sap.m.Page, or sap.m.ScrollContainer as direct child added to Popover. If there is, Popover will turn off scrolling by setting this property to false automatically ignoring the existing value of this property.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bHorizontalScrolling New value for property <code>horizontalScrolling</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHorizontalScrolling( bHorizontalScrolling:Bool):sap.m.Popover;
	@:overload( function(oInitialFocus:sap.ui.core.ID):sap.m.Popover{ })

	/**
	* Sets the associated {@link #getInitialFocus initialFocus}.
	* @param	oInitialFocus ID of an element which becomes the new target of this initialFocus association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInitialFocus( oInitialFocus:sap.ui.core.Control):sap.m.Popover;

	/**
	* Setter for property <code>modal</code>. This overwrites the default setter of the property <code>modal</code> to avoid rerendering the whole popover control.

Default value is <code>false</code>
	* @param	bModal New value for property <code>modal</code>.
	* @param	sModalCSSClass A CSS class (or space-separated list of classes) that should be added to the block layer.
	* @return	Reference to the control instance for chaining
	*/
	public function setModal( bModal:Bool, ?sModalCSSClass:String):sap.m.Popover;

	/**
	* Sets a new value for property {@link #getOffsetX offsetX}.

The offset for the popover placement in the x axis. It's with unit pixel.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iOffsetX New value for property <code>offsetX</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setOffsetX( iOffsetX:Int):sap.m.Popover;

	/**
	* Sets a new value for property {@link #getOffsetY offsetY}.

The offset for the popover placement in the y axis. It's with unit pixel.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iOffsetY New value for property <code>offsetY</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setOffsetY( iOffsetY:Int):sap.m.Popover;

	/**
	* Set the placement of the Popover.
	* @param	sPlacement The position of the Popover
	* @return	Reference to the control instance for chaining
	*/
	public function setPlacement( sPlacement:sap.m.PlacementType):sap.m.Popover;

	/**
	* Sets a new value for property {@link #getResizable resizable}.

Whether resize option is enabled. Note:* This property is effective only on Desktop

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bResizable New value for property <code>resizable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setResizable( bResizable:Bool):sap.m.Popover;

	/**
	* Sets a new value for property {@link #getShowArrow showArrow}.

Whether Popover arrow should be visible

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowArrow New value for property <code>showArrow</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowArrow( bShowArrow:Bool):sap.m.Popover;

	/**
	* Sets a new value for property {@link #getShowHeader showHeader}.

If a header should be shown at the top of the popover.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowHeader New value for property <code>showHeader</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowHeader( bShowHeader:Bool):sap.m.Popover;

	/**
	* Sets the aggregated {@link #getSubHeader subHeader}.
	* @param	oSubHeader The subHeader to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSubHeader( oSubHeader:sap.ui.core.Control):sap.m.Popover;

	/**
	* Sets a new value for property {@link #getTitle title}.

Title text appears in the header. This property will be ignored when <code>showHeader</code> is set to <code>false</code>. If you want to show a header in the <code>sap.m.Popover</code>, don't forget to set the {@link #setShowHeader showHeader} property to <code>true</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( sTitle:String):sap.m.Popover;

	/**
	* Sets a new value for property {@link #getTitleAlignment titleAlignment}.

Specifies the Title alignment (theme specific). If set to <code>TitleAlignment.Auto</code>, the Title will be aligned as it is set in the theme (if not set, the default value is <code>center</code>); Other possible values are <code>TitleAlignment.Start</code> (left or right depending on LTR/RTL), and <code>TitleAlignment.Center</code> (centered)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Auto</code>.
	* @param	sTitleAlignment New value for property <code>titleAlignment</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleAlignment( sTitleAlignment:sap.m.TitleAlignment):sap.m.Popover;

	/**
	* Sets a new value for property {@link #getVerticalScrolling verticalScrolling}.

This property indicates if user can scroll vertically inside popover when the content is bigger than the content area. However, when scrollable control (sap.m.ScrollContainer, sap.m.Page) is in the popover, this property needs to be set to false to disable the scrolling in popover in order to make the scrolling in the child control work properly. Popover detects if there's sap.m.NavContainer, sap.m.Page, or sap.m.ScrollContainer as direct child added to Popover. If there is, Popover will turn off scrolling by setting this property to false automatically ignoring the existing value of this property.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVerticalScrolling New value for property <code>verticalScrolling</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVerticalScrolling( bVerticalScrolling:Bool):sap.m.Popover;
}

typedef PopoverArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* This is the information about on which side will the popover be placed at. Possible values are sap.m.PlacementType.Left, sap.m.PlacementType.Right, sap.m.PlacementType.Top, sap.m.PlacementType.Bottom, sap.m.PlacementType.Horizontal, sap.m.PlacementType.HorizontalPreferredLeft, sap.m.PlacementType.HorizontalPreferredRight, sap.m.PlacementType.Vertical, sap.m.PlacementType.VerticalPreferredTop, sap.m.PlacementType.VerticalPreferredBottom, sap.m.PlacementType.Auto. The default value is sap.m.PlacementType.Right. Setting this property while popover is open won't cause any rerendering of the popover, but it will take effect when it's opened again.
	*/
	@:optional var placement:haxe.extern.EitherType<String,sap.m.PlacementType>;

	/**
	* If a header should be shown at the top of the popover.
	*/
	@:optional var showHeader:haxe.extern.EitherType<String,Bool>;

	/**
	* Title text appears in the header. This property will be ignored when <code>showHeader</code> is set to <code>false</code>. If you want to show a header in the <code>sap.m.Popover</code>, don't forget to set the {@link #setShowHeader showHeader} property to <code>true</code>.
	*/
	@:optional var title:String;

	/**
	* If the popover will not be closed when tapping outside the popover. It also blocks any interaction with the background. The default value is false.
	*/
	@:optional var modal:haxe.extern.EitherType<String,Bool>;

	/**
	* The offset for the popover placement in the x axis. It's with unit pixel.
	*/
	@:optional var offsetX:haxe.extern.EitherType<String,Int>;

	/**
	* The offset for the popover placement in the y axis. It's with unit pixel.
	*/
	@:optional var offsetY:haxe.extern.EitherType<String,Int>;

	/**
	* Whether Popover arrow should be visible
	*/
	@:optional var showArrow:haxe.extern.EitherType<String,Bool>;

	/**
	* Set the width of the content area inside Popover. When controls which adapt their size to the parent control are added directly into Popover, for example sap.m.Page control, a size needs to be specified to the content area of the Popover. Otherwise, Popover control isn't able to display the content in the right way. This values isn't necessary for controls added to Popover directly which can decide their size by themselves, for exmaple sap.m.List, sap.m.Image etc., only needed for controls that adapt their size to the parent control.
	*/
	@:optional var contentWidth:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Sets the minimum width of the content area inside popover.
	*/
	@:optional var contentMinWidth:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Set the height of the content area inside Popover. When controls which adapt their size to the parent control are added directly into Popover, for example sap.m.Page control, a size needs to be specified to the content area of the Popover. Otherwise, Popover control isn't able to display the content in the right way. This values isn't necessary for controls added to Popover directly which can decide their size by themselves, for exmaple sap.m.List, sap.m.Image etc., only needed for controls that adapt their size to the parent control.
	*/
	@:optional var contentHeight:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* This property indicates if user can scroll vertically inside popover when the content is bigger than the content area. However, when scrollable control (sap.m.ScrollContainer, sap.m.Page) is in the popover, this property needs to be set to false to disable the scrolling in popover in order to make the scrolling in the child control work properly. Popover detects if there's sap.m.NavContainer, sap.m.Page, or sap.m.ScrollContainer as direct child added to Popover. If there is, Popover will turn off scrolling by setting this property to false automatically ignoring the existing value of this property.
	*/
	@:optional var verticalScrolling:haxe.extern.EitherType<String,Bool>;

	/**
	* This property indicates if user can scroll horizontally inside popover when the content is bigger than the content area. However, when scrollable control (sap.m.ScrollContainer, sap.m.Page) is in the popover, this property needs to be set to false to disable the scrolling in popover in order to make the scrolling in the child control work properly. Popover detects if there's sap.m.NavContainer, sap.m.Page, or sap.m.ScrollContainer as direct child added to Popover. If there is, Popover will turn off scrolling by setting this property to false automatically ignoring the existing value of this property.
	*/
	@:optional var horizontalScrolling:haxe.extern.EitherType<String,Bool>;

	/**
	* Whether resize option is enabled. *Note:* This property is effective only on Desktop
	*/
	@:optional var resizable:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies the aria-modal of the Popover.
	*/
	@:optional var ariaModal:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies the Title alignment (theme specific). If set to <code>TitleAlignment.Auto</code>, the Title will be aligned as it is set in the theme (if not set, the default value is <code>center</code>); Other possible values are <code>TitleAlignment.Start</code> (left or right depending on LTR/RTL), and <code>TitleAlignment.Center</code> (centered)
	*/
	@:optional var titleAlignment:haxe.extern.EitherType<String,sap.m.TitleAlignment>;

    /**
    * The content inside the popover.
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * Any control that needed to be displayed in the header area. When this is set, the showHeader property is ignored, and only this customHeader is shown on the top of popover.
    */
	@:optional var customHeader:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * When subHeader is assigned to Popover, it's rendered directly after the main header if there is, or at the beginning of Popover when there's no main header. SubHeader is out of the content area and won't be scrolled when content's size is bigger than the content area's size.
    */
	@:optional var subHeader:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * This is optional footer which is shown on the bottom of the popover.
    */
	@:optional var footer:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * This is the hidden aggregation for managing the internally created header.
    */
	@:optional var _internalHeader:haxe.extern.EitherType<String,sap.m.Bar>;

    /**
    * BeginButton is shown at the left side (right side in RTL mode) inside the header. When showHeader is set to false, the property is ignored.
    */
	@:optional var beginButton:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * EndButton is always shown at the right side (left side in RTL mode) inside the header. When showHeader is set to false, the property is ignored.
    */
	@:optional var endButton:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* Focus on the popover is set in the sequence of <code>beginButton</code> and <code>endButton</code>, when available. But if a control other than these two buttons needs to get the focus, set the <code>initialFocus</code> with the control which should be focused on.
	*/
	@:optional var initialFocus:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* Association to controls / ids which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / ids which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* This event will be fired after the popover is closed.
	*/
	@:optional var afterClose:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event will be fired after the popover is opened.
	*/
	@:optional var afterOpen:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event will be fired before the popover is closed.
	*/
	@:optional var beforeClose:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event will be fired before the popover is opened.
	*/
	@:optional var beforeOpen:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
