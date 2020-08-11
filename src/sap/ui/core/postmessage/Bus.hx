package sap.ui.core.postmessage;

@:native("sap.ui.core.postmessage.Bus")

/**
* Responsible for the communication between different window objects.

<h3>Overview</h3> This class is a singleton. The class instance can be retrieved as follows: <ul> <li>via the constructor <code>new sap.ui.core.postmessage.Bus()</code></li> <li>via the static method <code>sap.ui.core.postmessage.Bus.getInstance()</code></li> </ul>

For supported data types for payload messages, see {@link https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Structured_clone_algorithm}.
*/
extern class Bus extends sap.ui.core.EventBus
{

	/**
	* Creates a new subclass of class sap.ui.core.postmessage.Bus with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.EventBus.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns an instance of the class
	* @return	null
	*/
	public static function getInstance( ):sap.ui.core.postmessage.Bus;

	/**
	* Returns a metadata object for class sap.ui.core.postmessage.Bus.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Publish message into cross-window communication channel
	* @param	mParameters Map with params
	* @return	Void
	*/
	public function publish( mParameters:Dynamic):Void;

	/**
	* Attaches an event handler to the event with the given identifier on the given event channel
	* @param	sChannelId Channel of the event to subscribe to. If not given, the default channel is used. The channel <code>"sap.ui"</code> is reserved by the UI5 framework. An application can listen to events on this channel, but is not allowed to publish its own events there.
	* @param	sEventId Identifier of the event to listen for
	* @param	fnFunction Handler function to call when the event occurs; this function is called in the context of the <code>oListener</code> instance (if present) or on the event bus instance. Arguments: <pre>
- {string} sChannelId - Channel ID
- {string} sEventId - Event ID
- {object} mParameters - Event parameters
    - {Event} originalEvent - Post message original event
    - {string} channelId - Channel ID
    - {string} eventId - Event ID
    - {Window} source - Sender window
    - {string} origin - Sender origin, e.g. https://example.com
    - {*} [data] - Payload data
</pre>
	* @param	oListener Object that wants to be notified when the event occurs (<code>this</code> context within the handler function). If it is not specified, the handler function is called in the context of the event bus.
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function subscribe( ?sChannelId:String, sEventId:String, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.postmessage.Bus;
}

