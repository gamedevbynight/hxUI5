package sap.m;

@:native("sap.m.ResponsivePopover")

/**
* <h3>Overview</h3> The responsive popover acts as a {@link sap.m.Popover popover} on desktop and tablet, while on phone it acts as a {@link sap.m.Dialog dialog} with <code>stretch</code> set to true.

<b>Note:</b> It is recommended that <code>ResponsivePopover</code> is used in fragments otherwise there might be some implications on the user experience. For example, on desktop, open or close functions of the <code>Popover</code> might not be called.

<h3>Usage</h3> When you want to make sure that all content is visible on any device.
*/
extern class ResponsivePopover extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ResponsivePopoverArgs):Void {})
	public function new(?mSettings:ResponsivePopoverArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.m.ResponsivePopover{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.m.ResponsivePopover;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.ResponsivePopover{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.ResponsivePopover;

	/**
	* Adds content to the ResponsivePopover
	* @param	oControl The control to be added to the content
	* @return	Void
	*/
	public function addContent( oControl:sap.ui.core.Control):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:afterClose afterClose} event of this <code>sap.m.ResponsivePopover</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ResponsivePopover</code> itself.

Event is fired after popover or dialog is closed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ResponsivePopover</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAfterClose( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.ResponsivePopover;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:afterOpen afterOpen} event of this <code>sap.m.ResponsivePopover</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ResponsivePopover</code> itself.

Event is fired after popover or dialog is open.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ResponsivePopover</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAfterOpen( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.ResponsivePopover;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeClose beforeClose} event of this <code>sap.m.ResponsivePopover</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ResponsivePopover</code> itself.

Event is fired before popover or dialog is closed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ResponsivePopover</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforeClose( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.ResponsivePopover;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeOpen beforeOpen} event of this <code>sap.m.ResponsivePopover</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ResponsivePopover</code> itself.

Event is fired before popover or dialog is open.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ResponsivePopover</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforeOpen( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.ResponsivePopover;

	/**
	* Creates a new instance of ResponsivePopover with the same settings as the ResponsivePopover on which the method is called
	* @return	New instance of ResponsivePopover
	*/
	public function clone( ):sap.m.ResponsivePopover;

	/**
	* Closes the ResponsivePopover.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function close( ):sap.m.ResponsivePopover;

	/**
	* Destroys the beginButton in the aggregation {@link #getBeginButton beginButton}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyBeginButton( ):sap.m.ResponsivePopover;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.m.ResponsivePopover;

	/**
	* Destroys the customHeader in the aggregation {@link #getCustomHeader customHeader}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyCustomHeader( ):sap.m.ResponsivePopover;

	/**
	* Destroys the endButton in the aggregation {@link #getEndButton endButton}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyEndButton( ):sap.m.ResponsivePopover;

	/**
	* Destroys the subHeader in the aggregation {@link #getSubHeader subHeader}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySubHeader( ):sap.m.ResponsivePopover;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:afterClose afterClose} event of this <code>sap.m.ResponsivePopover</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAfterClose( fnFunction:()->Void, ?oListener:Dynamic):sap.m.ResponsivePopover;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:afterOpen afterOpen} event of this <code>sap.m.ResponsivePopover</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAfterOpen( fnFunction:()->Void, ?oListener:Dynamic):sap.m.ResponsivePopover;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeClose beforeClose} event of this <code>sap.m.ResponsivePopover</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforeClose( fnFunction:()->Void, ?oListener:Dynamic):sap.m.ResponsivePopover;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeOpen beforeOpen} event of this <code>sap.m.ResponsivePopover</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforeOpen( fnFunction:()->Void, ?oListener:Dynamic):sap.m.ResponsivePopover;

	/**
	* Creates a new subclass of class sap.m.ResponsivePopover with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
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
	* Getter for beginButton aggregation
	* @return	The button that is set as a beginButton aggregation
	*/
	public function getBeginButton( ):sap.m.Button;

	/**
	* Gets content of aggregation {@link #getContent content}.

Content is supported by both variants. Please see the documentation on sap.m.Popover#content and sap.m.Dialog#content
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getContentHeight contentHeight}.

This property is supported by both variants. Please see the documentation on sap.m.Popover#contentHeight and sap.m.Dialog#contentHeight
	* @return	Value of property <code>contentHeight</code>
	*/
	public function getContentHeight( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getContentWidth contentWidth}.

This property is supported by both variants. Please see the documentation on sap.m.Popover#contentWidth and sap.m.Dialog#contentWidth
	* @return	Value of property <code>contentWidth</code>
	*/
	public function getContentWidth( ):sap.ui.core.CSSSize;

	/**
	* Gets content of aggregation {@link #getCustomHeader customHeader}.

CustomHeader is supported by both variants. Please see the documentation on sap.m.Popover#customHeader and sap.m.Dialog#customHeader
	* @return	null
	*/
	public function getCustomHeader( ):sap.m.IBar;

	/**
	* Getter for endButton aggregation
	* @return	The button that is set as an endButton aggregation
	*/
	public function getEndButton( ):sap.m.Button;

	/**
	* Gets current value of property {@link #getHorizontalScrolling horizontalScrolling}.

This property is supported by both variants. Please see the documentation on sap.m.Popover#horizontalScrolling and sap.m.Dialog#horizontalScrolling

Default value is <code>true</code>.
	* @return	Value of property <code>horizontalScrolling</code>
	*/
	public function getHorizontalScrolling( ):Bool;

	/**
	* Gets current value of property {@link #getIcon icon}.

This property only takes effect on phone. Please see the documentation sap.m.Dialog#icon.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* ID of the element which is the current target of the association {@link #getInitialFocus initialFocus}, or <code>null</code>.
	* @return	null
	*/
	public function getInitialFocus( ):sap.ui.core.ID;

	/**
	* Returns a metadata object for class sap.m.ResponsivePopover.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getModal modal}.

This property only takes effect on desktop or tablet. Please see the documentation sap.m.Popover#modal.
	* @return	Value of property <code>modal</code>
	*/
	public function getModal( ):Bool;

	/**
	* Gets current value of property {@link #getOffsetX offsetX}.

This property only takes effect on desktop or tablet. Please see the documentation sap.m.Popover#offsetX.
	* @return	Value of property <code>offsetX</code>
	*/
	public function getOffsetX( ):Int;

	/**
	* Gets current value of property {@link #getOffsetY offsetY}.

This property only takes effect on desktop or tablet. Please see the documentation sap.m.Popover#offsetY.
	* @return	Value of property <code>offsetY</code>
	*/
	public function getOffsetY( ):Int;

	/**
	* Gets current value of property {@link #getPlacement placement}.

This property only takes effect on desktop or tablet. Please see the documentation sap.m.Popover#placement.

Default value is <code>Right</code>.
	* @return	Value of property <code>placement</code>
	*/
	public function getPlacement( ):sap.m.PlacementType;

	/**
	* Gets current value of property {@link #getResizable resizable}.

Whether resize option is enabled.

Default value is <code>false</code>.
	* @return	Value of property <code>resizable</code>
	*/
	public function getResizable( ):Bool;

	/**
	* Gets current value of property {@link #getShowArrow showArrow}.

This property only takes effect on desktop or tablet. Please see the documentation sap.m.Popover#showArrow.

Default value is <code>true</code>.
	* @return	Value of property <code>showArrow</code>
	*/
	public function getShowArrow( ):Bool;

	/**
	* Gets current value of property {@link #getShowCloseButton showCloseButton}.

Determines if a close button should be inserted into the dialog's header dynamically to close the dialog. This property only takes effect on phone. <b>Note:</b> The close button could be placed only in a sap.m.Bar if a sap.m.Toolbar is passed as a header - the property will not take effect.

Default value is <code>true</code>.
	* @return	Value of property <code>showCloseButton</code>
	*/
	public function getShowCloseButton( ):Bool;

	/**
	* Gets current value of property {@link #getShowHeader showHeader}.

This property is supported by both variants. Please see the documentation on sap.m.Popover#showHeader and sap.m.Dialog#showHeader

Default value is <code>true</code>.
	* @return	Value of property <code>showHeader</code>
	*/
	public function getShowHeader( ):Bool;

	/**
	* Gets content of aggregation {@link #getSubHeader subHeader}.

SubHeader is supported by both variants. Please see the documentation on sap.m.Popover#subHeader and sap.m.Dialog#subHeader
	* @return	null
	*/
	public function getSubHeader( ):sap.m.IBar;

	/**
	* Gets current value of property {@link #getTitle title}.

This property is supported by both variants. Please see the documentation on sap.m.Popover#title and sap.m.Dialog#title
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

This property is supported by both variants. Please see the documentation on sap.m.Popover#verticalScrolling and sap.m.Dialog#verticalScrolling

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
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.m.ResponsivePopover;

	/**
	* Checks whether the ResponsivePopover is currently open.
	* @return	whether the ResponsivePopover is currently opened
	*/
	public function isOpen( ):Bool;

	/**
	* Opens the ResponsivePopover. The ResponsivePopover is positioned relatively to the control parameter on tablet or desktop and is full screen on phone. Therefore the control parameter is only used on tablet or desktop and is ignored on phone.
	* @param	oParent When this control is displayed on tablet or desktop, the ResponsivePopover is positioned relative to this control.
	* @return	Reference to the opening control
	*/
	public function openBy( oParent:Dynamic):Dynamic;

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
	* Setter for beginButton aggregation
	* @param	oButton The button that will be set as an aggregation
	* @return	Pointer to the control instance for chaining
	*/
	public function setBeginButton( oButton:sap.m.Button):sap.m.ResponsivePopover;

	/**
	* Sets a new value for property {@link #getContentHeight contentHeight}.

This property is supported by both variants. Please see the documentation on sap.m.Popover#contentHeight and sap.m.Dialog#contentHeight

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sContentHeight New value for property <code>contentHeight</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContentHeight( sContentHeight:sap.ui.core.CSSSize):sap.m.ResponsivePopover;

	/**
	* Sets a new value for property {@link #getContentWidth contentWidth}.

This property is supported by both variants. Please see the documentation on sap.m.Popover#contentWidth and sap.m.Dialog#contentWidth

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sContentWidth New value for property <code>contentWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContentWidth( sContentWidth:sap.ui.core.CSSSize):sap.m.ResponsivePopover;

	/**
	* Sets the aggregated {@link #getCustomHeader customHeader}.
	* @param	oCustomHeader The customHeader to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCustomHeader( oCustomHeader:sap.m.IBar):sap.m.ResponsivePopover;

	/**
	* Setter for endButton aggregation
	* @param	oButton The button that will be set as an aggregation
	* @return	Pointer to the control instance for chaining
	*/
	public function setEndButton( oButton:sap.m.Button):sap.m.ResponsivePopover;

	/**
	* Sets a new value for property {@link #getHorizontalScrolling horizontalScrolling}.

This property is supported by both variants. Please see the documentation on sap.m.Popover#horizontalScrolling and sap.m.Dialog#horizontalScrolling

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bHorizontalScrolling New value for property <code>horizontalScrolling</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHorizontalScrolling( bHorizontalScrolling:Bool):sap.m.ResponsivePopover;

	/**
	* Sets a new value for property {@link #getIcon icon}.

This property only takes effect on phone. Please see the documentation sap.m.Dialog#icon.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( sIcon:sap.ui.core.URI):sap.m.ResponsivePopover;
	@:overload( function(oInitialFocus:sap.ui.core.ID):sap.m.ResponsivePopover{ })

	/**
	* Sets the associated {@link #getInitialFocus initialFocus}.
	* @param	oInitialFocus ID of an element which becomes the new target of this initialFocus association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInitialFocus( oInitialFocus:sap.ui.core.Control):sap.m.ResponsivePopover;

	/**
	* Sets a new value for property {@link #getModal modal}.

This property only takes effect on desktop or tablet. Please see the documentation sap.m.Popover#modal.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	bModal New value for property <code>modal</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setModal( bModal:Bool):sap.m.ResponsivePopover;

	/**
	* Sets a new value for property {@link #getOffsetX offsetX}.

This property only takes effect on desktop or tablet. Please see the documentation sap.m.Popover#offsetX.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iOffsetX New value for property <code>offsetX</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setOffsetX( iOffsetX:Int):sap.m.ResponsivePopover;

	/**
	* Sets a new value for property {@link #getOffsetY offsetY}.

This property only takes effect on desktop or tablet. Please see the documentation sap.m.Popover#offsetY.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iOffsetY New value for property <code>offsetY</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setOffsetY( iOffsetY:Int):sap.m.ResponsivePopover;

	/**
	* Sets a new value for property {@link #getPlacement placement}.

This property only takes effect on desktop or tablet. Please see the documentation sap.m.Popover#placement.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Right</code>.
	* @param	sPlacement New value for property <code>placement</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPlacement( sPlacement:sap.m.PlacementType):sap.m.ResponsivePopover;

	/**
	* Sets a new value for property {@link #getResizable resizable}.

Whether resize option is enabled.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bResizable New value for property <code>resizable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setResizable( bResizable:Bool):sap.m.ResponsivePopover;

	/**
	* Sets a new value for property {@link #getShowArrow showArrow}.

This property only takes effect on desktop or tablet. Please see the documentation sap.m.Popover#showArrow.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowArrow New value for property <code>showArrow</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowArrow( bShowArrow:Bool):sap.m.ResponsivePopover;

	/**
	* Determines if the close button to the ResponsivePopover is shown or not. Works only when ResponsivePopover is used as a dialog
	* @param	bShowCloseButton Defines whether the close button is shown
	* @return	Pointer to the control instance for chaining
	*/
	public function setShowCloseButton( bShowCloseButton:Bool):sap.m.ResponsivePopover;

	/**
	* Sets a new value for property {@link #getShowHeader showHeader}.

This property is supported by both variants. Please see the documentation on sap.m.Popover#showHeader and sap.m.Dialog#showHeader

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowHeader New value for property <code>showHeader</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowHeader( bShowHeader:Bool):sap.m.ResponsivePopover;

	/**
	* Sets the aggregated {@link #getSubHeader subHeader}.
	* @param	oSubHeader The subHeader to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSubHeader( oSubHeader:sap.m.IBar):sap.m.ResponsivePopover;

	/**
	* Sets a new value for property {@link #getTitle title}.

This property is supported by both variants. Please see the documentation on sap.m.Popover#title and sap.m.Dialog#title

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( sTitle:String):sap.m.ResponsivePopover;

	/**
	* Sets a new value for property {@link #getTitleAlignment titleAlignment}.

Specifies the Title alignment (theme specific). If set to <code>TitleAlignment.Auto</code>, the Title will be aligned as it is set in the theme (if not set, the default value is <code>center</code>); Other possible values are <code>TitleAlignment.Start</code> (left or right depending on LTR/RTL), and <code>TitleAlignment.Center</code> (centered)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Auto</code>.
	* @param	sTitleAlignment New value for property <code>titleAlignment</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleAlignment( sTitleAlignment:sap.m.TitleAlignment):sap.m.ResponsivePopover;

	/**
	* Sets a new value for property {@link #getVerticalScrolling verticalScrolling}.

This property is supported by both variants. Please see the documentation on sap.m.Popover#verticalScrolling and sap.m.Dialog#verticalScrolling

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVerticalScrolling New value for property <code>verticalScrolling</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVerticalScrolling( bVerticalScrolling:Bool):sap.m.ResponsivePopover;
}

typedef ResponsivePopoverArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* This property only takes effect on desktop or tablet. Please see the documentation sap.m.Popover#placement.
	*/
	@:optional var placement:haxe.extern.EitherType<String,sap.m.PlacementType>;

	/**
	* This property is supported by both variants. Please see the documentation on sap.m.Popover#showHeader and sap.m.Dialog#showHeader
	*/
	@:optional var showHeader:haxe.extern.EitherType<String,Bool>;

	/**
	* This property is supported by both variants. Please see the documentation on sap.m.Popover#title and sap.m.Dialog#title
	*/
	@:optional var title:String;

	/**
	* This property only takes effect on phone. Please see the documentation sap.m.Dialog#icon.
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* This property only takes effect on desktop or tablet. Please see the documentation sap.m.Popover#modal.
	*/
	@:optional var modal:haxe.extern.EitherType<String,Bool>;

	/**
	* This property only takes effect on desktop or tablet. Please see the documentation sap.m.Popover#offsetX.
	*/
	@:optional var offsetX:haxe.extern.EitherType<String,Int>;

	/**
	* This property only takes effect on desktop or tablet. Please see the documentation sap.m.Popover#offsetY.
	*/
	@:optional var offsetY:haxe.extern.EitherType<String,Int>;

	/**
	* This property only takes effect on desktop or tablet. Please see the documentation sap.m.Popover#showArrow.
	*/
	@:optional var showArrow:haxe.extern.EitherType<String,Bool>;

	/**
	* This property is supported by both variants. Please see the documentation on sap.m.Popover#contentWidth and sap.m.Dialog#contentWidth
	*/
	@:optional var contentWidth:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* This property is supported by both variants. Please see the documentation on sap.m.Popover#contentHeight and sap.m.Dialog#contentHeight
	*/
	@:optional var contentHeight:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* This property is supported by both variants. Please see the documentation on sap.m.Popover#horizontalScrolling and sap.m.Dialog#horizontalScrolling
	*/
	@:optional var horizontalScrolling:haxe.extern.EitherType<String,Bool>;

	/**
	* This property is supported by both variants. Please see the documentation on sap.m.Popover#verticalScrolling and sap.m.Dialog#verticalScrolling
	*/
	@:optional var verticalScrolling:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines if a close button should be inserted into the dialog's header dynamically to close the dialog. This property only takes effect on phone. <b>Note:</b> The close button could be placed only in a sap.m.Bar if a sap.m.Toolbar is passed as a header - the property will not take effect.
	*/
	@:optional var showCloseButton:haxe.extern.EitherType<String,Bool>;

	/**
	* Whether resize option is enabled.
	*/
	@:optional var resizable:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies the Title alignment (theme specific). If set to <code>TitleAlignment.Auto</code>, the Title will be aligned as it is set in the theme (if not set, the default value is <code>center</code>); Other possible values are <code>TitleAlignment.Start</code> (left or right depending on LTR/RTL), and <code>TitleAlignment.Center</code> (centered)
	*/
	@:optional var titleAlignment:haxe.extern.EitherType<String,sap.m.TitleAlignment>;

    /**
    * Content is supported by both variants. Please see the documentation on sap.m.Popover#content and sap.m.Dialog#content
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * CustomHeader is supported by both variants. Please see the documentation on sap.m.Popover#customHeader and sap.m.Dialog#customHeader
    */
	@:optional var customHeader:haxe.extern.EitherType<String,sap.m.IBar>;

    /**
    * SubHeader is supported by both variants. Please see the documentation on sap.m.Popover#subHeader and sap.m.Dialog#subHeader
    */
	@:optional var subHeader:haxe.extern.EitherType<String,sap.m.IBar>;

    /**
    * BeginButton is supported by both variants. It is always show in the left part (right part in RTL mode) of the footer which is located at the bottom of the ResponsivePopover. If buttons need to be displayed in header, please use customHeader instead.
    */
	@:optional var beginButton:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * EndButton is supported by both variants. It is always show in the right part (left part in RTL mode) of the footer which is located at the bottom of the ResponsivePopover. If buttons need to be displayed in header, please use customHeader instead.
    */
	@:optional var endButton:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * The internal popup instance which is either a dialog on phone or a popover on the rest of platforms
    */
	@:optional var _popup:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* InitialFocus is supported by both variants. Please see the documentation on sap.m.Popover#initialFocus and sap.m.Dialog#initialFocus
	*/
	@:optional var initialFocus:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* Association to controls / ids which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / IDs which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Event is fired after popover or dialog is closed.
	*/
	@:optional var afterClose:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event is fired after popover or dialog is open.
	*/
	@:optional var afterOpen:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event is fired before popover or dialog is closed.
	*/
	@:optional var beforeClose:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event is fired before popover or dialog is open.
	*/
	@:optional var beforeOpen:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
