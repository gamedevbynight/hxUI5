package sap.ui.core;

@:native("sap.ui.core.EventBus")

/**
* Provides eventing capabilities for applications like firing events and attaching or detaching event handlers for events which are notified when events are fired.
*/
extern class EventBus extends sap.ui.base.Object
{
public function new():Void;

	/**
	* Cleans up the internal structures and removes all event handlers.

The object must not be used anymore after destroy was called.
	* @return	Void
	*/
	public function destroy( ):Void;

	/**
	* Creates a new subclass of class sap.ui.core.EventBus with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.core.EventBus.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Fires an event using the specified settings and notifies all attached event handlers.
	* @param	sChannelId The channel of the event to fire. If not given, the default channel is used. The channel <code>"sap.ui"</code> is reserved by the UI5 framework. An application might listen to events on this channel but is not allowed to publish its own events there.
	* @param	sEventId The identifier of the event to fire
	* @param	oData The parameters which should be carried by the event
	* @return	Void
	*/
	public function publish( ?sChannelId:String, sEventId:String, ?oData:Dynamic):Void;

	/**
	* Attaches an event handler to the event with the given identifier on the given event channel.
	* @param	sChannelId The channel of the event to subscribe to. If not given, the default channel is used. The channel <code>"sap.ui"</code> is reserved by the UI5 framework. An application might listen to events on this channel but is not allowed to publish its own events there.
	* @param	sEventId The identifier of the event to listen for
	* @param	fnFunction The handler function to call when the event occurs. This function will be called in the context of the <code>oListener</code> instance (if present) or on the event bus instance. The channel is provided as first argument of the handler, and the event identifier is provided as the second argument. The parameter map carried by the event is provided as the third argument (if present). Handlers must not change the content of this map.
	* @param	oListener The object that wants to be notified when the event occurs (<code>this</code> context within the handler function). If it is not specified, the handler function is called in the context of the event bus.
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function subscribe( ?sChannelId:String, sEventId:String, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.EventBus;

	/**
	* Attaches an event handler, called one time only, to the event with the given identifier on the given event channel.

When the event occurs, the handler function is called and the handler registration is automatically removed afterwards.
	* @param	sChannelId The channel of the event to subscribe to. If not given, the default channel is used. The channel <code>"sap.ui"</code> is reserved by the UI5 framework. An application might listen to events on this channel but is not allowed to publish its own events there.
	* @param	sEventId The identifier of the event to listen for
	* @param	fnFunction The handler function to call when the event occurs. This function will be called in the context of the <code>oListener</code> instance (if present) or on the event bus instance. The channel is provided as first argument of the handler, and the event identifier is provided as the second argument. The parameter map carried by the event is provided as the third argument (if present). Handlers must not change the content of this map.
	* @param	oListener The object that wants to be notified when the event occurs (<code>this</code> context within the handler function). If it is not specified, the handler function is called in the context of the event bus.
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function subscribeOnce( ?sChannelId:String, sEventId:String, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.EventBus;

	/**
	* Removes a previously subscribed event handler from the event with the given identifier on the given event channel.

The passed parameters must match those used for registration with {@link #subscribe } beforehand!
	* @param	sChannelId The channel of the event to unsubscribe from. If not given, the default channel is used.
	* @param	sEventId The identifier of the event to unsubscribe from
	* @param	fnFunction The handler function to unsubscribe from the event
	* @param	oListener The object that wanted to be notified when the event occurred
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function unsubscribe( ?sChannelId:String, sEventId:String, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.EventBus;
}

