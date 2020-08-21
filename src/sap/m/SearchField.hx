package sap.m;

@:native("sap.m.SearchField")

/**
* An input field to search for a specific item. <h3>Overview</h3> A search field is needed when the user needs to find specific information in large amounts of data. The search field is also the control of choice for filtering down a given amount of information. <h3>Structure</h3> The search input field can be used in two ways: <ul> <li>Manual search - The search is triggered after the user presses the search button. Manual search uses a “starts with” approach.</li> <li>Live search (search-as-you-type) - The search is triggered after each button press. A suggestion list is shown below the search field. Live search uses a “contains” approach.</li> </ul> <h3>Usage</h3> <h4>When to use:</h4> <ul> <li> Use live search whenever possible. </li> <li> Use a manual search only if the amount of data is too large and if your app would otherwise run into performance issues. </li> </ul> <h3>Responsive Behavior</h3> On mobile devices, there is no refresh button in the search field. "Pull Down to Refresh" is used instead. The "Pull Down to Refresh" arrow icon is animated and spins to signal that the user should release it.
*/
extern class SearchField extends sap.ui.core.Control implements sap.ui.core.IFormContent implements sap.f.IShellBar
{
	@:overload(function(?sId:String, ?mSettings:SearchFieldArgs):Void {})
	public function new(?mSettings:SearchFieldArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.m.SearchField{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.m.SearchField;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.SearchField{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.SearchField;

	/**
	* Adds some suggestionItem to the aggregation {@link #getSuggestionItems suggestionItems}.
	* @param	oSuggestionItem The suggestionItem to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addSuggestionItem( oSuggestionItem:sap.m.SuggestionItem):sap.m.SearchField;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:change change} event of this <code>sap.m.SearchField</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SearchField</code> itself.

This event is fired when the user changes the value of the search field. Unlike the <code>liveChange</code> event, the <code>change</code> event is not fired for each key press.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SearchField</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachChange( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.SearchField;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:liveChange liveChange} event of this <code>sap.m.SearchField</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SearchField</code> itself.

This event is fired each time when the value of the search field is changed by the user - e.g. at each key press. Do not invalidate or re-render a focused search field, especially during the liveChange event.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SearchField</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachLiveChange( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.SearchField;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:search search} event of this <code>sap.m.SearchField</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SearchField</code> itself.

Event which is fired when the user triggers a search.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SearchField</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSearch( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.SearchField;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:suggest suggest} event of this <code>sap.m.SearchField</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SearchField</code> itself.

This event is fired when the search field is initially focused or its value is changed by the user. This event means that suggestion data should be updated, in case if suggestions are used. Use the value parameter to create new suggestions for it.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SearchField</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSuggest( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.SearchField;

	/**
	* Binds property {@link #getValue value} to model data.

See {@link sap.ui.base.ManagedObject#bindProperty ManagedObject.bindProperty} for a detailed description of the possible properties of <code>oBindingInfo</code>
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindValue( oBindingInfo:Dynamic):sap.m.SearchField;

	/**
	* Destroys all the suggestionItems in the aggregation {@link #getSuggestionItems suggestionItems}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySuggestionItems( ):sap.m.SearchField;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:change change} event of this <code>sap.m.SearchField</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachChange( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.SearchField;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:liveChange liveChange} event of this <code>sap.m.SearchField</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachLiveChange( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.SearchField;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:search search} event of this <code>sap.m.SearchField</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSearch( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.SearchField;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:suggest suggest} event of this <code>sap.m.SearchField</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSuggest( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.SearchField;

	/**
	* Creates a new subclass of class sap.m.SearchField with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

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
	* Gets current value of property {@link #getEnabled enabled}.

Boolean property to enable the control (default is true).

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets current value of property {@link #getEnableSuggestions enableSuggestions}.

If true, a <code>suggest</code> event is fired when user types in the input and when the input is focused. On a phone device, a full screen dialog with suggestions is always shown even if the suggestions list is empty.

Default value is <code>false</code>.
	* @return	Value of property <code>enableSuggestions</code>
	*/
	public function getEnableSuggestions( ):Bool;

	/**
	* Gets current value of property {@link #getMaxLength maxLength}.

Maximum number of characters. Value '0' means the feature is switched off.

Default value is <code>0</code>.
	* @return	Value of property <code>maxLength</code>
	*/
	public function getMaxLength( ):Int;

	/**
	* Returns a metadata object for class sap.m.SearchField.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getPlaceholder placeholder}.

Text shown when no value available. Default placeholder text is the word "Search" in the current local language (if supported) or in English.
	* @return	Value of property <code>placeholder</code>
	*/
	public function getPlaceholder( ):String;

	/**
	* Gets current value of property {@link #getRefreshButtonTooltip refreshButtonTooltip}.

Tooltip text of the refresh button. If it is not set, the Default tooltip text is the word "Refresh" in the current local language (if supported) or in English. Tooltips are not displayed on touch devices.
	* @return	Value of property <code>refreshButtonTooltip</code>
	*/
	public function getRefreshButtonTooltip( ):String;

	/**
	* Gets current value of property {@link #getShowRefreshButton showRefreshButton}.

Set to true to display a refresh button in place of the search icon. By pressing the refresh button or F5 key on keyboard, the user can reload the results list without changing the search string.

Default value is <code>false</code>.
	* @return	Value of property <code>showRefreshButton</code>
	*/
	public function getShowRefreshButton( ):Bool;

	/**
	* Gets current value of property {@link #getShowSearchButton showSearchButton}.

Set to true to show the search button with the magnifier icon. If false, both the search and refresh buttons are not displayed even if the "showRefreshButton" property is true.

Default value is <code>true</code>.
	* @return	Value of property <code>showSearchButton</code>
	*/
	public function getShowSearchButton( ):Bool;

	/**
	* Gets content of aggregation {@link #getSuggestionItems suggestionItems}.

<code>SuggestionItems</code> are the items which will be shown in the suggestions list. The following properties can be used: <ul> <li><code>key</code> is not displayed and may be used as internal technical field</li> <li><code>text</code> is displayed as normal suggestion text</li> <li><code>icon</code></li> <li><code>description</code> - additional text may be used to visually display search item type or category</li> </ul>
	* @return	null
	*/
	public function getSuggestionItems( ):Array<sap.m.SuggestionItem>;

	/**
	* Gets current value of property {@link #getValue value}.

Input Value.
	* @return	Value of property <code>value</code>
	*/
	public function getValue( ):String;

	/**
	* Gets current value of property {@link #getVisible visible}.

Invisible inputs are not rendered.

Default value is <code>true</code>.
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

	/**
	* Gets current value of property {@link #getWidth width}.

Defines the CSS width of the input. If not set, width is 100%.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.m.SuggestionItem</code> in the aggregation {@link #getSuggestionItems suggestionItems}. and returns its index if found or -1 otherwise.
	* @param	oSuggestionItem The suggestionItem whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfSuggestionItem( oSuggestionItem:sap.m.SuggestionItem):Int;

	/**
	* Inserts a suggestionItem into the aggregation {@link #getSuggestionItems suggestionItems}.
	* @param	oSuggestionItem The suggestionItem to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the suggestionItem should be inserted at; for a negative value of <code>iIndex</code>, the suggestionItem is inserted at position 0; for a value greater than the current size of the aggregation, the suggestionItem is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertSuggestionItem( oSuggestionItem:sap.m.SuggestionItem, iIndex:Int):sap.m.SearchField;

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
	* Removes all the controls from the aggregation {@link #getSuggestionItems suggestionItems}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllSuggestionItems( ):Array<sap.m.SuggestionItem>;
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
	@:overload( function(vSuggestionItem:Int):sap.m.SuggestionItem{ })
	@:overload( function(vSuggestionItem:String):sap.m.SuggestionItem{ })

	/**
	* Removes a suggestionItem from the aggregation {@link #getSuggestionItems suggestionItems}.
	* @param	vSuggestionItem The suggestionItem to remove or its index or id
	* @return	The removed suggestionItem or <code>null</code>
	*/
	public function removeSuggestionItem( vSuggestionItem:sap.m.SuggestionItem):sap.m.SuggestionItem;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Boolean property to enable the control (default is true).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( ?bEnabled:Bool):sap.m.SearchField;

	/**
	* Sets a new value for property {@link #getEnableSuggestions enableSuggestions}.

If true, a <code>suggest</code> event is fired when user types in the input and when the input is focused. On a phone device, a full screen dialog with suggestions is always shown even if the suggestions list is empty.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bEnableSuggestions New value for property <code>enableSuggestions</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableSuggestions( ?bEnableSuggestions:Bool):sap.m.SearchField;

	/**
	* Sets a new value for property {@link #getMaxLength maxLength}.

Maximum number of characters. Value '0' means the feature is switched off.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iMaxLength New value for property <code>maxLength</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxLength( ?iMaxLength:Int):sap.m.SearchField;

	/**
	* Sets a new value for property {@link #getPlaceholder placeholder}.

Text shown when no value available. Default placeholder text is the word "Search" in the current local language (if supported) or in English.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sPlaceholder New value for property <code>placeholder</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPlaceholder( ?sPlaceholder:String):sap.m.SearchField;

	/**
	* Sets a new value for property {@link #getRefreshButtonTooltip refreshButtonTooltip}.

Tooltip text of the refresh button. If it is not set, the Default tooltip text is the word "Refresh" in the current local language (if supported) or in English. Tooltips are not displayed on touch devices.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sRefreshButtonTooltip New value for property <code>refreshButtonTooltip</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRefreshButtonTooltip( ?sRefreshButtonTooltip:String):sap.m.SearchField;

	/**
	* Sets a new value for property {@link #getShowRefreshButton showRefreshButton}.

Set to true to display a refresh button in place of the search icon. By pressing the refresh button or F5 key on keyboard, the user can reload the results list without changing the search string.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowRefreshButton New value for property <code>showRefreshButton</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowRefreshButton( ?bShowRefreshButton:Bool):sap.m.SearchField;

	/**
	* Sets a new value for property {@link #getShowSearchButton showSearchButton}.

Set to true to show the search button with the magnifier icon. If false, both the search and refresh buttons are not displayed even if the "showRefreshButton" property is true.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowSearchButton New value for property <code>showSearchButton</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowSearchButton( ?bShowSearchButton:Bool):sap.m.SearchField;

	/**
	* Sets a new value for property {@link #getValue value}.

Input Value.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sValue New value for property <code>value</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValue( ?sValue:String):sap.m.SearchField;

	/**
	* Sets a new value for property {@link #getVisible visible}.

Invisible inputs are not rendered.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisible New value for property <code>visible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisible( ?bVisible:Bool):sap.m.SearchField;

	/**
	* Sets a new value for property {@link #getWidth width}.

Defines the CSS width of the input. If not set, width is 100%.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.m.SearchField;
	@:overload( function(?bShow:Bool):sap.m.SearchField{ })

	/**
	* Toggle visibility of the suggestion list.
	* @param	bShow If the value is <code>true</code> the suggestions are displayed. If the value is <code>false</code> the suggestions are hidden. An empty suggestion list is not shown on desktop and tablet devices.<br>

This method may be called only as a response to the <code>suggest</code> event to ensure that the suggestion list is shown at the moment when the user expects it.
	* @return	<code>this</code> to allow method chaining
	*/
	public function suggest( ?bShow:Dynamic):sap.m.SearchField;

	/**
	* Unbinds property {@link #getValue value} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindValue( ):sap.m.SearchField;
}

typedef SearchFieldArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Input Value.
	*/
	@:optional var value:String;

	/**
	* Defines the CSS width of the input. If not set, width is 100%.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Boolean property to enable the control (default is true).
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Invisible inputs are not rendered.
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

	/**
	* Maximum number of characters. Value '0' means the feature is switched off.
	*/
	@:optional var maxLength:haxe.extern.EitherType<String,Int>;

	/**
	* Text shown when no value available. Default placeholder text is the word "Search" in the current local language (if supported) or in English.
	*/
	@:optional var placeholder:String;

	/**
	* Set to true to display a refresh button in place of the search icon. By pressing the refresh button or F5 key on keyboard, the user can reload the results list without changing the search string.
	*/
	@:optional var showRefreshButton:haxe.extern.EitherType<String,Bool>;

	/**
	* Tooltip text of the refresh button. If it is not set, the Default tooltip text is the word "Refresh" in the current local language (if supported) or in English. Tooltips are not displayed on touch devices.
	*/
	@:optional var refreshButtonTooltip:String;

	/**
	* Set to true to show the search button with the magnifier icon. If false, both the search and refresh buttons are not displayed even if the "showRefreshButton" property is true.
	*/
	@:optional var showSearchButton:haxe.extern.EitherType<String,Bool>;

	/**
	* If true, a <code>suggest</code> event is fired when user types in the input and when the input is focused. On a phone device, a full screen dialog with suggestions is always shown even if the suggestions list is empty.
	*/
	@:optional var enableSuggestions:haxe.extern.EitherType<String,Bool>;

    /**
    * <code>SuggestionItems</code> are the items which will be shown in the suggestions list. The following properties can be used: <ul> <li><code>key</code> is not displayed and may be used as internal technical field</li> <li><code>text</code> is displayed as normal suggestion text</li> <li><code>icon</code></li> <li><code>description</code> - additional text may be used to visually display search item type or category</li> </ul>
    */
	@:optional var suggestionItems:Array<haxe.extern.EitherType<String,sap.m.SuggestionItem>>;

	/**
	* Association to controls / ids which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / ids which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* This event is fired when the user changes the value of the search field. Unlike the <code>liveChange</code> event, the <code>change</code> event is not fired for each key press.
	*/
	@:optional var change:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is fired each time when the value of the search field is changed by the user - e.g. at each key press. Do not invalidate or re-render a focused search field, especially during the liveChange event.
	*/
	@:optional var liveChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event which is fired when the user triggers a search.
	*/
	@:optional var search:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is fired when the search field is initially focused or its value is changed by the user. This event means that suggestion data should be updated, in case if suggestions are used. Use the value parameter to create new suggestions for it.
	*/
	@:optional var suggest:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
