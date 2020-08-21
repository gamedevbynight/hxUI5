package sap.m;

@:native("sap.m.NotificationListGroup")

/**
* The <code>NotificationListGroup</code> control is used for grouping {@link sap.m.NotificationListItem notification items} of the same type. <h4>Behavior</h4> The group handles specific behavior for different use cases: <ul> <li><code>autoPriority</code> - determines the group priority to the highest priority of an item in the group.</li> <li><code>enableCollapseButtonWhenEmpty</code> - determines if the collapse/expand button for an empty group is displayed.</li> <li><code>showEmptyGroup</code> - determines if the header/footer of an empty group is displayed.</li> </ul>
*/
extern class NotificationListGroup extends sap.m.NotificationListBase
{
	@:overload(function(?sId:String, ?mSettings:NotificationListGroupArgs):Void {})
	public function new(?mSettings:NotificationListGroupArgs):Void;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.m.NotificationListItem):sap.m.NotificationListGroup;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:onCollapse onCollapse} event of this <code>sap.m.NotificationListGroup</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.NotificationListGroup</code> itself.

<code>onCollapse</code> event is called when collapse property value is changed
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.NotificationListGroup</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachOnCollapse( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.NotificationListGroup;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.m.NotificationListGroup;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:onCollapse onCollapse} event of this <code>sap.m.NotificationListGroup</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachOnCollapse( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.NotificationListGroup;

	/**
	* Creates a new subclass of class sap.m.NotificationListGroup with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.NotificationListBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getAutoPriority autoPriority}.

Determines if the group will automatically set the priority based on the highest priority of its notifications or get its priority from the <code>priority</code> property.

Default value is <code>true</code>.
	* @return	Value of property <code>autoPriority</code>
	*/
	public function getAutoPriority( ):Bool;

	/**
	* Gets current value of property {@link #getCollapsed collapsed}.

Determines if the group is collapsed or expanded.

Default value is <code>false</code>.
	* @return	Value of property <code>collapsed</code>
	*/
	public function getCollapsed( ):Bool;

	/**
	* Gets current value of property {@link #getEnableCollapseButtonWhenEmpty enableCollapseButtonWhenEmpty}.

Determines if the collapse/expand button for an empty group is displayed.

Default value is <code>false</code>.
	* @return	Value of property <code>enableCollapseButtonWhenEmpty</code>
	*/
	public function getEnableCollapseButtonWhenEmpty( ):Bool;

	/**
	* Gets content of aggregation {@link #getItems items}.

The NotificationListItems inside the group.
	* @return	null
	*/
	public function getItems( ):Array<sap.m.NotificationListItem>;

	/**
	* Returns a metadata object for class sap.m.NotificationListGroup.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getShowEmptyGroup showEmptyGroup}.

Determines if the group header/footer of the empty group will be always shown. By default groups with 0 notifications are not shown.

Default value is <code>false</code>.
	* @return	Value of property <code>showEmptyGroup</code>
	*/
	public function getShowEmptyGroup( ):Bool;

	/**
	* Gets current value of property {@link #getShowItemsCounter showItemsCounter}.

Determines if the items counter inside the group header will be visible.

<b>Note:</b> Counter value represents the number of currently visible (loaded) items inside the group.

Default value is <code>true</code>.
	* @return	Value of property <code>showItemsCounter</code>
	*/
	public function getShowItemsCounter( ):Bool;

	/**
	* Checks for the provided <code>sap.m.NotificationListItem</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.m.NotificationListItem):Int;

	/**
	* Inserts a item into the aggregation {@link #getItems items}.
	* @param	oItem The item to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertItem( oItem:sap.m.NotificationListItem, iIndex:Int):sap.m.NotificationListGroup;

	/**
	* Removes all the controls from the aggregation {@link #getItems items}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllItems( ):Array<sap.m.NotificationListItem>;
	@:overload( function(vItem:Int):sap.m.NotificationListItem{ })
	@:overload( function(vItem:String):sap.m.NotificationListItem{ })

	/**
	* Removes a item from the aggregation {@link #getItems items}.
	* @param	vItem The item to remove or its index or id
	* @return	The removed item or <code>null</code>
	*/
	public function removeItem( vItem:sap.m.NotificationListItem):sap.m.NotificationListItem;

	/**
	* Sets a new value for property {@link #getAutoPriority autoPriority}.

Determines if the group will automatically set the priority based on the highest priority of its notifications or get its priority from the <code>priority</code> property.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bAutoPriority New value for property <code>autoPriority</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAutoPriority( ?bAutoPriority:Bool):sap.m.NotificationListGroup;

	/**
	* Sets a new value for property {@link #getCollapsed collapsed}.

Determines if the group is collapsed or expanded.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bCollapsed New value for property <code>collapsed</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCollapsed( ?bCollapsed:Bool):sap.m.NotificationListGroup;

	/**
	* Sets a new value for property {@link #getEnableCollapseButtonWhenEmpty enableCollapseButtonWhenEmpty}.

Determines if the collapse/expand button for an empty group is displayed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bEnableCollapseButtonWhenEmpty New value for property <code>enableCollapseButtonWhenEmpty</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableCollapseButtonWhenEmpty( ?bEnableCollapseButtonWhenEmpty:Bool):sap.m.NotificationListGroup;

	/**
	* Sets a new value for property {@link #getShowEmptyGroup showEmptyGroup}.

Determines if the group header/footer of the empty group will be always shown. By default groups with 0 notifications are not shown.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowEmptyGroup New value for property <code>showEmptyGroup</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowEmptyGroup( ?bShowEmptyGroup:Bool):sap.m.NotificationListGroup;

	/**
	* Sets a new value for property {@link #getShowItemsCounter showItemsCounter}.

Determines if the items counter inside the group header will be visible.

<b>Note:</b> Counter value represents the number of currently visible (loaded) items inside the group.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowItemsCounter New value for property <code>showItemsCounter</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowItemsCounter( ?bShowItemsCounter:Bool):sap.m.NotificationListGroup;
}

typedef NotificationListGroupArgs = sap.m.NotificationListBase.NotificationListBaseArgs & {

	/**
	* Determines if the group is collapsed or expanded.
	*/
	@:optional var collapsed:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines if the group will automatically set the priority based on the highest priority of its notifications or get its priority from the <code>priority</code> property.
	*/
	@:optional var autoPriority:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines if the group header/footer of the empty group will be always shown. By default groups with 0 notifications are not shown.
	*/
	@:optional var showEmptyGroup:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines if the collapse/expand button for an empty group is displayed.
	*/
	@:optional var enableCollapseButtonWhenEmpty:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines if the items counter inside the group header will be visible.

<b>Note:</b> Counter value represents the number of currently visible (loaded) items inside the group.
	*/
	@:optional var showItemsCounter:haxe.extern.EitherType<String,Bool>;

    /**
    * The NotificationListItems inside the group.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.m.NotificationListItem>>;

    /**
    * The collapse/expand button.
    */
	@:optional var _collapseButton:haxe.extern.EitherType<String,sap.m.Button>;

	/**
	* <code>onCollapse</code> event is called when collapse property value is changed
	*/
	@:optional var onCollapse:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
