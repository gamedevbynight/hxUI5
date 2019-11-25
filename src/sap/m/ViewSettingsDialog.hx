package sap.m;

@:native("sap.m.ViewSettingsDialog")

/**
* Helps the user to sort, filter, or group data within a (master) {@link sap.m.List} or a {@link sap.m.Table}. The dialog is triggered by icon buttons in the table toolbar. Each button shows a dropdown list icon.

<h3>Overview</h3>

The <code>ViewSettingsDialog</code> is a composite control, consisting of a modal {@link sap.m.Popover} and several internal lists. There are three different tabs (Sort, Group, Filter) in the dialog that can be activated by filling the respective associations. If only one association is filled, the other tabs are automatically hidden. The selected options can be used to create sorters and filters for the table.

<b>Note:</b> If the app does not offer all three sorting, filtering, and grouping operations, but only one of these (such as sort), we recommend placing the icon button directly in the toolbar. Do not place sort, filter, or group buttons in the footer toolbar if they refer to a table. Place group, sort, and filter buttons in the footer toolbar if they refer to a master list.

<b>Note:</b> Reset button, when used in <code>ViewSettingsDialog</code> without custom tabs, is enabled when there are some Filters or presetFilters selected as well as there are changes in Sort by, Sort order, Group By or Group order values compared to initial state of the dialog, and disabled, if there are no changes or filters set. If the <code>ViewSettingsDialog</code> have one or more custom tabs, the Reset button is always enabled, because there is no way to determine the initial state of the custom tabs content and compare to their current state in order to determine enable/disable state of the Reset button.

<h3>Usage</h3>

<i>When to use?</i> <ul><li>If you need to allow the user to sort line items in a manageable list or table (up to 20 columns)</li> <li>If you need to offer custom filter settings in a manageable list or table (up to 20 columns)</li> <li>If you need to allow the user to group line items in a manageable list or table (up to 20 columns)</li></ul>

<i>When not to use?</i> <ul><li>If you have complex tables (more than 20 columns)</li> <li>If you need to rearrange columns within your table (use the {@link sap.m.TablePersoDialog} instead)</li> <li>If you need very specific sort, filter, or column sorting options within complex tables (use the {@link sap.m.P13nDialog} instead)</li></ul>

<h3>Responsive behavior</h3>

The popover dialog appears as a modal window on desktop and tablet screen sizes, but full screen on smartphones.
*/
extern class ViewSettingsDialog extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ViewSettingsDialogArgs):Void {})
	public function new(?mSettings:ViewSettingsDialogArgs):Void;

	/**
	* Overwrites the aggregation setter in order to have ID validation logic as some strings are reserved for the predefined tabs.
	* @param	oCustomTab The custom tab to be added
	* @return	this pointer for chaining
	*/
	public function addCustomTab( oCustomTab:Dynamic):sap.m.ViewSettingsDialog;

	/**
	* Adds some filterItem to the aggregation {@link #getFilterItems filterItems}.
	* @param	oFilterItem The filterItem to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addFilterItem( oFilterItem:sap.m.ViewSettingsItem):sap.m.ViewSettingsDialog;

	/**
	* Adds a group item and sets the association to reflect the selected state.
	* @param	oItem The item to be added to the group items
	* @return	this pointer for chaining
	*/
	public function addGroupItem( oItem:sap.m.ViewSettingsItem):sap.m.ViewSettingsDialog;

	/**
	* Adds a preset filter item and sets the association to reflect the selected state.
	* @param	oItem The selected item or a string with the key
	* @return	this pointer for chaining
	*/
	public function addPresetFilterItem( oItem:sap.m.ViewSettingsItem):sap.m.ViewSettingsDialog;

	/**
	* Adds a sort item and sets the association to reflect the selected state.
	* @param	oItem The item to be added to the aggregation
	* @return	this pointer for chaining
	*/
	public function addSortItem( oItem:sap.m.ViewSettingsItem):sap.m.ViewSettingsDialog;

	/**
	* Forward method to the inner dialog method: addStyleClass.
	* @return	this pointer for chaining
	*/
	public function addStyleClass( ):sap.m.ViewSettingsDialog;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:cancel cancel} event of this <code>sap.m.ViewSettingsDialog</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ViewSettingsDialog</code> itself.

Called when the Cancel button is pressed. It can be used to set the state of custom filter controls.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ViewSettingsDialog</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachCancel( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.ViewSettingsDialog;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:confirm confirm} event of this <code>sap.m.ViewSettingsDialog</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ViewSettingsDialog</code> itself.

Indicates that the user has pressed the OK button and the selected sort, group, and filter settings should be applied to the data on this page. </br></br><b>Note:</b> Custom tabs are not converted to event parameters automatically. For custom tabs, you have to read the state of your controls inside the callback of this event.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ViewSettingsDialog</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachConfirm( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.ViewSettingsDialog;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:filterDetailPageOpened filterDetailPageOpened} event of this <code>sap.m.ViewSettingsDialog</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ViewSettingsDialog</code> itself.

Fired when the filter detail page is opened.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ViewSettingsDialog</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachFilterDetailPageOpened( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.ViewSettingsDialog;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:reset reset} event of this <code>sap.m.ViewSettingsDialog</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ViewSettingsDialog</code> itself.

Called when the Reset button is pressed. It can be used to set the state of custom tabs.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ViewSettingsDialog</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachReset( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.ViewSettingsDialog;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:resetFilters resetFilters} event of this <code>sap.m.ViewSettingsDialog</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ViewSettingsDialog</code> itself.

Called when the filters are being reset.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ViewSettingsDialog</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachResetFilters( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.ViewSettingsDialog;

	/**
	* Binds aggregation {@link #getCustomTabs customTabs} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindCustomTabs( oBindingInfo:Dynamic):sap.m.ViewSettingsDialog;

	/**
	* Binds aggregation {@link #getFilterItems filterItems} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindFilterItems( oBindingInfo:Dynamic):sap.m.ViewSettingsDialog;

	/**
	* Binds aggregation {@link #getGroupItems groupItems} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindGroupItems( oBindingInfo:Dynamic):sap.m.ViewSettingsDialog;

	/**
	* Binds aggregation {@link #getPresetFilterItems presetFilterItems} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindPresetFilterItems( oBindingInfo:Dynamic):sap.m.ViewSettingsDialog;

	/**
	* Binds aggregation {@link #getSortItems sortItems} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindSortItems( oBindingInfo:Dynamic):sap.m.ViewSettingsDialog;

	/**
	* Clears the selected filters and navigates to the filter overview page
	* @return	this pointer for chaining
	*/
	public function clearFilters( ):sap.m.ViewSettingsDialog;

	/**
	* Destroys all the customTabs in the aggregation {@link #getCustomTabs customTabs}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyCustomTabs( ):sap.m.ViewSettingsDialog;

	/**
	* Destroys all the filterItems in the aggregation {@link #getFilterItems filterItems}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyFilterItems( ):sap.m.ViewSettingsDialog;

	/**
	* Destroys all the groupItems in the aggregation {@link #getGroupItems groupItems}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyGroupItems( ):sap.m.ViewSettingsDialog;

	/**
	* Destroys all the presetFilterItems in the aggregation {@link #getPresetFilterItems presetFilterItems}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyPresetFilterItems( ):sap.m.ViewSettingsDialog;

	/**
	* Destroys all the sortItems in the aggregation {@link #getSortItems sortItems}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySortItems( ):sap.m.ViewSettingsDialog;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:cancel cancel} event of this <code>sap.m.ViewSettingsDialog</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachCancel( fnFunction:()->Void, ?oListener:Dynamic):sap.m.ViewSettingsDialog;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:confirm confirm} event of this <code>sap.m.ViewSettingsDialog</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachConfirm( fnFunction:()->Void, ?oListener:Dynamic):sap.m.ViewSettingsDialog;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:filterDetailPageOpened filterDetailPageOpened} event of this <code>sap.m.ViewSettingsDialog</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachFilterDetailPageOpened( fnFunction:()->Void, ?oListener:Dynamic):sap.m.ViewSettingsDialog;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:reset reset} event of this <code>sap.m.ViewSettingsDialog</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachReset( fnFunction:()->Void, ?oListener:Dynamic):sap.m.ViewSettingsDialog;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:resetFilters resetFilters} event of this <code>sap.m.ViewSettingsDialog</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachResetFilters( fnFunction:()->Void, ?oListener:Dynamic):sap.m.ViewSettingsDialog;

	/**
	* Creates a new subclass of class sap.m.ViewSettingsDialog with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getCustomTabs customTabs}.

The list of all the custom tabs.
	* @return	null
	*/
	public function getCustomTabs( ):Array<sap.m.ViewSettingsCustomTab>;

	/**
	* Forward method to the inner dialog method: getDomRef.
	* @return	The Element's DOM Element sub DOM Element or null
	*/
	public function getDomRef( ):js.html.Element;

	/**
	* Gets content of aggregation {@link #getFilterItems filterItems}.

The list of items with key and value that can be filtered on (for example, a list of columns for a table). A filterItem is associated with one or more detail filters.

<b>Note:</b> It is recommended to use the <code>sap.m.ViewSettingsFilterItem</code> as it fits best at the filter page.
	* @return	null
	*/
	public function getFilterItems( ):Array<sap.m.ViewSettingsItem>;

	/**
	* Gets current value of property {@link #getFilterSearchOperator filterSearchOperator}.

Provides a string filter operator which is used when the user searches items in filter details page. Possible operators are: <code>AnyWordStartsWith</code>, <code>Contains</code>, <code>StartsWith</code>, <code>Equals</code>. This property will be ignored if a custom callback is provided through <code>setFilterSearchCallback</code> method.

Default value is <code>StartsWith</code>.
	* @return	Value of property <code>filterSearchOperator</code>
	*/
	public function getFilterSearchOperator( ):sap.m.StringFilterOperator;

	/**
	* Gets current value of property {@link #getGroupDescending groupDescending}.

Determines whether the group order is descending or ascending (default).

Default value is <code>false</code>.
	* @return	Value of property <code>groupDescending</code>
	*/
	public function getGroupDescending( ):Bool;

	/**
	* Gets content of aggregation {@link #getGroupItems groupItems}.

The list of items with key and value that can be grouped on (for example, a list of columns for a table).
	* @return	null
	*/
	public function getGroupItems( ):Array<sap.m.ViewSettingsItem>;

	/**
	* Returns a metadata object for class sap.m.ViewSettingsDialog.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets content of aggregation {@link #getPresetFilterItems presetFilterItems}.

The list of preset filter items with key and value that allows the selection of more complex or custom filters. These entries are displayed at the top of the filter tab.
	* @return	null
	*/
	public function getPresetFilterItems( ):Array<sap.m.ViewSettingsItem>;

	/**
	* Gets the selected filter object in format { parent_key: { key: boolean, key2: boolean, ...}, ... }.
	* @return	An object with item and sub-item keys
	*/
	public function getSelectedFilterCompoundKeys( ):Dynamic;

	/**
	* Returns the selected filters as an array of ViewSettingsItems.

It can be used to create matching sorters and filters to apply the selected settings to the data.
	* @return	An array of selected filter items
	*/
	public function getSelectedFilterItems( ):Array<sap.m.ViewSettingsItem>;

	/**
	* Gets the filter string in format: "filter name (subfilter1 name, subfilter2 name, ...), ...". For custom and preset filters it will only add the filter name to the resulting string.
	* @return	The selected filter string
	*/
	public function getSelectedFilterString( ):String;

	/**
	* ID of the element which is the current target of the association {@link #getSelectedGroupItem selectedGroupItem}, or <code>null</code>.
	* @return	null
	*/
	public function getSelectedGroupItem( ):sap.ui.core.ID;

	/**
	* ID of the element which is the current target of the association {@link #getSelectedPresetFilterItem selectedPresetFilterItem}, or <code>null</code>.
	* @return	null
	*/
	public function getSelectedPresetFilterItem( ):sap.ui.core.ID;

	/**
	* ID of the element which is the current target of the association {@link #getSelectedSortItem selectedSortItem}, or <code>null</code>.
	* @return	null
	*/
	public function getSelectedSortItem( ):sap.ui.core.ID;

	/**
	* Gets current value of property {@link #getSortDescending sortDescending}.

Determines whether the sort order is descending or ascending (default).

Default value is <code>false</code>.
	* @return	Value of property <code>sortDescending</code>
	*/
	public function getSortDescending( ):Bool;

	/**
	* Gets content of aggregation {@link #getSortItems sortItems}.

The list of items with key and value that can be sorted over (for example, a list of columns for a table).
	* @return	null
	*/
	public function getSortItems( ):Array<sap.m.ViewSettingsItem>;

	/**
	* Gets current value of property {@link #getTitle title}.

Defines the title of the dialog. If not set and there is only one active tab, the dialog uses the default "View" or "Sort", "Group", "Filter" respectively.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Gets current value of property {@link #getTitleAlignment titleAlignment}.

Specifies the Title alignment (theme specific). If set to <code>TitleAlignment.Auto</code>, the Title will be aligned as it is set in the theme (if not set, the default value is <code>center</code>); Other possible values are <code>TitleAlignment.Start</code> (left or right depending on LTR/RTL), and <code>TitleAlignment.Center</code> (centered)

Default value is <code>Auto</code>.
	* @return	Value of property <code>titleAlignment</code>
	*/
	public function getTitleAlignment( ):sap.m.TitleAlignment;

	/**
	* Forward method to the inner dialog method: hasStyleClass.
	* @return	true if the class is set, false otherwise
	*/
	public function hasStyleClass( ):Bool;

	/**
	* Checks for the provided <code>sap.m.ViewSettingsCustomTab</code> in the aggregation {@link #getCustomTabs customTabs}. and returns its index if found or -1 otherwise.
	* @param	oCustomTab The customTab whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfCustomTab( oCustomTab:sap.m.ViewSettingsCustomTab):Int;

	/**
	* Checks for the provided <code>sap.m.ViewSettingsItem</code> in the aggregation {@link #getFilterItems filterItems}. and returns its index if found or -1 otherwise.
	* @param	oFilterItem The filterItem whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfFilterItem( oFilterItem:sap.m.ViewSettingsItem):Int;

	/**
	* Checks for the provided <code>sap.m.ViewSettingsItem</code> in the aggregation {@link #getGroupItems groupItems}. and returns its index if found or -1 otherwise.
	* @param	oGroupItem The groupItem whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfGroupItem( oGroupItem:sap.m.ViewSettingsItem):Int;

	/**
	* Checks for the provided <code>sap.m.ViewSettingsItem</code> in the aggregation {@link #getPresetFilterItems presetFilterItems}. and returns its index if found or -1 otherwise.
	* @param	oPresetFilterItem The presetFilterItem whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfPresetFilterItem( oPresetFilterItem:sap.m.ViewSettingsItem):Int;

	/**
	* Checks for the provided <code>sap.m.ViewSettingsItem</code> in the aggregation {@link #getSortItems sortItems}. and returns its index if found or -1 otherwise.
	* @param	oSortItem The sortItem whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfSortItem( oSortItem:sap.m.ViewSettingsItem):Int;

	/**
	* Inserts a customTab into the aggregation {@link #getCustomTabs customTabs}.
	* @param	oCustomTab The customTab to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the customTab should be inserted at; for a negative value of <code>iIndex</code>, the customTab is inserted at position 0; for a value greater than the current size of the aggregation, the customTab is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertCustomTab( oCustomTab:sap.m.ViewSettingsCustomTab, iIndex:Int):sap.m.ViewSettingsDialog;

	/**
	* Inserts a filterItem into the aggregation {@link #getFilterItems filterItems}.
	* @param	oFilterItem The filterItem to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the filterItem should be inserted at; for a negative value of <code>iIndex</code>, the filterItem is inserted at position 0; for a value greater than the current size of the aggregation, the filterItem is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertFilterItem( oFilterItem:sap.m.ViewSettingsItem, iIndex:Int):sap.m.ViewSettingsDialog;

	/**
	* Inserts a groupItem into the aggregation {@link #getGroupItems groupItems}.
	* @param	oGroupItem The groupItem to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the groupItem should be inserted at; for a negative value of <code>iIndex</code>, the groupItem is inserted at position 0; for a value greater than the current size of the aggregation, the groupItem is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertGroupItem( oGroupItem:sap.m.ViewSettingsItem, iIndex:Int):sap.m.ViewSettingsDialog;

	/**
	* Inserts a presetFilterItem into the aggregation {@link #getPresetFilterItems presetFilterItems}.
	* @param	oPresetFilterItem The presetFilterItem to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the presetFilterItem should be inserted at; for a negative value of <code>iIndex</code>, the presetFilterItem is inserted at position 0; for a value greater than the current size of the aggregation, the presetFilterItem is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertPresetFilterItem( oPresetFilterItem:sap.m.ViewSettingsItem, iIndex:Int):sap.m.ViewSettingsDialog;

	/**
	* Inserts a sortItem into the aggregation {@link #getSortItems sortItems}.
	* @param	oSortItem The sortItem to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the sortItem should be inserted at; for a negative value of <code>iIndex</code>, the sortItem is inserted at position 0; for a value greater than the current size of the aggregation, the sortItem is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertSortItem( oSortItem:sap.m.ViewSettingsItem, iIndex:Int):sap.m.ViewSettingsDialog;

	/**
	* Opens the ViewSettingsDialog relative to the parent control.
	* @param	sPageId The ID of the initial page to be opened in the dialog. The available values are "sort", "group", "filter" or IDs of custom tabs.
	* @return	this pointer for chaining
	*/
	public function open( ?sPageId:String):sap.m.ViewSettingsDialog;

	/**
	* Removes all the controls from the aggregation {@link #getCustomTabs customTabs}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllCustomTabs( ):Array<sap.m.ViewSettingsCustomTab>;

	/**
	* Removes all filter Items and resets the remembered page if it was a filter detail page and all of its filter items are being removed.
	* @return	this pointer for chaining
	*/
	public function removeAllFilterItems( ):sap.m.ViewSettingsDialog;

	/**
	* Removes all the controls from the aggregation {@link #getGroupItems groupItems}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllGroupItems( ):Array<sap.m.ViewSettingsItem>;

	/**
	* Removes all the controls from the aggregation {@link #getPresetFilterItems presetFilterItems}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllPresetFilterItems( ):Array<sap.m.ViewSettingsItem>;

	/**
	* Removes all the controls from the aggregation {@link #getSortItems sortItems}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllSortItems( ):Array<sap.m.ViewSettingsItem>;
	@:overload( function(vCustomTab:Int):sap.m.ViewSettingsCustomTab{ })
	@:overload( function(vCustomTab:String):sap.m.ViewSettingsCustomTab{ })

	/**
	* Removes a customTab from the aggregation {@link #getCustomTabs customTabs}.
	* @param	vCustomTab The customTab to remove or its index or id
	* @return	The removed customTab or <code>null</code>
	*/
	public function removeCustomTab( vCustomTab:sap.m.ViewSettingsCustomTab):sap.m.ViewSettingsCustomTab;
	@:overload( function(vFilterItem:Int):sap.m.ViewSettingsDialog{ })
	@:overload( function(vFilterItem:sap.m.ViewSettingsFilterItem):sap.m.ViewSettingsDialog{ })

	/**
	* Removes a filter Item and resets the remembered page if it was the filter detail page of the removed filter.
	* @param	vFilterItem The filter item's index, or the item itself, or its id
	* @return	this pointer for chaining
	*/
	public function removeFilterItem( vFilterItem:String):sap.m.ViewSettingsDialog;
	@:overload( function(vGroupItem:Int):sap.m.ViewSettingsItem{ })
	@:overload( function(vGroupItem:String):sap.m.ViewSettingsItem{ })

	/**
	* Removes a groupItem from the aggregation {@link #getGroupItems groupItems}.
	* @param	vGroupItem The groupItem to remove or its index or id
	* @return	The removed groupItem or <code>null</code>
	*/
	public function removeGroupItem( vGroupItem:sap.m.ViewSettingsItem):sap.m.ViewSettingsItem;
	@:overload( function(vPresetFilterItem:Int):sap.m.ViewSettingsItem{ })
	@:overload( function(vPresetFilterItem:String):sap.m.ViewSettingsItem{ })

	/**
	* Removes a presetFilterItem from the aggregation {@link #getPresetFilterItems presetFilterItems}.
	* @param	vPresetFilterItem The presetFilterItem to remove or its index or id
	* @return	The removed presetFilterItem or <code>null</code>
	*/
	public function removePresetFilterItem( vPresetFilterItem:sap.m.ViewSettingsItem):sap.m.ViewSettingsItem;
	@:overload( function(vSortItem:Int):sap.m.ViewSettingsItem{ })
	@:overload( function(vSortItem:String):sap.m.ViewSettingsItem{ })

	/**
	* Removes a sortItem from the aggregation {@link #getSortItems sortItems}.
	* @param	vSortItem The sortItem to remove or its index or id
	* @return	The removed sortItem or <code>null</code>
	*/
	public function removeSortItem( vSortItem:sap.m.ViewSettingsItem):sap.m.ViewSettingsItem;

	/**
	* Forward method to the inner dialog method: removeStyleClass.
	* @return	this pointer for chaining
	*/
	public function removeStyleClass( ):sap.m.ViewSettingsDialog;

	/**
	* Forward the busy state setting to the internal dialog instance. Needed because of the not-bullet proof implementation of setBusy in sap.ui.core.Control
	* @param	bBusy The busy state flag
	* @return	this Instance for chaining
	*/
	public function setBusy( bBusy:Bool):sap.m.ViewSettingsDialog;

	/**
	* Sets a callback that will check the ViewSettingsItem's text against the search query. If a callback is set, <code>filterSearchOperator</code> property will be ignored, as it serves the same purpose.
	* @param	fnTest A function that accepts two parameters fnTest({string} query, {string} value) and returns boolean if the value satisfies the query.
	* @return	this instance for chaining
	*/
	public function setFilterSearchCallback( fnTest:()->Void):sap.m.ViewSettingsDialog;

	/**
	* Sets a new value for property {@link #getFilterSearchOperator filterSearchOperator}.

Provides a string filter operator which is used when the user searches items in filter details page. Possible operators are: <code>AnyWordStartsWith</code>, <code>Contains</code>, <code>StartsWith</code>, <code>Equals</code>. This property will be ignored if a custom callback is provided through <code>setFilterSearchCallback</code> method.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>StartsWith</code>.
	* @param	sFilterSearchOperator New value for property <code>filterSearchOperator</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFilterSearchOperator( sFilterSearchOperator:sap.m.StringFilterOperator):sap.m.ViewSettingsDialog;

	/**
	* Sets a new value for property {@link #getGroupDescending groupDescending}.

Determines whether the group order is descending or ascending (default).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bGroupDescending New value for property <code>groupDescending</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGroupDescending( bGroupDescending:Bool):sap.m.ViewSettingsDialog;

	/**
	* Sets the selected filter object in format { parent_key: { key: boolean, key2: boolean, ...}, ... }.
	* @param	oSelectedFilterKeys A configuration object with filter item and sub item keys in the format: { parent_key: { key: boolean, key2: boolean, ...}, ... }. Setting boolean to true will set the filter to true, false or omitting an entry will set the filter to false. It can be used to set the dialog state based on presets.
	* @return	this pointer for chaining
	*/
	public function setSelectedFilterCompoundKeys( oSelectedFilterKeys:Dynamic):sap.m.ViewSettingsDialog;
	@:overload( function(vItemOrKey:sap.m.ViewSettingsItem):sap.m.ViewSettingsDialog{ })

	/**
	* Sets the selected group item (either by key or by item).
	* @param	vItemOrKey The selected item or the item's key string
	* @return	this pointer for chaining
	*/
	public function setSelectedGroupItem( vItemOrKey:String):sap.m.ViewSettingsDialog;
	@:overload( function(vItemOrKey:sap.m.ViewSettingsItem):sap.m.ViewSettingsDialog{ })
	@:overload( function(vItemOrKey:String):sap.m.ViewSettingsDialog{ })

	/**
	* Sets the selected preset filter item.
	* @param	vItemOrKey The selected item or the item's key string
	* @return	this pointer for chaining
	*/
	public function setSelectedPresetFilterItem( vItemOrKey:Dynamic):sap.m.ViewSettingsDialog;
	@:overload( function(vItemOrKey:sap.m.ViewSettingsItem):sap.m.ViewSettingsDialog{ })

	/**
	* Sets the selected sort item (either by key or by item).
	* @param	vItemOrKey The selected item or the item's key string
	* @return	this pointer for chaining
	*/
	public function setSelectedSortItem( vItemOrKey:String):sap.m.ViewSettingsDialog;

	/**
	* Sets a new value for property {@link #getSortDescending sortDescending}.

Determines whether the sort order is descending or ascending (default).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bSortDescending New value for property <code>sortDescending</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSortDescending( bSortDescending:Bool):sap.m.ViewSettingsDialog;

	/**
	* Sets the title of the internal dialog.
	* @param	sTitle The title text for the dialog
	* @return	this pointer for chaining
	*/
	public function setTitle( sTitle:String):sap.m.ViewSettingsDialog;

	/**
	* Sets a new value for property {@link #getTitleAlignment titleAlignment}.

Specifies the Title alignment (theme specific). If set to <code>TitleAlignment.Auto</code>, the Title will be aligned as it is set in the theme (if not set, the default value is <code>center</code>); Other possible values are <code>TitleAlignment.Start</code> (left or right depending on LTR/RTL), and <code>TitleAlignment.Center</code> (centered)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Auto</code>.
	* @param	sTitleAlignment New value for property <code>titleAlignment</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleAlignment( sTitleAlignment:sap.m.TitleAlignment):sap.m.ViewSettingsDialog;

	/**
	* Forward method to the inner dialog method: toggleStyleClass.
	* @return	this pointer for chaining
	*/
	public function toggleStyleClass( ):sap.m.ViewSettingsDialog;

	/**
	* Unbinds aggregation {@link #getCustomTabs customTabs} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindCustomTabs( ):sap.m.ViewSettingsDialog;

	/**
	* Unbinds aggregation {@link #getFilterItems filterItems} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindFilterItems( ):sap.m.ViewSettingsDialog;

	/**
	* Unbinds aggregation {@link #getGroupItems groupItems} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindGroupItems( ):sap.m.ViewSettingsDialog;

	/**
	* Unbinds aggregation {@link #getPresetFilterItems presetFilterItems} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindPresetFilterItems( ):sap.m.ViewSettingsDialog;

	/**
	* Unbinds aggregation {@link #getSortItems sortItems} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindSortItems( ):sap.m.ViewSettingsDialog;
}

typedef ViewSettingsDialogArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the title of the dialog. If not set and there is only one active tab, the dialog uses the default "View" or "Sort", "Group", "Filter" respectively.
	*/
	@:optional var title:String;

	/**
	* Determines whether the sort order is descending or ascending (default).
	*/
	@:optional var sortDescending:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the group order is descending or ascending (default).
	*/
	@:optional var groupDescending:haxe.extern.EitherType<String,Bool>;

	/**
	* Provides a string filter operator which is used when the user searches items in filter details page. Possible operators are: <code>AnyWordStartsWith</code>, <code>Contains</code>, <code>StartsWith</code>, <code>Equals</code>. This property will be ignored if a custom callback is provided through <code>setFilterSearchCallback</code> method.
	*/
	@:optional var filterSearchOperator:haxe.extern.EitherType<String,sap.m.StringFilterOperator>;

	/**
	* Specifies the Title alignment (theme specific). If set to <code>TitleAlignment.Auto</code>, the Title will be aligned as it is set in the theme (if not set, the default value is <code>center</code>); Other possible values are <code>TitleAlignment.Start</code> (left or right depending on LTR/RTL), and <code>TitleAlignment.Center</code> (centered)
	*/
	@:optional var titleAlignment:haxe.extern.EitherType<String,sap.m.TitleAlignment>;

    /**
    * The list of items with key and value that can be sorted over (for example, a list of columns for a table).
    */
	@:optional var sortItems:Array<haxe.extern.EitherType<String,sap.m.ViewSettingsItem>>;

    /**
    * The list of items with key and value that can be grouped on (for example, a list of columns for a table).
    */
	@:optional var groupItems:Array<haxe.extern.EitherType<String,sap.m.ViewSettingsItem>>;

    /**
    * The list of items with key and value that can be filtered on (for example, a list of columns for a table). A filterItem is associated with one or more detail filters.

<b>Note:</b> It is recommended to use the <code>sap.m.ViewSettingsFilterItem</code> as it fits best at the filter page.
    */
	@:optional var filterItems:Array<haxe.extern.EitherType<String,sap.m.ViewSettingsItem>>;

    /**
    * The list of preset filter items with key and value that allows the selection of more complex or custom filters. These entries are displayed at the top of the filter tab.
    */
	@:optional var presetFilterItems:Array<haxe.extern.EitherType<String,sap.m.ViewSettingsItem>>;

    /**
    * The list of all the custom tabs.
    */
	@:optional var customTabs:Array<haxe.extern.EitherType<String,sap.m.ViewSettingsCustomTab>>;

	/**
	* The sort item that is selected. It can be set by either passing a key or the item itself to the function setSelectedSortItem.
	*/
	@:optional var selectedSortItem:haxe.extern.EitherType<String,sap.m.ViewSettingsItem>;

	/**
	* The group item that is selected. It can be set by either passing a key or the item itself to the function setSelectedGroupItem. By default 'None' is selected. You can restore back to 'None' by setting this association to empty value.
	*/
	@:optional var selectedGroupItem:haxe.extern.EitherType<String,sap.m.ViewSettingsItem>;

	/**
	* The preset filter item that is selected. It can be set by either passing a key or the item itself to the function setSelectedPresetFilterItem. Note that either a preset filter OR multiple detail filters can be active at the same time.
	*/
	@:optional var selectedPresetFilterItem:haxe.extern.EitherType<String,sap.m.ViewSettingsItem>;

	/**
	* Called when the Cancel button is pressed. It can be used to set the state of custom filter controls.
	*/
	@:optional var cancel:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Indicates that the user has pressed the OK button and the selected sort, group, and filter settings should be applied to the data on this page. </br></br><b>Note:</b> Custom tabs are not converted to event parameters automatically. For custom tabs, you have to read the state of your controls inside the callback of this event.
	*/
	@:optional var confirm:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when the filter detail page is opened.
	*/
	@:optional var filterDetailPageOpened:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Called when the Reset button is pressed. It can be used to set the state of custom tabs.
	*/
	@:optional var reset:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Called when the filters are being reset.
	*/
	@:optional var resetFilters:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
