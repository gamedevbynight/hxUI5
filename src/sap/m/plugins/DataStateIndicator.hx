package sap.m.plugins;

@:native("sap.m.plugins.DataStateIndicator")

/**
* This plugin implements a message strip used to show binding-related messages.
*/
extern class DataStateIndicator extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:DataStateIndicatorArgs):Void {})
	public function new(?mSettings:DataStateIndicatorArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:dataStateChange dataStateChange} event of this <code>sap.m.plugins.DataStateIndicator</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.plugins.DataStateIndicator</code> itself.

This event is fired when the {@link sap.ui.model.DataState data state} of the plugin parent is changed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.plugins.DataStateIndicator</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachDataStateChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.plugins.DataStateIndicator;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:dataStateChange dataStateChange} event of this <code>sap.m.plugins.DataStateIndicator</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachDataStateChange( fnFunction:()->Void, ?oListener:Dynamic):sap.m.plugins.DataStateIndicator;

	/**
	* Creates a new subclass of class sap.m.plugins.DataStateIndicator with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getFilter filter}.

Defines a predicate to test each data state of the messages.

This callback gets called via the {@link sap.ui.model.DataState data state} parameter. Return <code>true</code> to keep the data state, <code>false</code> otherwise.
	* @return	Value of property <code>filter</code>
	*/
	public function getFilter( ):()->Void;

	/**
	* Returns a metadata object for class sap.m.plugins.DataStateIndicator.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Sets a new value for property {@link #getFilter filter}.

Defines a predicate to test each data state of the messages.

This callback gets called via the {@link sap.ui.model.DataState data state} parameter. Return <code>true</code> to keep the data state, <code>false</code> otherwise.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	fnFilter New value for property <code>filter</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFilter( fnFilter:()->Void):sap.m.plugins.DataStateIndicator;

	/**
	* Shows a message.
	* @param	sText The message text, if empty, the message is hidden
	* @param	sType The message type
	* @return	Void
	*/
	public function showMessage( ?sText:String, ?sType:sap.ui.core.ValueState):Void;
}

typedef DataStateIndicatorArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Defines a predicate to test each data state of the messages.

This callback gets called via the {@link sap.ui.model.DataState data state} parameter. Return <code>true</code> to keep the data state, <code>false</code> otherwise.
	*/
	@:optional var filter:()->Void;

	/**
	* This event is fired when the {@link sap.ui.model.DataState data state} of the plugin parent is changed.
	*/
	@:optional var dataStateChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
