package sap.m;

@:native("sap.m.ListBase")

/**
* The <code>sap.m.ListBase</code> control provides a base functionality of the <code>sap.m.List</code> and <code>sap.m.Table</code> controls. Selection, deletion, unread states and inset style are also maintained in <code>sap.m.ListBase</code>.

See section "{@link topic:295e44b2d0144318bcb7bdd56bfa5189 List, List Item, and Table}" in the documentation for an introduction to subclasses of <code>sap.m.ListBase</code> control.

<b>Note:</b> The ListBase including all contained items may be completely re-rendered when the data of a bound model is changed. Due to the limited hardware resources of mobile devices this can lead to longer delays for lists that contain many items. As such the usage of a list is not recommended for these use cases.
*/
extern class ListBase extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ListBaseArgs):Void {})
	public function new(?mSettings:ListBaseArgs):Void;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.ListBase{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.ListBase;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.m.ListItemBase):sap.m.ListBase;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeOpenContextMenu beforeOpenContextMenu} event of this <code>sap.m.ListBase</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ListBase</code> itself.

Fired when the context menu is opened. When the context menu is opened, the binding context of the item is set to the given <code>contextMenu</code>.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ListBase</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforeOpenContextMenu( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ListBase;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:delete delete} event of this <code>sap.m.ListBase</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ListBase</code> itself.

Fires when delete icon is pressed by user.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ListBase</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachDelete( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ListBase;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:itemPress itemPress} event of this <code>sap.m.ListBase</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ListBase</code> itself.

Fires when an item is pressed unless the item's <code>type</code> property is <code>Inactive</code>.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ListBase</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachItemPress( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ListBase;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:selectionChange selectionChange} event of this <code>sap.m.ListBase</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ListBase</code> itself.

Fires when selection is changed via user interaction inside the control.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ListBase</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelectionChange( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ListBase;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:swipe swipe} event of this <code>sap.m.ListBase</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ListBase</code> itself.

Fires after user's swipe action and before the <code>swipeContent</code> is shown. On the <code>swipe</code> event handler, <code>swipeContent</code> can be changed according to the swiped item. Calling the <code>preventDefault</code> method of the event cancels the swipe action.

<b>Note:</b> There is no accessible alternative provided by the control for swiping. Applications that use this functionality must provide an accessible alternative UI to perform the same action.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ListBase</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSwipe( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ListBase;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:updateFinished updateFinished} event of this <code>sap.m.ListBase</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ListBase</code> itself.

Fires after <code>items</code> binding is updated and processed by the control.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ListBase</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachUpdateFinished( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ListBase;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:updateStarted updateStarted} event of this <code>sap.m.ListBase</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ListBase</code> itself.

Fires before <code>items</code> binding is updated (e.g. sorting, filtering)

<b>Note:</b> Event handler should not invalidate the control.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ListBase</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachUpdateStarted( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ListBase;

	/**
	* Binds aggregation {@link #getItems items} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindItems( oBindingInfo:Dynamic):sap.m.ListBase;

	/**
	* Destroys the contextMenu in the aggregation {@link #getContextMenu contextMenu}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContextMenu( ):sap.m.ListBase;

	/**
	* Destroys the headerToolbar in the aggregation {@link #getHeaderToolbar headerToolbar}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyHeaderToolbar( ):sap.m.ListBase;

	/**
	* Destroys the infoToolbar in the aggregation {@link #getInfoToolbar infoToolbar}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyInfoToolbar( ):sap.m.ListBase;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.m.ListBase;

	/**
	* Destroys the swipeContent in the aggregation {@link #getSwipeContent swipeContent}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySwipeContent( ):sap.m.ListBase;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeOpenContextMenu beforeOpenContextMenu} event of this <code>sap.m.ListBase</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforeOpenContextMenu( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ListBase;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:delete delete} event of this <code>sap.m.ListBase</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachDelete( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ListBase;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:itemPress itemPress} event of this <code>sap.m.ListBase</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachItemPress( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ListBase;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:selectionChange selectionChange} event of this <code>sap.m.ListBase</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelectionChange( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ListBase;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:swipe swipe} event of this <code>sap.m.ListBase</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSwipe( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ListBase;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:updateFinished updateFinished} event of this <code>sap.m.ListBase</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachUpdateFinished( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ListBase;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:updateStarted updateStarted} event of this <code>sap.m.ListBase</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachUpdateStarted( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ListBase;

	/**
	* Creates a new subclass of class sap.m.ListBase with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets content of aggregation {@link #getContextMenu contextMenu}.

Defines the context menu of the items.
	* @return	null
	*/
	public function getContextMenu( ):sap.ui.core.IContextMenu;

	/**
	* Gets current value of property {@link #getEnableBusyIndicator enableBusyIndicator}.

When this property is set to <code>true</code>, the control will automatically display a busy indicator when it detects that data is being loaded. This busy indicator blocks the interaction with the items until data loading is finished. By default, the busy indicator will be shown after one second. This behavior can be customized by setting the <code>busyIndicatorDelay</code> property.

Default value is <code>true</code>.
	* @return	Value of property <code>enableBusyIndicator</code>
	*/
	public function getEnableBusyIndicator( ):Bool;

	/**
	* Gets current value of property {@link #getFooterText footerText}.

Defines the footer text that appears in the control.
	* @return	Value of property <code>footerText</code>
	*/
	public function getFooterText( ):String;

	/**
	* Gets current value of property {@link #getGrowing growing}.

If set to <code>true</code>, enables the growing feature of the control to load more items by requesting from the model. <b>Note:</b>: This feature only works when an <code>items</code> aggregation is bound. Growing must not be used together with two-way binding.

Default value is <code>false</code>.
	* @return	Value of property <code>growing</code>
	*/
	public function getGrowing( ):Bool;

	/**
	* Gets current value of property {@link #getGrowingDirection growingDirection}.

Defines the direction of the growing feature. If set to <code>Downwards</code> the user has to scroll down to load more items or the growing button is displayed at the bottom. If set to <code>Upwards</code> the user has to scroll up to load more items or the growing button is displayed at the top.

Default value is <code>Downwards</code>.
	* @return	Value of property <code>growingDirection</code>
	*/
	public function getGrowingDirection( ):sap.m.ListGrowingDirection;

	/**
	* Returns growing information as object with "actual" and "total" keys. Note: This function returns "null" if "growing" feature is disabled.
	* @return	null
	*/
	public function getGrowingInfo( ):Dynamic;

	/**
	* Gets current value of property {@link #getGrowingScrollToLoad growingScrollToLoad}.

If set to true, the user can scroll down/up to load more items. Otherwise a growing button is displayed at the bottom/top of the control. <b>Note:</b> This property can only be used if the <code>growing</code> property is set to <code>true</code> and only if there is one instance of <code>sap.m.List</code> or <code>sap.m.Table</code> inside the scrollable scroll container (e.g <code>sap.m.Page</code>).

Default value is <code>false</code>.
	* @return	Value of property <code>growingScrollToLoad</code>
	*/
	public function getGrowingScrollToLoad( ):Bool;

	/**
	* Gets current value of property {@link #getGrowingThreshold growingThreshold}.

Defines the number of items to be requested from the model for each grow. This property can only be used if the <code>growing</code> property is set to <code>true</code>.

Default value is <code>20</code>.
	* @return	Value of property <code>growingThreshold</code>
	*/
	public function getGrowingThreshold( ):Int;

	/**
	* Gets current value of property {@link #getGrowingTriggerText growingTriggerText}.

Defines the text displayed on the growing button. The default is a translated text ("More") coming from the message bundle. This property can only be used if the <code>growing</code> property is set to <code>true</code>.
	* @return	Value of property <code>growingTriggerText</code>
	*/
	public function getGrowingTriggerText( ):String;

	/**
	* Gets current value of property {@link #getHeaderText headerText}.

Defines the header text that appears in the control. <b>Note:</b> If <code>headerToolbar</code> aggregation is set, then this property is ignored.
	* @return	Value of property <code>headerText</code>
	*/
	public function getHeaderText( ):String;

	/**
	* Gets content of aggregation {@link #getHeaderToolbar headerToolbar}.

The header area can be used as a toolbar to add extra controls for user interactions. <b>Note:</b> When set, this overwrites the <code>headerText</code> property.
	* @return	null
	*/
	public function getHeaderToolbar( ):sap.m.Toolbar;

	/**
	* Gets current value of property {@link #getIncludeItemInSelection includeItemInSelection}.

Defines whether the items are selectable by clicking on the item itself (<code>true</code>) rather than having to set the selection control first. <b>Note:</b> The <code>SingleSelectMaster</code> mode also provides this functionality by default.

Default value is <code>false</code>.
	* @return	Value of property <code>includeItemInSelection</code>
	*/
	public function getIncludeItemInSelection( ):Bool;

	/**
	* Gets content of aggregation {@link #getInfoToolbar infoToolbar}.

A toolbar that is placed below the header to show extra information to the user.
	* @return	null
	*/
	public function getInfoToolbar( ):sap.m.Toolbar;

	/**
	* Gets current value of property {@link #getInset inset}.

Defines the indentation of the container. Setting it to <code>true</code> indents the list.

Default value is <code>false</code>.
	* @return	Value of property <code>inset</code>
	*/
	public function getInset( ):Bool;

	/**
	* Gets content of aggregation {@link #getItems items}.

Defines the items contained within this control.
	* @return	null
	*/
	public function getItems( ):Array<sap.m.ListItemBase>;

	/**
	* Gets current value of property {@link #getKeyboardMode keyboardMode}.

Defines keyboard handling behavior of the control.

Default value is <code>Navigation</code>.
	* @return	Value of property <code>keyboardMode</code>
	*/
	public function getKeyboardMode( ):sap.m.ListKeyboardMode;

	/**
	* Returns a metadata object for class sap.m.ListBase.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getMode mode}.

Defines the mode of the control (e.g. <code>None</code>, <code>SingleSelect</code>, <code>MultiSelect</code>, <code>Delete</code>).

Default value is <code>None</code>.
	* @return	Value of property <code>mode</code>
	*/
	public function getMode( ):sap.m.ListMode;

	/**
	* Gets current value of property {@link #getModeAnimationOn modeAnimationOn}.

Defines if animations will be shown while switching between modes.

Default value is <code>true</code>.
	* @return	Value of property <code>modeAnimationOn</code>
	*/
	public function getModeAnimationOn( ):Bool;

	/**
	* Gets current value of property {@link #getNoDataText noDataText}.

This text is displayed when the control contains no items.
	* @return	Value of property <code>noDataText</code>
	*/
	public function getNoDataText( ):String;

	/**
	* Gets current value of property {@link #getRememberSelections rememberSelections}.

If set to true, this control remembers and retains the selection of the items after a binding update has been performed (e.g. sorting, filtering). <b>Note:</b> This feature works only if two-way data binding for the <code>selected</code> property of the item is not used. It also needs to be turned off if the binding context of the item does not always point to the same entry in the model, for example, if the order of the data in the <code>JSONModel</code> is changed.

Default value is <code>true</code>.
	* @return	Value of property <code>rememberSelections</code>
	*/
	public function getRememberSelections( ):Bool;

	/**
	* Returns the binding contexts of the selected items. Note: This method returns an empty array if no databinding is used.
	* @param	bAll Set true to include even invisible selected items(e.g. the selections from the previous filters). Note: In single selection modes, only the last selected item's binding context is returned in array.
	* @return	null
	*/
	public function getSelectedContexts( bAll:Bool):Array<Dynamic>;

	/**
	* Returns selected list item. When no item is selected, "null" is returned. When "multi-selection" is enabled and multiple items are selected, only the up-most selected item is returned.
	* @return	null
	*/
	public function getSelectedItem( ):sap.m.ListItemBase;

	/**
	* Returns an array containing the selected list items. If no items are selected, an empty array is returned.
	* @return	null
	*/
	public function getSelectedItems( ):Array<sap.m.ListItemBase>;

	/**
	* Gets current value of property {@link #getShowNoData showNoData}.

Defines whether or not the text specified in the <code>noDataText</code> property is displayed.

Default value is <code>true</code>.
	* @return	Value of property <code>showNoData</code>
	*/
	public function getShowNoData( ):Bool;

	/**
	* Gets current value of property {@link #getShowSeparators showSeparators}.

Defines which item separator style will be used.

Default value is <code>All</code>.
	* @return	Value of property <code>showSeparators</code>
	*/
	public function getShowSeparators( ):sap.m.ListSeparators;

	/**
	* Gets current value of property {@link #getShowUnread showUnread}.

Activates the unread indicator for all items, if set to <code>true</code>.

Default value is <code>false</code>.
	* @return	Value of property <code>showUnread</code>
	*/
	public function getShowUnread( ):Bool;

	/**
	* Gets current value of property {@link #getSticky sticky}.

Defines the section of the control that remains fixed at the top of the page during vertical scrolling as long as the control is in the viewport.

<b>Note:</b> Enabling sticky column headers in List controls will not have any effect.

There is limited browser support. Browsers that do not support this feature are listed below: <ul> <li>IE</li> <li>Edge lower than version 41 (EdgeHTML 16)</li> <li>Firefox lower than version 59</li> </ul>

There are also some known limitations. A few are given below: <ul> <li>If the control is placed in layout containers that have the <code>overflow: hidden</code> or <code>overflow: auto</code> style definition, this can prevent the sticky elements of the control from becoming fixed at the top of the viewport.</li> <li>If sticky column headers are enabled in the <code>sap.m.Table</code> control, setting focus on the column headers will let the table scroll to the top.</li> <li>A transparent toolbar design is not supported for sticky bars. The toolbar will automatically get an intransparent background color.</li> <li>This feature supports only the default height of the toolbar control.</li> </ul>
	* @return	Value of property <code>sticky</code>
	*/
	public function getSticky( ):Array<sap.m.Sticky>;

	/**
	* Gets content of aggregation {@link #getSwipeContent swipeContent}.

User can swipe to bring in this control on the right hand side of an item. <b>Note:</b> <ul> <li>For non-touch screen devices, this functionality is ignored.</li> <li>There is no accessible alternative provided by the control for swiping. Applications that use this functionality must provide an accessible alternative UI to perform the same action.</li> <ul>
	* @return	null
	*/
	public function getSwipeContent( ):sap.ui.core.Control;

	/**
	* Gets current value of property {@link #getSwipeDirection swipeDirection}.

Defines the direction of the swipe movement (e.g LeftToRight, RightToLeft, Both) to display the control defined in the <code>swipeContent</code> aggregation.

Default value is <code>Both</code>.
	* @return	Value of property <code>swipeDirection</code>
	*/
	public function getSwipeDirection( ):sap.m.SwipeDirection;

	/**
	* Returns swiped list item. When no item is swiped, "null" is returned.
	* @return	null
	*/
	public function getSwipedItem( ):sap.m.ListItemBase;

	/**
	* Gets current value of property {@link #getWidth width}.

Sets the width of the control.

Default value is <code>"100%"</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.m.ListItemBase</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.m.ListItemBase):Int;

	/**
	* Inserts a item into the aggregation {@link #getItems items}.
	* @param	oItem The item to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertItem( oItem:sap.m.ListItemBase, iIndex:Int):sap.m.ListBase;

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
	public function removeAllItems( ):Array<sap.m.ListItemBase>;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;
	@:overload( function(vItem:Int):sap.m.ListItemBase{ })
	@:overload( function(vItem:String):sap.m.ListItemBase{ })

	/**
	* Removes a item from the aggregation {@link #getItems items}.
	* @param	vItem The item to remove or its index or id
	* @return	The removed item or <code>null</code>
	*/
	public function removeItem( vItem:sap.m.ListItemBase):sap.m.ListItemBase;

	/**
	* Removes visible selections of the current selection mode.
	* @param	bAll Since version 1.16.3. This control keeps old selections after filter or sorting. Set this parameter "true" to remove all selections.
	* @return	null
	*/
	public function removeSelections( bAll:Bool):sap.m.ListBase;

	/**
	* Scrolls the list so that the item with the given index is in the viewport. If the index is -1, it scrolls to the bottom of the list. If the growing feature is enabled, the list is scrolled to the last available item.

Growing in combination with <code>growingScrollToLoad=true</code> can result in loading of new items when scrolling to the bottom of the list.
	* @param	iIndex The list item index that must be scrolled into the viewport
	* @return	Void
	*/
	public function scrollToIndex( iIndex:String):Void;

	/**
	* Select all items in "MultiSelection" mode.

<b>Note:</b> In case <code>growing</code> is enabled, only the visible items in the list will be selected.
	* @return	null
	*/
	public function selectAll( ):sap.m.ListBase;

	/**
	* Sets the aggregated {@link #getContextMenu contextMenu}.
	* @param	oContextMenu The contextMenu to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContextMenu( oContextMenu:sap.ui.core.IContextMenu):sap.m.ListBase;

	/**
	* Sets a new value for property {@link #getEnableBusyIndicator enableBusyIndicator}.

When this property is set to <code>true</code>, the control will automatically display a busy indicator when it detects that data is being loaded. This busy indicator blocks the interaction with the items until data loading is finished. By default, the busy indicator will be shown after one second. This behavior can be customized by setting the <code>busyIndicatorDelay</code> property.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnableBusyIndicator New value for property <code>enableBusyIndicator</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableBusyIndicator( ?bEnableBusyIndicator:Bool):sap.m.ListBase;

	/**
	* Sets a new value for property {@link #getFooterText footerText}.

Defines the footer text that appears in the control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sFooterText New value for property <code>footerText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFooterText( ?sFooterText:String):sap.m.ListBase;

	/**
	* Sets a new value for property {@link #getGrowing growing}.

If set to <code>true</code>, enables the growing feature of the control to load more items by requesting from the model. <b>Note:</b>: This feature only works when an <code>items</code> aggregation is bound. Growing must not be used together with two-way binding.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bGrowing New value for property <code>growing</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGrowing( ?bGrowing:Bool):sap.m.ListBase;

	/**
	* Sets a new value for property {@link #getGrowingDirection growingDirection}.

Defines the direction of the growing feature. If set to <code>Downwards</code> the user has to scroll down to load more items or the growing button is displayed at the bottom. If set to <code>Upwards</code> the user has to scroll up to load more items or the growing button is displayed at the top.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Downwards</code>.
	* @param	sGrowingDirection New value for property <code>growingDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGrowingDirection( ?sGrowingDirection:sap.m.ListGrowingDirection):sap.m.ListBase;

	/**
	* Sets a new value for property {@link #getGrowingScrollToLoad growingScrollToLoad}.

If set to true, the user can scroll down/up to load more items. Otherwise a growing button is displayed at the bottom/top of the control. <b>Note:</b> This property can only be used if the <code>growing</code> property is set to <code>true</code> and only if there is one instance of <code>sap.m.List</code> or <code>sap.m.Table</code> inside the scrollable scroll container (e.g <code>sap.m.Page</code>).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bGrowingScrollToLoad New value for property <code>growingScrollToLoad</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGrowingScrollToLoad( ?bGrowingScrollToLoad:Bool):sap.m.ListBase;

	/**
	* Sets a new value for property {@link #getGrowingThreshold growingThreshold}.

Defines the number of items to be requested from the model for each grow. This property can only be used if the <code>growing</code> property is set to <code>true</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>20</code>.
	* @param	iGrowingThreshold New value for property <code>growingThreshold</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGrowingThreshold( ?iGrowingThreshold:Int):sap.m.ListBase;

	/**
	* Sets a new value for property {@link #getGrowingTriggerText growingTriggerText}.

Defines the text displayed on the growing button. The default is a translated text ("More") coming from the message bundle. This property can only be used if the <code>growing</code> property is set to <code>true</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sGrowingTriggerText New value for property <code>growingTriggerText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGrowingTriggerText( ?sGrowingTriggerText:String):sap.m.ListBase;

	/**
	* Sets a new value for property {@link #getHeaderText headerText}.

Defines the header text that appears in the control. <b>Note:</b> If <code>headerToolbar</code> aggregation is set, then this property is ignored.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHeaderText New value for property <code>headerText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeaderText( ?sHeaderText:String):sap.m.ListBase;

	/**
	* Sets the aggregated {@link #getHeaderToolbar headerToolbar}.
	* @param	oHeaderToolbar The headerToolbar to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeaderToolbar( oHeaderToolbar:sap.m.Toolbar):sap.m.ListBase;

	/**
	* Sets a new value for property {@link #getIncludeItemInSelection includeItemInSelection}.

Defines whether the items are selectable by clicking on the item itself (<code>true</code>) rather than having to set the selection control first. <b>Note:</b> The <code>SingleSelectMaster</code> mode also provides this functionality by default.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bIncludeItemInSelection New value for property <code>includeItemInSelection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIncludeItemInSelection( ?bIncludeItemInSelection:Bool):sap.m.ListBase;

	/**
	* Sets the aggregated {@link #getInfoToolbar infoToolbar}.
	* @param	oInfoToolbar The infoToolbar to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInfoToolbar( oInfoToolbar:sap.m.Toolbar):sap.m.ListBase;

	/**
	* Sets a new value for property {@link #getInset inset}.

Defines the indentation of the container. Setting it to <code>true</code> indents the list.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bInset New value for property <code>inset</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInset( ?bInset:Bool):sap.m.ListBase;

	/**
	* Sets a new value for property {@link #getKeyboardMode keyboardMode}.

Defines keyboard handling behavior of the control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Navigation</code>.
	* @param	sKeyboardMode New value for property <code>keyboardMode</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setKeyboardMode( ?sKeyboardMode:sap.m.ListKeyboardMode):sap.m.ListBase;

	/**
	* Sets a new value for property {@link #getMode mode}.

Defines the mode of the control (e.g. <code>None</code>, <code>SingleSelect</code>, <code>MultiSelect</code>, <code>Delete</code>).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sMode New value for property <code>mode</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMode( ?sMode:sap.m.ListMode):sap.m.ListBase;

	/**
	* Sets a new value for property {@link #getModeAnimationOn modeAnimationOn}.

Defines if animations will be shown while switching between modes.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bModeAnimationOn New value for property <code>modeAnimationOn</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setModeAnimationOn( ?bModeAnimationOn:Bool):sap.m.ListBase;

	/**
	* Sets a new value for property {@link #getNoDataText noDataText}.

This text is displayed when the control contains no items.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sNoDataText New value for property <code>noDataText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNoDataText( ?sNoDataText:String):sap.m.ListBase;

	/**
	* Sets a new value for property {@link #getRememberSelections rememberSelections}.

If set to true, this control remembers and retains the selection of the items after a binding update has been performed (e.g. sorting, filtering). <b>Note:</b> This feature works only if two-way data binding for the <code>selected</code> property of the item is not used. It also needs to be turned off if the binding context of the item does not always point to the same entry in the model, for example, if the order of the data in the <code>JSONModel</code> is changed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bRememberSelections New value for property <code>rememberSelections</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRememberSelections( ?bRememberSelections:Bool):sap.m.ListBase;

	/**
	* Selects or deselects the given list item.
	* @param	oListItem The list item whose selection to be changed. This parameter is mandatory.
	* @param	bSelect Sets selected status of the list item
	* @return	null
	*/
	public function setSelectedItem( oListItem:sap.m.ListItemBase, ?bSelect:Bool):sap.m.ListBase;

	/**
	* Sets a list item to be selected by id. In single mode the method removes the previous selection.
	* @param	sId The id of the list item whose selection to be changed.
	* @param	bSelect Sets selected status of the list item
	* @return	null
	*/
	public function setSelectedItemById( sId:String, ?bSelect:Bool):sap.m.ListBase;

	/**
	* Sets a new value for property {@link #getShowNoData showNoData}.

Defines whether or not the text specified in the <code>noDataText</code> property is displayed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowNoData New value for property <code>showNoData</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowNoData( ?bShowNoData:Bool):sap.m.ListBase;

	/**
	* Sets a new value for property {@link #getShowSeparators showSeparators}.

Defines which item separator style will be used.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>All</code>.
	* @param	sShowSeparators New value for property <code>showSeparators</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowSeparators( ?sShowSeparators:sap.m.ListSeparators):sap.m.ListBase;

	/**
	* Sets a new value for property {@link #getShowUnread showUnread}.

Activates the unread indicator for all items, if set to <code>true</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowUnread New value for property <code>showUnread</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowUnread( ?bShowUnread:Bool):sap.m.ListBase;

	/**
	* Sets a new value for property {@link #getSticky sticky}.

Defines the section of the control that remains fixed at the top of the page during vertical scrolling as long as the control is in the viewport.

<b>Note:</b> Enabling sticky column headers in List controls will not have any effect.

There is limited browser support. Browsers that do not support this feature are listed below: <ul> <li>IE</li> <li>Edge lower than version 41 (EdgeHTML 16)</li> <li>Firefox lower than version 59</li> </ul>

There are also some known limitations. A few are given below: <ul> <li>If the control is placed in layout containers that have the <code>overflow: hidden</code> or <code>overflow: auto</code> style definition, this can prevent the sticky elements of the control from becoming fixed at the top of the viewport.</li> <li>If sticky column headers are enabled in the <code>sap.m.Table</code> control, setting focus on the column headers will let the table scroll to the top.</li> <li>A transparent toolbar design is not supported for sticky bars. The toolbar will automatically get an intransparent background color.</li> <li>This feature supports only the default height of the toolbar control.</li> </ul>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sSticky New value for property <code>sticky</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSticky( sSticky:Array<sap.m.Sticky>):sap.m.ListBase;

	/**
	* Sets the aggregated {@link #getSwipeContent swipeContent}.
	* @param	oSwipeContent The swipeContent to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSwipeContent( oSwipeContent:sap.ui.core.Control):sap.m.ListBase;

	/**
	* Sets a new value for property {@link #getSwipeDirection swipeDirection}.

Defines the direction of the swipe movement (e.g LeftToRight, RightToLeft, Both) to display the control defined in the <code>swipeContent</code> aggregation.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Both</code>.
	* @param	sSwipeDirection New value for property <code>swipeDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSwipeDirection( ?sSwipeDirection:sap.m.SwipeDirection):sap.m.ListBase;

	/**
	* Sets a new value for property {@link #getWidth width}.

Sets the width of the control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>"100%"</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.m.ListBase;

	/**
	* After swipeContent is shown, user can interact with this control(e.g Tap). After interaction is done, you can/should use this method to hide swipeContent from screen. Note: If users try to tap inside of the list but outside of the swipeContent then control hides automatically.
	* @param	oCallback This callback function is called with two parameters(swipedListItem and swipedContent) after swipe-out animation is finished.
	* @return	null
	*/
	public function swipeOut( oCallback:Dynamic):sap.m.ListBase;

	/**
	* Unbinds aggregation {@link #getItems items} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindItems( ):sap.m.ListBase;
}

typedef ListBaseArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the indentation of the container. Setting it to <code>true</code> indents the list.
	*/
	@:optional var inset:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the header text that appears in the control. <b>Note:</b> If <code>headerToolbar</code> aggregation is set, then this property is ignored.
	*/
	@:optional var headerText:String;

	/**
	* Defines the footer text that appears in the control.
	*/
	@:optional var footerText:String;

	/**
	* Defines the mode of the control (e.g. <code>None</code>, <code>SingleSelect</code>, <code>MultiSelect</code>, <code>Delete</code>).
	*/
	@:optional var mode:haxe.extern.EitherType<String,sap.m.ListMode>;

	/**
	* Sets the width of the control.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Defines whether the items are selectable by clicking on the item itself (<code>true</code>) rather than having to set the selection control first. <b>Note:</b> The <code>SingleSelectMaster</code> mode also provides this functionality by default.
	*/
	@:optional var includeItemInSelection:haxe.extern.EitherType<String,Bool>;

	/**
	* Activates the unread indicator for all items, if set to <code>true</code>.
	*/
	@:optional var showUnread:haxe.extern.EitherType<String,Bool>;

	/**
	* This text is displayed when the control contains no items.
	*/
	@:optional var noDataText:String;

	/**
	* Defines whether or not the text specified in the <code>noDataText</code> property is displayed.
	*/
	@:optional var showNoData:haxe.extern.EitherType<String,Bool>;

	/**
	* When this property is set to <code>true</code>, the control will automatically display a busy indicator when it detects that data is being loaded. This busy indicator blocks the interaction with the items until data loading is finished. By default, the busy indicator will be shown after one second. This behavior can be customized by setting the <code>busyIndicatorDelay</code> property.
	*/
	@:optional var enableBusyIndicator:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines if animations will be shown while switching between modes.
	*/
	@:optional var modeAnimationOn:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines which item separator style will be used.
	*/
	@:optional var showSeparators:haxe.extern.EitherType<String,sap.m.ListSeparators>;

	/**
	* Defines the direction of the swipe movement (e.g LeftToRight, RightToLeft, Both) to display the control defined in the <code>swipeContent</code> aggregation.
	*/
	@:optional var swipeDirection:haxe.extern.EitherType<String,sap.m.SwipeDirection>;

	/**
	* If set to <code>true</code>, enables the growing feature of the control to load more items by requesting from the model. <b>Note:</b>: This feature only works when an <code>items</code> aggregation is bound. Growing must not be used together with two-way binding.
	*/
	@:optional var growing:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the number of items to be requested from the model for each grow. This property can only be used if the <code>growing</code> property is set to <code>true</code>.
	*/
	@:optional var growingThreshold:haxe.extern.EitherType<String,Int>;

	/**
	* Defines the text displayed on the growing button. The default is a translated text ("More") coming from the message bundle. This property can only be used if the <code>growing</code> property is set to <code>true</code>.
	*/
	@:optional var growingTriggerText:String;

	/**
	* If set to true, the user can scroll down/up to load more items. Otherwise a growing button is displayed at the bottom/top of the control. <b>Note:</b> This property can only be used if the <code>growing</code> property is set to <code>true</code> and only if there is one instance of <code>sap.m.List</code> or <code>sap.m.Table</code> inside the scrollable scroll container (e.g <code>sap.m.Page</code>).
	*/
	@:optional var growingScrollToLoad:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the direction of the growing feature. If set to <code>Downwards</code> the user has to scroll down to load more items or the growing button is displayed at the bottom. If set to <code>Upwards</code> the user has to scroll up to load more items or the growing button is displayed at the top.
	*/
	@:optional var growingDirection:haxe.extern.EitherType<String,sap.m.ListGrowingDirection>;

	/**
	* If set to true, this control remembers and retains the selection of the items after a binding update has been performed (e.g. sorting, filtering). <b>Note:</b> This feature works only if two-way data binding for the <code>selected</code> property of the item is not used. It also needs to be turned off if the binding context of the item does not always point to the same entry in the model, for example, if the order of the data in the <code>JSONModel</code> is changed.
	*/
	@:optional var rememberSelections:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines keyboard handling behavior of the control.
	*/
	@:optional var keyboardMode:haxe.extern.EitherType<String,sap.m.ListKeyboardMode>;

	/**
	* Defines the section of the control that remains fixed at the top of the page during vertical scrolling as long as the control is in the viewport.

<b>Note:</b> Enabling sticky column headers in List controls will not have any effect.

There is limited browser support. Browsers that do not support this feature are listed below: <ul> <li>IE</li> <li>Edge lower than version 41 (EdgeHTML 16)</li> <li>Firefox lower than version 59</li> </ul>

There are also some known limitations. A few are given below: <ul> <li>If the control is placed in layout containers that have the <code>overflow: hidden</code> or <code>overflow: auto</code> style definition, this can prevent the sticky elements of the control from becoming fixed at the top of the viewport.</li> <li>If sticky column headers are enabled in the <code>sap.m.Table</code> control, setting focus on the column headers will let the table scroll to the top.</li> <li>A transparent toolbar design is not supported for sticky bars. The toolbar will automatically get an intransparent background color.</li> <li>This feature supports only the default height of the toolbar control.</li> </ul>
	*/
	@:optional var sticky:Array<haxe.extern.EitherType<String,sap.m.Sticky>>;

    /**
    * Defines the items contained within this control.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.m.ListItemBase>>;

    /**
    * User can swipe to bring in this control on the right hand side of an item. <b>Note:</b> <ul> <li>For non-touch screen devices, this functionality is ignored.</li> <li>There is no accessible alternative provided by the control for swiping. Applications that use this functionality must provide an accessible alternative UI to perform the same action.</li> <ul>
    */
	@:optional var swipeContent:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * The header area can be used as a toolbar to add extra controls for user interactions. <b>Note:</b> When set, this overwrites the <code>headerText</code> property.
    */
	@:optional var headerToolbar:haxe.extern.EitherType<String,sap.m.Toolbar>;

    /**
    * A toolbar that is placed below the header to show extra information to the user.
    */
	@:optional var infoToolbar:haxe.extern.EitherType<String,sap.m.Toolbar>;

    /**
    * Defines the context menu of the items.
    */
	@:optional var contextMenu:haxe.extern.EitherType<String,sap.ui.core.IContextMenu>;

    /**
    * Defines the message strip to display binding-related messages.
    */
	@:optional var _messageStrip:haxe.extern.EitherType<String,sap.m.MessageStrip>;

	/**
	* Association to controls / ids which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Fired when the context menu is opened. When the context menu is opened, the binding context of the item is set to the given <code>contextMenu</code>.
	*/
	@:optional var beforeOpenContextMenu:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fires when delete icon is pressed by user.
	*/
	@:optional var delete:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fires when an item is pressed unless the item's <code>type</code> property is <code>Inactive</code>.
	*/
	@:optional var itemPress:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fires when selection is changed via user interaction inside the control.
	*/
	@:optional var selectionChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fires after user's swipe action and before the <code>swipeContent</code> is shown. On the <code>swipe</code> event handler, <code>swipeContent</code> can be changed according to the swiped item. Calling the <code>preventDefault</code> method of the event cancels the swipe action.

<b>Note:</b> There is no accessible alternative provided by the control for swiping. Applications that use this functionality must provide an accessible alternative UI to perform the same action.
	*/
	@:optional var swipe:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fires after <code>items</code> binding is updated and processed by the control.
	*/
	@:optional var updateFinished:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fires before <code>items</code> binding is updated (e.g. sorting, filtering)

<b>Note:</b> Event handler should not invalidate the control.
	*/
	@:optional var updateStarted:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
