package sap.m;

@:native("sap.m.Select")

/**
* The <code>sap.m.Select</code> control provides a list of items that allows users to select an item.
*/
extern class Select extends sap.ui.core.Control implements sap.ui.core.IFormContent implements sap.m.IOverflowToolbarContent implements sap.f.IShellBar
{
	@:overload(function(?sId:String, ?mSettings:SelectArgs):Void {})
	public function new(?mSettings:SelectArgs):Void;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.Select{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.Select;

	/**
	* Adds an item to the aggregation named <code>items</code>.
	* @param	oItem The item to be added; if empty, nothing is added.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function addItem( oItem:sap.ui.core.Item):sap.m.Select;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:change change} event of this <code>sap.m.Select</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Select</code> itself.

This event is fired when the value in the selection field is changed in combination with one of the following actions: <ul> <li>The focus leaves the selection field</li> <li>The <i>Enter</i> key is pressed</li> <li>The item is pressed</li> </ul>
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Select</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Select;

	/**
	* Binds aggregation {@link #getItems items} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindItems( oBindingInfo:Dynamic):sap.m.Select;

	/**
	* Closes the control's picker popup.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function close( ):sap.m.Select;

	/**
	* Destroys all the items in the aggregation named <code>items</code>.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function destroyItems( ):sap.m.Select;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:change change} event of this <code>sap.m.Select</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachChange( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Select;

	/**
	* Creates a new subclass of class sap.m.Select with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets current value of property {@link #getAutoAdjustWidth autoAdjustWidth}.

Indicates whether the width of the input field is determined by the selected item's content.

Default value is <code>false</code>.
	* @return	Value of property <code>autoAdjustWidth</code>
	*/
	public function getAutoAdjustWidth( ):Bool;

	/**
	* Gets current value of property {@link #getEditable editable}.

Determines whether the user can modify the selected item. When the property is set to <code>false</code>, the control appears as disabled but CAN still be focused.

<b>Note:</b> When both <code>enabled</code> and <code>editable</code> properties are set to <code>false</code>, <code>enabled</code> has priority over <code>editable</code>.

Default value is <code>true</code>.
	* @return	Value of property <code>editable</code>
	*/
	public function getEditable( ):Bool;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Determines whether the user can modify the selected item. When the property is set to <code>false</code>, the control appears as disabled and CANNOT be focused.

<b>Note:</b> When both <code>enabled</code> and <code>editable</code> properties are set to <code>false</code>, <code>enabled</code> has priority over <code>editable</code>.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets the enabled items from the aggregation named <code>items</code>.
	* @param	aItems Items to filter.
	* @return	An array containing the enabled items.
	*/
	public function getEnabledItems( ?aItems:Array<sap.ui.core.Item>):Array<sap.ui.core.Item>;

	/**
	* Gets the first item from the aggregation named <code>items</code>.
	* @return	The first item, or null if there are no items.
	*/
	public function getFirstItem( ):Dynamic;

	/**
	* Gets current value of property {@link #getForceSelection forceSelection}.

Indicates whether the selection is restricted to one of the items in the list. <b>Note:</b> We strongly recommend that you always set this property to <code>false</code> and bind the <code>selectedKey</code> property to the desired value for better interoperability with data binding.

Default value is <code>true</code>.
	* @return	Value of property <code>forceSelection</code>
	*/
	public function getForceSelection( ):Bool;

	/**
	* Gets current value of property {@link #getIcon icon}.

The URI to the icon that will be displayed only when using the <code>IconOnly</code> type.

Default value is <code>empty string</code>.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* Returns the DOMNode Id to be used for the "labelFor" attribute of the label.

By default, this is the Id of the control itself.
	* @return	Id to be used for the <code>labelFor</code>
	*/
	public function getIdForLabel( ):String;

	/**
	* Gets the item from the aggregation named <code>items</code> at the given 0-based index.
	* @param	iIndex Index of the item to return.
	* @return	Item at the given index, or null if none.
	*/
	public function getItemAt( iIndex:Int):Dynamic;

	/**
	* Gets the item with the given key from the aggregation named <code>items</code>.

<b>Note: </b> If duplicate keys exist, the first item matching the key is returned.
	* @param	sKey An item key that specifies the item to be retrieved.
	* @return	The <code>sap.ui.core.Item</code> instance or <code>null</code> if thre is no such item
	*/
	public function getItemByKey( sKey:String):sap.ui.core.Item;

	/**
	* Gets aggregation <code>items</code>.

<b>Note</b>: This is the default aggregation.
	* @return	The controls in the <code>items</code> aggregation
	*/
	public function getItems( ):Array<sap.ui.core.Item>;

	/**
	* Gets the last item from the aggregation named <code>items</code>.
	* @return	The last item, or null if there are no items.
	*/
	public function getLastItem( ):Dynamic;

	/**
	* Gets current value of property {@link #getMaxWidth maxWidth}.

Sets the maximum width of the control.

<b>Note:</b> This property is ignored if the <code>autoAdjustWidth</code> property is set to <code>true</code>.

Default value is <code>100%</code>.
	* @return	Value of property <code>maxWidth</code>
	*/
	public function getMaxWidth( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.m.Select.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getName name}.

The name to be used in the HTML code (for example, for HTML forms that send data to the server via submit).

Default value is <code>empty string</code>.
	* @return	Value of property <code>name</code>
	*/
	public function getName( ):String;

	/**
	* Enables the <code>sap.m.Select</code> to move inside the sap.m.OverflowToolbar. Required by the {@link sap.m.IOverflowToolbarContent} interface.
	* @return	Configuration information for the <code>sap.m.IOverflowToolbarContent</code> interface.
	*/
	public function getOverflowToolbarConfig( ):Dynamic;

	/**
	* Gets current value of property {@link #getRequired required}.

Indicates that user input is required. This property is only needed for accessibility purposes when a single relationship between the field and a label (see aggregation <code>labelFor</code> of <code>sap.m.Label</code>) cannot be established (e.g. one label should label multiple fields).

Default value is <code>false</code>.
	* @return	Value of property <code>required</code>
	*/
	public function getRequired( ):Bool;

	/**
	* Gets current value of property {@link #getResetOnMissingKey resetOnMissingKey}.

Modifies the behavior of the <code>setSelectedKey</code> method so that the selected item is cleared when a provided selected key is missing.

Default value is <code>false</code>.
	* @return	Value of property <code>resetOnMissingKey</code>
	*/
	public function getResetOnMissingKey( ):Bool;

	/**
	* Gets the selected item object from the aggregation named <code>items</code>.
	* @return	The current target of the <code>selectedItem</code> association, or null.
	*/
	public function getSelectedItem( ):Dynamic;

	/**
	* Gets current value of property {@link #getSelectedItemId selectedItemId}.

ID of the selected item.

Default value is <code>empty string</code>.
	* @return	Value of property <code>selectedItemId</code>
	*/
	public function getSelectedItemId( ):String;

	/**
	* Gets current value of property {@link #getSelectedKey selectedKey}.

Key of the selected item.

<b>Notes:</b> <ul> <li> If duplicate keys exist, the first item matching the key is used.</li> <li> If invalid or none <code>selectedKey</code> is used, the first item is being selected.</li> <li> Invalid or missing <code>selectedKey</code> leads to severe functional issues in <code>sap.ui.table.Table</code>, when the <code>sap.m.Select</code> is used inside a <code>sap.ui.table.Table</code> column.</li> </ul>

Default value is <code>empty string</code>.
	* @return	Value of property <code>selectedKey</code>
	*/
	public function getSelectedKey( ):String;

	/**
	* Gets current value of property {@link #getShowSecondaryValues showSecondaryValues}.

Indicates whether the text values of the <code>additionalText</code> property of a {@link sap.ui.core.ListItem} are shown.

Default value is <code>false</code>.
	* @return	Value of property <code>showSecondaryValues</code>
	*/
	public function getShowSecondaryValues( ):Bool;

	/**
	* Gets current value of property {@link #getTextAlign textAlign}.

Sets the horizontal alignment of the text within the input field.

Default value is <code>Initial</code>.
	* @return	Value of property <code>textAlign</code>
	*/
	public function getTextAlign( ):sap.ui.core.TextAlign;

	/**
	* Gets current value of property {@link #getTextDirection textDirection}.

Specifies the direction of the text within the input field with enumerated options. By default, the control inherits text direction from the DOM.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>textDirection</code>
	*/
	public function getTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Gets current value of property {@link #getType type}.

Type of a select. Possible values <code>Default</code>, <code>IconOnly</code>.

Default value is <code>Default</code>.
	* @return	Value of property <code>type</code>
	*/
	public function getType( ):sap.m.SelectType;

	/**
	* Gets current value of property {@link #getValueState valueState}.

Visualizes the validation state of the control, e.g. <code>Error</code>, <code>Warning</code>, <code>Success</code>, <code>Information</code>.

Default value is <code>None</code>.
	* @return	Value of property <code>valueState</code>
	*/
	public function getValueState( ):sap.ui.core.ValueState;

	/**
	* Gets current value of property {@link #getValueStateText valueStateText}.

Defines the text of the value state message popup. If this is not specified, a default text is shown from the resource bundle.

Default value is <code>empty string</code>.
	* @return	Value of property <code>valueStateText</code>
	*/
	public function getValueStateText( ):String;

	/**
	* Gets current value of property {@link #getWidth width}.

Sets the width of the field. By default, the field width is automatically adjusted to the size of its content and the default width of the field is calculated based on the widest list item in the dropdown list. If the width defined is smaller than its content, only the field width is changed whereas the dropdown list keeps the width of its content. If the dropdown list is wider than the visual viewport, it is truncated and an ellipsis is displayed for each item. For phones, the width of the dropdown list is always the same as the viewport.

<b>Note:</b> This property is ignored if the <code>autoAdjustWidth</code> property is set to <code>true</code>.

Default value is <code>auto</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getWrapItemsText wrapItemsText}.

Determines whether the text in the items wraps on multiple lines when the available width is not enough. When the text is truncated (<code>wrapItemsText</code> property is set to <code>false</code>), the max width of the <code>SelectList</code> is 600px. When <code>wrapItemsText</code> is set to <code>true</code>, <code>SelectList</code> takes all of the available width.

Default value is <code>false</code>.
	* @return	Value of property <code>wrapItemsText</code>
	*/
	public function getWrapItemsText( ):Bool;

	/**
	* Checks for the provided <code>sap.ui.core.Item</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.ui.core.Item):Int;

	/**
	* Inserts an item into the aggregation named <code>items</code>.
	* @param	oItem The item to be inserted; if empty, nothing is inserted.
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function insertItem( oItem:sap.ui.core.Item, iIndex:Int):sap.m.Select;

	/**
	* Indicates whether the control's picker popup is opened.
	* @return	Indicates whether the picker popup is currently open (this includes opening and closing animations).
	*/
	public function isOpen( ):Bool;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Removes all the items in the aggregation named <code>items</code>. Additionally unregisters them from the hosting UIArea.
	* @return	An array of the removed items (might be empty).
	*/
	public function removeAllItems( ):Array<sap.ui.core.Item>;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;
	@:overload( function(vItem:Int):sap.ui.core.Item{ })
	@:overload( function(vItem:String):sap.ui.core.Item{ })

	/**
	* Removes an item from the aggregation named <code>items</code>.
	* @param	vItem The item to be removed or its index or ID.
	* @return	The removed item or null.
	*/
	public function removeItem( vItem:sap.ui.core.Item):sap.ui.core.Item;

	/**
	* Sets a new value for property {@link #getAutoAdjustWidth autoAdjustWidth}.

Indicates whether the width of the input field is determined by the selected item's content.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bAutoAdjustWidth New value for property <code>autoAdjustWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAutoAdjustWidth( ?bAutoAdjustWidth:Bool):sap.m.Select;

	/**
	* Sets a new value for property {@link #getEditable editable}.

Determines whether the user can modify the selected item. When the property is set to <code>false</code>, the control appears as disabled but CAN still be focused.

<b>Note:</b> When both <code>enabled</code> and <code>editable</code> properties are set to <code>false</code>, <code>enabled</code> has priority over <code>editable</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEditable New value for property <code>editable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEditable( ?bEditable:Bool):sap.m.Select;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Determines whether the user can modify the selected item. When the property is set to <code>false</code>, the control appears as disabled and CANNOT be focused.

<b>Note:</b> When both <code>enabled</code> and <code>editable</code> properties are set to <code>false</code>, <code>enabled</code> has priority over <code>editable</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( ?bEnabled:Bool):sap.m.Select;

	/**
	* Sets a new value for property {@link #getForceSelection forceSelection}.

Indicates whether the selection is restricted to one of the items in the list. <b>Note:</b> We strongly recommend that you always set this property to <code>false</code> and bind the <code>selectedKey</code> property to the desired value for better interoperability with data binding.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bForceSelection New value for property <code>forceSelection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setForceSelection( ?bForceSelection:Bool):sap.m.Select;

	/**
	* Sets a new value for property {@link #getIcon icon}.

The URI to the icon that will be displayed only when using the <code>IconOnly</code> type.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sIcon= New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( ?sIcon:sap.ui.core.URI):sap.m.Select;

	/**
	* Sets a new value for property {@link #getMaxWidth maxWidth}.

Sets the maximum width of the control.

<b>Note:</b> This property is ignored if the <code>autoAdjustWidth</code> property is set to <code>true</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100%</code>.
	* @param	sMaxWidth New value for property <code>maxWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxWidth( ?sMaxWidth:sap.ui.core.CSSSize):sap.m.Select;

	/**
	* Sets a new value for property {@link #getName name}.

The name to be used in the HTML code (for example, for HTML forms that send data to the server via submit).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sName New value for property <code>name</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setName( ?sName:String):sap.m.Select;

	/**
	* Sets a new value for property {@link #getRequired required}.

Indicates that user input is required. This property is only needed for accessibility purposes when a single relationship between the field and a label (see aggregation <code>labelFor</code> of <code>sap.m.Label</code>) cannot be established (e.g. one label should label multiple fields).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bRequired New value for property <code>required</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRequired( ?bRequired:Bool):sap.m.Select;

	/**
	* Sets a new value for property {@link #getResetOnMissingKey resetOnMissingKey}.

Modifies the behavior of the <code>setSelectedKey</code> method so that the selected item is cleared when a provided selected key is missing.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bResetOnMissingKey New value for property <code>resetOnMissingKey</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setResetOnMissingKey( ?bResetOnMissingKey:Bool):sap.m.Select;
	@:overload( function(vItem:String):sap.m.Select{ })
	@:overload( function(vItem:sap.ui.core.Item):sap.m.Select{ })

	/**
	* Sets the <code>selectedItem</code> association.

Default value is <code>null</code>.
	* @param	vItem New value for the <code>selectedItem</code> association. If an ID of a <code>sap.ui.core.Item</code> is given, the item with this ID becomes the <code>selectedItem</code> association. Alternatively, a <code>sap.ui.core.Item</code> instance may be given or <code>null</code>. If the value of <code>null</code> is provided, the first enabled item will be selected (if any items exist).
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setSelectedItem( vItem:Dynamic):sap.m.Select;
	@:overload( function(?vItem:String):sap.m.Select{ })

	/**
	* Sets the <code>selectedItemId</code> property.

Default value is an empty string <code>""</code> or <code>undefined</code>.
	* @param	vItem New value for property <code>selectedItemId</code>. If the provided <code>vItem</code> has a default value, the first enabled item will be selected (if any items exist).
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setSelectedItemId( ?vItem:Dynamic):sap.m.Select;

	/**
	* Sets property <code>selectedKey</code>.

Default value is an empty string <code>""</code> or <code>undefined</code>.
	* @param	sKey New value for property <code>selectedKey</code>. If the <code>forceSelection</code> property is set to <code>true</code> and the provided <code>sKey</code> is an empty string <code>""</code> or <code>undefined</code>, the value of <code>sKey</code> is changed to match the <code>key</code> of the first enabled item and the first enabled item is selected (if any items exist).

In the case that an item has the default key value, it is selected instead. If duplicate keys exist, the first item matching the key is selected.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setSelectedKey( sKey:String):sap.m.Select;

	/**
	* Sets a new value for property {@link #getShowSecondaryValues showSecondaryValues}.

Indicates whether the text values of the <code>additionalText</code> property of a {@link sap.ui.core.ListItem} are shown.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowSecondaryValues New value for property <code>showSecondaryValues</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowSecondaryValues( ?bShowSecondaryValues:Bool):sap.m.Select;

	/**
	* Sets a new value for property {@link #getTextAlign textAlign}.

Sets the horizontal alignment of the text within the input field.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Initial</code>.
	* @param	sTextAlign New value for property <code>textAlign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextAlign( ?sTextAlign:sap.ui.core.TextAlign):sap.m.Select;

	/**
	* Sets a new value for property {@link #getTextDirection textDirection}.

Specifies the direction of the text within the input field with enumerated options. By default, the control inherits text direction from the DOM.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sTextDirection New value for property <code>textDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextDirection( ?sTextDirection:sap.ui.core.TextDirection):sap.m.Select;

	/**
	* Sets a new value for property {@link #getType type}.

Type of a select. Possible values <code>Default</code>, <code>IconOnly</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Default</code>.
	* @param	sType New value for property <code>type</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setType( ?sType:sap.m.SelectType):sap.m.Select;

	/**
	* Sets a new value for property {@link #getValueState valueState}.

Visualizes the validation state of the control, e.g. <code>Error</code>, <code>Warning</code>, <code>Success</code>, <code>Information</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sValueState New value for property <code>valueState</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValueState( ?sValueState:sap.ui.core.ValueState):sap.m.Select;

	/**
	* Sets a new value for property {@link #getValueStateText valueStateText}.

Defines the text of the value state message popup. If this is not specified, a default text is shown from the resource bundle.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sValueStateText New value for property <code>valueStateText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValueStateText( ?sValueStateText:String):sap.m.Select;

	/**
	* Sets a new value for property {@link #getWidth width}.

Sets the width of the field. By default, the field width is automatically adjusted to the size of its content and the default width of the field is calculated based on the widest list item in the dropdown list. If the width defined is smaller than its content, only the field width is changed whereas the dropdown list keeps the width of its content. If the dropdown list is wider than the visual viewport, it is truncated and an ellipsis is displayed for each item. For phones, the width of the dropdown list is always the same as the viewport.

<b>Note:</b> This property is ignored if the <code>autoAdjustWidth</code> property is set to <code>true</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>auto</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.m.Select;

	/**
	* Sets the <code>wrapItemsText</code> property.
	* @param	bWrap null
	* @return	<code>this</code> to allow method chaining
	*/
	public function setWrapItemsText( bWrap:Bool):sap.m.Select;

	/**
	* Unbinds aggregation {@link #getItems items} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindItems( ):sap.m.Select;
}

typedef SelectArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The name to be used in the HTML code (for example, for HTML forms that send data to the server via submit).
	*/
	@:optional var name:String;

	/**
	* Determines whether the user can modify the selected item. When the property is set to <code>false</code>, the control appears as disabled and CANNOT be focused.

<b>Note:</b> When both <code>enabled</code> and <code>editable</code> properties are set to <code>false</code>, <code>enabled</code> has priority over <code>editable</code>.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the user can modify the selected item. When the property is set to <code>false</code>, the control appears as disabled but CAN still be focused.

<b>Note:</b> When both <code>enabled</code> and <code>editable</code> properties are set to <code>false</code>, <code>enabled</code> has priority over <code>editable</code>.
	*/
	@:optional var editable:haxe.extern.EitherType<String,Bool>;

	/**
	* Sets the width of the field. By default, the field width is automatically adjusted to the size of its content and the default width of the field is calculated based on the widest list item in the dropdown list. If the width defined is smaller than its content, only the field width is changed whereas the dropdown list keeps the width of its content. If the dropdown list is wider than the visual viewport, it is truncated and an ellipsis is displayed for each item. For phones, the width of the dropdown list is always the same as the viewport.

<b>Note:</b> This property is ignored if the <code>autoAdjustWidth</code> property is set to <code>true</code>.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Sets the maximum width of the control.

<b>Note:</b> This property is ignored if the <code>autoAdjustWidth</code> property is set to <code>true</code>.
	*/
	@:optional var maxWidth:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Key of the selected item.

<b>Notes:</b> <ul> <li> If duplicate keys exist, the first item matching the key is used.</li> <li> If invalid or none <code>selectedKey</code> is used, the first item is being selected.</li> <li> Invalid or missing <code>selectedKey</code> leads to severe functional issues in <code>sap.ui.table.Table</code>, when the <code>sap.m.Select</code> is used inside a <code>sap.ui.table.Table</code> column.</li> </ul>
	*/
	@:optional var selectedKey:String;

	/**
	* ID of the selected item.
	*/
	@:optional var selectedItemId:String;

	/**
	* The URI to the icon that will be displayed only when using the <code>IconOnly</code> type.
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Type of a select. Possible values <code>Default</code>, <code>IconOnly</code>.
	*/
	@:optional var type:haxe.extern.EitherType<String,sap.m.SelectType>;

	/**
	* Indicates whether the width of the input field is determined by the selected item's content.
	*/
	@:optional var autoAdjustWidth:haxe.extern.EitherType<String,Bool>;

	/**
	* Sets the horizontal alignment of the text within the input field.
	*/
	@:optional var textAlign:haxe.extern.EitherType<String,sap.ui.core.TextAlign>;

	/**
	* Specifies the direction of the text within the input field with enumerated options. By default, the control inherits text direction from the DOM.
	*/
	@:optional var textDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

	/**
	* Visualizes the validation state of the control, e.g. <code>Error</code>, <code>Warning</code>, <code>Success</code>, <code>Information</code>.
	*/
	@:optional var valueState:haxe.extern.EitherType<String,sap.ui.core.ValueState>;

	/**
	* Defines the text of the value state message popup. If this is not specified, a default text is shown from the resource bundle.
	*/
	@:optional var valueStateText:String;

	/**
	* Indicates whether the text values of the <code>additionalText</code> property of a {@link sap.ui.core.ListItem} are shown.
	*/
	@:optional var showSecondaryValues:haxe.extern.EitherType<String,Bool>;

	/**
	* Modifies the behavior of the <code>setSelectedKey</code> method so that the selected item is cleared when a provided selected key is missing.
	*/
	@:optional var resetOnMissingKey:haxe.extern.EitherType<String,Bool>;

	/**
	* Indicates whether the selection is restricted to one of the items in the list. <b>Note:</b> We strongly recommend that you always set this property to <code>false</code> and bind the <code>selectedKey</code> property to the desired value for better interoperability with data binding.
	*/
	@:optional var forceSelection:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the text in the items wraps on multiple lines when the available width is not enough. When the text is truncated (<code>wrapItemsText</code> property is set to <code>false</code>), the max width of the <code>SelectList</code> is 600px. When <code>wrapItemsText</code> is set to <code>true</code>, <code>SelectList</code> takes all of the available width.
	*/
	@:optional var wrapItemsText:haxe.extern.EitherType<String,Bool>;

	/**
	* Indicates that user input is required. This property is only needed for accessibility purposes when a single relationship between the field and a label (see aggregation <code>labelFor</code> of <code>sap.m.Label</code>) cannot be established (e.g. one label should label multiple fields).
	*/
	@:optional var required:haxe.extern.EitherType<String,Bool>;

    /**
    * Defines the items contained within this control.

<b>Note:</b> For items with icons you can use {@link sap.ui.core.ListItem}.

Example:

<pre>
<code> &lt;ListItem text="Paper plane" icon="sap-icon://paper-plane"&gt;&lt;/ListItem&gt; </code>
</pre>
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.ui.core.Item>>;

    /**
    * Internal aggregation to hold the inner picker popup.
    */
	@:optional var picker:haxe.extern.EitherType<String,sap.ui.core.PopupInterface>;

    /**
    * Icon, displayed in the left most area of the <code>Select</code> input.
    */
	@:optional var _valueIcon:haxe.extern.EitherType<String,sap.ui.core.Icon>;

    /**
    * Internal aggregation to hold the picker's header
    */
	@:optional var _pickerHeader:haxe.extern.EitherType<String,sap.m.Bar>;

    /**
    * Internal aggregation to hold the picker's subheader.
    */
	@:optional var _pickerValueStateContent:haxe.extern.EitherType<String,sap.m.Text>;

	/**
	* Sets or retrieves the selected item from the aggregation named items.
	*/
	@:optional var selectedItem:haxe.extern.EitherType<String,sap.ui.core.Item>;

	/**
	* Association to controls / IDs which label this control (see WAI-ARIA attribute <code>aria-labelledby</code>).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* This event is fired when the value in the selection field is changed in combination with one of the following actions: <ul> <li>The focus leaves the selection field</li> <li>The <i>Enter</i> key is pressed</li> <li>The item is pressed</li> </ul>
	*/
	@:optional var change:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
