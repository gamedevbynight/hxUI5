package sap.m;

@:native("sap.m.TableSelectDialog")

/**
* A dialog to select items in a table containing multiple values and attributes. <h3>Overview</h3> The table select dialog helps users select items in a table-like structure with several attributes and values per item. A search fields helps narrow down the results. <h3>Structure</h3> The table select dialog consists of the following elements: <ul> <li> Search field - used to search enter search terms for a specific item.</li> <li> Info toolbar (only in multi-select mode) - displays the number of currently selected items.</li> <li> Content - the table with the items.</li> <li> Footer (optional) - a toolbar for actions.</li> </ul> Table select dialog supports multi-selection when the <code>multiSelect</code> property is set.

The selected items can be stored for later editing when the <code>rememberSelections</code> property is set. <b>Note:</b> This property has to be set before the dialog is opened. <h3>Usage</h3> <h4>When to use:</h4> <ul> <li>You need to select one or more items from a comprehensive list that contains multiple attributes or values.</li> </ul> <h4>When not to use:</h4> <ul> <li>You need to select only one item from a predefined list of single-value options. Use the {@link sap.m.Select Select} control instead.</li> <li>You need to display complex content without having the user navigate away from the current page or you want to prompt the user for an action. Use the {@link sap.m.Dialog Dialog} control instead.</li> <li>You need to select items within a query-based range. Use the {@link https://experience.sap.com/fiori-design-web/value-help-dialog/ Value Help Dialog} control instead.</li> <li>You need to filter a set of items without any selection. Use the {@link https://experience.sap.com/fiori-design-web/filter-bar/ Filter Bar} control instead.</li> </ul> <h4>Notes:</h4> <ul> <li>The property <code>growing</code> must not be used together with two-way binding. <li>When the property <code>growing</code> is set to <code>true</code> (default value), the features <code>selected count</code> in info bar, <code>search</code> and <code>select/deselect all</code>, if present, work only for the currently loaded items. To make sure that all items in the table are loaded at once and the above features work properly, set the property to <code>false</code>. <li>Since version 1.58, the columns headers and the info toolbar are sticky (remain fixed on top when scrolling). This feature is not supported in all browsers. For more information on browser support limitations, you can refer to the {@link sap.m.ListBase sap.m.ListBase} <code>sticky</code> property. </ul> <h3>Responsive Behavior</h3> <ul> <li>On smaller screens, the columns of the table wrap and build a list that shows all the information.</li> </ul>
*/
extern class TableSelectDialog extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:TableSelectDialogArgs):Void {})
	public function new(?mSettings:TableSelectDialogArgs):Void;

	/**
	* Adds some column to the aggregation {@link #getColumns columns}.
	* @param	oColumn The column to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addColumn( oColumn:sap.m.Column):sap.m.TableSelectDialog;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.m.ColumnListItem):sap.m.TableSelectDialog;

	/**
	* Transfers method to the inner dialog: addStyleClass
	* @return	this pointer for chaining
	*/
	public function addStyleClass( ):sap.m.TableSelectDialog;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:cancel cancel} event of this <code>sap.m.TableSelectDialog</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.TableSelectDialog</code> itself.

Fires when the Cancel button is clicked.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.TableSelectDialog</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachCancel( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.TableSelectDialog;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:confirm confirm} event of this <code>sap.m.TableSelectDialog</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.TableSelectDialog</code> itself.

Fires when the dialog is confirmed by selecting an item in single-selection mode or by pressing the confirmation button in multi-selection mode. The items being selected are returned as event parameters.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.TableSelectDialog</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachConfirm( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.TableSelectDialog;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:liveChange liveChange} event of this <code>sap.m.TableSelectDialog</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.TableSelectDialog</code> itself.

Fires when the value of the search field is changed by a user (for example at each key press).
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.TableSelectDialog</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachLiveChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.TableSelectDialog;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:search search} event of this <code>sap.m.TableSelectDialog</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.TableSelectDialog</code> itself.

Fires when the search button has been clicked on dialog.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.TableSelectDialog</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSearch( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.TableSelectDialog;

	/**
	* Binds aggregation {@link #getColumns columns} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindColumns( oBindingInfo:Dynamic):sap.m.TableSelectDialog;

	/**
	* Binds aggregation {@link #getItems items} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindItems( oBindingInfo:Dynamic):sap.m.TableSelectDialog;

	/**
	* Destroys all the columns in the aggregation {@link #getColumns columns}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyColumns( ):sap.m.TableSelectDialog;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.m.TableSelectDialog;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:cancel cancel} event of this <code>sap.m.TableSelectDialog</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachCancel( fnFunction:()->Void, ?oListener:Dynamic):sap.m.TableSelectDialog;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:confirm confirm} event of this <code>sap.m.TableSelectDialog</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachConfirm( fnFunction:()->Void, ?oListener:Dynamic):sap.m.TableSelectDialog;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:liveChange liveChange} event of this <code>sap.m.TableSelectDialog</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachLiveChange( fnFunction:()->Void, ?oListener:Dynamic):sap.m.TableSelectDialog;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:search search} event of this <code>sap.m.TableSelectDialog</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSearch( fnFunction:()->Void, ?oListener:Dynamic):sap.m.TableSelectDialog;

	/**
	* Creates a new subclass of class sap.m.TableSelectDialog with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current busy state.
	* @return	value of currtent busy state.
	*/
	public function getBusy( ):Bool;

	/**
	* Gets content of aggregation {@link #getColumns columns}.

The columns bindings.
	* @return	null
	*/
	public function getColumns( ):Array<sap.m.Column>;

	/**
	* Retrieves content height of the select dialog {@link sap.m.Dialog}
	* @return	sHeight the content height of the internal dialog
	*/
	public function getContentHeight( ):sap.ui.core.CSSSize;

	/**
	* Retrieves content width of the select dialog {@link sap.m.Dialog}
	* @return	sWidth the content width of the internal dialog
	*/
	public function getContentWidth( ):sap.ui.core.CSSSize;

	/**
	* Transfers method to the inner dialog: getDomRef
	* @return	The Element's DOM Element sub DOM Element or null
	*/
	public function getDomRef( ):js.html.Element;

	/**
	* Gets current value of property {@link #getGrowing growing}.

Determines the progressive loading. When set to <code>true</code>, enables the growing feature of the control to load more items by requesting from the bound model. <b>Note:</b> This feature only works when an <code>items</code> aggregation is bound. Growing must not be used together with two-way binding. <b>Note:</b> If the property is set to true, the features <code>selected count</code> in info bar, <code>search</code> and <code>select/deselect all</code>, if present, work only for the currently loaded items. To make sure that all items in the table are loaded at once and the above features work properly, we recommend setting the <code>growing</code> property to false.

Default value is <code>true</code>.
	* @return	Value of property <code>growing</code>
	*/
	public function getGrowing( ):Bool;

	/**
	* Gets current value of property {@link #getGrowingThreshold growingThreshold}.

Determines the number of items initially displayed in the table and defines the number of items to be requested from the model for each grow. This property can only be used if the property <code>growing</code> is set to <code>true</code>.
	* @return	Value of property <code>growingThreshold</code>
	*/
	public function getGrowingThreshold( ):Int;

	/**
	* Gets content of aggregation {@link #getItems items}.

The items of the table.
	* @return	null
	*/
	public function getItems( ):Array<sap.m.ColumnListItem>;

	/**
	* Returns a metadata object for class sap.m.TableSelectDialog.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getMultiSelect multiSelect}.

Enables the user to select several options from the table.

Default value is <code>false</code>.
	* @return	Value of property <code>multiSelect</code>
	*/
	public function getMultiSelect( ):Bool;

	/**
	* Retrieves the internal List's no data text property
	* @return	the current no data text
	*/
	public function getNoDataText( ):String;

	/**
	* Gets current value of property {@link #getRememberSelections rememberSelections}.

Controls whether the dialog clears the selection or not. When the dialog is opened multiple times in the same context to allow for corrections of previous user inputs, set this flag to "true". When the dialog should reset the selection to allow for a new selection each time set it to "false" Note: This property must be set before the Dialog is opened to have an effect.

Default value is <code>false</code>.
	* @return	Value of property <code>rememberSelections</code>
	*/
	public function getRememberSelections( ):Bool;

	/**
	* Gets current value of property {@link #getShowClearButton showClearButton}.

This flag controls whether the Clear button is shown. When set to <code>true</code>, it provides a way to clear a selection made in Table Select Dialog.

We recommend enabling of the Clear button in the following cases, where a mechanism to clear the value is needed: In case the Table Select Dialog is in single-selection mode (default mode) and <code>rememberSelections</code> is set to <code>true</code>. The Clear button needs to be enabled in order to allow users to clear the selection. In case of using <code>sap.m.Input</code> with <code>valueHelpOnly</code> set to <code>true</code>, the Clear button can be used for clearing the selection. In case the application stores a value and uses only Table Select Dialog to edit/maintain it.

Optional: In case <code>multiSelect</code> is set to <code>true</code>, the selection can be easily cleared with one click.

<b>Note:</b> When used with oData, only the loaded selections will be cleared.

Default value is <code>false</code>.
	* @return	Value of property <code>showClearButton</code>
	*/
	public function getShowClearButton( ):Bool;

	/**
	* Gets current value of property {@link #getTitle title}.

Specifies the title text in the dialog header.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Transfers method to the inner dialog: hasStyleClass
	* @return	true if the class is set, false otherwise
	*/
	public function hasStyleClass( ):Bool;

	/**
	* Checks for the provided <code>sap.m.Column</code> in the aggregation {@link #getColumns columns}. and returns its index if found or -1 otherwise.
	* @param	oColumn The column whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfColumn( oColumn:sap.m.Column):Int;

	/**
	* Checks for the provided <code>sap.m.ColumnListItem</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.m.ColumnListItem):Int;

	/**
	* Inserts a column into the aggregation {@link #getColumns columns}.
	* @param	oColumn The column to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the column should be inserted at; for a negative value of <code>iIndex</code>, the column is inserted at position 0; for a value greater than the current size of the aggregation, the column is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertColumn( oColumn:sap.m.Column, iIndex:Int):sap.m.TableSelectDialog;

	/**
	* Inserts a item into the aggregation {@link #getItems items}.
	* @param	oItem The item to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertItem( oItem:sap.m.ColumnListItem, iIndex:Int):sap.m.TableSelectDialog;

	/**
	* Opens the internal dialog with a searchfield and a table.
	* @param	sSearchValue Value for the search. The table will be automatically trigger the search event if this parameter is set.
	* @return	<code>this</code> to allow method chaining
	*/
	public function open( sSearchValue:String):sap.m.TableSelectDialog;

	/**
	* Removes all the controls from the aggregation {@link #getColumns columns}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllColumns( ):Array<sap.m.Column>;

	/**
	* Removes all the controls from the aggregation {@link #getItems items}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllItems( ):Array<sap.m.ColumnListItem>;
	@:overload( function(vColumn:Int):sap.m.Column{ })
	@:overload( function(vColumn:String):sap.m.Column{ })

	/**
	* Removes a column from the aggregation {@link #getColumns columns}.
	* @param	vColumn The column to remove or its index or id
	* @return	The removed column or <code>null</code>
	*/
	public function removeColumn( vColumn:sap.m.Column):sap.m.Column;
	@:overload( function(vItem:Int):sap.m.ColumnListItem{ })
	@:overload( function(vItem:String):sap.m.ColumnListItem{ })

	/**
	* Removes a item from the aggregation {@link #getItems items}.
	* @param	vItem The item to remove or its index or id
	* @return	The removed item or <code>null</code>
	*/
	public function removeItem( vItem:sap.m.ColumnListItem):sap.m.ColumnListItem;

	/**
	* Transfers method to the inner dialog: removeStyleClass
	* @return	this pointer for chaining
	*/
	public function removeStyleClass( ):sap.m.TableSelectDialog;

	/**
	* Enables/Disables busy state.
	* @param	flag for enabling busy indicator
	* @return	this pointer for chaining
	*/
	public function setBusy( flag:Bool):sap.m.TableSelectDialog;

	/**
	* Sets the busyIndicatorDelay value to the internal table
	* @param	iValue Value for the busyIndicatorDelay.
	* @return	this pointer for chaining
	*/
	public function setBusyIndicatorDelay( iValue:Int):sap.m.TableSelectDialog;

	/**
	* Sets content height of the select dialog {@link sap.m.Dialog}
	* @param	sHeight the new content height value for the dialog
	* @return	this pointer for chaining
	*/
	public function setContentHeight( sHeight:sap.ui.core.CSSSize):sap.m.TableSelectDialog;

	/**
	* Sets content width of the select dialog {@link sap.m.Dialog}
	* @param	sWidth the new content width value for the dialog
	* @return	this pointer for chaining
	*/
	public function setContentWidth( sWidth:sap.ui.core.CSSSize):sap.m.TableSelectDialog;

	/**
	* Sets the growing to the internal table
	* @param	bValue Value for the table's growing.
	* @return	this pointer for chaining
	*/
	public function setGrowing( bValue:Bool):sap.m.TableSelectDialog;

	/**
	* Sets the growing threshold to the internal table
	* @param	iValue Value for the table's growing threshold.
	* @return	this pointer for chaining
	*/
	public function setGrowingThreshold( iValue:Int):sap.m.TableSelectDialog;

	/**
	* Enables/Disables multi selection mode.
	* @param	bMulti flag for multi selection mode
	* @return	this pointer for chaining
	*/
	public function setMultiSelect( bMulti:Bool):sap.m.TableSelectDialog;

	/**
	* Sets the no data text of the internal table
	* @param	sNoDataText the no data text for the table
	* @return	Void
	*/
	public function setNoDataText( sNoDataText:String):Void;

	/**
	* Sets a new value for property {@link #getRememberSelections rememberSelections}.

Controls whether the dialog clears the selection or not. When the dialog is opened multiple times in the same context to allow for corrections of previous user inputs, set this flag to "true". When the dialog should reset the selection to allow for a new selection each time set it to "false" Note: This property must be set before the Dialog is opened to have an effect.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bRememberSelections New value for property <code>rememberSelections</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRememberSelections( bRememberSelections:Bool):sap.m.TableSelectDialog;

	/**
	* Sets the Clear button visible state
	* @param	bVisible Value for the Clear button visible state.
	* @return	this pointer for chaining
	*/
	public function setShowClearButton( bVisible:Bool):sap.m.TableSelectDialog;

	/**
	* Sets the title of the internal dialog
	* @param	sTitle the title text for the dialog
	* @return	this pointer for chaining
	*/
	public function setTitle( sTitle:String):sap.m.TableSelectDialog;

	/**
	* Transfers method to the inner dialog: toggleStyleClass
	* @return	this pointer for chaining
	*/
	public function toggleStyleClass( ):sap.m.TableSelectDialog;

	/**
	* Unbinds aggregation {@link #getColumns columns} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindColumns( ):sap.m.TableSelectDialog;

	/**
	* Unbinds aggregation {@link #getItems items} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindItems( ):sap.m.TableSelectDialog;
}

typedef TableSelectDialogArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Specifies the title text in the dialog header.
	*/
	@:optional var title:String;

	/**
	* Specifies the text displayed when the table has no data.
	*/
	@:optional var noDataText:String;

	/**
	* Enables the user to select several options from the table.
	*/
	@:optional var multiSelect:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the progressive loading. When set to <code>true</code>, enables the growing feature of the control to load more items by requesting from the bound model. <b>Note:</b> This feature only works when an <code>items</code> aggregation is bound. Growing must not be used together with two-way binding. <b>Note:</b> If the property is set to true, the features <code>selected count</code> in info bar, <code>search</code> and <code>select/deselect all</code>, if present, work only for the currently loaded items. To make sure that all items in the table are loaded at once and the above features work properly, we recommend setting the <code>growing</code> property to false.
	*/
	@:optional var growing:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the number of items initially displayed in the table and defines the number of items to be requested from the model for each grow. This property can only be used if the property <code>growing</code> is set to <code>true</code>.
	*/
	@:optional var growingThreshold:haxe.extern.EitherType<String,Int>;

	/**
	* Determines the content width of the inner dialog. For more information, see the Dialog documentation.
	*/
	@:optional var contentWidth:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Controls whether the dialog clears the selection or not. When the dialog is opened multiple times in the same context to allow for corrections of previous user inputs, set this flag to "true". When the dialog should reset the selection to allow for a new selection each time set it to "false" Note: This property must be set before the Dialog is opened to have an effect.
	*/
	@:optional var rememberSelections:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies the content height of the inner dialog. For more information, see the Dialog documentation.
	*/
	@:optional var contentHeight:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* This flag controls whether the Clear button is shown. When set to <code>true</code>, it provides a way to clear a selection made in Table Select Dialog.

We recommend enabling of the Clear button in the following cases, where a mechanism to clear the value is needed: In case the Table Select Dialog is in single-selection mode (default mode) and <code>rememberSelections</code> is set to <code>true</code>. The Clear button needs to be enabled in order to allow users to clear the selection. In case of using <code>sap.m.Input</code> with <code>valueHelpOnly</code> set to <code>true</code>, the Clear button can be used for clearing the selection. In case the application stores a value and uses only Table Select Dialog to edit/maintain it.

Optional: In case <code>multiSelect</code> is set to <code>true</code>, the selection can be easily cleared with one click.

<b>Note:</b> When used with oData, only the loaded selections will be cleared.
	*/
	@:optional var showClearButton:haxe.extern.EitherType<String,Bool>;

    /**
    * The items of the table.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.m.ColumnListItem>>;

    /**
    * The internal dialog that is displayed when method open is called.
    */
	@:optional var _dialog:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * The columns bindings.
    */
	@:optional var columns:Array<haxe.extern.EitherType<String,sap.m.Column>>;

	/**
	* Fires when the Cancel button is clicked.
	*/
	@:optional var cancel:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fires when the dialog is confirmed by selecting an item in single-selection mode or by pressing the confirmation button in multi-selection mode. The items being selected are returned as event parameters.
	*/
	@:optional var confirm:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fires when the value of the search field is changed by a user (for example at each key press).
	*/
	@:optional var liveChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fires when the search button has been clicked on dialog.
	*/
	@:optional var search:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
