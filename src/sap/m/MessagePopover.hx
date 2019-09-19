package sap.m;

@:native("sap.m.MessagePopover")

/**
* <h3>Overview</h3> A <code>MessagePopover</code> is used to display a summarized list of different types of messages (error, warning, success, and information messages). It provides a handy and systemized way to navigate and explore details for every message. It is adaptive and responsive. It renders as a dialog with a Close button in the header on phones, and as a popover on tablets and higher resolution devices. It also exposes an event {@link sap.m.MessagePopover#event:activeTitlePress}, which can be used for navigation from a message to the source of the issue. <h3>Notes:</h3> <ul> <li> Messages can have descriptions pre-formatted with HTML markup. In this case, the <code>markupDescription</code> has to be set to <code>true</code>.</li> <li> If the message cannot be fully displayed or includes a long description, the message popover provides navigation to the detailed description.</li> </ul> <h3>Structure</h3> The message popover stores all messages in an aggregation of type {@link sap.m.MessageItem} named <code>items</code>.

A set of properties determines how the items are rendered: <ul> <li> counter - An integer that is used to indicate the number of errors for each type </li> <li> type - The type of message </li> <li> title/subtitle - The title and subtitle of the message</li> <li> description - The long text description of the message</li> <li> activeTitle - Determines whether the title of the item is interactive</li> </ul> <h3>Usage</h3> <h4>When to use:</h4> <ul> <li>When you want to make sure that all content is visible on any device.</li> <li>When you want a way to centrally manage messages and show them to the user without additional work for the developer. The message popover is triggered from a messaging button in the footer toolbar. If an error has occurred at any validation point, the total number of messages should be incremented, but the user's work shouldn't be interrupted. Navigation between the message item and the source of the error can be created, if needed by the application. This can be done by setting the <code>activeTitle</code> property to true and providing a handler for the <code>activeTitlePress</code> event. In addition, you can achieve the same functionality inside a different container using the {@link sap.m.MessageView} control.</li> </ul> <h3>Responsive Behavior</h3> On mobile phones, the message popover is automatically shown in full screen mode.<br> On desktop and tablet, the message popover opens in a popover.<br> On desktop the opened popover is resizable if it is placed in a {@link sap.m.Toolbar}, {@link sap.m.Bar} or used in {@link sap.f.semantic.SemanticPage}
*/
extern class MessagePopover extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:MessagePopoverArgs):Void {})
	public function new(?mSettings:MessagePopoverArgs):Void;
	@:overload( function(vItem:sap.m.MessageItem):sap.m.MessagePopover{ })

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	vItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( vItem:sap.m.MessagePopoverItem):sap.m.MessagePopover;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:activeTitlePress activeTitlePress} event of this <code>sap.m.MessagePopover</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.MessagePopover</code> itself.

This event will be fired when an active title of a MessageItem is clicked
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.MessagePopover</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachActiveTitlePress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessagePopover;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:afterClose afterClose} event of this <code>sap.m.MessagePopover</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.MessagePopover</code> itself.

This event will be fired after the popover is closed
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.MessagePopover</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAfterClose( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessagePopover;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:afterOpen afterOpen} event of this <code>sap.m.MessagePopover</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.MessagePopover</code> itself.

This event will be fired after the popover is opened
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.MessagePopover</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAfterOpen( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessagePopover;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeClose beforeClose} event of this <code>sap.m.MessagePopover</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.MessagePopover</code> itself.

This event will be fired before the popover is closed
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.MessagePopover</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforeClose( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessagePopover;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeOpen beforeOpen} event of this <code>sap.m.MessagePopover</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.MessagePopover</code> itself.

This event will be fired before the popover is opened
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.MessagePopover</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforeOpen( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessagePopover;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:itemSelect itemSelect} event of this <code>sap.m.MessagePopover</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.MessagePopover</code> itself.

This event will be fired when description is shown
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.MessagePopover</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachItemSelect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessagePopover;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:listSelect listSelect} event of this <code>sap.m.MessagePopover</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.MessagePopover</code> itself.

This event will be fired when one of the lists is shown when (not) filtered by type
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.MessagePopover</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachListSelect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessagePopover;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:longtextLoaded longtextLoaded} event of this <code>sap.m.MessagePopover</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.MessagePopover</code> itself.

This event will be fired when the long text description data from a remote URL is loaded
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.MessagePopover</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachLongtextLoaded( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessagePopover;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:urlValidated urlValidated} event of this <code>sap.m.MessagePopover</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.MessagePopover</code> itself.

This event will be fired when a validation of a URL from long text description is ready
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.MessagePopover</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachUrlValidated( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessagePopover;

	/**
	* Closes the MessagePopover
	* @return	Reference to the 'this' for chaining purposes
	*/
	public function close( ):sap.m.MessagePopover;

	/**
	* Destroys the headerButton in the aggregation {@link #getHeaderButton headerButton}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyHeaderButton( ):sap.m.MessagePopover;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.m.MessagePopover;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:activeTitlePress activeTitlePress} event of this <code>sap.m.MessagePopover</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachActiveTitlePress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessagePopover;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:afterClose afterClose} event of this <code>sap.m.MessagePopover</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAfterClose( fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessagePopover;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:afterOpen afterOpen} event of this <code>sap.m.MessagePopover</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAfterOpen( fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessagePopover;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeClose beforeClose} event of this <code>sap.m.MessagePopover</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforeClose( fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessagePopover;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeOpen beforeOpen} event of this <code>sap.m.MessagePopover</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforeOpen( fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessagePopover;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:itemSelect itemSelect} event of this <code>sap.m.MessagePopover</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachItemSelect( fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessagePopover;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:listSelect listSelect} event of this <code>sap.m.MessagePopover</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachListSelect( fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessagePopover;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:longtextLoaded longtextLoaded} event of this <code>sap.m.MessagePopover</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachLongtextLoaded( fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessagePopover;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:urlValidated urlValidated} event of this <code>sap.m.MessagePopover</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachUrlValidated( fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessagePopover;

	/**
	* Creates a new subclass of class sap.m.MessagePopover with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAsyncDescriptionHandler asyncDescriptionHandler}.

Callback function for resolving a promise after description has been asynchronously loaded inside this function
	* @return	Value of property <code>asyncDescriptionHandler</code>
	*/
	public function getAsyncDescriptionHandler( ):Dynamic;

	/**
	* Gets current value of property {@link #getAsyncURLHandler asyncURLHandler}.

Callback function for resolving a promise after a link has been asynchronously validated inside this function
	* @return	Value of property <code>asyncURLHandler</code>
	*/
	public function getAsyncURLHandler( ):Dynamic;

	/**
	* Gets content of aggregation {@link #getHeaderButton headerButton}.

A custom header button
	* @return	null
	*/
	public function getHeaderButton( ):sap.m.Button;

	/**
	* Gets current value of property {@link #getInitiallyExpanded initiallyExpanded}.

Sets the initial state of the control - expanded or collapsed. By default the control opens as expanded. Note: If there is only one message in the control, this state will be ignored and the details page of the message will be shown.

Default value is <code>true</code>.
	* @return	Value of property <code>initiallyExpanded</code>
	*/
	public function getInitiallyExpanded( ):Bool;

	/**
	* Gets content of aggregation {@link #getItems items}.

A list with message items
	* @return	null
	*/
	public function getItems( ):Dynamic;

	/**
	* Returns a metadata object for class sap.m.MessagePopover.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getPlacement placement}.

Determines the position, where the control will appear on the screen. Possible values are: sap.m.VerticalPlacementType.Top, sap.m.VerticalPlacementType.Bottom and sap.m.VerticalPlacementType.Vertical. The default value is sap.m.VerticalPlacementType.Vertical. Setting this property while the control is open, will not cause any re-rendering and changing of the position. Changes will only be applied with the next interaction.

Default value is <code>Vertical</code>.
	* @return	Value of property <code>placement</code>
	*/
	public function getPlacement( ):sap.m.VerticalPlacementType;
	@:overload( function(vItem:sap.m.MessageItem):Int{ })

	/**
	* Checks for the provided <code>sap.m.MessageItem</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	vItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( vItem:sap.m.MessagePopoverItem):Int;
	@:overload( function(vItem:sap.m.MessageItem, iIndex:Int):sap.m.MessagePopover{ })

	/**
	* Inserts a item into the aggregation {@link #getItems items}.
	* @param	vItem The item to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertItem( vItem:sap.m.MessagePopoverItem, iIndex:Int):sap.m.MessagePopover;

	/**
	* The method checks if the MessagePopover is open. It returns true when the MessagePopover is currently open (this includes opening and closing animations), otherwise it returns false
	* @return	Whether the MessagePopover is open
	*/
	public function isOpen( ):Bool;

	/**
	* Opens the MessagePopover
	* @param	oControl Control which opens the MessagePopover
	* @return	Reference to the 'this' for chaining purposes
	*/
	public function openBy( oControl:sap.ui.core.Control):sap.m.MessagePopover;

	/**
	* Removes all the controls from the aggregation {@link #getItems items}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllItems( ):Dynamic;
	@:overload( function(vItem:Int):Dynamic{ })
	@:overload( function(vItem:String):Dynamic{ })
	@:overload( function(vItem:sap.m.MessageItem):Dynamic{ })

	/**
	* Removes a item from the aggregation {@link #getItems items}.
	* @param	vItem The item to remove or its index or id
	* @return	The removed item or <code>null</code>
	*/
	public function removeItem( vItem:sap.m.MessagePopoverItem):Dynamic;

	/**
	* Sets a new value for property {@link #getAsyncDescriptionHandler asyncDescriptionHandler}.

Callback function for resolving a promise after description has been asynchronously loaded inside this function

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oAsyncDescriptionHandler New value for property <code>asyncDescriptionHandler</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAsyncDescriptionHandler( oAsyncDescriptionHandler:Dynamic):sap.m.MessagePopover;

	/**
	* Sets a new value for property {@link #getAsyncURLHandler asyncURLHandler}.

Callback function for resolving a promise after a link has been asynchronously validated inside this function

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oAsyncURLHandler New value for property <code>asyncURLHandler</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAsyncURLHandler( oAsyncURLHandler:Dynamic):sap.m.MessagePopover;

	/**
	* Sets the aggregated {@link #getHeaderButton headerButton}.
	* @param	oHeaderButton The headerButton to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeaderButton( oHeaderButton:sap.m.Button):sap.m.MessagePopover;

	/**
	* Sets a new value for property {@link #getInitiallyExpanded initiallyExpanded}.

Sets the initial state of the control - expanded or collapsed. By default the control opens as expanded. Note: If there is only one message in the control, this state will be ignored and the details page of the message will be shown.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bInitiallyExpanded New value for property <code>initiallyExpanded</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInitiallyExpanded( bInitiallyExpanded:Bool):sap.m.MessagePopover;

	/**
	* The method sets the placement position of the MessagePopover. Only accepted Values are: sap.m.PlacementType.Top, sap.m.PlacementType.Bottom and sap.m.PlacementType.Vertical
	* @param	sPlacement Placement type
	* @return	Reference to the 'this' for chaining purposes
	*/
	public function setPlacement( sPlacement:sap.m.PlacementType):sap.m.MessagePopover;

	/**
	* This method toggles between open and closed state of the MessagePopover instance. oControl parameter is mandatory in the same way as in 'openBy' method
	* @param	oControl Control which opens the MessagePopover
	* @return	Reference to the 'this' for chaining purposes
	*/
	public function toggle( oControl:sap.ui.core.Control):sap.m.MessagePopover;
}

typedef MessagePopoverArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Callback function for resolving a promise after description has been asynchronously loaded inside this function
	*/
	@:optional var asyncDescriptionHandler:Dynamic;

	/**
	* Callback function for resolving a promise after a link has been asynchronously validated inside this function
	*/
	@:optional var asyncURLHandler:Dynamic;

	/**
	* Determines the position, where the control will appear on the screen. Possible values are: sap.m.VerticalPlacementType.Top, sap.m.VerticalPlacementType.Bottom and sap.m.VerticalPlacementType.Vertical. The default value is sap.m.VerticalPlacementType.Vertical. Setting this property while the control is open, will not cause any re-rendering and changing of the position. Changes will only be applied with the next interaction.
	*/
	@:optional var placement:haxe.extern.EitherType<String,sap.m.VerticalPlacementType>;

	/**
	* Sets the initial state of the control - expanded or collapsed. By default the control opens as expanded. Note: If there is only one message in the control, this state will be ignored and the details page of the message will be shown.
	*/
	@:optional var initiallyExpanded:haxe.extern.EitherType<String,Bool>;

    /**
    * A list with message items
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.m.MessageItem>>;

    /**
    * A custom header button
    */
	@:optional var headerButton:haxe.extern.EitherType<String,sap.m.Button>;

	/**
	* This event will be fired when an active title of a MessageItem is clicked
	*/
	@:optional var activeTitlePress:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event will be fired after the popover is closed
	*/
	@:optional var afterClose:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event will be fired after the popover is opened
	*/
	@:optional var afterOpen:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event will be fired before the popover is closed
	*/
	@:optional var beforeClose:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event will be fired before the popover is opened
	*/
	@:optional var beforeOpen:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event will be fired when description is shown
	*/
	@:optional var itemSelect:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event will be fired when one of the lists is shown when (not) filtered by type
	*/
	@:optional var listSelect:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event will be fired when the long text description data from a remote URL is loaded
	*/
	@:optional var longtextLoaded:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event will be fired when a validation of a URL from long text description is ready
	*/
	@:optional var urlValidated:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
