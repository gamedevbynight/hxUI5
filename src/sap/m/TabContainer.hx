package sap.m;

@:native("sap.m.TabContainer")

/**
* A container control for managing multiple tabs, allowing the user to open and edit different items simultaneously.

<h3>Overview</h3>

The control contains a <code>TabStrip</code> area where the user can choose which tab to view/edit. When the open tabs are more than what can be displayed on the screen, there is an overflow mechanism. To access the tabs hidden in the overflow area, the user has to either use the overflow button (left or right arrow) to scroll them horizontally or the overflow overview button (down arrow) and view all open items as a list.

Each tab has a title and a <i>Close Tab</i> button. The title is truncated, if it's longer than 25 characters. On desktop, the <i>Close Tab</i> button is displayed on the currently active tab and for the other tabs it appears on mouse hover. On mobile devices, the <i>Close Tab</i> buttons are always visible.

To show that the open items have unsaved changes, the corresponding tabs can display an asterisk (*) after the title as a visual indication that the item is not saved. This is managed by the app developer using {@link sap.m.TabContainerItem TabContainerItem}'s <code>modified</code> property.

<h3>Usage</h3>

The <code>TabContainer</code> can have an <i>Add New Tab</i> button, which appears as a '+' icon on the top-right area of the control. When the user clicks or taps this button, the <code>addNewButtonPress</code> event is fired.

<h3>Responsive behavior</h3>

The <code>TabContainer</code> is a full-page container that takes 100% of its parent width and height. As the control is expected to occupy the whole parent, it should be the only child of its parent.

When using the <code>sap.m.TabContainer</code> in SAP Quartz theme, the breakpoints and layout paddings could be determined by the container's width. To enable this concept and add responsive padding to the <code>TabContainer</code> control, you may add the following class: <code>sapUiResponsivePadding--header</code>.
*/
extern class TabContainer extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:TabContainerArgs):Void {})
	public function new(?mSettings:TabContainerArgs):Void;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.m.TabContainerItem):sap.m.TabContainer;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:addNewButtonPress addNewButtonPress} event of this <code>sap.m.TabContainer</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.TabContainer</code> itself.

Fired when the <i>Add New Tab</i> button is pressed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.TabContainer</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAddNewButtonPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.TabContainer;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:itemClose itemClose} event of this <code>sap.m.TabContainer</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.TabContainer</code> itself.

Fired when an item is closed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.TabContainer</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachItemClose( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.TabContainer;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:itemSelect itemSelect} event of this <code>sap.m.TabContainer</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.TabContainer</code> itself.

Fired when an item is pressed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.TabContainer</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachItemSelect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.TabContainer;

	/**
	* Binds aggregation {@link #getItems items} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindItems( oBindingInfo:Dynamic):sap.m.TabContainer;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.m.TabContainer;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:addNewButtonPress addNewButtonPress} event of this <code>sap.m.TabContainer</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAddNewButtonPress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.TabContainer;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:itemClose itemClose} event of this <code>sap.m.TabContainer</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachItemClose( fnFunction:()->Void, ?oListener:Dynamic):sap.m.TabContainer;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:itemSelect itemSelect} event of this <code>sap.m.TabContainer</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachItemSelect( fnFunction:()->Void, ?oListener:Dynamic):sap.m.TabContainer;

	/**
	* Creates a new subclass of class sap.m.TabContainer with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getBackgroundDesign backgroundDesign}.

Determines the background color of the content in <code>TabContainer</code>.

Default value is <code>List</code>.
	* @return	Value of property <code>backgroundDesign</code>
	*/
	public function getBackgroundDesign( ):sap.m.PageBackgroundDesign;

	/**
	* Gets content of aggregation {@link #getItems items}.

The items displayed in the <code>TabContainer</code>.
	* @return	null
	*/
	public function getItems( ):Array<sap.m.TabContainerItem>;

	/**
	* Returns a metadata object for class sap.m.TabContainer.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* ID of the element which is the current target of the association {@link #getSelectedItem selectedItem}, or <code>null</code>.
	* @return	null
	*/
	public function getSelectedItem( ):sap.ui.core.ID;

	/**
	* Gets current value of property {@link #getShowAddNewButton showAddNewButton}.

Defines whether an <i>Add New Tab</i> button is displayed in the <code>TabStrip</code>.

Default value is <code>false</code>.
	* @return	Value of property <code>showAddNewButton</code>
	*/
	public function getShowAddNewButton( ):Bool;

	/**
	* Checks for the provided <code>sap.m.TabContainerItem</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.m.TabContainerItem):Int;

	/**
	* Inserts a item into the aggregation {@link #getItems items}.
	* @param	oItem The item to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertItem( oItem:sap.m.TabContainerItem, iIndex:Int):sap.m.TabContainer;

	/**
	* Removes all the controls from the aggregation {@link #getItems items}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllItems( ):Array<sap.m.TabContainerItem>;
	@:overload( function(vItem:Int):sap.m.TabContainerItem{ })
	@:overload( function(vItem:String):sap.m.TabContainerItem{ })

	/**
	* Removes an item from the aggregation named <code>items</code>.
	* @param	vItem The item to remove or its index or ID
	* @return	The removed item or null
	*/
	public function removeItem( vItem:sap.m.TabContainerItem):sap.m.TabContainerItem;

	/**
	* Sets a new value for property {@link #getBackgroundDesign backgroundDesign}.

Determines the background color of the content in <code>TabContainer</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>List</code>.
	* @param	sBackgroundDesign New value for property <code>backgroundDesign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundDesign( ?sBackgroundDesign:sap.m.PageBackgroundDesign):sap.m.TabContainer;
	@:overload( function(oSelectedItem:sap.ui.core.ID):sap.m.TabContainer{ })

	/**
	* Sets the associated {@link #getSelectedItem selectedItem}.
	* @param	oSelectedItem ID of an element which becomes the new target of this selectedItem association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSelectedItem( oSelectedItem:sap.m.TabContainerItem):sap.m.TabContainer;

	/**
	* Sets a new value for property {@link #getShowAddNewButton showAddNewButton}.

Defines whether an <i>Add New Tab</i> button is displayed in the <code>TabStrip</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowAddNewButton New value for property <code>showAddNewButton</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowAddNewButton( ?bShowAddNewButton:Bool):sap.m.TabContainer;

	/**
	* Unbinds aggregation {@link #getItems items} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindItems( ):sap.m.TabContainer;
}

typedef TabContainerArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines whether an <i>Add New Tab</i> button is displayed in the <code>TabStrip</code>.
	*/
	@:optional var showAddNewButton:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the background color of the content in <code>TabContainer</code>.
	*/
	@:optional var backgroundDesign:haxe.extern.EitherType<String,sap.m.PageBackgroundDesign>;

    /**
    * The items displayed in the <code>TabContainer</code>.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.m.TabContainerItem>>;

    /**
    * The <i>Add New Tab</i> button displayed in the <code>TabStrip</code>.
    */
	@:optional var _addNewButton:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * Internal aggregation for managing the tab elements.
    */
	@:optional var _tabStrip:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* Sets or retrieves the selected item from the <code>items</code> aggregation.
	*/
	@:optional var selectedItem:haxe.extern.EitherType<String,sap.m.TabContainerItem>;

	/**
	* Fired when the <i>Add New Tab</i> button is pressed.
	*/
	@:optional var addNewButtonPress:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when an item is closed.
	*/
	@:optional var itemClose:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when an item is pressed.
	*/
	@:optional var itemSelect:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
