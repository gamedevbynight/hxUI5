package sap.ui.core.message;

@:native("sap.ui.core.message.MessageProcessor")

/**
* This is an abstract base class for MessageProcessor objects.
*/
extern class MessageProcessor extends sap.ui.base.EventProvider
{
public function new():Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:messageChange messageChange} event of this <code>sap.ui.core.message.MessageProcessor</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.core.message.MessageProcessor</code> itself.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with, defaults to this <code>MessageProcessor</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachMessageChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.message.MessageProcessor;

	/**
	* Implement in inheriting classes
	* @return	Void
	*/
	public function checkMessages( ):Void;

	/**
	* Destroys the MessageProcessor Instance
	* @return	Void
	*/
	public function destroy( ):Void;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:messageChange messageChange} event of this <code>sap.ui.core.message.MessageProcessor</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachMessageChange( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.message.MessageProcessor;

	/**
	* Creates a new subclass of class sap.ui.core.message.MessageProcessor with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.EventProvider.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns the ID of the MessageProcessor instance
	* @return	sId The MessageProcessor ID
	*/
	public function getId( ):String;

	/**
	* Returns a metadata object for class sap.ui.core.message.MessageProcessor.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Implement in inheriting classes
	* @param	vMessages map of messages: {'target': [array of messages],...}
	* @return	Void
	*/
	public function setMessages( vMessages:Map<String,Array<Dynamic>>):Void;
}

