package sap.tnt;

@:native("sap.tnt.NavigationList")

/**
* The NavigationList control is an interactive control, which provides a choice of different items, ordered as a list.
*/
extern class NavigationList extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:NavigationListArgs):Void {})
	public function new(?mSettings:NavigationListArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.tnt.NavigationList{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.tnt.NavigationList;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.tnt.NavigationList{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.tnt.NavigationList;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.tnt.NavigationListItem):sap.tnt.NavigationList;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:itemSelect itemSelect} event of this <code>sap.tnt.NavigationList</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.tnt.NavigationList</code> itself.

Fired when an item is selected.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.tnt.NavigationList</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachItemSelect( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.tnt.NavigationList;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.tnt.NavigationList;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:itemSelect itemSelect} event of this <code>sap.tnt.NavigationList</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachItemSelect( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.tnt.NavigationList;

	/**
	* Creates a new subclass of class sap.tnt.NavigationList with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @return	null
	*/
	public function getAriaDescribedBy( ):Array<sap.ui.core.ID>;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets current value of property {@link #getExpanded expanded}.

Specifies if the control is in expanded or collapsed mode.

Default value is <code>true</code>.
	* @return	Value of property <code>expanded</code>
	*/
	public function getExpanded( ):Bool;

	/**
	* Gets content of aggregation {@link #getItems items}.

The items displayed in the list.
	* @return	null
	*/
	public function getItems( ):Array<sap.tnt.NavigationListItem>;

	/**
	* Returns a metadata object for class sap.tnt.NavigationList.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets the currently selected <code>NavigationListItem</code>.
	* @return	The selected item or null if nothing is selected
	*/
	public function getSelectedItem( ):Dynamic;

	/**
	* Gets current value of property {@link #getSelectedKey selectedKey}.

Specifies the currently selected key.
	* @return	Value of property <code>selectedKey</code>
	*/
	public function getSelectedKey( ):String;

	/**
	* Gets current value of property {@link #getWidth width}.

Specifies the width of the control.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.tnt.NavigationListItem</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.tnt.NavigationListItem):Int;

	/**
	* Inserts a item into the aggregation {@link #getItems items}.
	* @param	oItem The item to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertItem( oItem:sap.tnt.NavigationListItem, iIndex:Int):sap.tnt.NavigationList;

	/**
	* Removes all the controls in the association named {@link #getAriaDescribedBy ariaDescribedBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaDescribedBy( ):Array<sap.ui.core.ID>;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Removes all the controls from the aggregation {@link #getItems items}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllItems( ):Array<sap.tnt.NavigationListItem>;
	@:overload( function(vAriaDescribedBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaDescribedBy from the association named {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to be removed or its index or ID
	* @return	The removed ariaDescribedBy or <code>null</code>
	*/
	public function removeAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.ui.core.ID;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;
	@:overload( function(vItem:Int):sap.tnt.NavigationListItem{ })
	@:overload( function(vItem:String):sap.tnt.NavigationListItem{ })

	/**
	* Removes a item from the aggregation {@link #getItems items}.
	* @param	vItem The item to remove or its index or id
	* @return	The removed item or <code>null</code>
	*/
	public function removeItem( vItem:sap.tnt.NavigationListItem):sap.tnt.NavigationListItem;

	/**
	* Sets a new value for property {@link #getExpanded expanded}.

Specifies if the control is in expanded or collapsed mode.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bExpanded New value for property <code>expanded</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setExpanded( ?bExpanded:Bool):sap.tnt.NavigationList;
	@:overload( function(selectedItem:String):Dynamic{ })

	/**
	* Sets the association for selectedItem. Set <code>null</code> to deselect.
	* @param	selectedItem The control to be set as selected
	* @return	The <code>selectedItem</code> association
	*/
	public function setSelectedItem( selectedItem:sap.tnt.NavigationListItem):Dynamic;

	/**
	* Sets the selected item based on a key.
	* @param	selectedKey The key of the item to be selected
	* @return	this pointer for chaining
	*/
	public function setSelectedKey( selectedKey:String):sap.tnt.NavigationList;

	/**
	* Sets a new value for property {@link #getWidth width}.

Specifies the width of the control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.tnt.NavigationList;
}

typedef NavigationListArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Specifies the width of the control.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Specifies if the control is in expanded or collapsed mode.
	*/
	@:optional var expanded:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies the currently selected key.
	*/
	@:optional var selectedKey:String;

    /**
    * The items displayed in the list.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.tnt.NavigationListItem>>;

	/**
	* Association to controls / IDs, which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / IDs, which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* The currently selected <code>NavigationListItem</code>.
	*/
	@:optional var selectedItem:haxe.extern.EitherType<String,sap.tnt.NavigationListItem>;

	/**
	* Fired when an item is selected.
	*/
	@:optional var itemSelect:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
