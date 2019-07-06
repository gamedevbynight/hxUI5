package sap.ui.commons;

@:native("sap.ui.commons.MessageList")

/**
* Instantiated by the "MessageBar" Control if the user requests to generate the corresponding "MessageList".
*/
extern class MessageList extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:MessageListArgs):Void {})
	public function new(?mSettings:MessageListArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.MessageList with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAnchorId anchorId}.

ID of the anchor under which the MessageList will render.
	* @return	Value of property <code>anchorId</code>
	*/
	public function getAnchorId( ):String;

	/**
	* Gets current value of property {@link #getMaxListed maxListed}.

Maximum number of messages being display in the List before a scrollbar appears. Value '0' means no limit.

Default value is <code>7</code>.
	* @return	Value of property <code>maxListed</code>
	*/
	public function getMaxListed( ):String;

	/**
	* Returns a metadata object for class sap.ui.commons.MessageList.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getVisible visible}.

Specifies whether or not the MessageList is visible. Invisible controls are not rendered.

Default value is <code>false</code>.
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

	/**
	* Sets a new value for property {@link #getAnchorId anchorId}.

ID of the anchor under which the MessageList will render.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sAnchorId New value for property <code>anchorId</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAnchorId( sAnchorId:String):sap.ui.commons.MessageList;

	/**
	* Sets a new value for property {@link #getMaxListed maxListed}.

Maximum number of messages being display in the List before a scrollbar appears. Value '0' means no limit.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>7</code>.
	* @param	sMaxListed New value for property <code>maxListed</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxListed( sMaxListed:String):sap.ui.commons.MessageList;

	/**
	* Sets the list of Messages to be displayed and re-renders this Control if it is visible.
	* @param	aMessages Message list.
	* @return	Void
	*/
	public function setMessages( aMessages:Array<sap.ui.commons.Message>):Void;

	/**
	* Setter for property <code>visible</code>.

Default value is <code>true</code>

The default implementation of function "setVisible()" is overwritten in order to invoke the open() and close() of the MessageList Popup.
	* @param	bVisible New value for property <code>visible</code>
	* @return	<code>this</code> to allow method chaining
	*/
	public function setVisible( bVisible:Bool):sap.ui.commons.MessageList;
}

typedef MessageListArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Specifies whether or not the MessageList is visible. Invisible controls are not rendered.
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

	/**
	* ID of the anchor under which the MessageList will render.
	*/
	@:optional var anchorId:String;

	/**
	* Maximum number of messages being display in the List before a scrollbar appears. Value '0' means no limit.
	*/
	@:optional var maxListed:String;
}
