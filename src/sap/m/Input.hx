package sap.m;

@:native("sap.m.Input")

/**
* Allows the user to enter and edit text or numeric values in one line.

<h3>Overview</h3>

You can enable the autocomplete suggestion feature and the value help option to easily enter a valid value.

<h3>Guidelines</h3>

<ul> <li> Always provide a meaningful label for any input field </li> <li> Limit the length of the input field. This will visually emphasize the constraints for the field. </li> <li> Do not use the <code>placeholder</code> property as a label.</li> <li> Use the <code>description</code> property only for small fields with no placeholders (i.e. for currencies).</li> </ul>

<h3>Structure</h3>

The controls inherits from {@link sap.m.InputBase} which controls the core properties like: <ul> <li> editable / read-only </li> <li> enabled / disabled</li> <li> placeholder</li> <li> text direction</li> <li> value states</li> </ul> To aid the user during input, you can enable value help (<code>showValueHelp</code>) or autocomplete (<code>showSuggestion</code>). <strong>Value help</strong> will open a new dialog where you can refine your input. <strong>Autocomplete</strong> has three types of suggestions: <ul> <li> Single value - a list of suggestions of type <code>sap.ui.core.Item</code> or <code>sap.ui.core.ListItem</code> </li> <li> Two values - a list of two suggestions (ID and description) of type <code>sap.ui.core.Item</code> or <code>sap.ui.core.ListItem</code> </li> <li> Tabular suggestions of type <code>sap.m.ColumnListItem</code> </li> </ul> The suggestions are stored in two aggregations <code>suggestionItems</code> (for single and double values) and <code>suggestionRows</code> (for tabular values).

<h3>Usage</h3>

<b>When to use:</b> Use the control for short inputs like emails, phones, passwords, fields for assisted value selection.

<b>When not to use:</b> Don't use the control for long texts, dates, designated search fields, fields for multiple selection.

<h3>Known Limitations</h3>

If <code>showValueHelp</code> or if <code>showSuggestion</code> is <code>true</code>, the native browser autofill will not fire a change event.
*/
extern class Input extends sap.m.InputBase
{
	@:overload(function(?sId:String, ?mSettings:InputArgs):Void {})
	public function new(?mSettings:InputArgs):Void;

	/**
	* Refreshes delayed items.
	* @return	Void
	*/
	public function _refreshItemsDelayed( ):Void;

	/**
	* Adds some suggestionColumn to the aggregation {@link #getSuggestionColumns suggestionColumns}.
	* @param	oSuggestionColumn The suggestionColumn to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addSuggestionColumn( oSuggestionColumn:sap.m.Column):sap.m.Input;

	/**
	* Adds suggestion item.
	* @param	oItem Suggestion item.
	* @return	this Input instance for chaining.
	*/
	public function addSuggestionItem( oItem:sap.ui.core.Item):sap.m.Input;

	/**
	* Adds suggestion row.
	* @param	oItem Suggestion item.
	* @return	this Input instance for chaining.
	*/
	public function addSuggestionRow( oItem:sap.ui.core.Item):sap.m.Input;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:liveChange liveChange} event of this <code>sap.m.Input</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Input</code> itself.

Fired when the value of the input is changed by user interaction - each keystroke, delete, paste, etc.

<b>Note:</b> Browsing autocomplete suggestions does not fires the event.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Input</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachLiveChange( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.Input;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:submit submit} event of this <code>sap.m.Input</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Input</code> itself.

This event is fired when user presses the <kbd>Enter</kbd> key on the input.

<b>Notes:</b> <ul> <li>The event is fired independent of whether there was a change before or not. If a change was performed, the event is fired after the change event.</li> <li>The event is also fired when an item of the select list is selected via <kbd>Enter</kbd>.</li> <li>The event is only fired on an input which allows text input (<code>editable</code>, <code>enabled</code> and not <code>valueHelpOnly</code>).</li> </ul>
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Input</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSubmit( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.Input;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:suggest suggest} event of this <code>sap.m.Input</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Input</code> itself.

This event is fired when user types in the input and showSuggestion is set to true. Changing the suggestItems aggregation will show the suggestions within a popup.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Input</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSuggest( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.Input;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:suggestionItemSelected suggestionItemSelected} event of this <code>sap.m.Input</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Input</code> itself.

This event is fired when suggestionItem shown in suggestion popup are selected. This event is only fired when showSuggestion is set to true and there are suggestionItems shown in the suggestion popup.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Input</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSuggestionItemSelected( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.Input;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:valueHelpRequest valueHelpRequest} event of this <code>sap.m.Input</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Input</code> itself.

When the value help indicator is clicked, this event will be fired.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Input</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachValueHelpRequest( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.Input;

	/**
	* Binds aggregation {@link #getSuggestionColumns suggestionColumns} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindSuggestionColumns( oBindingInfo:Dynamic):sap.m.Input;

	/**
	* Binds aggregation {@link #getSuggestionRows suggestionRows} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindSuggestionRows( oBindingInfo:Dynamic):sap.m.Input;

	/**
	* Cancels any pending suggestions.
	* @return	Void
	*/
	public function cancelPendingSuggest( ):Void;

	/**
	* Clones input.
	* @return	Cloned input.
	*/
	public function clone( ):sap.m.Input;

	/**
	* Closes the suggestion list.
	* @return	Void
	*/
	public function closeSuggestions( ):Void;

	/**
	* Destroys all the suggestionColumns in the aggregation {@link #getSuggestionColumns suggestionColumns}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySuggestionColumns( ):sap.m.Input;

	/**
	* Destroys suggestion items.
	* @return	this Input instance for chaining.
	*/
	public function destroySuggestionItems( ):sap.m.Input;

	/**
	* Destroys all suggestion rows.
	* @return	this Input instance for chaining.
	*/
	public function destroySuggestionRows( ):sap.m.Input;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:liveChange liveChange} event of this <code>sap.m.Input</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachLiveChange( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.Input;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:submit submit} event of this <code>sap.m.Input</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSubmit( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.Input;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:suggest suggest} event of this <code>sap.m.Input</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSuggest( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.Input;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:suggestionItemSelected suggestionItemSelected} event of this <code>sap.m.Input</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSuggestionItemSelected( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.Input;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:valueHelpRequest valueHelpRequest} event of this <code>sap.m.Input</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachValueHelpRequest( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.Input;

	/**
	* Creates a new subclass of class sap.m.Input with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.InputBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getAutocomplete autocomplete}.

Specifies whether autocomplete is enabled. Works only if "showSuggestion" property is set to true. <b>Note:</b> The autocomplete feature is disabled on Android devices due to a OS specific issue.

Default value is <code>true</code>.
	* @return	Value of property <code>autocomplete</code>
	*/
	public function getAutocomplete( ):Bool;

	/**
	* Gets current value of property {@link #getDescription description}.

The description is a text after the input field, e.g. units of measurement, currencies.
	* @return	Value of property <code>description</code>
	*/
	public function getDescription( ):String;

	/**
	* Gets current value of property {@link #getEnableSuggestionsHighlighting enableSuggestionsHighlighting}.

Specifies whether the suggestions highlighting is enabled.

Default value is <code>true</code>.
	* @return	Value of property <code>enableSuggestionsHighlighting</code>
	*/
	public function getEnableSuggestionsHighlighting( ):Bool;

	/**
	* Gets current value of property {@link #getFieldWidth fieldWidth}.

This property only takes effect if the description property is set. It controls the distribution of space between the input field and the description text. The default value is 50% leaving the other 50% for the description.

Default value is <code>'50%'</code>.
	* @return	Value of property <code>fieldWidth</code>
	*/
	public function getFieldWidth( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getFilterSuggests filterSuggests}.

Defines whether to filter the provided suggestions before showing them to the user.

Default value is <code>true</code>.
	* @return	Value of property <code>filterSuggests</code>
	*/
	public function getFilterSuggests( ):Bool;

	/**
	* Gets current value of property {@link #getMaxLength maxLength}.

Maximum number of characters. Value '0' means the feature is switched off. This parameter is not compatible with the input type <code>sap.m.InputType.Number</code>. If the input type is set to <code>Number</code>, the <code>maxLength</code> value is ignored.

Default value is <code>0</code>.
	* @return	Value of property <code>maxLength</code>
	*/
	public function getMaxLength( ):Int;

	/**
	* Gets current value of property {@link #getMaxSuggestionWidth maxSuggestionWidth}.

If set, the value of this parameter will control the horizontal size of the suggestion list to display more data. This allows suggestion lists to be wider than the input field if there is enough space available. By default, the suggestion list is always as wide as the input field. <b>Note:</b> The value will be ignored if the actual width of the input field is larger than the specified parameter value.
	* @return	Value of property <code>maxSuggestionWidth</code>
	*/
	public function getMaxSuggestionWidth( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.m.Input.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* ID of the element which is the current target of the association {@link #getSelectedItem selectedItem}, or <code>null</code>.
	* @return	null
	*/
	public function getSelectedItem( ):sap.ui.core.ID;

	/**
	* Gets current value of property {@link #getSelectedKey selectedKey}.

Defines the key of the selected item.

<b>Note:</b> If duplicate keys exist, the first item matching the key is used.

Default value is <code>empty string</code>.
	* @return	Value of property <code>selectedKey</code>
	*/
	public function getSelectedKey( ):String;

	/**
	* ID of the element which is the current target of the association {@link #getSelectedRow selectedRow}, or <code>null</code>.
	* @return	null
	*/
	public function getSelectedRow( ):sap.ui.core.ID;

	/**
	* Gets current value of property {@link #getShowSuggestion showSuggestion}.

If this is set to true, suggest event is fired when user types in the input. Changing the suggestItems aggregation in suggest event listener will show suggestions within a popup. When runs on phone, input will first open a dialog where the input and suggestions are shown. When runs on a tablet, the suggestions are shown in a popup next to the input.

Default value is <code>false</code>.
	* @return	Value of property <code>showSuggestion</code>
	*/
	public function getShowSuggestion( ):Bool;

	/**
	* Gets current value of property {@link #getShowTableSuggestionValueHelp showTableSuggestionValueHelp}.

For tabular suggestions, this flag will show/hide the button at the end of the suggestion table that triggers the event "valueHelpRequest" when pressed. The default value is true.

<b>Note:</b> If suggestions are not tabular or no suggestions are used, the button will not be displayed and this flag is without effect.

Default value is <code>true</code>.
	* @return	Value of property <code>showTableSuggestionValueHelp</code>
	*/
	public function getShowTableSuggestionValueHelp( ):Bool;

	/**
	* Gets current value of property {@link #getShowValueHelp showValueHelp}.

If set to true, a value help indicator will be displayed inside the control. When clicked the event "valueHelpRequest" will be fired.

Default value is <code>false</code>.
	* @return	Value of property <code>showValueHelp</code>
	*/
	public function getShowValueHelp( ):Bool;

	/**
	* Getter for property <code>showValueStateMessage</code>. Whether the value state message should be shown. This property is already available for sap.m.Input since 1.16.0.

Default value is <code>true</code>
	* @return	the value of property <code>showValueStateMessage</code>
	*/
	public function getShowValueStateMessage( ):Bool;

	/**
	* Gets current value of property {@link #getStartSuggestion startSuggestion}.

Minimum length of the entered text in input before suggest event is fired. The default value is 1 which means the suggest event is fired after user types in input.

<b>Note:</b> When it's set to 0, suggest event is fired when input with no text gets focus. In this case no suggestion popup will open.

Default value is <code>1</code>.
	* @return	Value of property <code>startSuggestion</code>
	*/
	public function getStartSuggestion( ):Int;

	/**
	* Gets content of aggregation {@link #getSuggestionColumns suggestionColumns}.

The suggestionColumns and suggestionRows are for tabular input suggestions. This aggregation allows for binding the table columns; for more details see the aggregation "suggestionRows".
	* @return	null
	*/
	public function getSuggestionColumns( ):Array<sap.m.Column>;

	/**
	* Gets the item with the given key from the aggregation <code>suggestionItems</code>. <b>Note:</b> If duplicate keys exist, the first item matching the key is returned.
	* @param	sKey An item key that specifies the item to retrieve.
	* @return	Suggestion item.
	*/
	public function getSuggestionItemByKey( sKey:String):sap.ui.core.Item;

	/**
	* Gets content of aggregation {@link #getSuggestionItems suggestionItems}.

Defines the items displayed in the suggestion popup. Changing this aggregation (by calling <code>addSuggestionItem</code>, <code>insertSuggestionItem</code>, <code>removeSuggestionItem</code>, <code>removeAllSuggestionItems</code>, or <code>destroySuggestionItems</code>) after <code>Input</code> is rendered opens/closes the suggestion popup.

To display suggestions with two text values, add <code>sap.ui.core.ListItem</code> as <code>SuggestionItems</code> (since 1.21.1). For the selected <code>ListItem</code>, only the first value is returned to the input field.

<b>Note:</b> Only <code>text</code> and <code>additionalText</code> property values of the item are displayed. For example, if an <code>icon</code> is set, it is ignored. To display more information per item (including icons), you can use the <code>suggestionRows</code> aggregation.
	* @return	null
	*/
	public function getSuggestionItems( ):Array<sap.ui.core.Item>;

	/**
	* Gets content of aggregation {@link #getSuggestionRows suggestionRows}.

The suggestionColumns and suggestionRows are for tabular input suggestions. This aggregation allows for binding the table cells. The items of this aggregation are to be bound directly or to set in the suggest event method. <b>Note:</b> If this aggregation is filled, the aggregation suggestionItems will be ignored.
	* @return	null
	*/
	public function getSuggestionRows( ):Dynamic;

	/**
	* Gets current value of property {@link #getSuggestionRowValidator suggestionRowValidator}.

Defines the validation callback function called when a suggestion row gets selected.

Default value is <code>empty string</code>.
	* @return	Value of property <code>suggestionRowValidator</code>
	*/
	public function getSuggestionRowValidator( ):Dynamic;

	/**
	* Gets current value of property {@link #getTextFormatMode textFormatMode}.

Defines the display text format mode.

Default value is <code>Value</code>.
	* @return	Value of property <code>textFormatMode</code>
	*/
	public function getTextFormatMode( ):sap.m.InputTextFormatMode;

	/**
	* Gets current value of property {@link #getTextFormatter textFormatter}.

Defines the display text formatter function.

Default value is <code>empty string</code>.
	* @return	Value of property <code>textFormatter</code>
	*/
	public function getTextFormatter( ):Dynamic;

	/**
	* Gets current value of property {@link #getType type}.

HTML type of the internal <code>input</code> tag (e.g. Text, Number, Email, Phone). The particular effect of this property differs depending on the browser and the current language settings, especially for the type Number.<br> This parameter is intended to be used with touch devices that use different soft keyboard layouts depending on the given input type.<br> Only the default value <code>sap.m.InputType.Text</code> may be used in combination with data model formats. <code>sap.ui.model</code> defines extended formats that are mostly incompatible with normal HTML representations for numbers and dates.

Default value is <code>Text</code>.
	* @return	Value of property <code>type</code>
	*/
	public function getType( ):sap.m.InputType;

	/**
	* Gets the input value.
	* @return	Value of the input.
	*/
	public function getValue( ):String;

	/**
	* Gets current value of property {@link #getValueHelpOnly valueHelpOnly}.

If set to true, direct text input is disabled and the control will trigger the event "valueHelpRequest" for all user interactions. The properties "showValueHelp", "editable", and "enabled" must be set to true, otherwise the property will have no effect

Default value is <code>false</code>.
	* @return	Value of property <code>valueHelpOnly</code>
	*/
	public function getValueHelpOnly( ):Bool;

	/**
	* Gets current value of property {@link #getValueLiveUpdate valueLiveUpdate}.

Indicates when the value gets updated with the user changes: At each keystroke (true) or first when the user presses enter or tabs out (false).

<b>Note:</b> When set to true and the value of the Input control is bound to a model, the change event becomes obsolete and will not be fired, as the value in the model will be updated each time the user provides input. In such cases, subscription to the liveChange event is more appropriate, as it corresponds to the way the underlying model gets updated.

Default value is <code>false</code>.
	* @return	Value of property <code>valueLiveUpdate</code>
	*/
	public function getValueLiveUpdate( ):Bool;

	/**
	* Getter for property <code>valueStateText</code>. The text which is shown in the value state message popup. If not specfied a default text is shown. This property is already available for sap.m.Input since 1.16.0.

Default value is empty/<code>undefined</code>
	* @return	the value of property <code>valueStateText</code>
	*/
	public function getValueStateText( ):String;

	/**
	* Checks for the provided <code>sap.m.Column</code> in the aggregation {@link #getSuggestionColumns suggestionColumns}. and returns its index if found or -1 otherwise.
	* @param	oSuggestionColumn The suggestionColumn whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfSuggestionColumn( oSuggestionColumn:sap.m.Column):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Item</code> in the aggregation {@link #getSuggestionItems suggestionItems}. and returns its index if found or -1 otherwise.
	* @param	oSuggestionItem The suggestionItem whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfSuggestionItem( oSuggestionItem:sap.ui.core.Item):Int;
	@:overload( function(vSuggestionRow:sap.m.ColumnListItem):Int{ })

	/**
	* Checks for the provided <code>sap.m.ColumnListItem</code> in the aggregation {@link #getSuggestionRows suggestionRows}. and returns its index if found or -1 otherwise.
	* @param	vSuggestionRow The suggestionRow whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfSuggestionRow( vSuggestionRow:sap.m.GroupHeaderListItem):Int;

	/**
	* Inserts a suggestionColumn into the aggregation {@link #getSuggestionColumns suggestionColumns}.
	* @param	oSuggestionColumn The suggestionColumn to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the suggestionColumn should be inserted at; for a negative value of <code>iIndex</code>, the suggestionColumn is inserted at position 0; for a value greater than the current size of the aggregation, the suggestionColumn is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertSuggestionColumn( oSuggestionColumn:sap.m.Column, iIndex:Int):sap.m.Input;

	/**
	* Inserts suggestion item.
	* @param	oItem Suggestion item.
	* @param	iIndex Index to be inserted.
	* @return	this Input instance for chaining.
	*/
	public function insertSuggestionItem( oItem:sap.ui.core.Item, iIndex:Int):sap.m.Input;

	/**
	* Inserts suggestion row.
	* @param	oItem Suggestion row
	* @param	iIndex Row index.
	* @return	this Input instance for chaining.
	*/
	public function insertSuggestionRow( oItem:sap.ui.core.Item, iIndex:Int):sap.m.Input;

	/**
	* Overwrites the onBeforeRendering.
	* @return	Void
	*/
	public function onBeforeRendering( ):Void;

	/**
	* Event handler for browsers' <code>change</code> event.
	* @param	oEvent The event.
	* @return	Void
	*/
	public function onchange( oEvent:jquery.Event):Void;

	/**
	* Event handler for the onFocusIn event.
	* @param	oEvent On focus in event.
	* @return	Void
	*/
	public function onfocusin( oEvent:jquery.Event):Void;

	/**
	* Event handler for user input.
	* @param	oEvent User input.
	* @return	Void
	*/
	public function oninput( oEvent:jquery.Event):Void;

	/**
	* Keyboard handler for the onMouseDown event.
	* @param	oEvent Keyboard event.
	* @return	Void
	*/
	public function onmousedown( oEvent:jquery.Event):Void;

	/**
	* Keyboard handler for enter key.
	* @param	oEvent Keyboard event.
	* @return	Void
	*/
	public function onsapenter( oEvent:jquery.Event):Void;

	/**
	* Keyboard handler for escape key.
	* @param	oEvent Keyboard event.
	* @return	Void
	*/
	public function onsapescape( oEvent:jquery.Event):Void;

	/**
	* Keyboard handler for the onFocusLeave event.
	* @param	oEvent Keyboard event.
	* @return	Void
	*/
	public function onsapfocusleave( oEvent:jquery.Event):Void;

	/**
	* Fire valueHelpRequest event on tap.
	* @param	oEvent Ontap event.
	* @return	Void
	*/
	public function ontap( oEvent:jquery.Event):Void;

	/**
	* Removes all the controls from the aggregation {@link #getSuggestionColumns suggestionColumns}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllSuggestionColumns( ):Array<sap.m.Column>;

	/**
	* Removes all suggestion items.
	* @return	Determines whether the suggestion items are removed.
	*/
	public function removeAllSuggestionItems( ):Bool;

	/**
	* Removes all suggestion rows.
	* @return	Determines whether the suggestion rows are removed.
	*/
	public function removeAllSuggestionRows( ):Bool;
	@:overload( function(vSuggestionColumn:Int):sap.m.Column{ })
	@:overload( function(vSuggestionColumn:String):sap.m.Column{ })

	/**
	* Removes a suggestionColumn from the aggregation {@link #getSuggestionColumns suggestionColumns}.
	* @param	vSuggestionColumn The suggestionColumn to remove or its index or id
	* @return	The removed suggestionColumn or <code>null</code>
	*/
	public function removeSuggestionColumn( vSuggestionColumn:sap.m.Column):sap.m.Column;

	/**
	* Removes suggestion item.
	* @param	oItem Suggestion item.
	* @return	Determines whether the suggestion item has been removed.
	*/
	public function removeSuggestionItem( oItem:sap.ui.core.Item):Bool;

	/**
	* Removes suggestion row.
	* @param	oItem Suggestion row.
	* @return	Determines whether the suggestion row is removed.
	*/
	public function removeSuggestionRow( oItem:sap.ui.core.Item):Bool;

	/**
	* Sets a new value for property {@link #getAutocomplete autocomplete}.

Specifies whether autocomplete is enabled. Works only if "showSuggestion" property is set to true. <b>Note:</b> The autocomplete feature is disabled on Android devices due to a OS specific issue.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bAutocomplete New value for property <code>autocomplete</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAutocomplete( ?bAutocomplete:Bool):sap.m.Input;

	/**
	* Sets a new value for property {@link #getDescription description}.

The description is a text after the input field, e.g. units of measurement, currencies.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sDescription New value for property <code>description</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDescription( ?sDescription:String):sap.m.Input;

	/**
	* Sets a new value for property {@link #getEnableSuggestionsHighlighting enableSuggestionsHighlighting}.

Specifies whether the suggestions highlighting is enabled.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnableSuggestionsHighlighting New value for property <code>enableSuggestionsHighlighting</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableSuggestionsHighlighting( ?bEnableSuggestionsHighlighting:Bool):sap.m.Input;

	/**
	* Sets a new value for property {@link #getFieldWidth fieldWidth}.

This property only takes effect if the description property is set. It controls the distribution of space between the input field and the description text. The default value is 50% leaving the other 50% for the description.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>'50%'</code>.
	* @param	sFieldWidth New value for property <code>fieldWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFieldWidth( ?sFieldWidth:sap.ui.core.CSSSize):sap.m.Input;

	/**
	* Sets a custom filter function for suggestions. The default is to check whether the first item text begins with the typed value. For one and two-value suggestions this callback function will operate on sap.ui.core.Item types, for tabular suggestions the function will operate on sap.m.ColumnListItem types.
	* @param	fnFilter The filter function is called when displaying suggestion items and has two input parameters: the first one is the string that is currently typed in the input field and the second one is the item that is being filtered. Returning true will add this item to the popup, returning false will not display it.
	* @return	this pointer for chaining
	*/
	public function setFilterFunction( fnFilter:(Dynamic)->Void):sap.m.Input;

	/**
	* Sets a new value for property {@link #getFilterSuggests filterSuggests}.

Defines whether to filter the provided suggestions before showing them to the user.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bFilterSuggests New value for property <code>filterSuggests</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFilterSuggests( ?bFilterSuggests:Bool):sap.m.Input;

	/**
	* Sets a new value for property {@link #getMaxLength maxLength}.

Maximum number of characters. Value '0' means the feature is switched off. This parameter is not compatible with the input type <code>sap.m.InputType.Number</code>. If the input type is set to <code>Number</code>, the <code>maxLength</code> value is ignored.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iMaxLength New value for property <code>maxLength</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxLength( ?iMaxLength:Int):sap.m.Input;

	/**
	* Sets a new value for property {@link #getMaxSuggestionWidth maxSuggestionWidth}.

If set, the value of this parameter will control the horizontal size of the suggestion list to display more data. This allows suggestion lists to be wider than the input field if there is enough space available. By default, the suggestion list is always as wide as the input field. <b>Note:</b> The value will be ignored if the actual width of the input field is larger than the specified parameter value.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sMaxSuggestionWidth New value for property <code>maxSuggestionWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxSuggestionWidth( ?sMaxSuggestionWidth:sap.ui.core.CSSSize):sap.m.Input;

	/**
	* Sets a custom result filter function for tabular suggestions to select the text that is passed to the input field. Default is to check whether the first cell with a "text" property begins with the typed value. For one value and two-value suggestions this callback function is not called.
	* @param	fnFilter The result function is called with one parameter: the sap.m.ColumnListItem that is selected. The function must return a result string that will be displayed as the input field's value.
	* @return	this pointer for chaining
	*/
	public function setRowResultFunction( fnFilter:(Dynamic)->Void):sap.m.Input;

	/**
	* Sets the <code>selectedItem</code> association.
	* @param	oItem New value for the <code>selectedItem</code> association. If an ID of a <code>sap.ui.core.Item</code> is given, the item with this ID becomes the <code>selectedItem</code> association. Alternatively, a <code>sap.ui.core.Item</code> instance may be given or <code>null</code> to clear the selection.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setSelectedItem( ?oItem:sap.ui.core.Item):sap.m.Input;

	/**
	* Sets the <code>selectedKey</code> property.

Default value is an empty string <code>""</code> or <code>undefined</code>.
	* @param	sKey New value for property <code>selectedKey</code>. If the provided <code>sKey</code> is an empty string <code>""</code> or <code>undefined</code>, the selection is cleared. If duplicate keys exist, the first item matching the key is selected.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setSelectedKey( sKey:String):sap.m.Input;

	/**
	* Sets the <code>selectedRow</code> association. Default value is <code>null</code>.
	* @param	oListItem New value for the <code>selectedRow</code> association. If an ID of a <code>sap.m.ColumnListItem</code> is given, the item with this ID becomes the <code>selectedRow</code> association. Alternatively, a <code>sap.m.ColumnListItem</code> instance may be given or <code>null</code> to clear the selection.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setSelectedRow( oListItem:sap.m.ColumnListItem):sap.m.Input;

	/**
	* Shows suggestions.
	* @param	bValue Show suggestions.
	* @return	this Input instance for chaining.
	*/
	public function setShowSuggestion( bValue:Bool):sap.m.Input;

	/**
	* Shows value help suggestions in table.
	* @param	bValue Show suggestions.
	* @return	this Input instance for chaining.
	*/
	public function setShowTableSuggestionValueHelp( bValue:Bool):sap.m.Input;

	/**
	* Sets a new value for property {@link #getShowValueHelp showValueHelp}.

If set to true, a value help indicator will be displayed inside the control. When clicked the event "valueHelpRequest" will be fired.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowValueHelp New value for property <code>showValueHelp</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowValueHelp( ?bShowValueHelp:Bool):sap.m.Input;

	/**
	* Setter for property <code>showValueStateMessage</code>.

Default value is <code>true</code>
	* @param	bShowValueStateMessage new value for property <code>showValueStateMessage</code>
	* @return	<code>this</code> to allow method chaining
	*/
	public function setShowValueStateMessage( bShowValueStateMessage:Bool):sap.m.InputBase;

	/**
	* Sets a new value for property {@link #getStartSuggestion startSuggestion}.

Minimum length of the entered text in input before suggest event is fired. The default value is 1 which means the suggest event is fired after user types in input.

<b>Note:</b> When it's set to 0, suggest event is fired when input with no text gets focus. In this case no suggestion popup will open.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	iStartSuggestion New value for property <code>startSuggestion</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setStartSuggestion( ?iStartSuggestion:Int):sap.m.Input;

	/**
	* Sets a new value for property {@link #getSuggestionRowValidator suggestionRowValidator}.

Defines the validation callback function called when a suggestion row gets selected.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	oSuggestionRowValidator New value for property <code>suggestionRowValidator</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSuggestionRowValidator( ?oSuggestionRowValidator:Dynamic):sap.m.Input;

	/**
	* Sets a new value for property {@link #getTextFormatMode textFormatMode}.

Defines the display text format mode.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Value</code>.
	* @param	sTextFormatMode New value for property <code>textFormatMode</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextFormatMode( ?sTextFormatMode:sap.m.InputTextFormatMode):sap.m.Input;

	/**
	* Sets a new value for property {@link #getTextFormatter textFormatter}.

Defines the display text formatter function.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	oTextFormatter New value for property <code>textFormatter</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextFormatter( ?oTextFormatter:Dynamic):sap.m.Input;

	/**
	* Sets a new value for property {@link #getType type}.

HTML type of the internal <code>input</code> tag (e.g. Text, Number, Email, Phone). The particular effect of this property differs depending on the browser and the current language settings, especially for the type Number.<br> This parameter is intended to be used with touch devices that use different soft keyboard layouts depending on the given input type.<br> Only the default value <code>sap.m.InputType.Text</code> may be used in combination with data model formats. <code>sap.ui.model</code> defines extended formats that are mostly incompatible with normal HTML representations for numbers and dates.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Text</code>.
	* @param	sType New value for property <code>type</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setType( ?sType:sap.m.InputType):sap.m.Input;

	/**
	* Setter for property <code>value</code>.

Default value is empty/<code>undefined</code>.
	* @param	sValue New value for property <code>value</code>.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setValue( sValue:String):sap.m.Input;

	/**
	* Sets a new value for property {@link #getValueHelpOnly valueHelpOnly}.

If set to true, direct text input is disabled and the control will trigger the event "valueHelpRequest" for all user interactions. The properties "showValueHelp", "editable", and "enabled" must be set to true, otherwise the property will have no effect

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bValueHelpOnly New value for property <code>valueHelpOnly</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValueHelpOnly( ?bValueHelpOnly:Bool):sap.m.Input;

	/**
	* Sets a new value for property {@link #getValueLiveUpdate valueLiveUpdate}.

Indicates when the value gets updated with the user changes: At each keystroke (true) or first when the user presses enter or tabs out (false).

<b>Note:</b> When set to true and the value of the Input control is bound to a model, the change event becomes obsolete and will not be fired, as the value in the model will be updated each time the user provides input. In such cases, subscription to the liveChange event is more appropriate, as it corresponds to the way the underlying model gets updated.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bValueLiveUpdate New value for property <code>valueLiveUpdate</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValueLiveUpdate( ?bValueLiveUpdate:Bool):sap.m.Input;

	/**
	* Setter for property <code>valueStateText</code>.

Default value is empty/<code>undefined</code>
	* @param	sValueStateText new value for property <code>valueStateText</code>
	* @return	<code>this</code> to allow method chaining
	*/
	public function setValueStateText( sValueStateText:String):sap.m.InputBase;

	/**
	* Opens the <code>SuggestionsPopover</code> with the available items.
	* @param	fnFilter Function to filter the items shown in the SuggestionsPopover
	* @return	Void
	*/
	public function showItems( fnFilter:(Dynamic)->Void):Void;

	/**
	* Unbinds aggregation {@link #getSuggestionColumns suggestionColumns} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindSuggestionColumns( ):sap.m.Input;

	/**
	* Unbinds aggregation {@link #getSuggestionRows suggestionRows} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindSuggestionRows( ):sap.m.Input;

	/**
	* Update suggestion items.
	* @return	this Input instance for chaining.
	*/
	public function updateSuggestionItems( ):sap.m.Input;
}

typedef InputArgs = sap.m.InputBase.InputBaseArgs & {

	/**
	* HTML type of the internal <code>input</code> tag (e.g. Text, Number, Email, Phone). The particular effect of this property differs depending on the browser and the current language settings, especially for the type Number.<br> This parameter is intended to be used with touch devices that use different soft keyboard layouts depending on the given input type.<br> Only the default value <code>sap.m.InputType.Text</code> may be used in combination with data model formats. <code>sap.ui.model</code> defines extended formats that are mostly incompatible with normal HTML representations for numbers and dates.
	*/
	@:optional var type:haxe.extern.EitherType<String,sap.m.InputType>;

	/**
	* Maximum number of characters. Value '0' means the feature is switched off. This parameter is not compatible with the input type <code>sap.m.InputType.Number</code>. If the input type is set to <code>Number</code>, the <code>maxLength</code> value is ignored.
	*/
	@:optional var maxLength:haxe.extern.EitherType<String,Int>;

	/**
	* If set to true, a value help indicator will be displayed inside the control. When clicked the event "valueHelpRequest" will be fired.
	*/
	@:optional var showValueHelp:haxe.extern.EitherType<String,Bool>;

	/**
	* If this is set to true, suggest event is fired when user types in the input. Changing the suggestItems aggregation in suggest event listener will show suggestions within a popup. When runs on phone, input will first open a dialog where the input and suggestions are shown. When runs on a tablet, the suggestions are shown in a popup next to the input.
	*/
	@:optional var showSuggestion:haxe.extern.EitherType<String,Bool>;

	/**
	* If set to true, direct text input is disabled and the control will trigger the event "valueHelpRequest" for all user interactions. The properties "showValueHelp", "editable", and "enabled" must be set to true, otherwise the property will have no effect
	*/
	@:optional var valueHelpOnly:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines whether to filter the provided suggestions before showing them to the user.
	*/
	@:optional var filterSuggests:haxe.extern.EitherType<String,Bool>;

	/**
	* If set, the value of this parameter will control the horizontal size of the suggestion list to display more data. This allows suggestion lists to be wider than the input field if there is enough space available. By default, the suggestion list is always as wide as the input field. <b>Note:</b> The value will be ignored if the actual width of the input field is larger than the specified parameter value.
	*/
	@:optional var maxSuggestionWidth:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Minimum length of the entered text in input before suggest event is fired. The default value is 1 which means the suggest event is fired after user types in input.

<b>Note:</b> When it's set to 0, suggest event is fired when input with no text gets focus. In this case no suggestion popup will open.
	*/
	@:optional var startSuggestion:haxe.extern.EitherType<String,Int>;

	/**
	* For tabular suggestions, this flag will show/hide the button at the end of the suggestion table that triggers the event "valueHelpRequest" when pressed. The default value is true.

<b>Note:</b> If suggestions are not tabular or no suggestions are used, the button will not be displayed and this flag is without effect.
	*/
	@:optional var showTableSuggestionValueHelp:haxe.extern.EitherType<String,Bool>;

	/**
	* The description is a text after the input field, e.g. units of measurement, currencies.
	*/
	@:optional var description:String;

	/**
	* This property only takes effect if the description property is set. It controls the distribution of space between the input field and the description text. The default value is 50% leaving the other 50% for the description.
	*/
	@:optional var fieldWidth:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Indicates when the value gets updated with the user changes: At each keystroke (true) or first when the user presses enter or tabs out (false).

<b>Note:</b> When set to true and the value of the Input control is bound to a model, the change event becomes obsolete and will not be fired, as the value in the model will be updated each time the user provides input. In such cases, subscription to the liveChange event is more appropriate, as it corresponds to the way the underlying model gets updated.
	*/
	@:optional var valueLiveUpdate:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the key of the selected item.

<b>Note:</b> If duplicate keys exist, the first item matching the key is used.
	*/
	@:optional var selectedKey:String;

	/**
	* Defines the display text format mode.
	*/
	@:optional var textFormatMode:haxe.extern.EitherType<String,sap.m.InputTextFormatMode>;

	/**
	* Defines the display text formatter function.
	*/
	@:optional var textFormatter:Dynamic;

	/**
	* Defines the validation callback function called when a suggestion row gets selected.
	*/
	@:optional var suggestionRowValidator:Dynamic;

	/**
	* Specifies whether the suggestions highlighting is enabled.
	*/
	@:optional var enableSuggestionsHighlighting:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies whether autocomplete is enabled. Works only if "showSuggestion" property is set to true. <b>Note:</b> The autocomplete feature is disabled on Android devices due to a OS specific issue.
	*/
	@:optional var autocomplete:haxe.extern.EitherType<String,Bool>;

    /**
    * Defines the items displayed in the suggestion popup. Changing this aggregation (by calling <code>addSuggestionItem</code>, <code>insertSuggestionItem</code>, <code>removeSuggestionItem</code>, <code>removeAllSuggestionItems</code>, or <code>destroySuggestionItems</code>) after <code>Input</code> is rendered opens/closes the suggestion popup.

To display suggestions with two text values, add <code>sap.ui.core.ListItem</code> as <code>SuggestionItems</code> (since 1.21.1). For the selected <code>ListItem</code>, only the first value is returned to the input field.

<b>Note:</b> Only <code>text</code> and <code>additionalText</code> property values of the item are displayed. For example, if an <code>icon</code> is set, it is ignored. To display more information per item (including icons), you can use the <code>suggestionRows</code> aggregation.
    */
	@:optional var suggestionItems:Array<haxe.extern.EitherType<String,sap.ui.core.Item>>;

    /**
    * The suggestionColumns and suggestionRows are for tabular input suggestions. This aggregation allows for binding the table columns; for more details see the aggregation "suggestionRows".
    */
	@:optional var suggestionColumns:Array<haxe.extern.EitherType<String,sap.m.Column>>;

    /**
    * The suggestionColumns and suggestionRows are for tabular input suggestions. This aggregation allows for binding the table cells. The items of this aggregation are to be bound directly or to set in the suggest event method. <b>Note:</b> If this aggregation is filled, the aggregation suggestionItems will be ignored.
    */
	@:optional var suggestionRows:Array<haxe.extern.EitherType<String,sap.m.ColumnListItem>>;

    /**
    * The suggestion popup (can be a Dialog or Popover); aggregation needed to also propagate the model and bindings to the content of the popover
    */
	@:optional var _suggestionPopup:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * The icon on the right side of the Input
    */
	@:optional var _valueHelpIcon:haxe.extern.EitherType<String,sap.ui.core.Icon>;

	/**
	* Sets or retrieves the selected item from the suggestionItems.
	*/
	@:optional var selectedItem:haxe.extern.EitherType<String,sap.ui.core.Item>;

	/**
	* Sets or retrieves the selected row from the suggestionRows.
	*/
	@:optional var selectedRow:haxe.extern.EitherType<String,sap.m.ColumnListItem>;

	/**
	* Fired when the value of the input is changed by user interaction - each keystroke, delete, paste, etc.

<b>Note:</b> Browsing autocomplete suggestions does not fires the event.
	*/
	@:optional var liveChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is fired when user presses the <kbd>Enter</kbd> key on the input.

<b>Notes:</b> <ul> <li>The event is fired independent of whether there was a change before or not. If a change was performed, the event is fired after the change event.</li> <li>The event is also fired when an item of the select list is selected via <kbd>Enter</kbd>.</li> <li>The event is only fired on an input which allows text input (<code>editable</code>, <code>enabled</code> and not <code>valueHelpOnly</code>).</li> </ul>
	*/
	@:optional var submit:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is fired when user types in the input and showSuggestion is set to true. Changing the suggestItems aggregation will show the suggestions within a popup.
	*/
	@:optional var suggest:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is fired when suggestionItem shown in suggestion popup are selected. This event is only fired when showSuggestion is set to true and there are suggestionItems shown in the suggestion popup.
	*/
	@:optional var suggestionItemSelected:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* When the value help indicator is clicked, this event will be fired.
	*/
	@:optional var valueHelpRequest:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
