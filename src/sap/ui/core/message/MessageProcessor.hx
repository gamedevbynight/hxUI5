package sap.ui.core.message;

@:native("sap.ui.core.message.MessageProcessor")

/**
* This is an abstract base class for MessageProcessor objects.
*/
extern class MessageProcessor extends sap.ui.base.EventProvider
{
public function new():Void;

	/**
	* Attach event-handler <code>fnFunction</code> to the 'messageChange' event of this <code>sap.ui.core.message.MessageProcessor</code>.<br/>
	* @param	oData The object, that should be passed along with the event-object when firing the event.
	* @param	fnFunction The function to call, when the event occurs. This function will be called on the oListener-instance (if present) or in a 'static way'.
	* @param	oListener Object on which to call the given function. If empty, this MessageProcessor is used.
	* @return	<code>this</code> to allow method chaining
	*/
	public function attachMessageChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.message.MessageProcessor;

	/**
	* Implement in inheriting classes
	* @return	null
	*/
	public function checkMessage( ):sap.ui.model.ListBinding;

	/**
	* Destroys the MessageProcessor Instance
	* @return	Void
	*/
	public function destroy( ):Void;

	/**
	* Detach event-handler <code>fnFunction</code> from the 'sap.ui.core.message.MessageProcessor' event of this <code>sap.ui.core.message.MessageProcessor</code>.<br/>

The passed function and listener object must match the ones previously used for event registration.
	* @param	fnFunction The function to call, when the event occurs.
	* @param	oListener Object on which the given function had to be called.
	* @return	<code>this</code> to allow method chaining
	*/
	public function detachMessageChange( fnFunction:()->Void, oListener:Dynamic):sap.ui.core.message.MessageProcessor;

	/**
	* Creates a new subclass of class sap.ui.core.message.MessageProcessor with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.EventProvider.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
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
	public function setMessages( vMessages:Dynamic):Void;
}

