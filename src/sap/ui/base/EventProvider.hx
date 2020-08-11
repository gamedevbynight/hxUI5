package sap.ui.base;

@:native("sap.ui.base.EventProvider")

/**
* Provides eventing capabilities for objects like attaching or detaching event handlers for events which are notified when events are fired.
*/
extern class EventProvider extends sap.ui.base.Object
{
public function new():Void;

	/**
	* Attaches an event handler to the event with the given identifier.
	* @param	sEventId The identifier of the event to listen for
	* @param	oData An object that will be passed to the handler along with the event object when the event is fired
	* @param	fnFunction The handler function to call when the event occurs. This function will be called in the context of the <code>oListener</code> instance (if present) or on the event provider instance. The event object ({@link sap.ui.base.Event}) is provided as first argument of the handler. Handlers must not change the content of the event. The second argument is the specified <code>oData</code> instance (if present).
	* @param	oListener The object that wants to be notified when the event occurs (<code>this</code> context within the handler function). If it is not specified, the handler function is called in the context of the event provider.
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function attachEvent( sEventId:String, ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.base.EventProvider;

	/**
	* Attaches an event handler, called one time only, to the event with the given identifier.

When the event occurs, the handler function is called and the handler registration is automatically removed afterwards.
	* @param	sEventId The identifier of the event to listen for
	* @param	oData An object that will be passed to the handler along with the event object when the event is fired
	* @param	fnFunction The handler function to call when the event occurs. This function will be called in the context of the <code>oListener</code> instance (if present) or on the event provider instance. The event object ({@link sap.ui.base.Event}) is provided as first argument of the handler. Handlers must not change the content of the event. The second argument is the specified <code>oData</code> instance (if present).
	* @param	oListener The object that wants to be notified when the event occurs (<code>this</code> context within the handler function). If it is not specified, the handler function is called in the context of the event provider.
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function attachEventOnce( sEventId:String, ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.base.EventProvider;

	/**
	* Cleans up the internal structures and removes all event handlers.

The object must not be used anymore after destroy was called.
	* @return	Void
	*/
	public function destroy( ):Void;

	/**
	* Removes a previously attached event handler from the event with the given identifier.

The passed parameters must match those used for registration with {@link #attachEvent} beforehand.
	* @param	sEventId The identifier of the event to detach from
	* @param	fnFunction The handler function to detach from the event
	* @param	oListener The object that wanted to be notified when the event occurred
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function detachEvent( sEventId:String, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.base.EventProvider;

	/**
	* Creates a new subclass of class sap.ui.base.EventProvider with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.base.EventProvider.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns a string representation of this object.

In case there is no class or id information, a simple static string is returned. Subclasses should override this method.
	* @return	A string description of this event provider
	*/
	public function toString( ):String;
}

