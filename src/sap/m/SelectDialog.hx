package sap.m;

@:native("sap.m.SelectDialog")

/**
* <h3>Overview</h3> A SelectDialog is a dialog containing a list, search functionality to filter it and a confirmation/cancel button. The list used in the dialog is a growing list and can be filled with any kind of list item. <h3>Structure</h3> <h4>Dialog structure</h4> The select dialog has the following components: <ul> <li>Header - title of the dialog</li> <li>Search field - input field to enter search terms</li> <li>Info toolbar (only in multi-select) - displays the number of currently selected items</li> <li>Content - {@link sap.m.StandardListItem standard list items}, {@link sap.m.DisplayListItem display list items} or {@link sap.m.FeedListItem feed list items}</li> <li>Button toolbar - for confirmation/cancellation buttons </li> </ul> <h4>List structure & selection</h4> <ul> <li> The search field triggers the events <code>search</code> and <code>liveChange</code> where a filter function can be applied to the list binding. </li> <li> The growing functionality of the list does not support two-way Binding, so if you use this control with a JSON model make sure the binding mode is set to <code>OneWay</code> and that you update the selection model manually with the items passed in the <code>confirm</code> event. </li> <li> In the multi-select mode of the select dialog, checkboxes are provided for choosing multiple entries. </li> <li> You can set <code>rememberSelections</code> to true to store the current selection and load this state when the dialog is opened again. </li> <li> When cancelling the selection, the event <code>change</code> will be fired and the selection is restored to the state when the dialog was opened. </li> </ul> <h3>Usage</h3> <h4>When to use:</h4> <ul> <li>You need to select one or more entries from a comprehensive list that contains multiple attributes or values. </li> </ul> <h4>When not to use:</h4> <ul> <li> You need to pick one item from a predefined set of options. Use {@link sap.m.Select select} or {@link sap.m.ComboBox combobox} instead. </li> <li> You need to select a range of item. Use {@link sap.ui.comp.valuehelpdialog.ValueHelpDialog value help dialog} instead. </li> <li> You need to be able to add your own values to an existing list. Use a {@link sap.m.Dialog dialog} instead. </li> </ul> <h4>Note:</h4> The property <code>growing</code> determines the progressive loading. If it's set to true (the default value), the <code>selected count</code> in info bar and search will work only for the currently loaded items. To make sure that all items in the list are loaded at once and the above feature works properly, we recommend setting the <code>growing</code> property to false. <h3>Responsive Behavior</h3> <ul> <li> On phones, the select dialog takes up the whole screen. </li> <li> On desktop and tablet devices, the select dialog appears as a popover. </li> </ul>
*/
extern class SelectDialog extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:SelectDialogArgs):Void {})
	public function new(?mSettings:SelectDialogArgs):Void;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.m.ListItemBase):sap.m.SelectDialog;

	/**
	* Forward method to the inner dialog: addStyleClass
	* @return	<code>this</code> pointer for chaining
	*/
	public function addStyleClass( ):sap.m.SelectDialog;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:cancel cancel} event of this <code>sap.m.SelectDialog</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SelectDialog</code> itself.

This event will be fired when the cancel button is clicked or ESC key is pressed
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SelectDialog</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachCancel( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SelectDialog;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:confirm confirm} event of this <code>sap.m.SelectDialog</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SelectDialog</code> itself.

This event will be fired when the dialog is confirmed by selecting an item in single selection mode or by pressing the confirmation button in multi selection mode . The items being selected are returned as event parameters.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SelectDialog</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachConfirm( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SelectDialog;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:liveChange liveChange} event of this <code>sap.m.SelectDialog</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SelectDialog</code> itself.

This event will be fired when the value of the search field is changed by a user - e.g. at each key press
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SelectDialog</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachLiveChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SelectDialog;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:search search} event of this <code>sap.m.SelectDialog</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SelectDialog</code> itself.

This event will be fired when the search button has been clicked on the searchfield on the visual control
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SelectDialog</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSearch( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SelectDialog;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.m.SelectDialog;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:cancel cancel} event of this <code>sap.m.SelectDialog</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachCancel( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SelectDialog;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:confirm confirm} event of this <code>sap.m.SelectDialog</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachConfirm( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SelectDialog;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:liveChange liveChange} event of this <code>sap.m.SelectDialog</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachLiveChange( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SelectDialog;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:search search} event of this <code>sap.m.SelectDialog</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSearch( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SelectDialog;

	/**
	* Creates a new subclass of class sap.m.SelectDialog with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Get the internal Dialog's contentHeight property {@link sap.m.Dialog}
	* @return	sHeight The content width of the internal dialog
	*/
	public function getContentHeight( ):sap.ui.core.CSSSize;

	/**
	* Get the internal Dialog's contentWidth property {@link sap.m.Dialog}
	* @return	sWidth The content width of the internal dialog
	*/
	public function getContentWidth( ):sap.ui.core.CSSSize;

	/**
	* Forward method to the inner dialog: getDomRef
	* @return	The Element's DOM Element sub DOM Element or null
	*/
	public function getDomRef( ):js.html.Element;

	/**
	* Gets current value of property {@link #getGrowing growing}.

If set to <code>true</code>, enables the growing feature of the control to load more items by requesting from the bound model (progressive loading). <b>Note:</b> This feature only works when an <code>items</code> aggregation is bound. <b>Note:</b> Growing property, must not be used together with two-way binding.

Default value is <code>true</code>.
	* @return	Value of property <code>growing</code>
	*/
	public function getGrowing( ):Bool;

	/**
	* Gets current value of property {@link #getGrowingThreshold growingThreshold}.

Determines the number of items initially displayed in the list. Also defines the number of items to be requested from the model for each grow. <b>Note:</b> This property could take affect only be used if the property <code>growing</code> is set to <code>true</code>.
	* @return	Value of property <code>growingThreshold</code>
	*/
	public function getGrowingThreshold( ):Int;

	/**
	* Gets content of aggregation {@link #getItems items}.

The items of the list shown in the search dialog. It is recommended to use a StandardListItem for the dialog but other combinations are also possible.
	* @return	null
	*/
	public function getItems( ):Array<sap.m.ListItemBase>;

	/**
	* Returns a metadata object for class sap.m.SelectDialog.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getMultiSelect multiSelect}.

Determines if the user can select several options from the list

Default value is <code>false</code>.
	* @return	Value of property <code>multiSelect</code>
	*/
	public function getMultiSelect( ):Bool;

	/**
	* Get the internal List's no data text property
	* @return	the current no data text
	*/
	public function getNoDataText( ):String;

	/**
	* Gets current value of property {@link #getRememberSelections rememberSelections}.

This flag controls whether the dialog clears the selection after the confirm event has been fired. If the dialog needs to be opened multiple times in the same context to allow for corrections of previous user inputs, set this flag to "true".

<b>Note:</b> The sap.m.SelectDialog uses {@link sap.m.ListBase#rememberSelections this} property of the ListBase and therefore its limitations also apply here.

Default value is <code>false</code>.
	* @return	Value of property <code>rememberSelections</code>
	*/
	public function getRememberSelections( ):Bool;

	/**
	* Gets current value of property {@link #getShowClearButton showClearButton}.

This flag controls whether the Clear button is shown. When set to <code>true</code>, it provides a way to clear selection mode in Select Dialog. We recommended enabling of the Clear button in the following cases, where a mechanism to clear the value is needed: In case of single selection mode(default mode) for Select Dialog and <code>rememberSelections</code> is set to <code>true</code>. Clear button needs to be enabled in order to allow users to clear the selection. In case of using <code>sap.m.Input</code> with <code>valueHelpOnly</code> set to <code>true</code>, the Clear button could be used for clearing selection. In case the application stores a value and uses only Select Dialog to edit/maintain it. <b>Note:</b>When used with oData, only the loaded selections will be cleared.

Default value is <code>false</code>.
	* @return	Value of property <code>showClearButton</code>
	*/
	public function getShowClearButton( ):Bool;

	/**
	* Gets current value of property {@link #getTitle title}.

Determines the title text that appears in the dialog header
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Forward method to the inner dialog: hasStyleClass
	* @return	true if the class is set, false otherwise
	*/
	public function hasStyleClass( ):Bool;

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
	public function insertItem( oItem:sap.m.ListItemBase, iIndex:Int):sap.m.SelectDialog;

	/**
	* Opens the internal dialog with a searchfield and a list.
	* @param	sSearchValue A value for the search can be passed to match with the filter applied to the list binding.
	* @return	<code>this</code> pointer for chaining
	*/
	public function open( sSearchValue:String):sap.m.SelectDialog;

	/**
	* Removes all the controls from the aggregation {@link #getItems items}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllItems( ):Array<sap.m.ListItemBase>;
	@:overload( function(vItem:Int):sap.m.ListItemBase{ })
	@:overload( function(vItem:String):sap.m.ListItemBase{ })

	/**
	* Removes a item from the aggregation {@link #getItems items}.
	* @param	vItem The item to remove or its index or id
	* @return	The removed item or <code>null</code>
	*/
	public function removeItem( vItem:sap.m.ListItemBase):sap.m.ListItemBase;

	/**
	* Forward method to the inner dialog: removeStyleClass
	* @return	<code>this</code> pointer for chaining
	*/
	public function removeStyleClass( ):sap.m.SelectDialog;

	/**
	* Sets the busyIndicatorDelay value to the internal list
	* @param	iValue Value for the busyIndicatorDelay.
	* @return	this pointer for chaining
	*/
	public function setBusyIndicatorDelay( iValue:Int):sap.m.SelectDialog;

	/**
	* Set the internal Dialog's contentHeight property {@link sap.m.Dialog}
	* @param	sHeight The new content width value for the dialog
	* @return	<code>this</code> pointer for chaining
	*/
	public function setContentHeight( sHeight:sap.ui.core.CSSSize):sap.m.SelectDialog;

	/**
	* Set the internal Dialog's contentWidth property {@link sap.m.Dialog}
	* @param	sWidth The new content width value for the dialog
	* @return	<code>this</code>s pointer for chaining
	*/
	public function setContentWidth( sWidth:sap.ui.core.CSSSize):sap.m.SelectDialog;

	/**
	* Sets the growing to the internal list
	* @param	bValue Value for the list's growing.
	* @return	<code>this</code> pointer for chaining
	*/
	public function setGrowing( bValue:Bool):sap.m.SelectDialog;

	/**
	* Sets the growing threshold to the internal list
	* @param	iValue Value for the list's growing threshold.
	* @return	<code>this</code> pointer for chaining
	*/
	public function setGrowingThreshold( iValue:Int):sap.m.SelectDialog;

	/**
	* Enable/Disable multi selection mode.
	* @param	bMulti Flag for multi selection mode
	* @return	<code>this</code> pointer for chaining
	*/
	public function setMultiSelect( bMulti:Bool):sap.m.SelectDialog;

	/**
	* Set the internal List's no data text property
	* @param	sNoDataText The no data text for the list
	* @return	<code>this</code> pointer for chaining
	*/
	public function setNoDataText( sNoDataText:String):sap.m.SelectDialog;

	/**
	* Sets a new value for property {@link #getRememberSelections rememberSelections}.

This flag controls whether the dialog clears the selection after the confirm event has been fired. If the dialog needs to be opened multiple times in the same context to allow for corrections of previous user inputs, set this flag to "true".

<b>Note:</b> The sap.m.SelectDialog uses {@link sap.m.ListBase#rememberSelections this} property of the ListBase and therefore its limitations also apply here.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bRememberSelections New value for property <code>rememberSelections</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRememberSelections( bRememberSelections:Bool):sap.m.SelectDialog;

	/**
	* Sets the Clear button visible state
	* @param	bVisible Value for the Clear button visible state.
	* @return	<code>this</code> pointer for chaining
	*/
	public function setShowClearButton( bVisible:Bool):sap.m.SelectDialog;

	/**
	* Set the title of the internal dialog
	* @param	sTitle The title text for the dialog
	* @return	<code>this</code> pointer for chaining
	*/
	public function setTitle( sTitle:String):sap.m.SelectDialog;

	/**
	* Forward method to the inner dialog: toggleStyleClass
	* @return	<code>this</code> pointer for chaining
	*/
	public function toggleStyleClass( ):sap.m.SelectDialog;
}

typedef SelectDialogArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines the title text that appears in the dialog header
	*/
	@:optional var title:String;

	/**
	* Determines the text shown when the list has no data
	*/
	@:optional var noDataText:String;

	/**
	* Determines if the user can select several options from the list
	*/
	@:optional var multiSelect:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the number of items initially displayed in the list. Also defines the number of items to be requested from the model for each grow. <b>Note:</b> This property could take affect only be used if the property <code>growing</code> is set to <code>true</code>.
	*/
	@:optional var growingThreshold:haxe.extern.EitherType<String,Int>;

	/**
	* If set to <code>true</code>, enables the growing feature of the control to load more items by requesting from the bound model (progressive loading). <b>Note:</b> This feature only works when an <code>items</code> aggregation is bound. <b>Note:</b> Growing property, must not be used together with two-way binding.
	*/
	@:optional var growing:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the content width of the inner dialog. For more information, see the dialog documentation.
	*/
	@:optional var contentWidth:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* This flag controls whether the dialog clears the selection after the confirm event has been fired. If the dialog needs to be opened multiple times in the same context to allow for corrections of previous user inputs, set this flag to "true".

<b>Note:</b> The sap.m.SelectDialog uses {@link sap.m.ListBase#rememberSelections this} property of the ListBase and therefore its limitations also apply here.
	*/
	@:optional var rememberSelections:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the content height of the inner dialog. For more information, see the dialog documentation.
	*/
	@:optional var contentHeight:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* This flag controls whether the Clear button is shown. When set to <code>true</code>, it provides a way to clear selection mode in Select Dialog. We recommended enabling of the Clear button in the following cases, where a mechanism to clear the value is needed: In case of single selection mode(default mode) for Select Dialog and <code>rememberSelections</code> is set to <code>true</code>. Clear button needs to be enabled in order to allow users to clear the selection. In case of using <code>sap.m.Input</code> with <code>valueHelpOnly</code> set to <code>true</code>, the Clear button could be used for clearing selection. In case the application stores a value and uses only Select Dialog to edit/maintain it. <b>Note:</b>When used with oData, only the loaded selections will be cleared.
	*/
	@:optional var showClearButton:haxe.extern.EitherType<String,Bool>;

    /**
    * The items of the list shown in the search dialog. It is recommended to use a StandardListItem for the dialog but other combinations are also possible.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.m.ListItemBase>>;

    /**
    * The internal dialog that will be shown when method open is called
    */
	@:optional var _dialog:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* This event will be fired when the cancel button is clicked or ESC key is pressed
	*/
	@:optional var cancel:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event will be fired when the dialog is confirmed by selecting an item in single selection mode or by pressing the confirmation button in multi selection mode . The items being selected are returned as event parameters.
	*/
	@:optional var confirm:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event will be fired when the value of the search field is changed by a user - e.g. at each key press
	*/
	@:optional var liveChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event will be fired when the search button has been clicked on the searchfield on the visual control
	*/
	@:optional var search:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
