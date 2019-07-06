package sap.m;

@:native("sap.m.SelectionDetailsFacade")

/**
* The public facade of the {@link sap.m.SelectionDetails} control.
*/
extern class SelectionDetailsFacade
{
public function new():Void;

	/**
	* Adds some action to the aggregation {@link #getActions actions}.
	* @param	oAction The action to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public static function addAction( oAction:sap.ui.core.Item):sap.m.SelectionDetails;

	/**
	* Adds some actionGroup to the aggregation {@link #getActionGroups actionGroups}.
	* @param	oActionGroup The actionGroup to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public static function addActionGroup( oActionGroup:sap.ui.core.Item):sap.m.SelectionDetails;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:actionPress actionPress} event of this <code>sap.m.SelectionDetails</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SelectionDetails</code> itself.

Event is triggered when a custom action is pressed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SelectionDetails</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public static function attachActionPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SelectionDetails;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeClose beforeClose} event of this <code>sap.m.SelectionDetails</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SelectionDetails</code> itself.

Event is triggered before the popover is closed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SelectionDetails</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public static function attachBeforeClose( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SelectionDetails;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeOpen beforeOpen} event of this <code>sap.m.SelectionDetails</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SelectionDetails</code> itself.

Event is triggered before the popover is open.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SelectionDetails</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public static function attachBeforeOpen( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SelectionDetails;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:navigate navigate} event of this <code>sap.m.SelectionDetails</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SelectionDetails</code> itself.

Event is triggered after a list item of {@link sap.m.SelectionDetailsItem} is pressed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SelectionDetails</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public static function attachNavigate( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SelectionDetails;

	/**
	* Closes SelectionDetails if open.
	* @return	To ensure method chaining, return the SelectionDetails.
	*/
	public function close( ):sap.m.SelectionDetails;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:actionPress actionPress} event of this <code>sap.m.SelectionDetails</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public static function detachActionPress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SelectionDetails;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeClose beforeClose} event of this <code>sap.m.SelectionDetails</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public static function detachBeforeClose( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SelectionDetails;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeOpen beforeOpen} event of this <code>sap.m.SelectionDetails</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public static function detachBeforeOpen( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SelectionDetails;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:navigate navigate} event of this <code>sap.m.SelectionDetails</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public static function detachNavigate( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SelectionDetails;

	/**
	* Returns <code>true</code> if the labels of the {@link sap.m.SelectionDetailsItemLine} elements are wrapped, <code>false</code> otherwise.
	* @return	True if the labels of the {@link sap.m.SelectionDetailsItemLine} elements are wrapped, false otherwise.
	*/
	public function getWrapLabels( ):Bool;

	/**
	* Returns true if the SelectionDetails is enabled, otherwise false.
	* @return	True if the SelectionDetails contains items, otherwise false.
	*/
	public function isEnabled( ):Bool;

	/**
	* Returns true if the SelectionDetails is open, otherwise false.
	* @return	True if the SelectionDetails is open, otherwise false.
	*/
	public function isOpen( ):Bool;

	/**
	* Wraps the given content in {@link sap.m.Page page}, adds it to existing {@link sap.m.NavContainer NavContainer} and navigates to this newly created page. Has no effect if the SelectionDetails is closed. Lazily processes dependencies for the navigation event.
	* @param	title The title property of the {@link sap.m.Page page} control to which the navigation should occur.
	* @param	content The content of the control to which the navigation should occur.
	* @return	To ensure method chaining, return the SelectionDetails.
	*/
	public function navTo( title:String, content:sap.ui.core.Control):sap.m.SelectionDetails;
	@:overload( function(vAction:Int):sap.ui.core.Item{ })
	@:overload( function(vAction:String):sap.ui.core.Item{ })

	/**
	* Removes a action from the aggregation {@link #getActions actions}.
	* @param	vAction The action to remove or its index or id
	* @return	The removed action or <code>null</code>
	*/
	public static function removeAction( vAction:sap.ui.core.Item):sap.ui.core.Item;
	@:overload( function(vActionGroup:Int):sap.ui.core.Item{ })
	@:overload( function(vActionGroup:String):sap.ui.core.Item{ })

	/**
	* Removes a actionGroup from the aggregation {@link #getActionGroups actionGroups}.
	* @param	vActionGroup The actionGroup to remove or its index or id
	* @return	The removed actionGroup or <code>null</code>
	*/
	public static function removeActionGroup( vActionGroup:sap.ui.core.Item):sap.ui.core.Item;

	/**
	* Removes all the controls from the aggregation {@link #getActionGroups actionGroups}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public static function removeAllActionGroups( ):Array<sap.ui.core.Item>;

	/**
	* Removes all the controls from the aggregation {@link #getActions actions}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public static function removeAllActions( ):Array<sap.ui.core.Item>;

	/**
	* Enables line wrapping for the labels of the of the {@link sap.m.SelectionDetailsItemLine} elements.
	* @param	bWrap True to apply wrapping to the labels of the {@link sap.m.SelectionDetailsItemLine} elements.
	* @return	To ensure method chaining, returns SelectionDetails.
	*/
	public function setWrapLabels( bWrap:Bool):sap.m.SelectionDetails;
}

