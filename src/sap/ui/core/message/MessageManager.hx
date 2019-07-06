package sap.ui.core.message;

@:native("sap.ui.core.message.MessageManager")

/**
* null
*/
extern class MessageManager extends sap.ui.base.EventProvider
{
public function new():Void;
	@:overload( function(vMessages:sap.ui.core.message.Message):Void{ })

	/**
	* Add messages to MessageManager
	* @param	vMessages Array of sap.ui.core.message.Message or single sap.ui.core.message.Message
	* @return	Void
	*/
	public function addMessages( vMessages:Array<sap.ui.core.message.Message>):Void;

	/**
	* Creates a new subclass of class sap.ui.core.message.MessageManager with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.EventProvider.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Get the MessageModel
	* @return	oMessageModel The Message Model
	*/
	public function getMessageModel( ):sap.ui.model.message.MessageModel;

	/**
	* Returns a metadata object for class sap.ui.core.message.MessageManager.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Register MessageProcessor
	* @param	oProcessor The MessageProcessor
	* @return	Void
	*/
	public function registerMessageProcessor( oProcessor:sap.ui.core.message.MessageProcessor):Void;

	/**
	* When using the databinding type system, the validation/parsing of a new property value could fail. In this case, a validationError/parseError event is fired. These events bubble up to the core. For registered ManagedObjects, the MessageManager attaches to these events and creates a <code>sap.ui.core.message.Message</code> (bHandleValidation=true) for each of these errors and cancels the event bubbling.
	* @param	oObject The sap.ui.base.ManagedObject
	* @param	bHandleValidation Handle validationError/parseError events for this object. If set to true, the MessageManager creates a Message for each validation/parse error. The event bubbling is canceled in every case.
	* @return	Void
	*/
	public function registerObject( oObject:sap.ui.base.ManagedObject, bHandleValidation:Bool):Void;

	/**
	* Remove all messages
	* @return	Void
	*/
	public function removeAllMessages( ):Void;
	@:overload( function(vMessages:sap.ui.core.message.Message):Void{ })

	/**
	* Remove given Messages
	* @param	vMessages The message(s) to be removed.
	* @return	Void
	*/
	public function removeMessages( vMessages:Array<sap.ui.core.message.Message>):Void;

	/**
	* Deregister MessageProcessor
	* @param	oProcessor The MessageProcessor
	* @return	Void
	*/
	public function unregisterMessageProcessor( oProcessor:sap.ui.core.message.MessageProcessor):Void;

	/**
	* Unregister ManagedObject
	* @param	oObject The sap.ui.base.ManagedObject
	* @return	Void
	*/
	public function unregisterObject( oObject:sap.ui.base.ManagedObject):Void;
}

