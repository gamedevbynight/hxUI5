package sap.m;

@:native("sap.m.P13nGroupPanel")

/**
* The P13nGroupPanel control is used to define group-specific settings for table personalization.
*/
extern class P13nGroupPanel extends sap.m.P13nPanel
{
	@:overload(function(?sId:String, ?mSettings:P13nGroupPanelArgs):Void {})
	public function new(?mSettings:P13nGroupPanelArgs):Void;

	/**
	* Adds some groupItem to the aggregation {@link #getGroupItems groupItems}.
	* @param	oGroupItem The groupItem to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addGroupItem( oGroupItem:sap.m.P13nGroupItem):sap.m.P13nGroupPanel;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:addGroupItem addGroupItem} event of this <code>sap.m.P13nGroupPanel</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.P13nGroupPanel</code> itself.

Event raised if a <code>GroupItem</code> has been added.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.P13nGroupPanel</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAddGroupItem( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.P13nGroupPanel;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:removeGroupItem removeGroupItem} event of this <code>sap.m.P13nGroupPanel</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.P13nGroupPanel</code> itself.

Event raised if a <code>GroupItem</code> has been removed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.P13nGroupPanel</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachRemoveGroupItem( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.P13nGroupPanel;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:updateGroupItem updateGroupItem} event of this <code>sap.m.P13nGroupPanel</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.P13nGroupPanel</code> itself.

Event raised if a <code>GroupItem</code> has been updated.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.P13nGroupPanel</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachUpdateGroupItem( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.P13nGroupPanel;

	/**
	* Binds aggregation {@link #getGroupItems groupItems} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindGroupItems( oBindingInfo:Dynamic):sap.m.P13nGroupPanel;

	/**
	* Destroys all the groupItems in the aggregation {@link #getGroupItems groupItems}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyGroupItems( ):sap.m.P13nGroupPanel;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:addGroupItem addGroupItem} event of this <code>sap.m.P13nGroupPanel</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAddGroupItem( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.P13nGroupPanel;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:removeGroupItem removeGroupItem} event of this <code>sap.m.P13nGroupPanel</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachRemoveGroupItem( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.P13nGroupPanel;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:updateGroupItem updateGroupItem} event of this <code>sap.m.P13nGroupPanel</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachUpdateGroupItem( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.P13nGroupPanel;

	/**
	* Creates a new subclass of class sap.m.P13nGroupPanel with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.P13nPanel.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getContainerQuery containerQuery}.

Defines if <code>mediaQuery</code> or <code>ContainerResize</code> is used for a layout update. If <code>ConditionPanel</code> is used in a dialog, the property must be set to true.

Default value is <code>false</code>.
	* @return	Value of property <code>containerQuery</code>
	*/
	public function getContainerQuery( ):Bool;

	/**
	* Gets content of aggregation {@link #getGroupItems groupItems}.

Defined group items.
	* @return	null
	*/
	public function getGroupItems( ):Array<sap.m.P13nGroupItem>;

	/**
	* Gets current value of property {@link #getLayoutMode layoutMode}.

Can be used to control the layout behavior. Default is "" which will automatically change the layout. With "Desktop", "Table" or "Phone" you can set a fixed layout.
	* @return	Value of property <code>layoutMode</code>
	*/
	public function getLayoutMode( ):String;

	/**
	* Gets current value of property {@link #getMaxGroups maxGroups}.

Defines the maximum number of groups.

Default value is <code>'-1'</code>.
	* @return	Value of property <code>maxGroups</code>
	*/
	public function getMaxGroups( ):String;

	/**
	* Returns a metadata object for class sap.m.P13nGroupPanel.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Checks for the provided <code>sap.m.P13nGroupItem</code> in the aggregation {@link #getGroupItems groupItems}. and returns its index if found or -1 otherwise.
	* @param	oGroupItem The groupItem whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfGroupItem( oGroupItem:sap.m.P13nGroupItem):Int;

	/**
	* Inserts a groupItem into the aggregation {@link #getGroupItems groupItems}.
	* @param	oGroupItem The groupItem to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the groupItem should be inserted at; for a negative value of <code>iIndex</code>, the groupItem is inserted at position 0; for a value greater than the current size of the aggregation, the groupItem is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertGroupItem( oGroupItem:sap.m.P13nGroupItem, iIndex:Int):sap.m.P13nGroupPanel;

	/**
	* Removes all the controls from the aggregation {@link #getGroupItems groupItems}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllGroupItems( ):Array<sap.m.P13nGroupItem>;
	@:overload( function(vGroupItem:Int):sap.m.P13nGroupItem{ })
	@:overload( function(vGroupItem:String):sap.m.P13nGroupItem{ })

	/**
	* Removes a groupItem from the aggregation {@link #getGroupItems groupItems}.
	* @param	vGroupItem The groupItem to remove or its index or id
	* @return	The removed groupItem or <code>null</code>
	*/
	public function removeGroupItem( vGroupItem:sap.m.P13nGroupItem):sap.m.P13nGroupItem;

	/**
	* Removes all invalid group conditions.
	* @return	Void
	*/
	public function removeInvalidConditions( ):Void;

	/**
	* Removes all errors/warning states from of all group conditions.
	* @return	Void
	*/
	public function removeValidationErrors( ):Void;

	/**
	* Sets a new value for property {@link #getContainerQuery containerQuery}.

Defines if <code>mediaQuery</code> or <code>ContainerResize</code> is used for a layout update. If <code>ConditionPanel</code> is used in a dialog, the property must be set to true.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bContainerQuery New value for property <code>containerQuery</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContainerQuery( ?bContainerQuery:Bool):sap.m.P13nGroupPanel;

	/**
	* Sets a new value for property {@link #getLayoutMode layoutMode}.

Can be used to control the layout behavior. Default is "" which will automatically change the layout. With "Desktop", "Table" or "Phone" you can set a fixed layout.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sLayoutMode New value for property <code>layoutMode</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLayoutMode( ?sLayoutMode:String):sap.m.P13nGroupPanel;

	/**
	* Sets a new value for property {@link #getMaxGroups maxGroups}.

Defines the maximum number of groups.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>'-1'</code>.
	* @param	sMaxGroups New value for property <code>maxGroups</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxGroups( ?sMaxGroups:String):sap.m.P13nGroupPanel;

	/**
	* Setter for the supported operations array.
	* @param	aOperations array of operations <code>[sap.m.P13nConditionOperation.BT, sap.m.P13nConditionOperation.EQ]</code>
	* @return	Void
	*/
	public function setOperations( aOperations:Array<Dynamic>):Void;

	/**
	* Unbinds aggregation {@link #getGroupItems groupItems} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindGroupItems( ):sap.m.P13nGroupPanel;

	/**
	* Checks if the entered or modified conditions are correct, marks invalid fields yellow (Warning) and opens a popup message dialog to let the user know that some values are not correct or missing.
	* @return	<code>True</code> if all conditions are valid, <code>false</code> otherwise.
	*/
	public function validateConditions( ):Bool;
}

typedef P13nGroupPanelArgs = sap.m.P13nPanel.P13nPanelArgs & {

	/**
	* Defines the maximum number of groups.
	*/
	@:optional var maxGroups:String;

	/**
	* Defines if <code>mediaQuery</code> or <code>ContainerResize</code> is used for a layout update. If <code>ConditionPanel</code> is used in a dialog, the property must be set to true.
	*/
	@:optional var containerQuery:haxe.extern.EitherType<String,Bool>;

	/**
	* Can be used to control the layout behavior. Default is "" which will automatically change the layout. With "Desktop", "Table" or "Phone" you can set a fixed layout.
	*/
	@:optional var layoutMode:String;

    /**
    * Contains content for include and exclude panels.
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * Defined group items.
    */
	@:optional var groupItems:Array<haxe.extern.EitherType<String,sap.m.P13nGroupItem>>;

	/**
	* Event raised if a <code>GroupItem</code> has been added.
	*/
	@:optional var addGroupItem:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event raised if a <code>GroupItem</code> has been removed.
	*/
	@:optional var removeGroupItem:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event raised if a <code>GroupItem</code> has been updated.
	*/
	@:optional var updateGroupItem:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
