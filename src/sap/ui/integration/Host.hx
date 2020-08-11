package sap.ui.integration;

@:native("sap.ui.integration.Host")

/**
* Provides application-level functions and services to an integration card.

Examples may include, but are not limited to options like: share a card, remove a card.
*/
extern class Host extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:HostArgs):Void {})
	public function new(?mSettings:HostArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:action action} event of this <code>sap.ui.integration.Host</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.integration.Host</code> itself.

Fired when an action is triggered.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.integration.Host</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAction( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.integration.Host;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:action action} event of this <code>sap.ui.integration.Host</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAction( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.integration.Host;

	/**
	* Creates a new subclass of class sap.ui.integration.Host with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getActions actions}.

The actions configuration.
	* @return	Value of property <code>actions</code>
	*/
	public function getActions( ):Array<sap.ui.integration.CardMenuAction>;

	/**
	* Resolves the destination and returns its URL.
	* @param	sDestinationName The name of the destination. Most often the name which is used in the SAP Cloud Platform.
	* @return	A promise which resolves with the URL of the destination.
	*/
	public function getDestination( sDestinationName:String):js.lib.Promise<Host>;

	/**
	* Returns a metadata object for class sap.ui.integration.Host.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getResolveDestination resolveDestination}.

A function that resolves the given destination name to a URL.

The Card calls this function when it needs to send a request to a destination. Function returns the URL to which the request is sent.

If a card depends on a destination, but this callback is not implemented, an error will be logged.

The callback receives <code>destinationName</code> as parameter and returns a string with the URL. Or alternatively the callback may return a <code>Promise</code> with the URL as an argument.
	* @return	Value of property <code>resolveDestination</code>
	*/
	public function getResolveDestination( ):()->Void;

	/**
	* Sets a new value for property {@link #getActions actions}.

The actions configuration.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sActions New value for property <code>actions</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setActions( sActions:Array<sap.ui.integration.CardMenuAction>):sap.ui.integration.Host;

	/**
	* Sets a new value for property {@link #getResolveDestination resolveDestination}.

A function that resolves the given destination name to a URL.

The Card calls this function when it needs to send a request to a destination. Function returns the URL to which the request is sent.

If a card depends on a destination, but this callback is not implemented, an error will be logged.

The callback receives <code>destinationName</code> as parameter and returns a string with the URL. Or alternatively the callback may return a <code>Promise</code> with the URL as an argument.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	fnResolveDestination New value for property <code>resolveDestination</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setResolveDestination( fnResolveDestination:()->Void):sap.ui.integration.Host;
}

typedef HostArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* The actions configuration.
	*/
	@:optional var actions:Array<haxe.extern.EitherType<String,sap.ui.integration.CardMenuAction>>;

	/**
	* A function that resolves the given destination name to a URL.

The Card calls this function when it needs to send a request to a destination. Function returns the URL to which the request is sent.

If a card depends on a destination, but this callback is not implemented, an error will be logged.

The callback receives <code>destinationName</code> as parameter and returns a string with the URL. Or alternatively the callback may return a <code>Promise</code> with the URL as an argument.
	*/
	@:optional var resolveDestination:()->Void;

	/**
	* Fired when an action is triggered.
	*/
	@:optional var action:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
