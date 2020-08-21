package sap.m;

@:native("sap.m.MessageItem")

/**
* A wrapper control used to hold different types of system messages. <h3>Structure</h3> The message item holds the basic set of properties for a system message: <ul> <li> Type, title, subtitle and description </li> <li> If the description contains markup, the <code>markupDescription</code> needs to be set to true, to ensure it is interpreted correctly. </li> <li> If the long text description can be specified by a URL by setting, the <code>longtextUrl</code> property. </li> <li> The message item can have a single {@link sap.m.Link} after the description. It is stored in the <code>link</code> aggregation. </li> <h3>Usage</h3> <b>Note:</b> The MessageItem control replaces {@link sap.m.MessagePopoverItem} as a more generic wrapper for messages.
*/
extern class MessageItem extends sap.ui.core.Item
{
	@:overload(function(?sId:String, ?mSettings:MessageItemArgs):Void {})
	public function new(?mSettings:MessageItemArgs):Void;

	/**
	* Destroys the link in the aggregation {@link #getLink link}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyLink( ):sap.m.MessageItem;

	/**
	* Creates a new subclass of class sap.m.MessageItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Item.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getActiveTitle activeTitle}.

Defines whether the title of the item will be interactive.

Default value is <code>false</code>.
	* @return	Value of property <code>activeTitle</code>
	*/
	public function getActiveTitle( ):Bool;

	/**
	* Gets current value of property {@link #getCounter counter}.

Defines the number of messages for a given message.
	* @return	Value of property <code>counter</code>
	*/
	public function getCounter( ):Int;

	/**
	* Gets current value of property {@link #getDescription description}.

Specifies detailed description of the message

Default value is <code>empty string</code>.
	* @return	Value of property <code>description</code>
	*/
	public function getDescription( ):String;

	/**
	* Gets current value of property {@link #getGroupName groupName}.

Name of a message group the current item belongs to.

Default value is <code>empty string</code>.
	* @return	Value of property <code>groupName</code>
	*/
	public function getGroupName( ):String;

	/**
	* Gets content of aggregation {@link #getLink link}.

Adds an sap.m.Link control which will be displayed at the end of the description of a message.
	* @return	null
	*/
	public function getLink( ):sap.m.Link;

	/**
	* Gets current value of property {@link #getLongtextUrl longtextUrl}.

Specifies long text description location URL
	* @return	Value of property <code>longtextUrl</code>
	*/
	public function getLongtextUrl( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getMarkupDescription markupDescription}.

Specifies if description should be interpreted as markup

Default value is <code>false</code>.
	* @return	Value of property <code>markupDescription</code>
	*/
	public function getMarkupDescription( ):Bool;

	/**
	* Returns a metadata object for class sap.m.MessageItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getSubtitle subtitle}.

Specifies the subtitle of the message <b>Note:</b> This is only visible when the <code>title</code> property is not empty.
	* @return	Value of property <code>subtitle</code>
	*/
	public function getSubtitle( ):String;

	/**
	* Gets current value of property {@link #getTitle title}.

Specifies the title of the message

Default value is <code>empty string</code>.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Gets current value of property {@link #getType type}.

Specifies the type of the message

Default value is <code>Error</code>.
	* @return	Value of property <code>type</code>
	*/
	public function getType( ):sap.ui.core.MessageType;

	/**
	* Sets a new value for property {@link #getActiveTitle activeTitle}.

Defines whether the title of the item will be interactive.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bActiveTitle New value for property <code>activeTitle</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setActiveTitle( ?bActiveTitle:Bool):sap.m.MessageItem;

	/**
	* Sets a new value for property {@link #getCounter counter}.

Defines the number of messages for a given message.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iCounter New value for property <code>counter</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCounter( ?iCounter:Int):sap.m.MessageItem;

	/**
	* Sets a new value for property {@link #getDescription description}.

Specifies detailed description of the message

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sDescription New value for property <code>description</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDescription( ?sDescription:String):sap.m.MessageItem;

	/**
	* Sets a new value for property {@link #getGroupName groupName}.

Name of a message group the current item belongs to.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sGroupName New value for property <code>groupName</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGroupName( ?sGroupName:String):sap.m.MessageItem;

	/**
	* Sets the aggregated {@link #getLink link}.
	* @param	oLink The link to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLink( oLink:sap.m.Link):sap.m.MessageItem;

	/**
	* Sets a new value for property {@link #getLongtextUrl longtextUrl}.

Specifies long text description location URL

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sLongtextUrl New value for property <code>longtextUrl</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLongtextUrl( ?sLongtextUrl:sap.ui.core.URI):sap.m.MessageItem;

	/**
	* Sets a new value for property {@link #getMarkupDescription markupDescription}.

Specifies if description should be interpreted as markup

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bMarkupDescription New value for property <code>markupDescription</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMarkupDescription( ?bMarkupDescription:Bool):sap.m.MessageItem;

	/**
	* Sets a new value for property {@link #getSubtitle subtitle}.

Specifies the subtitle of the message <b>Note:</b> This is only visible when the <code>title</code> property is not empty.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sSubtitle New value for property <code>subtitle</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSubtitle( ?sSubtitle:String):sap.m.MessageItem;

	/**
	* Sets a new value for property {@link #getTitle title}.

Specifies the title of the message

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( ?sTitle:String):sap.m.MessageItem;

	/**
	* Sets type of the MessageItem. <b>Note:</b> if you set the type to None it will be handled and rendered as Information.
	* @param	sType Type of Message
	* @return	The MessageItem
	*/
	public function setType( sType:sap.ui.core.MessageType):sap.m.MessageItem;
}

typedef MessageItemArgs = sap.ui.core.Item.ItemArgs & {

	/**
	* Specifies the type of the message
	*/
	@:optional var type:haxe.extern.EitherType<String,sap.ui.core.MessageType>;

	/**
	* Specifies the title of the message
	*/
	@:optional var title:String;

	/**
	* Specifies the subtitle of the message <b>Note:</b> This is only visible when the <code>title</code> property is not empty.
	*/
	@:optional var subtitle:String;

	/**
	* Specifies detailed description of the message
	*/
	@:optional var description:String;

	/**
	* Specifies if description should be interpreted as markup
	*/
	@:optional var markupDescription:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies long text description location URL
	*/
	@:optional var longtextUrl:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Defines the number of messages for a given message.
	*/
	@:optional var counter:haxe.extern.EitherType<String,Int>;

	/**
	* Name of a message group the current item belongs to.
	*/
	@:optional var groupName:String;

	/**
	* Defines whether the title of the item will be interactive.
	*/
	@:optional var activeTitle:haxe.extern.EitherType<String,Bool>;

    /**
    * Adds an sap.m.Link control which will be displayed at the end of the description of a message.
    */
	@:optional var link:haxe.extern.EitherType<String,sap.m.Link>;
}
