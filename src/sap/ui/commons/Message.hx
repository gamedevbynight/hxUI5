package sap.ui.commons;

@:native("sap.ui.commons.Message")

/**
* Creates the "Message"s to be supplied to the "MessageBar" Control.
*/
extern class Message extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:MessageArgs):Void {})
	public function new(?mSettings:MessageArgs):Void;

	/**
	* Registers a callback function to be invoked if long text Details are to be made available.

This callback function will be supplied the corresponding Message "id", and should return the (simple) HTML string to be displayed within the Message Details Dialog.

E.g.: myMessage.bindDetails(getDetails); function getDetails(sId) {... return htmlString;}
	* @param	fnCallBack the callback function
	* @return	Void
	*/
	public function bindDetails( fnCallBack:()->Void):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.Message with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAssociatedElementId associatedElementId}.

Associated UI element ID. (Optional) For navigation to error field.
	* @return	Value of property <code>associatedElementId</code>
	*/
	public function getAssociatedElementId( ):String;

	/**
	* Gets current value of property {@link #getDesign design}.

Internal attribute, used to force the display of the "short" or the "long" text only.
	* @return	Value of property <code>design</code>
	*/
	public function getDesign( ):String;

	/**
	* Returns a metadata object for class sap.ui.commons.Message.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getText text}.

Message short text. (Mandatory)
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Gets current value of property {@link #getType type}.

"Success", or "Warning", or "Error" messages. (Mandatory)
	* @return	Value of property <code>type</code>
	*/
	public function getType( ):sap.ui.commons.MessageType;

	/**
	* Sets a new value for property {@link #getAssociatedElementId associatedElementId}.

Associated UI element ID. (Optional) For navigation to error field.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sAssociatedElementId New value for property <code>associatedElementId</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAssociatedElementId( sAssociatedElementId:String):sap.ui.commons.Message;

	/**
	* Sets a new value for property {@link #getDesign design}.

Internal attribute, used to force the display of the "short" or the "long" text only.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sDesign New value for property <code>design</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDesign( sDesign:String):sap.ui.commons.Message;

	/**
	* Sets a new value for property {@link #getText text}.

Message short text. (Mandatory)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( sText:String):sap.ui.commons.Message;

	/**
	* Sets a new value for property {@link #getType type}.

"Success", or "Warning", or "Error" messages. (Mandatory)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sType New value for property <code>type</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setType( sType:sap.ui.commons.MessageType):sap.ui.commons.Message;
}

typedef MessageArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* "Success", or "Warning", or "Error" messages. (Mandatory)
	*/
	@:optional var type:haxe.extern.EitherType<String,sap.ui.commons.MessageType>;

	/**
	* Message short text. (Mandatory)
	*/
	@:optional var text:String;

	/**
	* Associated UI element ID. (Optional) For navigation to error field.
	*/
	@:optional var associatedElementId:String;

	/**
	* Internal attribute, used to force the display of the "short" or the "long" text only.
	*/
	@:optional var design:String;
}
