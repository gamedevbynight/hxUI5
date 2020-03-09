package sap.m;

@:native("sap.m.NotificationListItem")

/**
* The NotificationListItem control shows notification to the user. <h4>Structure</h4> The notification item holds properties for the following elements: <ul> <li><code>description</code> - additional detail text.</li> <li><code>hideShowMoreButton</code> - visibility of the "Show More" button.</li> <li><code>truncate</code> - determines if title and description are truncated to the first two lines (usually needed on mobile devices).</li> </ul> For each item you can set some additional status information about the item processing by adding a {@link sap.m.MessageStrip} to the <code>processingMessage</code> aggregation.
*/
extern class NotificationListItem extends sap.m.NotificationListBase
{
	@:overload(function(?sId:String, ?mSettings:NotificationListItemArgs):Void {})
	public function new(?mSettings:NotificationListItemArgs):Void;

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
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAuthorAvatarColor authorAvatarColor}.

Determines the background color of the avatar of the author.

<b>Note:</b> By using background colors from the predefined sets, your colors can later be customized from the Theme Designer.

Default value is <code>Accent6</code>.
	* @return	Value of property <code>authorAvatarColor</code>
	*/
	public function getAuthorAvatarColor( ):sap.m.AvatarColor;

	/**
	* Gets current value of property {@link #getAuthorInitials authorInitials}.

Defines the displayed author initials.
	* @return	Value of property <code>authorInitials</code>
	*/
	public function getAuthorInitials( ):String;

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
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

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
	* Sets a new value for property {@link #getAuthorAvatarColor authorAvatarColor}.

Determines the background color of the avatar of the author.

<b>Note:</b> By using background colors from the predefined sets, your colors can later be customized from the Theme Designer.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Accent6</code>.
	* @param	sAuthorAvatarColor New value for property <code>authorAvatarColor</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAuthorAvatarColor( sAuthorAvatarColor:sap.m.AvatarColor):sap.m.NotificationListItem;

	/**
	* Sets a new value for property {@link #getAuthorInitials authorInitials}.

Defines the displayed author initials.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sAuthorInitials New value for property <code>authorInitials</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAuthorInitials( sAuthorInitials:String):sap.m.NotificationListItem;

	/**
	* Sets a new value for property {@link #getDescription description}.

Determines the description of the NotificationListItem.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sDescription New value for property <code>description</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDescription( sDescription:String):sap.m.NotificationListItem;

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
}

typedef NotificationListItemArgs = sap.m.NotificationListBase.NotificationListBaseArgs & {

	/**
	* Determines the description of the NotificationListItem.
	*/
	@:optional var description:String;

	/**
	* Defines the displayed author initials.
	*/
	@:optional var authorInitials:String;

	/**
	* Determines if the text in the title and the description of the notification are truncated to the first two lines.
	*/
	@:optional var truncate:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines if the "Show More" button should be hidden.
	*/
	@:optional var hideShowMoreButton:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the background color of the avatar of the author.

<b>Note:</b> By using background colors from the predefined sets, your colors can later be customized from the Theme Designer.
	*/
	@:optional var authorAvatarColor:haxe.extern.EitherType<String,sap.m.AvatarColor>;

    /**
    * The sap.m.MessageStrip control that holds the information about any error that may occur when pressing the notification buttons
    */
	@:optional var processingMessage:haxe.extern.EitherType<String,sap.m.MessageStrip>;

    /**
    * The "Show More" button of the notification item.
    */
	@:optional var _showMoreButton:haxe.extern.EitherType<String,sap.m.Link>;
}
