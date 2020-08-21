package sap.ui.commons;

@:native("sap.ui.commons.ListBox")

/**
* Provides a list of items from which users can choose an item. For the design of the list box, features such as defining the list box height, fixing the number of visible items, choosing one item to be the item that is marked by default when the list box is shown, or a scroll bar for large list boxes are available.
*/
extern class ListBox extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ListBoxArgs):Void {})
	public function new(?mSettings:ListBoxArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.ui.commons.ListBox{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.ui.commons.ListBox;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.commons.ListBox{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.commons.ListBox;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.ui.core.Item):sap.ui.commons.ListBox;

	/**
	* Adds the given index to current selection. When multiple selection is disabled, this replaces the current selection. When the given index is invalid, the call is ignored.
	* @param	iSelectedIndex Index to add to selection..
	* @return	<code>this</code> to allow method chaining.
	*/
	public function addSelectedIndex( iSelectedIndex:Int):sap.ui.commons.ListBox;

	/**
	* Adds the given indices to selection. Any invalid indices are ignored.
	* @param	aSelectedIndices Indices of the items that shall additionally be selected.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function addSelectedIndices( aSelectedIndices:Array<Int>):sap.ui.commons.ListBox;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:select select} event of this <code>sap.ui.commons.ListBox</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.ListBox</code> itself.

Event is fired when selection is changed by user interaction.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.ListBox</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelect( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.commons.ListBox;

	/**
	* Removes complete selection.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function clearSelection( ):sap.ui.commons.ListBox;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.ui.commons.ListBox;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:select select} event of this <code>sap.ui.commons.ListBox</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelect( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.commons.ListBox;

	/**
	* Creates a new subclass of class sap.ui.commons.ListBox with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getAllowMultiSelect allowMultiSelect}.

Determines whether multiple selection is allowed.

Default value is <code>false</code>.
	* @return	Value of property <code>allowMultiSelect</code>
	*/
	public function getAllowMultiSelect( ):Bool;

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
	* Gets current value of property {@link #getDisplayIcons displayIcons}.

Determines whether the icons of the list items shall also be displayed. Enabling icons requires some space to be reserved for them. Displaying icons can also influence the width and height of a single item, which affects the overall height of the ListBox when defined in number of items. Note that the number of icons that can be displayed in the ListBox depends on the size of the icons themselves and of the total ListBox height.

Default value is <code>false</code>.
	* @return	Value of property <code>displayIcons</code>
	*/
	public function getDisplayIcons( ):Bool;

	/**
	* Gets current value of property {@link #getDisplaySecondaryValues displaySecondaryValues}.

Determines whether the text values from the additionalText property (see sap.ui.core.ListItems) shall be displayed.

Default value is <code>false</code>.
	* @return	Value of property <code>displaySecondaryValues</code>
	*/
	public function getDisplaySecondaryValues( ):Bool;

	/**
	* Gets current value of property {@link #getEditable editable}.

Determines whether the ListBox is interactive or not. Can be used to disable interaction with mouse or keyboard.

Default value is <code>true</code>.
	* @return	Value of property <code>editable</code>
	*/
	public function getEditable( ):Bool;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Determines whether the ListBox is enabled or not. Can be used to disable interaction with mouse or keyboard. Disabled controls have another color display depending on custom settings.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets current value of property {@link #getHeight height}.

Control height as common CSS-size (px or % as unit, for example). The setting overrides any definitions made for the setVisibleItems() method.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Gets content of aggregation {@link #getItems items}.

Aggregation of items to be displayed. Must be either of type sap.ui.core.ListItem or sap.ui.core.SeparatorItem.
	* @return	null
	*/
	public function getItems( ):Array<sap.ui.core.Item>;

	/**
	* Gets current value of property {@link #getMaxWidth maxWidth}.

Determines the maximum width of the ListBox. If not set, there is no maximum width.
	* @return	Value of property <code>maxWidth</code>
	*/
	public function getMaxWidth( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.ui.commons.ListBox.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getMinWidth minWidth}.

Determines the minimum width of the ListBox. If not set, there is no minimum width.
	* @return	Value of property <code>minWidth</code>
	*/
	public function getMinWidth( ):sap.ui.core.CSSSize;

	/**
	* Returns how many pixels the ListBox contents are currently scrolled down.
	* @return	Vertical scroll position.
	*/
	public function getScrollTop( ):Int;

	/**
	* Gets current value of property {@link #getSecondaryValueTextAlign secondaryValueTextAlign}.

Determines the text alignment in the secondary ListBox text column (if available).

Default value is <code>Begin</code>.
	* @return	Value of property <code>secondaryValueTextAlign</code>
	*/
	public function getSecondaryValueTextAlign( ):sap.ui.core.TextAlign;

	/**
	* Zero-based index of selected item. Index value for no selection is -1. When multiple selection is enabled and multiple items are selected, the method returns the first selected item.
	* @return	Selected index
	*/
	public function getSelectedIndex( ):Int;

	/**
	* Zero-based indices of selected items, wrapped in an array. An empty array means "no selection".
	* @return	Array of selected indices.
	*/
	public function getSelectedIndices( ):Array<Int>;

	/**
	* Returns selected item. When no item is selected, "null" is returned. When multi-selection is enabled and multiple items are selected, only the first selected item is returned.
	* @return	Selected item
	*/
	public function getSelectedItem( ):sap.ui.core.Item;

	/**
	* Returns an array containing the selected items. In the case of no selection, an empty array is returned.
	* @return	Selected items.
	*/
	public function getSelectedItems( ):Array<sap.ui.core.Item>;

	/**
	* Returns the keys of the selected items in an array. If a selected item does not have a key, the respective array entry will be undefined.
	* @return	Array with selected keys.
	*/
	public function getSelectedKeys( ):Array<String>;

	/**
	* Gets current value of property {@link #getValueTextAlign valueTextAlign}.

Determines the text alignment in the primary ListBox column.

Default value is <code>Begin</code>.
	* @return	Value of property <code>valueTextAlign</code>
	*/
	public function getValueTextAlign( ):sap.ui.core.TextAlign;

	/**
	* Returns the number of visible items.
	* @return	Number of visible items.
	*/
	public function getVisibleItems( ):Int;

	/**
	* Gets current value of property {@link #getWidth width}.

Control width as common CSS-size (px or % as unit, for example).
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.ui.core.Item</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.ui.core.Item):Int;

	/**
	* Inserts a item into the aggregation {@link #getItems items}.
	* @param	oItem The item to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertItem( oItem:sap.ui.core.Item, iIndex:Int):sap.ui.commons.ListBox;

	/**
	* Returns whether the given index is selected.
	* @param	iIndex Index which is checked for selection state.
	* @return	Whether index is selected.
	*/
	public function isIndexSelected( iIndex:Int):Bool;

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
	public function removeAllItems( ):Array<sap.ui.core.Item>;
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
	@:overload( function(vItem:Int):sap.ui.core.Item{ })
	@:overload( function(vItem:String):sap.ui.core.Item{ })

	/**
	* Removes a item from the aggregation {@link #getItems items}.
	* @param	vItem The item to remove or its index or id
	* @return	The removed item or <code>null</code>
	*/
	public function removeItem( vItem:sap.ui.core.Item):sap.ui.core.Item;

	/**
	* Removes the given index from this selection. When the index is invalid or not selected, the call is ignored.
	* @param	iIndex Index that shall be removed from selection.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function removeSelectedIndex( iIndex:Int):sap.ui.commons.ListBox;

	/**
	* If the ListBox has a scroll bar because the number of items is larger than the number of visible items, this method scrolls to the item with the given index. If there are enough items, this item will then appear at the topmost visible position in the ListBox. If bLazy is true, it only scrolls as far as required to make the item visible. Setting the scrollTop property and calling scrollToIndex are two operations influencing the same "physical" property, so the last call "wins".
	* @param	iIndex The index to which the ListBox should scroll.
	* @param	bLazy If set to true, the ListBox only scrolls if the item is not completely visible, and it scrolls for exactly the space to make it fully visible. If set to false, the item is scrolled to the top position (if possible).
	* @return	<code>this</code> to allow method chaining.
	*/
	public function scrollToIndex( iIndex:Int, bLazy:Bool):sap.ui.commons.ListBox;

	/**
	* Sets a new value for property {@link #getAllowMultiSelect allowMultiSelect}.

Determines whether multiple selection is allowed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bAllowMultiSelect New value for property <code>allowMultiSelect</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAllowMultiSelect( ?bAllowMultiSelect:Bool):sap.ui.commons.ListBox;

	/**
	* Sets a new value for property {@link #getDisplayIcons displayIcons}.

Determines whether the icons of the list items shall also be displayed. Enabling icons requires some space to be reserved for them. Displaying icons can also influence the width and height of a single item, which affects the overall height of the ListBox when defined in number of items. Note that the number of icons that can be displayed in the ListBox depends on the size of the icons themselves and of the total ListBox height.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bDisplayIcons New value for property <code>displayIcons</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDisplayIcons( ?bDisplayIcons:Bool):sap.ui.commons.ListBox;

	/**
	* Sets a new value for property {@link #getDisplaySecondaryValues displaySecondaryValues}.

Determines whether the text values from the additionalText property (see sap.ui.core.ListItems) shall be displayed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bDisplaySecondaryValues New value for property <code>displaySecondaryValues</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDisplaySecondaryValues( ?bDisplaySecondaryValues:Bool):sap.ui.commons.ListBox;

	/**
	* Sets a new value for property {@link #getEditable editable}.

Determines whether the ListBox is interactive or not. Can be used to disable interaction with mouse or keyboard.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEditable New value for property <code>editable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEditable( ?bEditable:Bool):sap.ui.commons.ListBox;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Determines whether the ListBox is enabled or not. Can be used to disable interaction with mouse or keyboard. Disabled controls have another color display depending on custom settings.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( ?bEnabled:Bool):sap.ui.commons.ListBox;

	/**
	* Sets the height of this ListBox in CSS units.
	* @param	sHeight New height for the ListBox.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setHeight( sHeight:sap.ui.core.CSSSize):sap.ui.commons.ListBox;

	/**
	* Allows setting the list items as array for this instance of ListBox.
	* @param	aItems The items to set for this ListBox.
	* @param	bDestroyItems Optional boolean parameter to indicate that the formerly set items should be destroyed, instead of just removed.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setItems( aItems:Array<sap.ui.core.ListItem>, bDestroyItems:Bool):sap.ui.commons.ListBox;

	/**
	* Sets a new value for property {@link #getMaxWidth maxWidth}.

Determines the maximum width of the ListBox. If not set, there is no maximum width.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sMaxWidth New value for property <code>maxWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxWidth( ?sMaxWidth:sap.ui.core.CSSSize):sap.ui.commons.ListBox;

	/**
	* Sets a new value for property {@link #getMinWidth minWidth}.

Determines the minimum width of the ListBox. If not set, there is no minimum width.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sMinWidth New value for property <code>minWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMinWidth( ?sMinWidth:sap.ui.core.CSSSize):sap.ui.commons.ListBox;

	/**
	* Positions the ListBox contents so that they are scrolled-down by the given number of pixels.
	* @param	iScrollTop Vertical scroll position in pixels.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setScrollTop( iScrollTop:Int):sap.ui.commons.ListBox;

	/**
	* Sets a new value for property {@link #getSecondaryValueTextAlign secondaryValueTextAlign}.

Determines the text alignment in the secondary ListBox text column (if available).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Begin</code>.
	* @param	sSecondaryValueTextAlign New value for property <code>secondaryValueTextAlign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSecondaryValueTextAlign( ?sSecondaryValueTextAlign:sap.ui.core.TextAlign):sap.ui.commons.ListBox;

	/**
	* Sets the zero-based index of the currently selected item. This method removes any previous selections. When the given index is invalid, the call is ignored.
	* @param	iSelectedIndex Index to be selected.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setSelectedIndex( iSelectedIndex:Int):sap.ui.commons.ListBox;

	/**
	* Zero-based indices of selected items, wrapped in an array. An empty array means "no selection". When multiple selection is disabled and multiple items are given, the selection is set to the index of the first valid index in the given array. Any invalid indices are ignored. The previous selection is in any case replaced.
	* @param	aSelectedIndices Indices of the items to be selected.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setSelectedIndices( aSelectedIndices:Array<Int>):sap.ui.commons.ListBox;

	/**
	* Keys of the items to be selected, wrapped in an array. An empty array means no selection. When multiple selection is disabled, and multiple keys are given, the selection is set to the item with the first valid key in the given array. Any invalid keys are ignored. The previous selection is replaced in any case.
	* @param	aSelectedKeys The keys of the items to be selected.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setSelectedKeys( aSelectedKeys:Array<String>):sap.ui.commons.ListBox;

	/**
	* Sets a new value for property {@link #getValueTextAlign valueTextAlign}.

Determines the text alignment in the primary ListBox column.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Begin</code>.
	* @param	sValueTextAlign New value for property <code>valueTextAlign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValueTextAlign( ?sValueTextAlign:sap.ui.core.TextAlign):sap.ui.commons.ListBox;

	/**
	* Makes the ListBox render with a height that allows it to display exactly the given number of items.
	* @param	iItemCount The number of items that should fit into the ListBox without scrolling.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setVisibleItems( iItemCount:Int):sap.ui.commons.ListBox;

	/**
	* Sets the width of this ListBox in CSS units.
	* @param	sWidth New width for the ListBox.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.commons.ListBox;
}

typedef ListBoxArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines whether the ListBox is interactive or not. Can be used to disable interaction with mouse or keyboard.
	*/
	@:optional var editable:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the ListBox is enabled or not. Can be used to disable interaction with mouse or keyboard. Disabled controls have another color display depending on custom settings.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether multiple selection is allowed.
	*/
	@:optional var allowMultiSelect:haxe.extern.EitherType<String,Bool>;

	/**
	* Control width as common CSS-size (px or % as unit, for example).
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Control height as common CSS-size (px or % as unit, for example). The setting overrides any definitions made for the setVisibleItems() method.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Scroll bar position from the top. Setting the scrollTop property and calling scrollToIndex are two operations influencing the same "physical" property, so the last call "wins".
	*/
	@:optional var scrollTop:haxe.extern.EitherType<String,Int>;

	/**
	* Determines whether the icons of the list items shall also be displayed. Enabling icons requires some space to be reserved for them. Displaying icons can also influence the width and height of a single item, which affects the overall height of the ListBox when defined in number of items. Note that the number of icons that can be displayed in the ListBox depends on the size of the icons themselves and of the total ListBox height.
	*/
	@:optional var displayIcons:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the text values from the additionalText property (see sap.ui.core.ListItems) shall be displayed.
	*/
	@:optional var displaySecondaryValues:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the text alignment in the primary ListBox column.
	*/
	@:optional var valueTextAlign:haxe.extern.EitherType<String,sap.ui.core.TextAlign>;

	/**
	* Determines the text alignment in the secondary ListBox text column (if available).
	*/
	@:optional var secondaryValueTextAlign:haxe.extern.EitherType<String,sap.ui.core.TextAlign>;

	/**
	* Determines the minimum width of the ListBox. If not set, there is no minimum width.
	*/
	@:optional var minWidth:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Determines the maximum width of the ListBox. If not set, there is no maximum width.
	*/
	@:optional var maxWidth:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* The ListBox height in number of items that are initially displayed without scrolling. This setting overwrites height settings in terms of CSS size that have been made. When the items have different heights, the height of the first item is used for all other item height calculations. Note that if there are one or more separators between the visible ListBox items, the displayed items might not relate 1:1 to the initially specified number of items. When the value is retrieved, it equals the previously set value if it was set; otherwise, it will be the number of items completely fitting into the ListBox without scrolling in the case the control was already rendered. Note that if the control was not rendered, the behavior will be undefined, it may return -1 or any other number.
	*/
	@:optional var visibleItems:haxe.extern.EitherType<String,Int>;

    /**
    * Aggregation of items to be displayed. Must be either of type sap.ui.core.ListItem or sap.ui.core.SeparatorItem.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.ui.core.Item>>;

	/**
	* Association to controls / ids which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / ids which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Event is fired when selection is changed by user interaction.
	*/
	@:optional var select:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
