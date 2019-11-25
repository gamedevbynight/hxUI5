package sap.m;

@:native("sap.m.P13nFilterPanel")

/**
* The P13nFilterPanel control is used to define filter-specific settings for table personalization.
*/
extern class P13nFilterPanel extends sap.m.P13nPanel
{
	@:overload(function(?sId:String, ?mSettings:P13nFilterPanelArgs):Void {})
	public function new(?mSettings:P13nFilterPanelArgs):Void;

	/**
	* Adds some filterItem to the aggregation {@link #getFilterItems filterItems}.
	* @param	oFilterItem The filterItem to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addFilterItem( oFilterItem:sap.m.P13nFilterItem):sap.m.P13nFilterPanel;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:addFilterItem addFilterItem} event of this <code>sap.m.P13nFilterPanel</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.P13nFilterPanel</code> itself.

Event raised if a filter item has been added.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.P13nFilterPanel</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAddFilterItem( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.P13nFilterPanel;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:filterItemChanged filterItemChanged} event of this <code>sap.m.P13nFilterPanel</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.P13nFilterPanel</code> itself.

Event raised if a filter item has been changed. reason can be added, updated or removed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.P13nFilterPanel</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachFilterItemChanged( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.P13nFilterPanel;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:removeFilterItem removeFilterItem} event of this <code>sap.m.P13nFilterPanel</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.P13nFilterPanel</code> itself.

Event raised if a filter item has been removed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.P13nFilterPanel</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachRemoveFilterItem( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.P13nFilterPanel;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:updateFilterItem updateFilterItem} event of this <code>sap.m.P13nFilterPanel</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.P13nFilterPanel</code> itself.

Event raised if a filter item has been updated.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.P13nFilterPanel</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachUpdateFilterItem( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.P13nFilterPanel;

	/**
	* Binds aggregation {@link #getFilterItems filterItems} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindFilterItems( oBindingInfo:Dynamic):sap.m.P13nFilterPanel;

	/**
	* Destroys all the filterItems in the aggregation {@link #getFilterItems filterItems}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyFilterItems( ):sap.m.P13nFilterPanel;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:addFilterItem addFilterItem} event of this <code>sap.m.P13nFilterPanel</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAddFilterItem( fnFunction:()->Void, ?oListener:Dynamic):sap.m.P13nFilterPanel;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:filterItemChanged filterItemChanged} event of this <code>sap.m.P13nFilterPanel</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachFilterItemChanged( fnFunction:()->Void, ?oListener:Dynamic):sap.m.P13nFilterPanel;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:removeFilterItem removeFilterItem} event of this <code>sap.m.P13nFilterPanel</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachRemoveFilterItem( fnFunction:()->Void, ?oListener:Dynamic):sap.m.P13nFilterPanel;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:updateFilterItem updateFilterItem} event of this <code>sap.m.P13nFilterPanel</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachUpdateFilterItem( fnFunction:()->Void, ?oListener:Dynamic):sap.m.P13nFilterPanel;

	/**
	* Creates a new subclass of class sap.m.P13nFilterPanel with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.P13nPanel.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns the array of conditions.
	* @return	Void
	*/
	public function getConditions( ):Void;

	/**
	* Gets current value of property {@link #getContainerQuery containerQuery}.

Defines if the <code>mediaQuery</code> or a <code>ContainerResize</code> is used for layout update. If the <code>ConditionPanel</code> is used in a dialog, the property must be set to <code>true</code>.

Default value is <code>false</code>.
	* @return	Value of property <code>containerQuery</code>
	*/
	public function getContainerQuery( ):Bool;

	/**
	* Gets current value of property {@link #getEnableEmptyOperations enableEmptyOperations}.

Should empty operation be enabled for certain data types. This is also based on their nullable setting.

Default value is <code>false</code>.
	* @return	Value of property <code>enableEmptyOperations</code>
	*/
	public function getEnableEmptyOperations( ):Bool;

	/**
	* Getter for the exclude operations.
	* @param	sType the type for which the operations are defined
	* @return	array of operations [<code>sap.m.P13nConditionOperation.BT</code>, <code>sap.m.P13nConditionOperation.EQ</code>]
	*/
	public function getExcludeOperations( sType:String):Array<sap.m.P13nConditionOperation>;

	/**
	* Gets content of aggregation {@link #getFilterItems filterItems}.

Defines filter items.
	* @return	null
	*/
	public function getFilterItems( ):Array<sap.m.P13nFilterItem>;

	/**
	* Getter for the include operations.
	* @param	sType for which the operations are defined
	* @return	array of operations [<code>sap.m.P13nConditionOperation.BT</code>, <code>sap.m.P13nConditionOperation.EQ</code>]
	*/
	public function getIncludeOperations( sType:String):sap.m.P13nConditionOperation;

	/**
	* Gets current value of property {@link #getLayoutMode layoutMode}.

Can be used to control the layout behavior. Default is "" which will automatically change the layout. With "Desktop", "Table" or"Phone" you can set a fixed layout.
	* @return	Value of property <code>layoutMode</code>
	*/
	public function getLayoutMode( ):String;

	/**
	* Gets current value of property {@link #getMaxExcludes maxExcludes}.

Defines the maximum number of exclude filters.

Default value is <code>-1</code>.
	* @return	Value of property <code>maxExcludes</code>
	*/
	public function getMaxExcludes( ):String;

	/**
	* Gets current value of property {@link #getMaxIncludes maxIncludes}.

Defines the maximum number of include filters.

Default value is <code>-1</code>.
	* @return	Value of property <code>maxIncludes</code>
	*/
	public function getMaxIncludes( ):String;

	/**
	* Returns a metadata object for class sap.m.P13nFilterPanel.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Checks for the provided <code>sap.m.P13nFilterItem</code> in the aggregation {@link #getFilterItems filterItems}. and returns its index if found or -1 otherwise.
	* @param	oFilterItem The filterItem whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfFilterItem( oFilterItem:sap.m.P13nFilterItem):Int;

	/**
	* Inserts a filterItem into the aggregation {@link #getFilterItems filterItems}.
	* @param	oFilterItem The filterItem to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the filterItem should be inserted at; for a negative value of <code>iIndex</code>, the filterItem is inserted at position 0; for a value greater than the current size of the aggregation, the filterItem is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertFilterItem( oFilterItem:sap.m.P13nFilterItem, iIndex:Int):sap.m.P13nFilterPanel;

	/**
	* Removes all the controls from the aggregation {@link #getFilterItems filterItems}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllFilterItems( ):Array<sap.m.P13nFilterItem>;
	@:overload( function(vFilterItem:Int):sap.m.P13nFilterItem{ })
	@:overload( function(vFilterItem:String):sap.m.P13nFilterItem{ })

	/**
	* Removes a filterItem from the aggregation {@link #getFilterItems filterItems}.
	* @param	vFilterItem The filterItem to remove or its index or id
	* @return	The removed filterItem or <code>null</code>
	*/
	public function removeFilterItem( vFilterItem:sap.m.P13nFilterItem):sap.m.P13nFilterItem;

	/**
	* Removes all invalid conditions.
	* @return	Void
	*/
	public function removeInvalidConditions( ):Void;

	/**
	* Removes all errors and warnings states from of all filter conditions.
	* @return	Void
	*/
	public function removeValidationErrors( ):Void;

	/**
	* Sets the array of conditions.
	* @param	aConditions the complete list of conditions
	* @return	this for chaining
	*/
	public function setConditions( aConditions:Array<Dynamic>):sap.m.P13nFilterPanel;

	/**
	* Sets a new value for property {@link #getContainerQuery containerQuery}.

Defines if the <code>mediaQuery</code> or a <code>ContainerResize</code> is used for layout update. If the <code>ConditionPanel</code> is used in a dialog, the property must be set to <code>true</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bContainerQuery New value for property <code>containerQuery</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContainerQuery( bContainerQuery:Bool):sap.m.P13nFilterPanel;

	/**
	* Sets a new value for property {@link #getEnableEmptyOperations enableEmptyOperations}.

Should empty operation be enabled for certain data types. This is also based on their nullable setting.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bEnableEmptyOperations New value for property <code>enableEmptyOperations</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableEmptyOperations( bEnableEmptyOperations:Bool):sap.m.P13nFilterPanel;

	/**
	* Setter for the supported exclude operations array.
	* @param	aOperation array of operations [<code>sap.m.P13nConditionOperation.BT</code>, <code>sap.m.P13nConditionOperation.EQ</code>]
	* @param	sType the type for which the operations are defined
	* @return	Void
	*/
	public function setExcludeOperations( aOperation:Array<sap.m.P13nConditionOperation>, sType:String):Void;

	/**
	* Setter for the supported Include operations array.
	* @param	aOperation array of operations [<code>sap.m.P13nConditionOperation.BT</code>, <code>sap.m.P13nConditionOperation.EQ</code>]
	* @param	sType the type for which the operations are defined
	* @return	Void
	*/
	public function setIncludeOperations( aOperation:Array<sap.m.P13nConditionOperation>, sType:String):Void;

	/**
	* Sets a new value for property {@link #getLayoutMode layoutMode}.

Can be used to control the layout behavior. Default is "" which will automatically change the layout. With "Desktop", "Table" or"Phone" you can set a fixed layout.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sLayoutMode New value for property <code>layoutMode</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLayoutMode( sLayoutMode:String):sap.m.P13nFilterPanel;

	/**
	* Sets a new value for property {@link #getMaxExcludes maxExcludes}.

Defines the maximum number of exclude filters.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>-1</code>.
	* @param	sMaxExcludes New value for property <code>maxExcludes</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxExcludes( sMaxExcludes:String):sap.m.P13nFilterPanel;

	/**
	* Sets a new value for property {@link #getMaxIncludes maxIncludes}.

Defines the maximum number of include filters.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>-1</code>.
	* @param	sMaxIncludes New value for property <code>maxIncludes</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxIncludes( sMaxIncludes:String):sap.m.P13nFilterPanel;

	/**
	* Unbinds aggregation {@link #getFilterItems filterItems} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindFilterItems( ):sap.m.P13nFilterPanel;

	/**
	* Checks if the entered and modified conditions are correct, marks invalid fields in yellow (warning).
	* @return	<code>True</code> if all conditions are valid, <code>false</code> otherwise.
	*/
	public function validateConditions( ):Bool;
}

typedef P13nFilterPanelArgs = sap.m.P13nPanel.P13nPanelArgs & {

	/**
	* Defines the maximum number of include filters.
	*/
	@:optional var maxIncludes:String;

	/**
	* Defines the maximum number of exclude filters.
	*/
	@:optional var maxExcludes:String;

	/**
	* Defines if the <code>mediaQuery</code> or a <code>ContainerResize</code> is used for layout update. If the <code>ConditionPanel</code> is used in a dialog, the property must be set to <code>true</code>.
	*/
	@:optional var containerQuery:haxe.extern.EitherType<String,Bool>;

	/**
	* Can be used to control the layout behavior. Default is "" which will automatically change the layout. With "Desktop", "Table" or"Phone" you can set a fixed layout.
	*/
	@:optional var layoutMode:String;

	/**
	* Should empty operation be enabled for certain data types. This is also based on their nullable setting.
	*/
	@:optional var enableEmptyOperations:haxe.extern.EitherType<String,Bool>;

    /**
    * Contains content for include and exclude panels.
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * Defines filter items.
    */
	@:optional var filterItems:Array<haxe.extern.EitherType<String,sap.m.P13nFilterItem>>;

	/**
	* Event raised if a filter item has been added.
	*/
	@:optional var addFilterItem:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event raised if a filter item has been changed. reason can be added, updated or removed.
	*/
	@:optional var filterItemChanged:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event raised if a filter item has been removed.
	*/
	@:optional var removeFilterItem:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event raised if a filter item has been updated.
	*/
	@:optional var updateFilterItem:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
