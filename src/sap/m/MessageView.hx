package sap.m;

@:native("sap.m.MessageView")

/**
* It is used to display a summarized list of different types of messages (error, warning, success, and information messages).

<<<<<<< HEAD
<h3>Overview</h3> It is meant to be embedded into container controls (such as {@link sap.m.Popover}, {@link sap.m.ResponsivePopover}, {@link sap.m.Dialog}). It provides a handy and systematized way to navigate and explore details for every message. If the <code>MessageView</code> contains only one item, which has either description, markupDescription or longTextUrl, its details page will be displayed initially. It also exposes the {@link sap.m.MessageView#event:activeTitlePress} event, which can be used for navigation from a message to its source. <h3>Notes:</h3> <ul> <li>If your application changes its model between two interactions with the <code>MessageView</code>, this could lead to outdated messages being shown. To avoid this, you need to call <code>navigateBack</code> on the <code>MessageView</code> BEFORE opening its container.</li> <li> Messages can have descriptions preformatted with HTML markup. In this case, the <code>markupDescription</code> has to be set to <code>true</code>. </li> <li> If the message cannot be fully displayed, or includes a long description, the <code>MessageView</code> provides navigation to the detailed description. </li> </ul> <h3>Structure</h3> The <code>MessageView</code> stores all messages in an association of type {@link sap.m.MessageItem}, named <code>items</code>. <br> A set of properties determines how the items are rendered: <ul> <li> counter - An integer that is used to indicate the number of errors for each type. </li> <li> type - The type of message. </li> <li> title/subtitle - The title and subtitle of the message.</li> <li> description - The long text description of the message.</li> <li> activeTitle - Determines whether the title of the item is interactive.</li> </ul> <h3>Usage</h3> <h4>When to use:</h4> <ul> <li>When you want a way to centrally manage messages and show them to the user without additional work for the developer. If needed the navigation between the message item and the source of the error can be created by the application. This can be done by setting the <code>activeTitle</code> property to true and providing a handler for the <code>activeTitlePress</code> event.</li> </ul> <h3>Responsive Behavior</h3> The responsiveness of the <code>MessageView</code> is determined by the container in which it is embedded. For that reason the control could not be visualized if the container’s sizes are not defined.
=======
<h3>Overview</h3> It is meant to be embedded into container controls (such as {@link sap.m.Popover}, {@link sap.m.ResponsivePopover}, {@link sap.m.Dialog}). It provides a handy and systematized way to navigate and explore details for every message. If the <code>MessageView</code> contains only one item, which has either description, markupDescription or longTextUrl, its details page will be displayed initially. It also exposes the {@link sap.m.MessageView#event:activeTitlePress} event, which can be used for navigation from a message to its source. <h3>Notes:</h3> <ul> <li>If your application changes its model between two interactions with the <code>MessageView</code>, this could lead to outdated messages being shown. To avoid this, you need to call <code>navigateBack</code> on the <code>MessageView</code> BEFORE opening its container.</li> <li> Messages can have descriptions preformatted with HTML markup. In this case, the <code>markupDescription</code> has to be set to <code>true</code>. </li> <li> If the message cannot be fully displayed, or includes a long description, the <code>MessageView</code> provides navigation to the detailed description. </li> </ul> <h3>Structure</h3> The <code>MessageView</code> stores all messages in an association of type {@link sap.m.MessageItem}, named <code>items</code>. <br> A set of properties determines how the items are rendered: <ul> <li> counter - An integer that is used to indicate the number of errors for each type. </li> <li> type - The type of message. </li> <li> title/subtitle - The title and subtitle of the message.</li> <li> description - The long text description of the message.</li> <li> activeTitle - Determines whether the title of the item is interactive.</li> </ul> <h3>Usage</h3> <h4>When to use:</h4> <ul> <li>When you want a way to centrally manage messages and show them to the user without additional work for the developer. If needed the navigation between the message item and the source of the error can be created by the application. This can be done by setting the <code>activeTitle</code> property to true and providing a handler for the <code>activeTitlePress</code> event.</li> </ul>
>>>>>>> bd78e88ba76c5bd0a95baa0cbb72c1713c532a11
*/
extern class MessageView extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:MessageViewArgs):Void {})
	public function new(?mSettings:MessageViewArgs):Void;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.m.MessageItem):sap.m.MessageView;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:activeTitlePress activeTitlePress} event of this <code>sap.m.MessageView</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.MessageView</code> itself.

Event fired when an activeTitle of a MessageItem is pressed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.MessageView</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachActiveTitlePress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessageView;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:itemSelect itemSelect} event of this <code>sap.m.MessageView</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.MessageView</code> itself.

Event fired when description is shown.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.MessageView</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachItemSelect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessageView;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:listSelect listSelect} event of this <code>sap.m.MessageView</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.MessageView</code> itself.

Event fired when one of the lists is shown when (not) filtered by type.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.MessageView</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachListSelect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessageView;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:longtextLoaded longtextLoaded} event of this <code>sap.m.MessageView</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.MessageView</code> itself.

Event fired when the long text description data from a remote URL is loaded.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.MessageView</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachLongtextLoaded( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessageView;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:urlValidated urlValidated} event of this <code>sap.m.MessageView</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.MessageView</code> itself.

Event fired when a validation of a URL from long text description is ready.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.MessageView</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachUrlValidated( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessageView;

	/**
	* Destroys the headerButton in the aggregation {@link #getHeaderButton headerButton}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyHeaderButton( ):sap.m.MessageView;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.m.MessageView;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:activeTitlePress activeTitlePress} event of this <code>sap.m.MessageView</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachActiveTitlePress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessageView;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:itemSelect itemSelect} event of this <code>sap.m.MessageView</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachItemSelect( fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessageView;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:listSelect listSelect} event of this <code>sap.m.MessageView</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachListSelect( fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessageView;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:longtextLoaded longtextLoaded} event of this <code>sap.m.MessageView</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachLongtextLoaded( fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessageView;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:urlValidated urlValidated} event of this <code>sap.m.MessageView</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachUrlValidated( fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessageView;

	/**
	* Creates a new subclass of class sap.m.MessageView with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAsyncDescriptionHandler asyncDescriptionHandler}.

Callback function for resolving a promise after description has been asynchronously loaded inside this function.
	* @return	Value of property <code>asyncDescriptionHandler</code>
	*/
	public function getAsyncDescriptionHandler( ):Dynamic;

	/**
	* Gets current value of property {@link #getAsyncURLHandler asyncURLHandler}.

Callback function for resolving a promise after a link has been asynchronously validated inside this function.
	* @return	Value of property <code>asyncURLHandler</code>
	*/
	public function getAsyncURLHandler( ):Dynamic;

	/**
	* Gets current value of property {@link #getGroupItems groupItems}.

Defines whether the MessageItems are grouped or not.

Default value is <code>false</code>.
	* @return	Value of property <code>groupItems</code>
	*/
	public function getGroupItems( ):Bool;

	/**
	* Gets content of aggregation {@link #getHeaderButton headerButton}.

Sets a custom header button.
	* @return	null
	*/
	public function getHeaderButton( ):sap.m.Button;

	/**
	* Gets content of aggregation {@link #getItems items}.

A list with message items. If only one item is provided, the initial page will be the details page for the item.
	* @return	null
	*/
	public function getItems( ):Array<sap.m.MessageItem>;

	/**
	* Returns a metadata object for class sap.m.MessageView.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getShowDetailsPageHeader showDetailsPageHeader}.

Defines whether the header of details page will be shown.

Default value is <code>true</code>.
	* @return	Value of property <code>showDetailsPageHeader</code>
	*/
	public function getShowDetailsPageHeader( ):Bool;

	/**
	* Checks for the provided <code>sap.m.MessageItem</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.m.MessageItem):Int;

	/**
	* Inserts a item into the aggregation {@link #getItems items}.
	* @param	oItem The item to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertItem( oItem:sap.m.MessageItem, iIndex:Int):sap.m.MessageView;

	/**
	* Navigates back to the list page
	* @return	Void
	*/
	public function navigateBack( ):Void;

	/**
	* Removes all the controls from the aggregation {@link #getItems items}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllItems( ):Array<sap.m.MessageItem>;
	@:overload( function(vItem:Int):sap.m.MessageItem{ })
	@:overload( function(vItem:String):sap.m.MessageItem{ })

	/**
	* Removes a item from the aggregation {@link #getItems items}.
	* @param	vItem The item to remove or its index or id
	* @return	The removed item or <code>null</code>
	*/
	public function removeItem( vItem:sap.m.MessageItem):sap.m.MessageItem;

	/**
	* Sets a new value for property {@link #getAsyncDescriptionHandler asyncDescriptionHandler}.

Callback function for resolving a promise after description has been asynchronously loaded inside this function.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oAsyncDescriptionHandler New value for property <code>asyncDescriptionHandler</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAsyncDescriptionHandler( oAsyncDescriptionHandler:Dynamic):sap.m.MessageView;

	/**
	* Sets a new value for property {@link #getAsyncURLHandler asyncURLHandler}.

Callback function for resolving a promise after a link has been asynchronously validated inside this function.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oAsyncURLHandler New value for property <code>asyncURLHandler</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAsyncURLHandler( oAsyncURLHandler:Dynamic):sap.m.MessageView;

	/**
	* Sets a new value for property {@link #getGroupItems groupItems}.

Defines whether the MessageItems are grouped or not.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bGroupItems New value for property <code>groupItems</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGroupItems( ?bGroupItems:Bool):sap.m.MessageView;

	/**
	* Sets the aggregated {@link #getHeaderButton headerButton}.
	* @param	oHeaderButton The headerButton to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeaderButton( oHeaderButton:sap.m.Button):sap.m.MessageView;

	/**
	* Sets a new value for property {@link #getShowDetailsPageHeader showDetailsPageHeader}.

Defines whether the header of details page will be shown.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowDetailsPageHeader New value for property <code>showDetailsPageHeader</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowDetailsPageHeader( ?bShowDetailsPageHeader:Bool):sap.m.MessageView;
}

typedef MessageViewArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Callback function for resolving a promise after description has been asynchronously loaded inside this function.
	*/
	@:optional var asyncDescriptionHandler:Dynamic;

	/**
	* Callback function for resolving a promise after a link has been asynchronously validated inside this function.
	*/
	@:optional var asyncURLHandler:Dynamic;

	/**
	* Defines whether the MessageItems are grouped or not.
	*/
	@:optional var groupItems:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines whether the header of details page will be shown.
	*/
	@:optional var showDetailsPageHeader:haxe.extern.EitherType<String,Bool>;

    /**
    * A list with message items. If only one item is provided, the initial page will be the details page for the item.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.m.MessageItem>>;

    /**
    * Sets a custom header button.
    */
	@:optional var headerButton:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * A navContainer that contains both details and list pages.
    */
	@:optional var _navContainer:haxe.extern.EitherType<String,sap.m.NavContainer>;

	/**
	* Event fired when an activeTitle of a MessageItem is pressed.
	*/
	@:optional var activeTitlePress:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event fired when description is shown.
	*/
	@:optional var itemSelect:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event fired when one of the lists is shown when (not) filtered by type.
	*/
	@:optional var listSelect:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event fired when the long text description data from a remote URL is loaded.
	*/
	@:optional var longtextLoaded:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event fired when a validation of a URL from long text description is ready.
	*/
	@:optional var urlValidated:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
