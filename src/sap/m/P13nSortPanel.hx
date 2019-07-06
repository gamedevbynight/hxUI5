package sap.m;

@:native("sap.m.P13nSortPanel")

/**
* The P13nSortPanel control is used to define settings for sorting in table personalization.
*/
extern class P13nSortPanel extends sap.m.P13nPanel
{
	@:overload(function(?sId:String, ?mSettings:P13nSortPanelArgs):Void {})
	public function new(?mSettings:P13nSortPanelArgs):Void;

	/**
	* Adds some sortItem to the aggregation {@link #getSortItems sortItems}.
	* @param	oSortItem The sortItem to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addSortItem( oSortItem:sap.m.P13nSortItem):sap.m.P13nSortPanel;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:addSortItem addSortItem} event of this <code>sap.m.P13nSortPanel</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.P13nSortPanel</code> itself.

event raised when a SortItem was added
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.P13nSortPanel</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAddSortItem( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.P13nSortPanel;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:removeSortItem removeSortItem} event of this <code>sap.m.P13nSortPanel</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.P13nSortPanel</code> itself.

event raised when a SortItem was removed
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.P13nSortPanel</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachRemoveSortItem( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.P13nSortPanel;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:updateSortItem updateSortItem} event of this <code>sap.m.P13nSortPanel</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.P13nSortPanel</code> itself.

event raised when a SortItem was updated
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.P13nSortPanel</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachUpdateSortItem( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.P13nSortPanel;

	/**
	* Binds aggregation {@link #getSortItems sortItems} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindSortItems( oBindingInfo:Dynamic):sap.m.P13nSortPanel;

	/**
	* Destroys all the sortItems in the aggregation {@link #getSortItems sortItems}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySortItems( ):sap.m.P13nSortPanel;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:addSortItem addSortItem} event of this <code>sap.m.P13nSortPanel</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAddSortItem( fnFunction:()->Void, ?oListener:Dynamic):sap.m.P13nSortPanel;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:removeSortItem removeSortItem} event of this <code>sap.m.P13nSortPanel</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachRemoveSortItem( fnFunction:()->Void, ?oListener:Dynamic):sap.m.P13nSortPanel;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:updateSortItem updateSortItem} event of this <code>sap.m.P13nSortPanel</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachUpdateSortItem( fnFunction:()->Void, ?oListener:Dynamic):sap.m.P13nSortPanel;

	/**
	* Creates a new subclass of class sap.m.P13nSortPanel with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.P13nPanel.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getContainerQuery containerQuery}.

defines if the mediaQuery or a ContainerResize will be used for layout update. When the ConditionPanel is used on a dialog the property should be set to true!

Default value is <code>false</code>.
	* @return	Value of property <code>containerQuery</code>
	*/
	public function getContainerQuery( ):Bool;

	/**
	* Gets current value of property {@link #getLayoutMode layoutMode}.

can be used to control the layout behavior. Default is "" which will automatically change the layout. With "Desktop", "Table" or "Phone" you can set a fixed layout.
	* @return	Value of property <code>layoutMode</code>
	*/
	public function getLayoutMode( ):String;

	/**
	* Returns a metadata object for class sap.m.P13nSortPanel.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets content of aggregation {@link #getSortItems sortItems}.

defined Sort Items
	* @return	null
	*/
	public function getSortItems( ):Array<sap.m.P13nSortItem>;

	/**
	* Checks for the provided <code>sap.m.P13nSortItem</code> in the aggregation {@link #getSortItems sortItems}. and returns its index if found or -1 otherwise.
	* @param	oSortItem The sortItem whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfSortItem( oSortItem:sap.m.P13nSortItem):Int;

	/**
	* Inserts a sortItem into the aggregation {@link #getSortItems sortItems}.
	* @param	oSortItem The sortItem to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the sortItem should be inserted at; for a negative value of <code>iIndex</code>, the sortItem is inserted at position 0; for a value greater than the current size of the aggregation, the sortItem is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertSortItem( oSortItem:sap.m.P13nSortItem, iIndex:Int):sap.m.P13nSortPanel;

	/**
	* Removes all the controls from the aggregation {@link #getSortItems sortItems}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllSortItems( ):Array<sap.m.P13nSortItem>;

	/**
	* removes all invalid sort conditions.
	* @return	Void
	*/
	public function removeInvalidConditions( ):Void;
	@:overload( function(vSortItem:Int):sap.m.P13nSortItem{ })
	@:overload( function(vSortItem:String):sap.m.P13nSortItem{ })

	/**
	* Removes a sortItem from the aggregation {@link #getSortItems sortItems}.
	* @param	vSortItem The sortItem to remove or its index or id
	* @return	The removed sortItem or <code>null</code>
	*/
	public function removeSortItem( vSortItem:sap.m.P13nSortItem):sap.m.P13nSortItem;

	/**
	* removes all errors/warning states from of all sort conditions.
	* @return	Void
	*/
	public function removeValidationErrors( ):Void;

	/**
	* Sets a new value for property {@link #getContainerQuery containerQuery}.

defines if the mediaQuery or a ContainerResize will be used for layout update. When the ConditionPanel is used on a dialog the property should be set to true!

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bContainerQuery New value for property <code>containerQuery</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContainerQuery( bContainerQuery:Bool):sap.m.P13nSortPanel;

	/**
	* Sets a new value for property {@link #getLayoutMode layoutMode}.

can be used to control the layout behavior. Default is "" which will automatically change the layout. With "Desktop", "Table" or "Phone" you can set a fixed layout.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sLayoutMode New value for property <code>layoutMode</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLayoutMode( sLayoutMode:String):sap.m.P13nSortPanel;

	/**
	* setter for the supported operations array
	* @param	aOperations array of operations <code>[sap.m.P13nConditionOperation.BT, sap.m.P13nConditionOperation.EQ]</code>
	* @return	this for chaining
	*/
	public function setOperations( aOperations:Array<Dynamic>):sap.m.P13nSortPanel;

	/**
	* Unbinds aggregation {@link #getSortItems sortItems} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindSortItems( ):sap.m.P13nSortPanel;

	/**
	* check if the entered/modified conditions are correct, marks invalid fields yellow (Warning state) and opens a popup message dialog to give the user the feedback that some values are wrong or missing.
	* @return	<code>True</code> if all conditions are valid, <code>false</code> otherwise.
	*/
	public function validateConditions( ):Bool;
}

typedef P13nSortPanelArgs = sap.m.P13nPanel.P13nPanelArgs & {

	/**
	* defines if the mediaQuery or a ContainerResize will be used for layout update. When the ConditionPanel is used on a dialog the property should be set to true!
	*/
	@:optional var containerQuery:haxe.extern.EitherType<String,Bool>;

	/**
	* can be used to control the layout behavior. Default is "" which will automatically change the layout. With "Desktop", "Table" or "Phone" you can set a fixed layout.
	*/
	@:optional var layoutMode:String;

    /**
    * content for include and exclude panels
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * defined Sort Items
    */
	@:optional var sortItems:Array<haxe.extern.EitherType<String,sap.m.P13nSortItem>>;

	/**
	* event raised when a SortItem was added
	*/
	@:optional var addSortItem:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* event raised when a SortItem was removed
	*/
	@:optional var removeSortItem:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* event raised when a SortItem was updated
	*/
	@:optional var updateSortItem:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
