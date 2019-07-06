package sap.ui.core;

@:native("sap.ui.core.ResizeHandler")
extern class ResizeHandler
{

	/**
	* Deregisters a previously registered handler for resize events with the given registration ID.
	* @param	sId The registration ID of the handler to deregister. The ID was provided by function {@link sap.ui.core.ResizeHandler.register} when the handler was registered.
	* @return	Void
	*/
	public static function deregister( sId:String):Void;

	/**
	* Creates a new subclass of class sap.ui.core.ResizeHandler with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.core.ResizeHandler.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
	@:overload( function(oRef:js.html.Element, fHandler:()->Void):String{ })

	/**
	* Registers the given event handler for resize events on the given DOM element or control.

<b>Note:</b> This function must not be used before the UI5 framework is initialized. Please use the {@link sap.ui.core.Core#attachInit init event} of UI5 if you are not sure whether this is the case.

The resize handler periodically checks the dimensions of the registered reference. Whenever it detects changes, an event is fired. Be careful when changing dimensions within the event handler which might cause another resize event and so on.

The available parameters of the resize event are: <ul> <li><code>oEvent.target</code>: The DOM element of which the dimensions were checked</li> <li><code>oEvent.size.width</code>: The current width of the DOM element in pixels</li> <li><code>oEvent.size.height</code>: The current height of the DOM element in pixels</li> <li><code>oEvent.oldSize.width</code>: The previous width of the DOM element in pixels</li> <li><code>oEvent.oldSize.height</code>: The previous height of the DOM element in pixels</li> <li><code>oEvent.control</code>: The control which was given during registration of the event handler (if present)</li> </ul>
	* @param	oRef The control or the DOM reference for which the given event handler should be registered (beside the window)
	* @param	fHandler The event handler which should be called whenever the size of the given reference is changed. The event object is passed as first argument to the event handler. See the description of this function for more details about the available parameters of this event.
	* @return	A registration ID which can be used for deregistering the event handler, see {@link sap.ui.core.ResizeHandler.deregister}. If the UI5 framework is not yet initialized <code>null</code> is returned.
	*/
	public static function register( oRef:sap.ui.core.Control, fHandler:()->Void):String;
}

