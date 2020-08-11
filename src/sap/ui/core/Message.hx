package sap.ui.core;

@:native("sap.ui.core.Message")

/**
* This element is used to provide messages.

Rendering must be done within the control that uses this kind of element. Its default level is none.
*/
extern class Message extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:MessageArgs):Void {})
	public function new(?mSettings:MessageArgs):Void;

	/**
	* Compares two given messages with each other.

The types of {@link sap.ui.core.MessageType} are ordered from "Error" > "Warning" > "Success" > "Information" > "None".
	* @param	oMessage1 first message to compare
	* @param	oMessage2 second message to compare
	* @return	returns <code>0</code> if both messages are at the same level. <code>-1</code> if <code>this</code> message has a lower level. <code>1</code> if <code>this</code> message has a higher level.
	*/
	public static function compareByType( oMessage1:sap.ui.core.Message, oMessage2:sap.ui.core.Message):Int;

	/**
	* Creates a new subclass of class sap.ui.core.Message with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns the icon's default URI depending on given size.
	* @param	sSize Only the values "16x16" or "32x32" are allowed. Otherwise the default value is used.
	* @return	URI of the default icon.
	*/
	public function getDefaultIcon( ?sSize:String):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getIcon icon}.

A possible icon URI of the message
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getLevel level}.

Setting the message's level.

Default value is <code>None</code>.
	* @return	Value of property <code>level</code>
	*/
	public function getLevel( ):sap.ui.core.MessageType;

	/**
	* Returns a metadata object for class sap.ui.core.Message.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getReadOnly readOnly}.

Determines whether the message should be read only. This helps the application to handle a message a different way if the application differentiates between read-only and common messages.

Default value is <code>false</code>.
	* @return	Value of property <code>readOnly</code>
	*/
	public function getReadOnly( ):Bool;

	/**
	* Gets current value of property {@link #getText text}.

Message text
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Gets current value of property {@link #getTimestamp timestamp}.

Message's timestamp. It is just a simple String that will be used without any transformation. So the application that uses messages needs to format the timestamp to its own needs.
	* @return	Value of property <code>timestamp</code>
	*/
	public function getTimestamp( ):String;

	/**
	* Sets a new value for property {@link #getIcon icon}.

A possible icon URI of the message

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( sIcon:sap.ui.core.URI):sap.ui.core.Message;

	/**
	* Sets a new value for property {@link #getLevel level}.

Setting the message's level.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sLevel New value for property <code>level</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLevel( ?sLevel:sap.ui.core.MessageType):sap.ui.core.Message;

	/**
	* Sets a new value for property {@link #getReadOnly readOnly}.

Determines whether the message should be read only. This helps the application to handle a message a different way if the application differentiates between read-only and common messages.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bReadOnly New value for property <code>readOnly</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setReadOnly( ?bReadOnly:Bool):sap.ui.core.Message;

	/**
	* Sets a new value for property {@link #getText text}.

Message text

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( sText:String):sap.ui.core.Message;

	/**
	* Sets a new value for property {@link #getTimestamp timestamp}.

Message's timestamp. It is just a simple String that will be used without any transformation. So the application that uses messages needs to format the timestamp to its own needs.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTimestamp New value for property <code>timestamp</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTimestamp( sTimestamp:String):sap.ui.core.Message;
}

typedef MessageArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Message text
	*/
	@:optional var text:String;

	/**
	* Message's timestamp. It is just a simple String that will be used without any transformation. So the application that uses messages needs to format the timestamp to its own needs.
	*/
	@:optional var timestamp:String;

	/**
	* A possible icon URI of the message
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Setting the message's level.
	*/
	@:optional var level:haxe.extern.EitherType<String,sap.ui.core.MessageType>;

	/**
	* Determines whether the message should be read only. This helps the application to handle a message a different way if the application differentiates between read-only and common messages.
	*/
	@:optional var readOnly:haxe.extern.EitherType<String,Bool>;
}
