package sap.ui.commons;

@:native("sap.ui.commons.CalloutBase")

/**
* CalloutBase is a building block for Callout. Do not use it directly. Use the Callout control instead
*/
extern class CalloutBase extends sap.ui.core.TooltipBase
{
	@:overload(function(?sId:String, ?mSettings:CalloutBaseArgs):Void {})
	public function new(?mSettings:CalloutBaseArgs):Void;

	/**
	* Adjust position of the already opened Callout window. Call this method each time when the size of the opened Callout window may be changed due to new or changed contents.
	* @return	Void
	*/
	public function adjustPosition( ):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeOpen beforeOpen} event of this <code>sap.ui.commons.CalloutBase</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.CalloutBase</code> itself.

Event is fired before a Callout is displayed. Call the preventDefault method of the event object to postpone opening. Application may use this event to start asynchronous Ajax call to load the Callout content
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.CalloutBase</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforeOpen( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.CalloutBase;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:close close} event of this <code>sap.ui.commons.CalloutBase</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.CalloutBase</code> itself.

Event is fired when the Callout window is closed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.CalloutBase</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachClose( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.CalloutBase;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:open open} event of this <code>sap.ui.commons.CalloutBase</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.CalloutBase</code> itself.

The event is fired when the popup is opened.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.CalloutBase</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachOpen( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.CalloutBase;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:opened opened} event of this <code>sap.ui.commons.CalloutBase</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.CalloutBase</code> itself.

Is fired when the Callout has been opened
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.CalloutBase</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachOpened( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.CalloutBase;

	/**
	* Closes Callout
	* @return	Void
	*/
	public function close( ):Void;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeOpen beforeOpen} event of this <code>sap.ui.commons.CalloutBase</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforeOpen( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.CalloutBase;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:close close} event of this <code>sap.ui.commons.CalloutBase</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachClose( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.CalloutBase;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:open open} event of this <code>sap.ui.commons.CalloutBase</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachOpen( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.CalloutBase;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:opened opened} event of this <code>sap.ui.commons.CalloutBase</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachOpened( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.CalloutBase;

	/**
	* Creates a new subclass of class sap.ui.commons.CalloutBase with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.TooltipBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.commons.CalloutBase.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Set position of the Callout window relative to the parent control. This function automatically calculates and sets the correct offset, use it instead of <code>setMyPosition/setAtPosition</code>.
	* @param	myPosition docking position of the Callout
	* @param	atPosition docking position of the parent control
	* @return	<code>this</code> to allow method chaining
	*/
	public function setPosition( myPosition:sap.ui.core.Dock, atPosition:sap.ui.core.Dock):sap.ui.commons.CalloutBase;
}

typedef CalloutBaseArgs = sap.ui.core.TooltipBase.TooltipBaseArgs & {

	/**
	* Event is fired before a Callout is displayed. Call the preventDefault method of the event object to postpone opening. Application may use this event to start asynchronous Ajax call to load the Callout content
	*/
	@:optional var beforeOpen:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event is fired when the Callout window is closed.
	*/
	@:optional var close:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* The event is fired when the popup is opened.
	*/
	@:optional var open:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Is fired when the Callout has been opened
	*/
	@:optional var opened:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
