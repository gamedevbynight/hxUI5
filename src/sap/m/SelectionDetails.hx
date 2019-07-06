package sap.m;

@:native("sap.m.SelectionDetails")

/**
* The protected control provides a popover that displays the details of the items selected in the chart. This control should only be used in the toolbars of sap.suite.ui.commons.ChartContainer and sap.ui.comp.smartchart.SmartChart controls. Initially, the control is rendered as a button that opens the popup after clicking on it. <b><i>Note:</i></b>It is protected and should only be used within the framework itself.
*/
extern class SelectionDetails extends sap.ui.core.Control
{

	/**
	* Adds some action to the aggregation {@link #getActions actions}.
	* @param	oAction The action to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAction( oAction:sap.ui.core.Item):sap.m.SelectionDetails;

	/**
	* Adds some actionGroup to the aggregation {@link #getActionGroups actionGroups}.
	* @param	oActionGroup The actionGroup to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addActionGroup( oActionGroup:sap.ui.core.Item):sap.m.SelectionDetails;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.m.SelectionDetailsItem):sap.m.SelectionDetails;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:actionPress actionPress} event of this <code>sap.m.SelectionDetails</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SelectionDetails</code> itself.

Event is triggered when a custom action is pressed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SelectionDetails</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachActionPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SelectionDetails;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeClose beforeClose} event of this <code>sap.m.SelectionDetails</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SelectionDetails</code> itself.

Event is triggered before the popover is closed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SelectionDetails</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforeClose( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SelectionDetails;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeOpen beforeOpen} event of this <code>sap.m.SelectionDetails</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SelectionDetails</code> itself.

Event is triggered before the popover is open.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SelectionDetails</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforeOpen( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SelectionDetails;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:navigate navigate} event of this <code>sap.m.SelectionDetails</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SelectionDetails</code> itself.

Event is triggered after a list item of {@link sap.m.SelectionDetailsItem} is pressed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SelectionDetails</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachNavigate( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SelectionDetails;

	/**
	* Binds aggregation {@link #getItems items} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindItems( oBindingInfo:Dynamic):sap.m.SelectionDetails;

	/**
	* Destroys all the actionGroups in the aggregation {@link #getActionGroups actionGroups}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyActionGroups( ):sap.m.SelectionDetails;

	/**
	* Destroys all the actions in the aggregation {@link #getActions actions}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyActions( ):sap.m.SelectionDetails;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.m.SelectionDetails;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:actionPress actionPress} event of this <code>sap.m.SelectionDetails</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachActionPress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SelectionDetails;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeClose beforeClose} event of this <code>sap.m.SelectionDetails</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforeClose( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SelectionDetails;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeOpen beforeOpen} event of this <code>sap.m.SelectionDetails</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforeOpen( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SelectionDetails;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:navigate navigate} event of this <code>sap.m.SelectionDetails</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachNavigate( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SelectionDetails;

	/**
	* Creates a new subclass of class sap.m.SelectionDetails with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getActionGroups actionGroups}.

Contains actions that are rendered as a dedicated {@link sap.m.StandardListItem item}. In case an action group is pressed, a navigation should be triggered via <code>navTo</code> method. A maximum of 5 actionGroups is displayed inside the popover, though more can be added to the aggregation.
	* @return	null
	*/
	public function getActionGroups( ):Array<sap.ui.core.Item>;

	/**
	* Gets content of aggregation {@link #getActions actions}.

Contains custom actions shown in the responsive toolbar below items on the first page.
	* @return	null
	*/
	public function getActions( ):Array<sap.ui.core.Item>;

	/**
	* Gets content of aggregation {@link #getItems items}.

Contains {@link sap.m.SelectionDetailsItem items} that are displayed on the first page.
	* @return	null
	*/
	public function getItems( ):Array<sap.m.SelectionDetailsItem>;

	/**
	* Returns a metadata object for class sap.m.SelectionDetails.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Checks for the provided <code>sap.ui.core.Item</code> in the aggregation {@link #getActions actions}. and returns its index if found or -1 otherwise.
	* @param	oAction The action whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfAction( oAction:sap.ui.core.Item):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Item</code> in the aggregation {@link #getActionGroups actionGroups}. and returns its index if found or -1 otherwise.
	* @param	oActionGroup The actionGroup whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfActionGroup( oActionGroup:sap.ui.core.Item):Int;

	/**
	* Checks for the provided <code>sap.m.SelectionDetailsItem</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.m.SelectionDetailsItem):Int;

	/**
	* Inserts a action into the aggregation {@link #getActions actions}.
	* @param	oAction The action to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the action should be inserted at; for a negative value of <code>iIndex</code>, the action is inserted at position 0; for a value greater than the current size of the aggregation, the action is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertAction( oAction:sap.ui.core.Item, iIndex:Int):sap.m.SelectionDetails;

	/**
	* Inserts a actionGroup into the aggregation {@link #getActionGroups actionGroups}.
	* @param	oActionGroup The actionGroup to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the actionGroup should be inserted at; for a negative value of <code>iIndex</code>, the actionGroup is inserted at position 0; for a value greater than the current size of the aggregation, the actionGroup is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertActionGroup( oActionGroup:sap.ui.core.Item, iIndex:Int):sap.m.SelectionDetails;

	/**
	* Inserts a item into the aggregation {@link #getItems items}.
	* @param	oItem The item to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertItem( oItem:sap.m.SelectionDetailsItem, iIndex:Int):sap.m.SelectionDetails;
	@:overload( function(vAction:Int):sap.ui.core.Item{ })
	@:overload( function(vAction:String):sap.ui.core.Item{ })

	/**
	* Removes a action from the aggregation {@link #getActions actions}.
	* @param	vAction The action to remove or its index or id
	* @return	The removed action or <code>null</code>
	*/
	public function removeAction( vAction:sap.ui.core.Item):sap.ui.core.Item;
	@:overload( function(vActionGroup:Int):sap.ui.core.Item{ })
	@:overload( function(vActionGroup:String):sap.ui.core.Item{ })

	/**
	* Removes a actionGroup from the aggregation {@link #getActionGroups actionGroups}.
	* @param	vActionGroup The actionGroup to remove or its index or id
	* @return	The removed actionGroup or <code>null</code>
	*/
	public function removeActionGroup( vActionGroup:sap.ui.core.Item):sap.ui.core.Item;

	/**
	* Removes all the controls from the aggregation {@link #getActionGroups actionGroups}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllActionGroups( ):Array<sap.ui.core.Item>;

	/**
	* Removes all the controls from the aggregation {@link #getActions actions}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllActions( ):Array<sap.ui.core.Item>;

	/**
	* Removes all the controls from the aggregation {@link #getItems items}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllItems( ):Array<sap.m.SelectionDetailsItem>;
	@:overload( function(vItem:Int):sap.m.SelectionDetailsItem{ })
	@:overload( function(vItem:String):sap.m.SelectionDetailsItem{ })

	/**
	* Removes a item from the aggregation {@link #getItems items}.
	* @param	vItem The item to remove or its index or id
	* @return	The removed item or <code>null</code>
	*/
	public function removeItem( vItem:sap.m.SelectionDetailsItem):sap.m.SelectionDetailsItem;

	/**
	* Unbinds aggregation {@link #getItems items} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindItems( ):sap.m.SelectionDetails;
}

typedef SelectionDetailsArgs = sap.ui.core.Control.ControlArgs & {

    /**
    * Contains {@link sap.m.SelectionDetailsItem items} that are displayed on the first page.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.m.SelectionDetailsItem>>;

    /**
    * Contains custom actions shown in the responsive toolbar below items on the first page.
    */
	@:optional var actions:Array<haxe.extern.EitherType<String,sap.ui.core.Item>>;

    /**
    * Contains actions that are rendered as a dedicated {@link sap.m.StandardListItem item}. In case an action group is pressed, a navigation should be triggered via <code>navTo</code> method. A maximum of 5 actionGroups is displayed inside the popover, though more can be added to the aggregation.
    */
	@:optional var actionGroups:Array<haxe.extern.EitherType<String,sap.ui.core.Item>>;

    /**
    * Hidden aggregation that contains the popover.
    */
	@:optional var _popover:haxe.extern.EitherType<String,sap.m.ResponsivePopover>;

    /**
    * Hidden aggregation that contains the button.
    */
	@:optional var _button:haxe.extern.EitherType<String,sap.m.Button>;

	/**
	* Event is triggered when a custom action is pressed.
	*/
	@:optional var actionPress:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event is triggered before the popover is closed.
	*/
	@:optional var beforeClose:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event is triggered before the popover is open.
	*/
	@:optional var beforeOpen:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event is triggered after a list item of {@link sap.m.SelectionDetailsItem} is pressed.
	*/
	@:optional var navigate:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
