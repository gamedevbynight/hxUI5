package sap.m;

@:native("sap.m.MessageStrip")

/**
* MessageStrip is a control that enables the embedding of application-related messages in the application. <h3>Overview</h3> The message strip displays 4 types of messages, each with a corresponding semantic color and icon: Information, Success, Warning and Error.

Each message can have a close button, so that it can be removed from the UI if needed.

With version 1.50 you can use a limited set of formatting tags for the message text by setting <code>enableFormattedText</code>. The allowed tags are: <ul> <li>&lt;a&gt;</li> <li>&lt;em&gt;</li> <li>&lt;strong&gt;</li> <li>&lt;u&gt;</li> </ul> <h3>Usage</h3> <h4>When to use</h4> <ul> <li>You want to provide information or status update within the detail area of an object</li> </ul> <h4>When not to use</h4> <ul> <li>You want to display information within the object page header, within a control, in the master list, or above the page header.</li> </ul>
*/
extern class MessageStrip extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:MessageStripArgs):Void {})
	public function new(?mSettings:MessageStripArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:close close} event of this <code>sap.m.MessageStrip</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.MessageStrip</code> itself.

This event will be fired after the container is closed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.MessageStrip</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachClose( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessageStrip;

	/**
	* Closes the MessageStrip. This method sets the visible property of the MessageStrip to false. The MessageStrip can be shown again by setting the visible property to true.
	* @return	Void
	*/
	public function close( ):Void;

	/**
	* Destroys the link in the aggregation {@link #getLink link}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyLink( ):sap.m.MessageStrip;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:close close} event of this <code>sap.m.MessageStrip</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachClose( fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessageStrip;

	/**
	* Creates a new subclass of class sap.m.MessageStrip with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getCustomIcon customIcon}.

Determines a custom icon which is displayed. If none is set, the default icon for this message type is used.

Default value is <code>empty string</code>.
	* @return	Value of property <code>customIcon</code>
	*/
	public function getCustomIcon( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getEnableFormattedText enableFormattedText}.

Determines the limited collection of HTML elements passed to the <code>text</code> property should be evaluated.

<b>Note:</b> If this property is set to true the string passed to <code>text</code> property can evaluate the following list of limited HTML elements. All other HTML elements and their nested content will not be rendered by the control: <ul> <li><code>a</code></li> <li><code>em</code></li> <li><code>strong</code></li> <li><code>u</code></li> </ul>

Default value is <code>false</code>.
	* @return	Value of property <code>enableFormattedText</code>
	*/
	public function getEnableFormattedText( ):Bool;

	/**
	* Gets content of aggregation {@link #getLink link}.

Adds an sap.m.Link control which will be displayed at the end of the message.
	* @return	null
	*/
	public function getLink( ):sap.m.Link;

	/**
	* Returns a metadata object for class sap.m.MessageStrip.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getShowCloseButton showCloseButton}.

Determines if the message has a close button in the upper right corner.

Default value is <code>false</code>.
	* @return	Value of property <code>showCloseButton</code>
	*/
	public function getShowCloseButton( ):Bool;

	/**
	* Gets current value of property {@link #getShowIcon showIcon}.

Determines if an icon is displayed for the message.

Default value is <code>false</code>.
	* @return	Value of property <code>showIcon</code>
	*/
	public function getShowIcon( ):Bool;

	/**
	* Gets current value of property {@link #getText text}.

Determines the text of the message.

Default value is <code>empty string</code>.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Gets current value of property {@link #getType type}.

Determines the type of messages that are displayed in the MessageStrip. Possible values are: Information (default), Success, Warning, Error. If None is passed, the value is set to Information and a warning is displayed in the console.

Default value is <code>Information</code>.
	* @return	Value of property <code>type</code>
	*/
	public function getType( ):sap.ui.core.MessageType;

	/**
	* Sets a new value for property {@link #getCustomIcon customIcon}.

Determines a custom icon which is displayed. If none is set, the default icon for this message type is used.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sCustomIcon New value for property <code>customIcon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCustomIcon( sCustomIcon:sap.ui.core.URI):sap.m.MessageStrip;

	/**
	* Sets a new value for property {@link #getEnableFormattedText enableFormattedText}.

Determines the limited collection of HTML elements passed to the <code>text</code> property should be evaluated.

<b>Note:</b> If this property is set to true the string passed to <code>text</code> property can evaluate the following list of limited HTML elements. All other HTML elements and their nested content will not be rendered by the control: <ul> <li><code>a</code></li> <li><code>em</code></li> <li><code>strong</code></li> <li><code>u</code></li> </ul>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bEnableFormattedText New value for property <code>enableFormattedText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableFormattedText( bEnableFormattedText:Bool):sap.m.MessageStrip;

	/**
	* Sets the aggregated {@link #getLink link}.
	* @param	oLink The link to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLink( oLink:sap.m.Link):sap.m.MessageStrip;

	/**
	* Sets a new value for property {@link #getShowCloseButton showCloseButton}.

Determines if the message has a close button in the upper right corner.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowCloseButton New value for property <code>showCloseButton</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowCloseButton( bShowCloseButton:Bool):sap.m.MessageStrip;

	/**
	* Sets a new value for property {@link #getShowIcon showIcon}.

Determines if an icon is displayed for the message.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowIcon New value for property <code>showIcon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowIcon( bShowIcon:Bool):sap.m.MessageStrip;

	/**
	* Setter for property text. Default value is empty/undefined
	* @param	sText new value for property text
	* @return	this to allow method chaining
	*/
	public function setText( sText:String):sap.m.MessageStrip;

	/**
	* Setter for property type. Default value is sap.ui.core.MessageType.Information
	* @param	sType The Message type
	* @return	this to allow method chaining
	*/
	public function setType( sType:sap.ui.core.MessageType):sap.m.MessageStrip;
}

typedef MessageStripArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines the text of the message.
	*/
	@:optional var text:String;

	/**
	* Determines the type of messages that are displayed in the MessageStrip. Possible values are: Information (default), Success, Warning, Error. If None is passed, the value is set to Information and a warning is displayed in the console.
	*/
	@:optional var type:haxe.extern.EitherType<String,sap.ui.core.MessageType>;

	/**
	* Determines a custom icon which is displayed. If none is set, the default icon for this message type is used.
	*/
	@:optional var customIcon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Determines if an icon is displayed for the message.
	*/
	@:optional var showIcon:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines if the message has a close button in the upper right corner.
	*/
	@:optional var showCloseButton:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the limited collection of HTML elements passed to the <code>text</code> property should be evaluated.

<b>Note:</b> If this property is set to true the string passed to <code>text</code> property can evaluate the following list of limited HTML elements. All other HTML elements and their nested content will not be rendered by the control: <ul> <li><code>a</code></li> <li><code>em</code></li> <li><code>strong</code></li> <li><code>u</code></li> </ul>
	*/
	@:optional var enableFormattedText:haxe.extern.EitherType<String,Bool>;

    /**
    * Adds an sap.m.Link control which will be displayed at the end of the message.
    */
	@:optional var link:haxe.extern.EitherType<String,sap.m.Link>;

    /**
    * Hidden aggregation which is used to transform the string message into sap.m.Text control.
    */
	@:optional var _formattedText:haxe.extern.EitherType<String,sap.m.FormattedText>;

    /**
    * Hidden aggregation which is used to transform the string message into sap.m.Text control.
    */
	@:optional var _text:haxe.extern.EitherType<String,sap.m.Text>;

	/**
	* This event will be fired after the container is closed.
	*/
	@:optional var close:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
