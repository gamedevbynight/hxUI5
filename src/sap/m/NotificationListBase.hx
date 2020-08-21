package sap.m;

@:native("sap.m.NotificationListBase")

/**
* The NotificationListBase is the abstract base class for {@link sap.m.NotificationListItem} and {@link sap.m.NotificationListGroup}.

The NotificationList controls are designed for the SAP Fiori notification center. <h4>Overview</h4> NotificationListBase defines the general structure of a notification item. Most of the behavioral logic is defined for the single items or groups.

<h4>Structure</h4> The base holds properties for the following elements: <ul> <li>Author name</li> <li>Author picture</li> <li>Time stamp</li> <li>Priority</li> <li>Title</li> </ul> Additionally, by setting these properties you can determine if buttons are shown: <ul> <li><code>showButtons</code> - action buttons visibility</li> <li><code>showCloseButton</code> - close button visibility</li> </ul>

<h4>Note</h4> There are several properties, that are inherited from <code>ListItemBase</code> and have no visual representation in the Notifications - <code>counter</code>, <code>highlight</code>, <code>highlightText</code>, <code>navigated</code>, <code>selected</code>, <code>type</code>
*/
extern class NotificationListBase extends sap.m.ListItemBase
{
	@:overload(function(?sId:String, ?mSettings:NotificationListBaseArgs):Void {})
	public function new(?mSettings:NotificationListBaseArgs):Void;

	/**
	* Adds some button to the aggregation {@link #getButtons buttons}.
	* @param	oButton The button to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addButton( oButton:sap.m.Button):sap.m.NotificationListBase;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:close close} event of this <code>sap.m.NotificationListBase</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.NotificationListBase</code> itself.

Fired when the close button of the notification is pressed.<br><b>Note:</b> Pressing the close button doesn't destroy the notification automatically.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.NotificationListBase</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachClose( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.NotificationListBase;

	/**
	* Closes the NotificationListBase.
	* @return	Void
	*/
	public function close( ):Void;

	/**
	* Destroys all the buttons in the aggregation {@link #getButtons buttons}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyButtons( ):sap.m.NotificationListBase;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:close close} event of this <code>sap.m.NotificationListBase</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachClose( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.NotificationListBase;

	/**
	* Creates a new subclass of class sap.m.NotificationListBase with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.ListItemBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getAuthorName authorName}.

Determines the notification author name.

Default value is <code>empty string</code>.
	* @return	Value of property <code>authorName</code>
	*/
	public function getAuthorName( ):String;

	/**
	* Gets current value of property {@link #getAuthorPicture authorPicture}.

Determines the URL of the notification author picture.
	* @return	Value of property <code>authorPicture</code>
	*/
	public function getAuthorPicture( ):sap.ui.core.URI;

	/**
	* Gets content of aggregation {@link #getButtons buttons}.

Action buttons.
	* @return	null
	*/
	public function getButtons( ):Array<sap.m.Button>;

	/**
	* Gets current value of property {@link #getDatetime datetime}.

The time stamp of the Notification.

Default value is <code>empty string</code>.
	* @return	Value of property <code>datetime</code>
	*/
	public function getDatetime( ):String;

	/**
	* Returns a metadata object for class sap.m.NotificationListBase.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getPriority priority}.

Determines the priority of the Notification.

Default value is <code>None</code>.
	* @return	Value of property <code>priority</code>
	*/
	public function getPriority( ):sap.ui.core.Priority;

	/**
	* Gets current value of property {@link #getShowButtons showButtons}.

Determines the action buttons visibility.

<b>Note:</b> Action buttons are not shown when Notification List Groups are collapsed.

Default value is <code>true</code>.
	* @return	Value of property <code>showButtons</code>
	*/
	public function getShowButtons( ):Bool;

	/**
	* Gets current value of property {@link #getShowCloseButton showCloseButton}.

Determines the visibility of the close button.

Default value is <code>true</code>.
	* @return	Value of property <code>showCloseButton</code>
	*/
	public function getShowCloseButton( ):Bool;

	/**
	* Gets current value of property {@link #getTitle title}.

Determines the title of the NotificationListBase item.

Default value is <code>empty string</code>.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Checks for the provided <code>sap.m.Button</code> in the aggregation {@link #getButtons buttons}. and returns its index if found or -1 otherwise.
	* @param	oButton The button whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfButton( oButton:sap.m.Button):Int;

	/**
	* Inserts a button into the aggregation {@link #getButtons buttons}.
	* @param	oButton The button to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the button should be inserted at; for a negative value of <code>iIndex</code>, the button is inserted at position 0; for a value greater than the current size of the aggregation, the button is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertButton( oButton:sap.m.Button, iIndex:Int):sap.m.NotificationListBase;

	/**
	* Removes all the controls from the aggregation {@link #getButtons buttons}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllButtons( ):Array<sap.m.Button>;
	@:overload( function(vButton:Int):sap.m.Button{ })
	@:overload( function(vButton:String):sap.m.Button{ })

	/**
	* Removes a button from the aggregation {@link #getButtons buttons}.
	* @param	vButton The button to remove or its index or id
	* @return	The removed button or <code>null</code>
	*/
	public function removeButton( vButton:sap.m.Button):sap.m.Button;

	/**
	* Sets a new value for property {@link #getAuthorName authorName}.

Determines the notification author name.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sAuthorName New value for property <code>authorName</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAuthorName( ?sAuthorName:String):sap.m.NotificationListBase;

	/**
	* Sets a new value for property {@link #getAuthorPicture authorPicture}.

Determines the URL of the notification author picture.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sAuthorPicture New value for property <code>authorPicture</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAuthorPicture( sAuthorPicture:sap.ui.core.URI):sap.m.NotificationListBase;

	/**
	* Sets a new value for property {@link #getDatetime datetime}.

The time stamp of the Notification.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sDatetime New value for property <code>datetime</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDatetime( ?sDatetime:String):sap.m.NotificationListBase;

	/**
	* Sets a new value for property {@link #getPriority priority}.

Determines the priority of the Notification.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sPriority New value for property <code>priority</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPriority( ?sPriority:sap.ui.core.Priority):sap.m.NotificationListBase;

	/**
	* Sets a new value for property {@link #getShowButtons showButtons}.

Determines the action buttons visibility.

<b>Note:</b> Action buttons are not shown when Notification List Groups are collapsed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowButtons New value for property <code>showButtons</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowButtons( ?bShowButtons:Bool):sap.m.NotificationListBase;

	/**
	* Sets a new value for property {@link #getShowCloseButton showCloseButton}.

Determines the visibility of the close button.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowCloseButton New value for property <code>showCloseButton</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowCloseButton( ?bShowCloseButton:Bool):sap.m.NotificationListBase;

	/**
	* Sets a new value for property {@link #getTitle title}.

Determines the title of the NotificationListBase item.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( ?sTitle:String):sap.m.NotificationListBase;
}

typedef NotificationListBaseArgs = sap.m.ListItemBase.ListItemBaseArgs & {

	/**
	* Determines the priority of the Notification.
	*/
	@:optional var priority:haxe.extern.EitherType<String,sap.ui.core.Priority>;

	/**
	* Determines the title of the NotificationListBase item.
	*/
	@:optional var title:String;

	/**
	* The time stamp of the Notification.
	*/
	@:optional var datetime:String;

	/**
	* Determines the action buttons visibility.

<b>Note:</b> Action buttons are not shown when Notification List Groups are collapsed.
	*/
	@:optional var showButtons:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the visibility of the close button.
	*/
	@:optional var showCloseButton:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the notification author name.
	*/
	@:optional var authorName:String;

	/**
	* Determines the URL of the notification author picture.
	*/
	@:optional var authorPicture:haxe.extern.EitherType<String,sap.ui.core.URI>;

    /**
    * Action buttons.
    */
	@:optional var buttons:Array<haxe.extern.EitherType<String,sap.m.Button>>;

    /**
    * Close button.
    */
	@:optional var _closeButton:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * The overflow toolbar.
    */
	@:optional var _overflowToolbar:haxe.extern.EitherType<String,sap.m.OverflowToolbar>;

    /**
    * The priority icon.
    */
	@:optional var _priorityIcon:haxe.extern.EitherType<String,sap.ui.core.Icon>;

	/**
	* Fired when the close button of the notification is pressed.<br><b>Note:</b> Pressing the close button doesn't destroy the notification automatically.
	*/
	@:optional var close:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
