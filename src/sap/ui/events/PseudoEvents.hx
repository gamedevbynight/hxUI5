package sap.ui.events;

@:native("module:sap/ui/events/PseudoEvents")
extern class PseudoEvents
{

	/**
	* Ordered array of the {@link module:sap/ui/events/PseudoEvents.events}.

Order is significant as some check methods rely on the fact that they are tested before other methods. The array is processed during event analysis (when classifying browser events as pseudo events).
	*/
	 public static var order:Dynamic;


}

