package sap.ui.integration;

@:native("sap.ui.integration.Extension")

/**
* Brings JavaScript capabilities for an {@link sap.ui.integration.widgets.Card} where custom logic can be implemented.
*/
extern class Extension extends sap.ui.base.ManagedObject
{
	@:overload(function(?sId:String, ?mSettings:ExtensionArgs):Void {})
	public function new(?mSettings:ExtensionArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:action action} event of this <code>sap.ui.integration.Extension</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.integration.Extension</code> itself.

Fired when an action is triggered in the card.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.integration.Extension</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAction( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.integration.Extension;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:action action} event of this <code>sap.ui.integration.Extension</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAction( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.integration.Extension;

	/**
	* Creates a new subclass of class sap.ui.integration.Extension with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.ManagedObject.extend}.
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
	* Returns an interface to the card, which uses this extension.
	* @return	An interface to the card.
	*/
	public function getCard( ):sap.ui.integration.widgets.CardFacade;

	/**
	* Gets current value of property {@link #getFormatters formatters}.

The formatters, which can be used in the manifest.
	* @return	Value of property <code>formatters</code>
	*/
	public function getFormatters( ):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.integration.Extension.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.ManagedObjectMetadata;

	/**
	* Sets a new value for property {@link #getActions actions}.

The actions configuration.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sActions New value for property <code>actions</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setActions( sActions:Array<sap.ui.integration.CardMenuAction>):sap.ui.integration.Extension;

	/**
	* Sets a new value for property {@link #getFormatters formatters}.

The formatters, which can be used in the manifest.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oFormatters New value for property <code>formatters</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFormatters( oFormatters:Dynamic):sap.ui.integration.Extension;
}

typedef ExtensionArgs = sap.ui.base.ManagedObject.ManagedObjectArgs & {

	/**
	* The actions configuration.
	*/
	@:optional var actions:Array<haxe.extern.EitherType<String,sap.ui.integration.CardMenuAction>>;

	/**
	* The formatters, which can be used in the manifest.
	*/
	@:optional var formatters:haxe.extern.EitherType<String,Dynamic>;

	/**
	* Fired when an action is triggered in the card.
	*/
	@:optional var action:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
