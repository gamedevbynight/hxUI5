package sap.ui.commons;

@:native("sap.ui.commons.SearchField")

/**
* Allows the user to type search queries and to trigger the search. Optionally, suggestions can be added.
*/
extern class SearchField extends sap.ui.core.Control implements sap.ui.commons.ToolbarItem
{
	@:overload(function(?sId:String, ?mSettings:SearchFieldArgs):Void {})
	public function new(?mSettings:SearchFieldArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.ui.commons.SearchField{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.ui.commons.SearchField;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.commons.SearchField{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.commons.SearchField;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:search search} event of this <code>sap.ui.commons.SearchField</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.SearchField</code> itself.

Event which is fired when the user triggers a search
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.SearchField</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSearch( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.SearchField;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:suggest suggest} event of this <code>sap.ui.commons.SearchField</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.SearchField</code> itself.

Event which is fired when new suggest values are required.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.SearchField</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSuggest( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.SearchField;

	/**
	* Clears the history of the control
	* @return	Void
	*/
	public function clearHistory( ):Void;

	/**
	* Destroys the searchProvider in the aggregation {@link #getSearchProvider searchProvider}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySearchProvider( ):sap.ui.commons.SearchField;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:search search} event of this <code>sap.ui.commons.SearchField</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSearch( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.SearchField;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:suggest suggest} event of this <code>sap.ui.commons.SearchField</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSuggest( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.SearchField;

	/**
	* Creates a new subclass of class sap.ui.commons.SearchField with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

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
	* Gets current value of property {@link #getEditable editable}.

Non-editable controls have different colors, depending on custom settings

Default value is <code>true</code>.
	* @return	Value of property <code>editable</code>
	*/
	public function getEditable( ):Bool;

	/**
	* Gets current value of property {@link #getEnableCache enableCache}.

When list suggestion is enabled all suggestions are cached and no suggest event is fired.

Default value is <code>true</code>.
	* @return	Value of property <code>enableCache</code>
	*/
	public function getEnableCache( ):Bool;

	/**
	* Gets current value of property {@link #getEnableClear enableClear}.

Defines whether the clear functionality shall be active

Default value is <code>false</code>.
	* @return	Value of property <code>enableClear</code>
	*/
	public function getEnableClear( ):Bool;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Disabled fields have different colors, and they can not be focused.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets current value of property {@link #getEnableFilterMode enableFilterMode}.

Defines whether the search event should also be fired when the SearchField is empty (like a Filter field) and when the clear button (if activated) is pressed.

Default value is <code>false</code>.
	* @return	Value of property <code>enableFilterMode</code>
	*/
	public function getEnableFilterMode( ):Bool;

	/**
	* Gets current value of property {@link #getEnableListSuggest enableListSuggest}.

Defines whether a pop up list shall be provided for suggestions

Default value is <code>true</code>.
	* @return	Value of property <code>enableListSuggest</code>
	*/
	public function getEnableListSuggest( ):Bool;

	/**
	* Gets current value of property {@link #getMaxHistoryItems maxHistoryItems}.

Maximum number of history items in the suggestion list. 0 displays and stores no history. The history is locally stored on the client. Therefore do not activate this feature when this control handles confidential data.

Default value is <code>0</code>.
	* @return	Value of property <code>maxHistoryItems</code>
	*/
	public function getMaxHistoryItems( ):Int;

	/**
	* Gets current value of property {@link #getMaxLength maxLength}.

Maximum number of characters. Value '0' means the feature is switched off.

Default value is <code>0</code>.
	* @return	Value of property <code>maxLength</code>
	*/
	public function getMaxLength( ):Int;

	/**
	* Gets current value of property {@link #getMaxSuggestionItems maxSuggestionItems}.

Maximum number of suggestion items in the suggestion list.

Default value is <code>10</code>.
	* @return	Value of property <code>maxSuggestionItems</code>
	*/
	public function getMaxSuggestionItems( ):Int;

	/**
	* Returns a metadata object for class sap.ui.commons.SearchField.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getPlaceholder placeholder}.

Placeholder for the input field.

Default value is <code>empty string</code>.
	* @return	Value of property <code>placeholder</code>
	*/
	public function getPlaceholder( ):String;

	/**
	* Gets content of aggregation {@link #getSearchProvider searchProvider}.

Search provider instance which handles the suggestions for this SearchField (e.g. Open Search Protocol).
	* @return	null
	*/
	public function getSearchProvider( ):sap.ui.core.search.SearchProvider;

	/**
	* Gets current value of property {@link #getShowExternalButton showExternalButton}.

Defines whether an additional search button shall be displayed

Default value is <code>false</code>.
	* @return	Value of property <code>showExternalButton</code>
	*/
	public function getShowExternalButton( ):Bool;

	/**
	* Gets current value of property {@link #getShowListExpander showListExpander}.

Defines whether the list expander shall be displayed in the case of an enabled list for suggestions. This feature is deactivated on mobile devices.

Default value is <code>true</code>.
	* @return	Value of property <code>showListExpander</code>
	*/
	public function getShowListExpander( ):Bool;

	/**
	* Gets current value of property {@link #getStartSuggestion startSuggestion}.

Minimum length of the entered string triggering the suggestion list.

Default value is <code>3</code>.
	* @return	Value of property <code>startSuggestion</code>
	*/
	public function getStartSuggestion( ):Int;

	/**
	* Gets current value of property {@link #getTextAlign textAlign}.

Sets the horizontal alignment of the text

Default value is <code>Begin</code>.
	* @return	Value of property <code>textAlign</code>
	*/
	public function getTextAlign( ):sap.ui.core.TextAlign;

	/**
	* Gets current value of property {@link #getValue value}.

Text that shall be displayed within the search field

Default value is <code>empty string</code>.
	* @return	Value of property <code>value</code>
	*/
	public function getValue( ):String;

	/**
	* Gets current value of property {@link #getValueState valueState}.

Visualizes warnings or errors related to the input field. Possible values: Warning, Error, Success, None.

Default value is <code>None</code>.
	* @return	Value of property <code>valueState</code>
	*/
	public function getValueState( ):sap.ui.core.ValueState;

	/**
	* Gets current value of property {@link #getVisibleItemCount visibleItemCount}.

Defines the number of items in the suggestion list that shall be displayed at once. If the overall number of list items is higher than the setting, a scroll bar is provided.

Default value is <code>20</code>.
	* @return	Value of property <code>visibleItemCount</code>
	*/
	public function getVisibleItemCount( ):Int;

	/**
	* Gets current value of property {@link #getWidth width}.

Control width in CSS-size
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

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

	/**
	* Sets a new value for property {@link #getEditable editable}.

Non-editable controls have different colors, depending on custom settings

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEditable New value for property <code>editable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEditable( bEditable:Bool):sap.ui.commons.SearchField;

	/**
	* Sets a new value for property {@link #getEnableCache enableCache}.

When list suggestion is enabled all suggestions are cached and no suggest event is fired.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnableCache New value for property <code>enableCache</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableCache( bEnableCache:Bool):sap.ui.commons.SearchField;

	/**
	* Sets a new value for property {@link #getEnableClear enableClear}.

Defines whether the clear functionality shall be active

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bEnableClear New value for property <code>enableClear</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableClear( bEnableClear:Bool):sap.ui.commons.SearchField;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Disabled fields have different colors, and they can not be focused.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( bEnabled:Bool):sap.ui.commons.SearchField;

	/**
	* Sets a new value for property {@link #getEnableFilterMode enableFilterMode}.

Defines whether the search event should also be fired when the SearchField is empty (like a Filter field) and when the clear button (if activated) is pressed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bEnableFilterMode New value for property <code>enableFilterMode</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableFilterMode( bEnableFilterMode:Bool):sap.ui.commons.SearchField;

	/**
	* Sets a new value for property {@link #getEnableListSuggest enableListSuggest}.

Defines whether a pop up list shall be provided for suggestions

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnableListSuggest New value for property <code>enableListSuggest</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableListSuggest( bEnableListSuggest:Bool):sap.ui.commons.SearchField;

	/**
	* Sets a new value for property {@link #getMaxHistoryItems maxHistoryItems}.

Maximum number of history items in the suggestion list. 0 displays and stores no history. The history is locally stored on the client. Therefore do not activate this feature when this control handles confidential data.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iMaxHistoryItems New value for property <code>maxHistoryItems</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxHistoryItems( iMaxHistoryItems:Int):sap.ui.commons.SearchField;

	/**
	* Sets a new value for property {@link #getMaxLength maxLength}.

Maximum number of characters. Value '0' means the feature is switched off.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iMaxLength New value for property <code>maxLength</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxLength( iMaxLength:Int):sap.ui.commons.SearchField;

	/**
	* Sets a new value for property {@link #getMaxSuggestionItems maxSuggestionItems}.

Maximum number of suggestion items in the suggestion list.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>10</code>.
	* @param	iMaxSuggestionItems New value for property <code>maxSuggestionItems</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxSuggestionItems( iMaxSuggestionItems:Int):sap.ui.commons.SearchField;

	/**
	* Sets a new value for property {@link #getPlaceholder placeholder}.

Placeholder for the input field.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sPlaceholder New value for property <code>placeholder</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPlaceholder( sPlaceholder:String):sap.ui.commons.SearchField;

	/**
	* Sets the aggregated {@link #getSearchProvider searchProvider}.
	* @param	oSearchProvider The searchProvider to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSearchProvider( oSearchProvider:sap.ui.core.search.SearchProvider):sap.ui.commons.SearchField;

	/**
	* Sets a new value for property {@link #getShowExternalButton showExternalButton}.

Defines whether an additional search button shall be displayed

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowExternalButton New value for property <code>showExternalButton</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowExternalButton( bShowExternalButton:Bool):sap.ui.commons.SearchField;

	/**
	* Sets a new value for property {@link #getShowListExpander showListExpander}.

Defines whether the list expander shall be displayed in the case of an enabled list for suggestions. This feature is deactivated on mobile devices.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowListExpander New value for property <code>showListExpander</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowListExpander( bShowListExpander:Bool):sap.ui.commons.SearchField;

	/**
	* Sets a new value for property {@link #getStartSuggestion startSuggestion}.

Minimum length of the entered string triggering the suggestion list.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>3</code>.
	* @param	iStartSuggestion New value for property <code>startSuggestion</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setStartSuggestion( iStartSuggestion:Int):sap.ui.commons.SearchField;

	/**
	* Sets a new value for property {@link #getTextAlign textAlign}.

Sets the horizontal alignment of the text

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Begin</code>.
	* @param	sTextAlign New value for property <code>textAlign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextAlign( sTextAlign:sap.ui.core.TextAlign):sap.ui.commons.SearchField;

	/**
	* Sets a new value for property {@link #getValue value}.

Text that shall be displayed within the search field

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sValue New value for property <code>value</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValue( sValue:String):sap.ui.commons.SearchField;

	/**
	* Sets a new value for property {@link #getValueState valueState}.

Visualizes warnings or errors related to the input field. Possible values: Warning, Error, Success, None.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sValueState New value for property <code>valueState</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValueState( sValueState:sap.ui.core.ValueState):sap.ui.commons.SearchField;

	/**
	* Sets a new value for property {@link #getVisibleItemCount visibleItemCount}.

Defines the number of items in the suggestion list that shall be displayed at once. If the overall number of list items is higher than the setting, a scroll bar is provided.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>20</code>.
	* @param	iVisibleItemCount New value for property <code>visibleItemCount</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisibleItemCount( iVisibleItemCount:Int):sap.ui.commons.SearchField;

	/**
	* Sets a new value for property {@link #getWidth width}.

Control width in CSS-size

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.commons.SearchField;

	/**
	* Callback function used to provide the suggest values in the handler of the suggest event (only in list suggestion mode)
	* @param	sSSuggestValue The value which was provided in the corresponding suggest event (parameter 'value')
	* @param	aASuggestions The list of suggestions belonging to the suggest value
	* @return	Void
	*/
	public function suggest( sSSuggestValue:String, aASuggestions:Array<String>):Void;
}

typedef SearchFieldArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines whether a pop up list shall be provided for suggestions
	*/
	@:optional var enableListSuggest:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines whether the list expander shall be displayed in the case of an enabled list for suggestions. This feature is deactivated on mobile devices.
	*/
	@:optional var showListExpander:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines whether the clear functionality shall be active
	*/
	@:optional var enableClear:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines whether an additional search button shall be displayed
	*/
	@:optional var showExternalButton:haxe.extern.EitherType<String,Bool>;

	/**
	* When list suggestion is enabled all suggestions are cached and no suggest event is fired.
	*/
	@:optional var enableCache:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines whether the search event should also be fired when the SearchField is empty (like a Filter field) and when the clear button (if activated) is pressed.
	*/
	@:optional var enableFilterMode:haxe.extern.EitherType<String,Bool>;

	/**
	* Text that shall be displayed within the search field
	*/
	@:optional var value:String;

	/**
	* Disabled fields have different colors, and they can not be focused.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Non-editable controls have different colors, depending on custom settings
	*/
	@:optional var editable:haxe.extern.EitherType<String,Bool>;

	/**
	* Control width in CSS-size
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Maximum number of characters. Value '0' means the feature is switched off.
	*/
	@:optional var maxLength:haxe.extern.EitherType<String,Int>;

	/**
	* Visualizes warnings or errors related to the input field. Possible values: Warning, Error, Success, None.
	*/
	@:optional var valueState:haxe.extern.EitherType<String,sap.ui.core.ValueState>;

	/**
	* Placeholder for the input field.
	*/
	@:optional var placeholder:String;

	/**
	* Sets the horizontal alignment of the text
	*/
	@:optional var textAlign:haxe.extern.EitherType<String,sap.ui.core.TextAlign>;

	/**
	* Defines the number of items in the suggestion list that shall be displayed at once. If the overall number of list items is higher than the setting, a scroll bar is provided.
	*/
	@:optional var visibleItemCount:haxe.extern.EitherType<String,Int>;

	/**
	* Minimum length of the entered string triggering the suggestion list.
	*/
	@:optional var startSuggestion:haxe.extern.EitherType<String,Int>;

	/**
	* Maximum number of suggestion items in the suggestion list.
	*/
	@:optional var maxSuggestionItems:haxe.extern.EitherType<String,Int>;

	/**
	* Maximum number of history items in the suggestion list. 0 displays and stores no history. The history is locally stored on the client. Therefore do not activate this feature when this control handles confidential data.
	*/
	@:optional var maxHistoryItems:haxe.extern.EitherType<String,Int>;

    /**
    * Search provider instance which handles the suggestions for this SearchField (e.g. Open Search Protocol).
    */
	@:optional var searchProvider:haxe.extern.EitherType<String,sap.ui.core.search.SearchProvider>;

	/**
	* Association to controls / IDs which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / IDs which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Event which is fired when the user triggers a search
	*/
	@:optional var search:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event which is fired when new suggest values are required.
	*/
	@:optional var suggest:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
