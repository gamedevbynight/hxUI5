package sap.ui.commons;

@:native("sap.ui.commons.MessageToast")

/**
* Responsible for displaying the new incoming messages, one at the time, on top of the MessageBar.
*/
extern class MessageToast extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:MessageToastArgs):Void {})
	public function new(?mSettings:MessageToastArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:next next} event of this <code>sap.ui.commons.MessageToast</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.MessageToast</code> itself.

Fired once the <code>toast()</code> method is over, so that the MessageBar can "toast" another message if needed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.MessageToast</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachNext( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.commons.MessageToast;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:next next} event of this <code>sap.ui.commons.MessageToast</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachNext( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.commons.MessageToast;

	/**
	* Creates a new subclass of class sap.ui.commons.MessageToast with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getAnchorId anchorId}.

ID of the anchor on top of which the MessageToast is to render.
	* @return	Value of property <code>anchorId</code>
	*/
	public function getAnchorId( ):String;

	/**
	* Returns a metadata object for class sap.ui.commons.MessageToast.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Returns the idle state of the control. Returns true if no message is being toasted.
	* @return	null
	*/
	public function isIdle( ):Bool;

	/**
	* Sets a new value for property {@link #getAnchorId anchorId}.

ID of the anchor on top of which the MessageToast is to render.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sAnchorId New value for property <code>anchorId</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAnchorId( ?sAnchorId:String):sap.ui.commons.MessageToast;

	/**
	* Triggers the toasting of a message, on top of the MessageBar. If no message is supplied, displays the "Multiple new messages..." message.

Receives the list of Messages to be displayed, and re-renders this Control if it is visible.
	* @param	oMessage The Message to be toasted.
	* @param	sAnchorId DOM ID of the anchor against which the Toast Arrow should align for a given Toast.
	* @return	Void
	*/
	public function toast( oMessage:sap.ui.commons.Message, sAnchorId:String):Void;
}

typedef MessageToastArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* ID of the anchor on top of which the MessageToast is to render.
	*/
	@:optional var anchorId:String;

	/**
	* Fired once the <code>toast()</code> method is over, so that the MessageBar can "toast" another message if needed.
	*/
	@:optional var next:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
