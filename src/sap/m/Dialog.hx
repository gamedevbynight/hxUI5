package sap.m;

@:native("sap.m.Dialog")

/**
* A popup that interrupts the current processing and prompts the user for an action or an input in a modal mode. <h3>Overview</h3> The Dialog control is used to prompt the user for an action or a confirmation. It interrupts the current app processing as it is the only focused UI element and the main screen is dimmed/blocked. The content of the Dialog is fully customizable. <h3>Structure</h3> A Dialog consists of a title, optional subtitle, content area and a footer for action buttons. The Dialog is usually displayed at the center of the screen. Its size and position can be changed by the user. To enable this, you need to set the properties <code>resizable</code> and <code>draggable</code> accordingly.

There are other specialized types of dialogs: <ul> <li>{@link sap.m.P13nDialog Personalization Dialog} - used for personalizing sorting, filtering and grouping in tables</li> <li>{@link sap.m.SelectDialog Select Dialog} - used to select one or more items from a comprehensive list</li> <li>{@link sap.m.TableSelectDialog Table Select Dialog} - used to make a selection from a comprehensive table containing multiple attributes or values</li> <li>{@link sap.ui.comp.valuehelpdialog.ValueHelpDialog Value Help Dialog} - used to help the user find and select single and multiple values</li> <li>{@link sap.m.ViewSettingsDialog View Settings Dialog} - used to sort, filter, or group data within a (master) list or a table</li> <li>{@link sap.m.BusyDialog Busy Dialog} - used to block the screen and inform the user about an ongoing operation</li> </ul> <h3>Usage</h3> <h4>When to use:</h4> <ul> <li>You want to display a system message.</li> <li>You want to interrupt the user’s action.</li> <li>You want to show a message with a short and a long description.</li> </ul> <h4>When not to use:</h4> <ul> <li>You just want to confirm a successful action.</li> </ul> <h3>Responsive Behavior</h3> <ul> <li>If the <code>stretch</code> property is set to <code>true</code>, the Dialog displays on full screen.</li> <li>If the <code>contentWidth</code> and/or <code>contentHeight</code> properties are set, the Dialog will try to fill those sizes.</li> <li>If there is no specific sizing, the Dialog will try to adjust its size to its content.</li> </ul> When using the <code>sap.m.Dialog</code> in SAP Quartz themes, the breakpoints and layout paddings could be determined by the Dialog's width. To enable this concept and add responsive paddings to an element of the Dialog control, you have to add the following classes depending on your use case: <code>sapUiResponsivePadding--header</code>, <code>sapUiResponsivePadding--subHeader</code>, <code>sapUiResponsivePadding--content</code>, <code>sapUiResponsivePadding--footer</code>. <h4>Smartphones</h4> If the Dialog has one or two actions, they will cover the entire footer. If there are more actions, they will overflow. <h4>Tablets</h4> The action buttons in the toolbar are <b>right-aligned</b>. Use <b>cozy</b> mode on tablet devices. <h4>Desktop</h4> The action buttons in the toolbar are <b>right-aligned</b>. Use <b>compact</b> mode on desktop.
*/
extern class Dialog extends sap.ui.core.Control implements sap.ui.core.PopupInterface
{
	@:overload(function(?sId:String, ?mSettings:DialogArgs):Void {})
	public function new(?mSettings:DialogArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.m.Dialog{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.m.Dialog;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.Dialog{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.Dialog;

	/**
	* Adds some button to the aggregation {@link #getButtons buttons}.
	* @param	oButton The button to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addButton( oButton:sap.m.Button):sap.m.Dialog;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.m.Dialog;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:afterClose afterClose} event of this <code>sap.m.Dialog</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Dialog</code> itself.

This event will be fired after the Dialog is closed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Dialog</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAfterClose( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Dialog;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:afterOpen afterOpen} event of this <code>sap.m.Dialog</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Dialog</code> itself.

This event will be fired after the Dialog is opened.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Dialog</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAfterOpen( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Dialog;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeClose beforeClose} event of this <code>sap.m.Dialog</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Dialog</code> itself.

This event will be fired before the Dialog is closed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Dialog</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforeClose( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Dialog;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeOpen beforeOpen} event of this <code>sap.m.Dialog</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Dialog</code> itself.

This event will be fired before the Dialog is opened.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Dialog</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforeOpen( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Dialog;

	/**
	* Close the dialog.
	* @return	Void
	*/
	public function close( ):Void;

	/**
	* Destroys the beginButton in the aggregation {@link #getBeginButton beginButton}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyBeginButton( ):sap.m.Dialog;

	/**
	* Destroys all the buttons in the aggregation {@link #getButtons buttons}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyButtons( ):sap.m.Dialog;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.m.Dialog;

	/**
	* Destroys the customHeader in the aggregation {@link #getCustomHeader customHeader}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyCustomHeader( ):sap.m.Dialog;

	/**
	* Destroys the endButton in the aggregation {@link #getEndButton endButton}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyEndButton( ):sap.m.Dialog;

	/**
	* Destroys the subHeader in the aggregation {@link #getSubHeader subHeader}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySubHeader( ):sap.m.Dialog;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:afterClose afterClose} event of this <code>sap.m.Dialog</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAfterClose( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Dialog;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:afterOpen afterOpen} event of this <code>sap.m.Dialog</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAfterOpen( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Dialog;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeClose beforeClose} event of this <code>sap.m.Dialog</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforeClose( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Dialog;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeOpen beforeOpen} event of this <code>sap.m.Dialog</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforeOpen( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Dialog;

	/**
	* Creates a new subclass of class sap.m.Dialog with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

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

The button which is rendered to the left side (right side in RTL mode) of the <code>endButton</code> in the footer area inside the Dialog. As of version 1.21.1, there's a new aggregation <code>buttons</code> created with which more than 2 buttons can be added to the footer area of the Dialog. If the new <code>buttons</code> aggregation is set, any change made to this aggregation has no effect anymore. When running on a phone, this <code>button</code> (and the <code>endButton</code> together when set) is (are) rendered at the center of the footer area. When running on other platforms, this <code>button</code> (and the <code>endButton</code> together when set) is (are) rendered at the right side (left side in RTL mode) of the footer area.
	* @return	null
	*/
	public function getBeginButton( ):sap.m.Button;

	/**
	* Gets content of aggregation {@link #getButtons buttons}.

Buttons can be added to the footer area of the Dialog through this aggregation. When this aggregation is set, any change to the <code>beginButton</code> and <code>endButton</code> has no effect anymore. Buttons which are inside this aggregation are aligned at the right side (left side in RTL mode) of the footer instead of in the middle of the footer.
	* @return	null
	*/
	public function getButtons( ):Array<sap.m.Button>;

	/**
	* Gets current value of property {@link #getCloseOnNavigation closeOnNavigation}.

Indicates whether the Dialog will be closed automatically when a routing navigation occurs.

Default value is <code>true</code>.
	* @return	Value of property <code>closeOnNavigation</code>
	*/
	public function getCloseOnNavigation( ):Bool;

	/**
	* Gets content of aggregation {@link #getContent content}.

The content inside the Dialog.<br/><b>Note:</b> When the content of the Dialog is comprised of controls that use <code>position: absolute</code>, such as <code>SplitContainer</code>, the Dialog has to have either <code>stretch: true</code> or <code>contentHeight</code> set.
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getContentHeight contentHeight}.

Preferred height of the content in the Dialog. If the preferred height is bigger than the available space on a screen, it will be overwritten by the maximum available height on a screen in order to make sure that the Dialog isn't cut off.
	* @return	Value of property <code>contentHeight</code>
	*/
	public function getContentHeight( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getContentWidth contentWidth}.

Preferred width of the content in the Dialog. This property affects the width of the Dialog on a phone in landscape mode, a tablet or a desktop, because the Dialog has a fixed width on a phone in portrait mode. If the preferred width is less than the minimum width of the Dialog or more than the available width of the screen, it will be overwritten by the min or max value. The current mininum value of the Dialog width on tablet is 400px.
	* @return	Value of property <code>contentWidth</code>
	*/
	public function getContentWidth( ):sap.ui.core.CSSSize;

	/**
	* Gets content of aggregation {@link #getCustomHeader customHeader}.

When it is set, the <code>icon</code>, <code>title</code> and <code>showHeader</code> properties are ignored. Only the <code>customHeader</code> is shown as the header of the Dialog.
	* @return	null
	*/
	public function getCustomHeader( ):sap.m.IBar;

	/**
	* Gets current value of property {@link #getDraggable draggable}.

Indicates whether the Dialog is draggable. If this property is set to <code>true</code>, the Dialog will be draggable by its header. This property has a default value <code>false</code>. The Dialog can be draggable only in desktop mode.

Default value is <code>false</code>.
	* @return	Value of property <code>draggable</code>
	*/
	public function getDraggable( ):Bool;

	/**
	* Gets content of aggregation {@link #getEndButton endButton}.

The button which is rendered to the right side (left side in RTL mode) of the <code>beginButton</code> in the footer area inside the Dialog. As of version 1.21.1, there's a new aggregation <code>buttons</code> created with which more than 2 buttons can be added to the footer area of Dialog. If the new <code>buttons</code> aggregation is set, any change made to this aggregation has no effect anymore. When running on a phone, this <code>button</code> (and the <code>beginButton</code> together when set) is (are) rendered at the center of the footer area. When running on other platforms, this <code>button</code> (and the <code>beginButton</code> together when set) is (are) rendered at the right side (left side in RTL mode) of the footer area.
	* @return	null
	*/
	public function getEndButton( ):sap.m.Button;

	/**
	* Gets current value of property {@link #getEscapeHandler escapeHandler}.

This property expects a function with one parameter of type Promise. In the function, you should call either <code>resolve()</code> or <code>reject()</code> on the Promise object.<br/> The function allows you to define custom behavior which will be executed when the Escape key is pressed. By default, when the Escape key is pressed, the Dialog is immediately closed.
	* @return	Value of property <code>escapeHandler</code>
	*/
	public function getEscapeHandler( ):Dynamic;

	/**
	* Gets current value of property {@link #getHorizontalScrolling horizontalScrolling}.

Indicates if the user can scroll horizontally inside the Dialog when the content is bigger than the content area. The Dialog detects if there's <code>sap.m.NavContainer</code>, <code>sap.m.Page</code>, <code>sap.m.ScrollContainer</code> or <code>sap.m.SplitContainer</code> as a direct child added to the Dialog. If there is, the Dialog will turn off <code>scrolling</code> by setting this property to <code>false</code>, automatically ignoring the existing value of the property.

Default value is <code>true</code>.
	* @return	Value of property <code>horizontalScrolling</code>
	*/
	public function getHorizontalScrolling( ):Bool;

	/**
	* Gets current value of property {@link #getIcon icon}.

Icon displayed in the Dialog header. This <code>icon</code> is invisible on the iOS platform and it is density-aware. You can use the density convention (@2, @1.5, etc.) to provide higher resolution image for higher density screen.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* ID of the element which is the current target of the association {@link #getInitialFocus initialFocus}, or <code>null</code>.
	* @return	null
	*/
	public function getInitialFocus( ):sap.ui.core.ID;

	/**
	* Returns a metadata object for class sap.m.Dialog.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getResizable resizable}.

Indicates whether the Dialog is resizable. If this property is set to <code>true</code>, the Dialog will have a resize handler in its bottom right corner. This property has a default value <code>false</code>. The Dialog can be resizable only in desktop mode.

Default value is <code>false</code>.
	* @return	Value of property <code>resizable</code>
	*/
	public function getResizable( ):Bool;

	/**
	* Gets current value of property {@link #getShowHeader showHeader}.

Determines whether the header is shown inside the Dialog. If this property is set to <code>true</code>, the <code>text</code> and <code>icon</code> properties are ignored. This property has a default value <code>true</code>.

Default value is <code>true</code>.
	* @return	Value of property <code>showHeader</code>
	*/
	public function getShowHeader( ):Bool;

	/**
	* Gets current value of property {@link #getState state}.

Affects the <code>icon</code> and the <code>title</code> color. If other than <code>none</code> is set, a predefined icon will be added to the Dialog. Setting the <code>icon</code> property will overwrite the predefined icon. The default value is <code>none</code> which doesn't add any icon to the Dialog control. This property is by now only supported by the blue crystal theme.

Default value is <code>None</code>.
	* @return	Value of property <code>state</code>
	*/
	public function getState( ):sap.ui.core.ValueState;

	/**
	* Gets current value of property {@link #getStretch stretch}.

Determines if the Dialog will be stretched to full screen on mobile. On desktop, the Dialog will be stretched to 93% of the viewport. This property is only applicable to a Standard Dialog. Message-type Dialog ignores it.

Default value is <code>false</code>.
	* @return	Value of property <code>stretch</code>
	*/
	public function getStretch( ):Bool;

	/**
	* Gets content of aggregation {@link #getSubHeader subHeader}.

When a <code>subHeader</code> is assigned to the Dialog, it's rendered directly after the main header in the Dialog. The <code>subHeader</code> is out of the content area and won't be scrolled when the content size is bigger than the content area size.
	* @return	null
	*/
	public function getSubHeader( ):sap.m.IBar;

	/**
	* Gets current value of property {@link #getTitle title}.

Title text appears in the Dialog header.
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
	* Gets current value of property {@link #getType type}.

The <code>type</code> of the Dialog. In some themes, the type Message will limit the Dialog width within 480px on tablet and desktop.

Default value is <code>Standard</code>.
	* @return	Value of property <code>type</code>
	*/
	public function getType( ):sap.m.DialogType;

	/**
	* Gets current value of property {@link #getVerticalScrolling verticalScrolling}.

Indicates if the user can scroll vertically inside the Dialog when the content is bigger than the content area. The Dialog detects if there's <code>sap.m.NavContainer</code>, <code>sap.m.Page</code>, <code>sap.m.ScrollContainer</code> or <code>sap.m.SplitContainer</code> as a direct child added to the Dialog. If there is, the Dialog will turn off <code>scrolling</code> by setting this property to <code>false</code>, automatically ignoring the existing value of this property.

Default value is <code>true</code>.
	* @return	Value of property <code>verticalScrolling</code>
	*/
	public function getVerticalScrolling( ):Bool;

	/**
	* Checks for the provided <code>sap.m.Button</code> in the aggregation {@link #getButtons buttons}. and returns its index if found or -1 otherwise.
	* @param	oButton The button whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfButton( oButton:sap.m.Button):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getContent content}. and returns its index if found or -1 otherwise.
	* @param	oContent The content whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfContent( oContent:sap.ui.core.Control):Int;

	/**
	* Inserts a button into the aggregation {@link #getButtons buttons}.
	* @param	oButton The button to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the button should be inserted at; for a negative value of <code>iIndex</code>, the button is inserted at position 0; for a value greater than the current size of the aggregation, the button is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertButton( oButton:sap.m.Button, iIndex:Int):sap.m.Dialog;

	/**
	* Inserts a content into the aggregation {@link #getContent content}.
	* @param	oContent The content to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the content should be inserted at; for a negative value of <code>iIndex</code>, the content is inserted at position 0; for a value greater than the current size of the aggregation, the content is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.m.Dialog;

	/**
	* The method checks if the Dialog is open. It returns <code>true</code> when the Dialog is currently open (this includes opening and closing animations), otherwise it returns <code>false</code>.
	* @return	boolean
	*/
	public function isOpen( ):Bool;

	/**
	* Open the dialog.
	* @return	Void
	*/
	public function open( ):Void;

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
	* Removes all the controls from the aggregation {@link #getButtons buttons}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllButtons( ):Array<sap.m.Button>;

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
	@:overload( function(vButton:Int):sap.m.Button{ })
	@:overload( function(vButton:String):sap.m.Button{ })

	/**
	* Removes a button from the aggregation {@link #getButtons buttons}.
	* @param	vButton The button to remove or its index or id
	* @return	The removed button or <code>null</code>
	*/
	public function removeButton( vButton:sap.m.Button):sap.m.Button;
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
	public function setBeginButton( oBeginButton:sap.m.Button):sap.m.Dialog;

	/**
	* Sets a new value for property {@link #getCloseOnNavigation closeOnNavigation}.

Indicates whether the Dialog will be closed automatically when a routing navigation occurs.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bCloseOnNavigation New value for property <code>closeOnNavigation</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCloseOnNavigation( bCloseOnNavigation:Bool):sap.m.Dialog;

	/**
	* Sets a new value for property {@link #getContentHeight contentHeight}.

Preferred height of the content in the Dialog. If the preferred height is bigger than the available space on a screen, it will be overwritten by the maximum available height on a screen in order to make sure that the Dialog isn't cut off.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sContentHeight New value for property <code>contentHeight</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContentHeight( sContentHeight:sap.ui.core.CSSSize):sap.m.Dialog;

	/**
	* Sets a new value for property {@link #getContentWidth contentWidth}.

Preferred width of the content in the Dialog. This property affects the width of the Dialog on a phone in landscape mode, a tablet or a desktop, because the Dialog has a fixed width on a phone in portrait mode. If the preferred width is less than the minimum width of the Dialog or more than the available width of the screen, it will be overwritten by the min or max value. The current mininum value of the Dialog width on tablet is 400px.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sContentWidth New value for property <code>contentWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContentWidth( sContentWidth:sap.ui.core.CSSSize):sap.m.Dialog;

	/**
	* Sets the aggregated {@link #getCustomHeader customHeader}.
	* @param	oCustomHeader The customHeader to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCustomHeader( oCustomHeader:sap.m.IBar):sap.m.Dialog;

	/**
	* Sets a new value for property {@link #getDraggable draggable}.

Indicates whether the Dialog is draggable. If this property is set to <code>true</code>, the Dialog will be draggable by its header. This property has a default value <code>false</code>. The Dialog can be draggable only in desktop mode.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bDraggable New value for property <code>draggable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDraggable( bDraggable:Bool):sap.m.Dialog;

	/**
	* Sets the aggregated {@link #getEndButton endButton}.
	* @param	oEndButton The endButton to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEndButton( oEndButton:sap.m.Button):sap.m.Dialog;

	/**
	* Sets a new value for property {@link #getEscapeHandler escapeHandler}.

This property expects a function with one parameter of type Promise. In the function, you should call either <code>resolve()</code> or <code>reject()</code> on the Promise object.<br/> The function allows you to define custom behavior which will be executed when the Escape key is pressed. By default, when the Escape key is pressed, the Dialog is immediately closed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oEscapeHandler New value for property <code>escapeHandler</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEscapeHandler( oEscapeHandler:Dynamic):sap.m.Dialog;

	/**
	* Sets a new value for property {@link #getHorizontalScrolling horizontalScrolling}.

Indicates if the user can scroll horizontally inside the Dialog when the content is bigger than the content area. The Dialog detects if there's <code>sap.m.NavContainer</code>, <code>sap.m.Page</code>, <code>sap.m.ScrollContainer</code> or <code>sap.m.SplitContainer</code> as a direct child added to the Dialog. If there is, the Dialog will turn off <code>scrolling</code> by setting this property to <code>false</code>, automatically ignoring the existing value of the property.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bHorizontalScrolling New value for property <code>horizontalScrolling</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHorizontalScrolling( bHorizontalScrolling:Bool):sap.m.Dialog;

	/**
	* Sets a new value for property {@link #getIcon icon}.

Icon displayed in the Dialog header. This <code>icon</code> is invisible on the iOS platform and it is density-aware. You can use the density convention (@2, @1.5, etc.) to provide higher resolution image for higher density screen.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( sIcon:sap.ui.core.URI):sap.m.Dialog;
	@:overload( function(oInitialFocus:sap.ui.core.ID):sap.m.Dialog{ })

	/**
	* Sets the associated {@link #getInitialFocus initialFocus}.
	* @param	oInitialFocus ID of an element which becomes the new target of this initialFocus association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInitialFocus( oInitialFocus:sap.ui.core.Control):sap.m.Dialog;

	/**
	* Sets a new value for property {@link #getResizable resizable}.

Indicates whether the Dialog is resizable. If this property is set to <code>true</code>, the Dialog will have a resize handler in its bottom right corner. This property has a default value <code>false</code>. The Dialog can be resizable only in desktop mode.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bResizable New value for property <code>resizable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setResizable( bResizable:Bool):sap.m.Dialog;

	/**
	* Sets a new value for property {@link #getShowHeader showHeader}.

Determines whether the header is shown inside the Dialog. If this property is set to <code>true</code>, the <code>text</code> and <code>icon</code> properties are ignored. This property has a default value <code>true</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowHeader New value for property <code>showHeader</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowHeader( bShowHeader:Bool):sap.m.Dialog;

	/**
	* Sets a new value for property {@link #getState state}.

Affects the <code>icon</code> and the <code>title</code> color. If other than <code>none</code> is set, a predefined icon will be added to the Dialog. Setting the <code>icon</code> property will overwrite the predefined icon. The default value is <code>none</code> which doesn't add any icon to the Dialog control. This property is by now only supported by the blue crystal theme.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sState New value for property <code>state</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setState( sState:sap.ui.core.ValueState):sap.m.Dialog;

	/**
	* Sets a new value for property {@link #getStretch stretch}.

Determines if the Dialog will be stretched to full screen on mobile. On desktop, the Dialog will be stretched to 93% of the viewport. This property is only applicable to a Standard Dialog. Message-type Dialog ignores it.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bStretch New value for property <code>stretch</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setStretch( bStretch:Bool):sap.m.Dialog;

	/**
	* Sets the aggregated {@link #getSubHeader subHeader}.
	* @param	oSubHeader The subHeader to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSubHeader( oSubHeader:sap.m.IBar):sap.m.Dialog;

	/**
	* Sets a new value for property {@link #getTitle title}.

Title text appears in the Dialog header.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( sTitle:String):sap.m.Dialog;

	/**
	* Sets a new value for property {@link #getTitleAlignment titleAlignment}.

Specifies the Title alignment (theme specific). If set to <code>TitleAlignment.Auto</code>, the Title will be aligned as it is set in the theme (if not set, the default value is <code>center</code>); Other possible values are <code>TitleAlignment.Start</code> (left or right depending on LTR/RTL), and <code>TitleAlignment.Center</code> (centered)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Auto</code>.
	* @param	sTitleAlignment New value for property <code>titleAlignment</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleAlignment( sTitleAlignment:sap.m.TitleAlignment):sap.m.Dialog;

	/**
	* Sets a new value for property {@link #getType type}.

The <code>type</code> of the Dialog. In some themes, the type Message will limit the Dialog width within 480px on tablet and desktop.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Standard</code>.
	* @param	sType New value for property <code>type</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setType( sType:sap.m.DialogType):sap.m.Dialog;

	/**
	* Sets a new value for property {@link #getVerticalScrolling verticalScrolling}.

Indicates if the user can scroll vertically inside the Dialog when the content is bigger than the content area. The Dialog detects if there's <code>sap.m.NavContainer</code>, <code>sap.m.Page</code>, <code>sap.m.ScrollContainer</code> or <code>sap.m.SplitContainer</code> as a direct child added to the Dialog. If there is, the Dialog will turn off <code>scrolling</code> by setting this property to <code>false</code>, automatically ignoring the existing value of this property.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVerticalScrolling New value for property <code>verticalScrolling</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVerticalScrolling( bVerticalScrolling:Bool):sap.m.Dialog;
}

typedef DialogArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Icon displayed in the Dialog header. This <code>icon</code> is invisible on the iOS platform and it is density-aware. You can use the density convention (@2, @1.5, etc.) to provide higher resolution image for higher density screen.
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Title text appears in the Dialog header.
	*/
	@:optional var title:String;

	/**
	* Determines whether the header is shown inside the Dialog. If this property is set to <code>true</code>, the <code>text</code> and <code>icon</code> properties are ignored. This property has a default value <code>true</code>.
	*/
	@:optional var showHeader:haxe.extern.EitherType<String,Bool>;

	/**
	* The <code>type</code> of the Dialog. In some themes, the type Message will limit the Dialog width within 480px on tablet and desktop.
	*/
	@:optional var type:haxe.extern.EitherType<String,sap.m.DialogType>;

	/**
	* Affects the <code>icon</code> and the <code>title</code> color. If other than <code>none</code> is set, a predefined icon will be added to the Dialog. Setting the <code>icon</code> property will overwrite the predefined icon. The default value is <code>none</code> which doesn't add any icon to the Dialog control. This property is by now only supported by the blue crystal theme.
	*/
	@:optional var state:haxe.extern.EitherType<String,sap.ui.core.ValueState>;

	/**
	* Determines if the Dialog will be stretched to full screen on mobile. On desktop, the Dialog will be stretched to 93% of the viewport. This property is only applicable to a Standard Dialog. Message-type Dialog ignores it.
	*/
	@:optional var stretch:haxe.extern.EitherType<String,Bool>;

	/**
	* Preferred width of the content in the Dialog. This property affects the width of the Dialog on a phone in landscape mode, a tablet or a desktop, because the Dialog has a fixed width on a phone in portrait mode. If the preferred width is less than the minimum width of the Dialog or more than the available width of the screen, it will be overwritten by the min or max value. The current mininum value of the Dialog width on tablet is 400px.
	*/
	@:optional var contentWidth:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Preferred height of the content in the Dialog. If the preferred height is bigger than the available space on a screen, it will be overwritten by the maximum available height on a screen in order to make sure that the Dialog isn't cut off.
	*/
	@:optional var contentHeight:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Indicates if the user can scroll horizontally inside the Dialog when the content is bigger than the content area. The Dialog detects if there's <code>sap.m.NavContainer</code>, <code>sap.m.Page</code>, <code>sap.m.ScrollContainer</code> or <code>sap.m.SplitContainer</code> as a direct child added to the Dialog. If there is, the Dialog will turn off <code>scrolling</code> by setting this property to <code>false</code>, automatically ignoring the existing value of the property.
	*/
	@:optional var horizontalScrolling:haxe.extern.EitherType<String,Bool>;

	/**
	* Indicates if the user can scroll vertically inside the Dialog when the content is bigger than the content area. The Dialog detects if there's <code>sap.m.NavContainer</code>, <code>sap.m.Page</code>, <code>sap.m.ScrollContainer</code> or <code>sap.m.SplitContainer</code> as a direct child added to the Dialog. If there is, the Dialog will turn off <code>scrolling</code> by setting this property to <code>false</code>, automatically ignoring the existing value of this property.
	*/
	@:optional var verticalScrolling:haxe.extern.EitherType<String,Bool>;

	/**
	* Indicates whether the Dialog is resizable. If this property is set to <code>true</code>, the Dialog will have a resize handler in its bottom right corner. This property has a default value <code>false</code>. The Dialog can be resizable only in desktop mode.
	*/
	@:optional var resizable:haxe.extern.EitherType<String,Bool>;

	/**
	* Indicates whether the Dialog is draggable. If this property is set to <code>true</code>, the Dialog will be draggable by its header. This property has a default value <code>false</code>. The Dialog can be draggable only in desktop mode.
	*/
	@:optional var draggable:haxe.extern.EitherType<String,Bool>;

	/**
	* This property expects a function with one parameter of type Promise. In the function, you should call either <code>resolve()</code> or <code>reject()</code> on the Promise object.<br/> The function allows you to define custom behavior which will be executed when the Escape key is pressed. By default, when the Escape key is pressed, the Dialog is immediately closed.
	*/
	@:optional var escapeHandler:Dynamic;

	/**
	* Specifies the ARIA role of the Dialog. If the state of the control is "Error" or "Warning" the role will be "AlertDialog" regardless of what is set.
	*/
	@:optional var role:haxe.extern.EitherType<String,sap.m.DialogRoleType>;

	/**
	* Indicates whether the Dialog will be closed automatically when a routing navigation occurs.
	*/
	@:optional var closeOnNavigation:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies the Title alignment (theme specific). If set to <code>TitleAlignment.Auto</code>, the Title will be aligned as it is set in the theme (if not set, the default value is <code>center</code>); Other possible values are <code>TitleAlignment.Start</code> (left or right depending on LTR/RTL), and <code>TitleAlignment.Center</code> (centered)
	*/
	@:optional var titleAlignment:haxe.extern.EitherType<String,sap.m.TitleAlignment>;

    /**
    * The content inside the Dialog.<br/><b>Note:</b> When the content of the Dialog is comprised of controls that use <code>position: absolute</code>, such as <code>SplitContainer</code>, the Dialog has to have either <code>stretch: true</code> or <code>contentHeight</code> set.
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * When a <code>subHeader</code> is assigned to the Dialog, it's rendered directly after the main header in the Dialog. The <code>subHeader</code> is out of the content area and won't be scrolled when the content size is bigger than the content area size.
    */
	@:optional var subHeader:haxe.extern.EitherType<String,sap.m.IBar>;

    /**
    * When it is set, the <code>icon</code>, <code>title</code> and <code>showHeader</code> properties are ignored. Only the <code>customHeader</code> is shown as the header of the Dialog.
    */
	@:optional var customHeader:haxe.extern.EitherType<String,sap.m.IBar>;

    /**
    * The button which is rendered to the left side (right side in RTL mode) of the <code>endButton</code> in the footer area inside the Dialog. As of version 1.21.1, there's a new aggregation <code>buttons</code> created with which more than 2 buttons can be added to the footer area of the Dialog. If the new <code>buttons</code> aggregation is set, any change made to this aggregation has no effect anymore. When running on a phone, this <code>button</code> (and the <code>endButton</code> together when set) is (are) rendered at the center of the footer area. When running on other platforms, this <code>button</code> (and the <code>endButton</code> together when set) is (are) rendered at the right side (left side in RTL mode) of the footer area.
    */
	@:optional var beginButton:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * The button which is rendered to the right side (left side in RTL mode) of the <code>beginButton</code> in the footer area inside the Dialog. As of version 1.21.1, there's a new aggregation <code>buttons</code> created with which more than 2 buttons can be added to the footer area of Dialog. If the new <code>buttons</code> aggregation is set, any change made to this aggregation has no effect anymore. When running on a phone, this <code>button</code> (and the <code>beginButton</code> together when set) is (are) rendered at the center of the footer area. When running on other platforms, this <code>button</code> (and the <code>beginButton</code> together when set) is (are) rendered at the right side (left side in RTL mode) of the footer area.
    */
	@:optional var endButton:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * Buttons can be added to the footer area of the Dialog through this aggregation. When this aggregation is set, any change to the <code>beginButton</code> and <code>endButton</code> has no effect anymore. Buttons which are inside this aggregation are aligned at the right side (left side in RTL mode) of the footer instead of in the middle of the footer.
    */
	@:optional var buttons:Array<haxe.extern.EitherType<String,sap.m.Button>>;

    /**
    * The hidden aggregation for internal maintained <code>header</code>.
    */
	@:optional var _header:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * The hidden aggregation for internal maintained <code>title</code> control.
    */
	@:optional var _title:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * The hidden aggregation for internal maintained <code>icon</code> control.
    */
	@:optional var _icon:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * The hidden aggregation for internal maintained <code>toolbar</code> instance.
    */
	@:optional var _toolbar:haxe.extern.EitherType<String,sap.m.OverflowToolbar>;

    /**
    * The hidden aggregation for the Dialog state.
    */
	@:optional var _valueState:haxe.extern.EitherType<String,sap.ui.core.InvisibleText>;

	/**
	* In the Dialog focus is set first on the <code>leftButton</code> and then on <code>rightButton</code>, when available. If another control needs to get the focus, set the <code>initialFocus</code> with the control which should be focused on. Setting <code>initialFocus</code> to input controls doesn't open the On-Screen keyboard on mobile device as, due to browser limitation, the On-Screen keyboard can't be opened with JavaScript code. The opening of On-Screen keyboard must be triggered by real user action.
	*/
	@:optional var initialFocus:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* Association to controls/IDs which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls/IDs which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* This event will be fired after the Dialog is closed.
	*/
	@:optional var afterClose:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event will be fired after the Dialog is opened.
	*/
	@:optional var afterOpen:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event will be fired before the Dialog is closed.
	*/
	@:optional var beforeClose:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event will be fired before the Dialog is opened.
	*/
	@:optional var beforeOpen:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
