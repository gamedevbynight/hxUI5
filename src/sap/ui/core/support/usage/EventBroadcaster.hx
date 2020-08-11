package sap.ui.core.support.usage;

@:native("sap.ui.core.support.usage.EventBroadcaster")

/**
* Broadcasts UI5 events via single native custom browser event. This way consumers have a generic mechanism for hooking into any UI5 event. Example consumer code: <pre>
    window.addEventListener("UI5Event", function(oEvent) {

    		// consumer coding, e.g. :
    		// analyze event
    		// store events - GDPR is responsibility of the consumer
    		// or any other

    		var oDetail = oEvent.detail;

    		console.log("UI5 Event " 				+ oDetail.eventName
    			+ " occurred at " 					+ new Date(oDetail.timestamp).toString()
    			+ " for element " 					+ oDetail.targetId
    			+ " of type "						+ oDetail.targetType
    			+ ", which is part of component " 	+ oDetail.componentId
    			+ " with version " 					+ oDetail.componentVersion
    			+ " and additional parameters "		, oDetail.additionalAttributes);

    });
</pre>
*/
extern class EventBroadcaster
{

	/**
	* Disables the EventBroadcaster.
	* @return	Void
	*/
	public static function disable( ):Void;

	/**
	* Starts broadcasting events. Consumers could stop broadcasting via {@link sap.ui.core.support.usage.EventBroadcaster#disable EventBroadcaster.disable}
	* @return	Void
	*/
	public static function enable( ):Void;

	/**
	* Returns the currently set Blacklist configuration. Returned object is copied from the original one. In case you modify it, you have to set it by using the <code>setEventBlacklist</code> setter in order for it to take effect.
	* @return	Void
	*/
	public static function getEventsBlacklist( ):Void;

	/**
	* Sets a new Blacklist configuration.

BlackList configuration should have the following structure as in the example shown below.

In <code>global</code> object, we set all events that we don't want to track. In <code>controls</code> object, we can list different controls and include or exclude events for them.

For example, in this configuration the <code>load</code> event is exposed for the <code>sap.m.Image</code> control regardless of it being excluded globally for all other controls.

For <code>sap.m.Button</code> control, we don't want to track the <code>tap</code> event but we need to track the <code>afterRendering</code> event.

In the case where we write in the <code>controls</code> object a control without any excluded or included events, this control is NOT tracked at all.

In the example configuration events coming from control <code>sap.m.AccButton</code> are not be exposed.

<pre><code>
{
		global: ["modelContextChange", "beforeRendering", "afterRendering",
				"propertyChanged", "beforeGeometryChanged", "geometryChanged",
				"aggregationChanged", "componentCreated", "afterInit",
				"updateStarted", "updateFinished", "load", "scroll"
				],
		controls: {
			"sap.m.Image": {
				exclude: ["load"]
			},
			"sap.m.Button": {
				include: ["tap"],
				exclude: ["afterRendering"]
			},
			"sap.m.AccButton": {}
		}
	}
</pre></code> The set configuration object is copied from the given one.
	* @return	Void
	*/
	public static function setEventsBlacklist( ):Void;
}

