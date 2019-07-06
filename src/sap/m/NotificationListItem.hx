package sap.m;

@:native("sap.m.NotificationListItem")

/**
* The NotificationListItem control shows notifications to the user. <h4>Structure</h4> The notification item holds properties for the following elements: <ul> <li><code>description</code> - additional detail text.</li> <li><code>hideShowMoreButton</code> - visibility of the "Show More" button.</li> <li><code>truncate</code> - determines if title and description are truncated to the first two lines (usually needed on mobile devices).</li> </ul> For each item you can set some additional status information about the item processing by adding a {@link sap.m.MessageStrip} to the <code>processingMessage</code> aggregation.
*/
extern class NotificationListItem extends sap.m.NotificationListBase
{
	@:overload(function(?sId:String, ?mSettings:NotificationListItemArgs):Void {})
	public function new(?mSettings:NotificationListItemArgs):Void;

	/**
	* Registers resize handler.
	* @return	Void
	*/
	public function _registerResize( ):Void;

	/**
	* Destroys the processingMessage in the aggregation {@link #getProcessingMessage processingMessage}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyProcessingMessage( ):sap.m.NotificationListItem;

	/**
	* Creates a new subclass of class sap.m.NotificationListItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.NotificationListBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getDescription description}.

Determines the description of the NotificationListItem.

Default value is <code>empty string</code>.
	* @return	Value of property <code>description</code>
	*/
	public function getDescription( ):String;

	/**
	* Gets current value of property {@link #getHideShowMoreButton hideShowMoreButton}.

Determines if the "Show More" button should be hidden.

Default value is <code>false</code>.
	* @return	Value of property <code>hideShowMoreButton</code>
	*/
	public function getHideShowMoreButton( ):Bool;

	/**
	* Returns a metadata object for class sap.m.NotificationListItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets content of aggregation {@link #getProcessingMessage processingMessage}.

The sap.m.MessageStrip control that holds the information about any error that may occur when pressing the notification buttons
	* @return	null
	*/
	public function getProcessingMessage( ):sap.m.MessageStrip;

	/**
	* Gets current value of property {@link #getTruncate truncate}.

Determines if the text in the title and the description of the notification are truncated to the first two lines.

Default value is <code>true</code>.
	* @return	Value of property <code>truncate</code>
	*/
	public function getTruncate( ):Bool;

	/**
	* Sets initial values for the control.
	* @return	Void
	*/
	public function init( ):Void;

	/**
	* Overwrites onAfterRendering
	* @return	Void
	*/
	public function onAfterRendering( ):Void;

	/**
	* Overwrites onBeforeRendering
	* @return	Void
	*/
	public function onBeforeRendering( ):Void;

	/**
	* Sets the author picture for list item.
	* @param	authorPicture Picture url in string format.
	* @param	suppressInvalidation Indication for suppressing invalidation.
	* @return	NotificationListItem reference for chaining.
	*/
	public function setAuthorPicture( authorPicture:String, suppressInvalidation:Bool):sap.m.NotificationListItem;

	/**
	* Sets the DateTime.
	* @param	dateTime DateTime.
	* @return	NotificationListBase reference for chaining.
	*/
	public function setDatetime( dateTime:Dynamic):sap.m.NotificationListBase;

	/**
	* Sets the description.
	* @param	description Description.
	* @return	NotificationListItem reference for chaining.
	*/
	public function setDescription( description:String):sap.m.NotificationListItem;

	/**
	* Sets a new value for property {@link #getHideShowMoreButton hideShowMoreButton}.

Determines if the "Show More" button should be hidden.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bHideShowMoreButton New value for property <code>hideShowMoreButton</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHideShowMoreButton( bHideShowMoreButton:Bool):sap.m.NotificationListItem;

	/**
	* Sets the priority of the list item.
	* @param	priority Priority of the list item.
	* @param	suppressInvalidation Indication for suppressing invalidation.
	* @return	NotificationListItem reference for chaining.
	*/
	public function setPriority( priority:String, suppressInvalidation:Bool):sap.m.NotificationListItem;

	/**
	* Sets the aggregated {@link #getProcessingMessage processingMessage}.
	* @param	oProcessingMessage The processingMessage to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setProcessingMessage( oProcessingMessage:sap.m.MessageStrip):sap.m.NotificationListItem;

	/**
	* Sets a new value for property {@link #getTruncate truncate}.

Determines if the text in the title and the description of the notification are truncated to the first two lines.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bTruncate New value for property <code>truncate</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTruncate( bTruncate:Bool):sap.m.NotificationListItem;

	/**
	* Sets the unread text.
	* @param	unread Indication of unread list item.
	* @return	NotificationListItem reference for chaining.
	*/
	public function setUnread( unread:Bool):sap.m.NotificationListItem;
}

typedef NotificationListItemArgs = sap.m.NotificationListBase.NotificationListBaseArgs & {

	/**
	* Determines the description of the NotificationListItem.
	*/
	@:optional var description:String;

	/**
	* Determines if the text in the title and the description of the notification are truncated to the first two lines.
	*/
	@:optional var truncate:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines if the "Show More" button should be hidden.
	*/
	@:optional var hideShowMoreButton:haxe.extern.EitherType<String,Bool>;

    /**
    * The sap.m.MessageStrip control that holds the information about any error that may occur when pressing the notification buttons
    */
	@:optional var processingMessage:haxe.extern.EitherType<String,sap.m.MessageStrip>;

    /**
    * The text control that holds the description text of the NotificationListItem.
    */
	@:optional var _bodyText:haxe.extern.EitherType<String,sap.m.Text>;
}
