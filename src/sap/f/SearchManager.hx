package sap.f;

@:native("sap.f.SearchManager")

/**
* Defines specific properties of the search that are applied to <code>sap.f.ShellBar</code>.
*/
extern class SearchManager extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:SearchManagerArgs):Void {})
	public function new(?mSettings:SearchManagerArgs):Void;

	/**
	* Adds some suggestionItem to the aggregation {@link #getSuggestionItems suggestionItems}.
	* @param	oSuggestionItem The suggestionItem to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addSuggestionItem( oSuggestionItem:sap.m.SuggestionItem):sap.f.SearchManager;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:liveChange liveChange} event of this <code>sap.f.SearchManager</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.f.SearchManager</code> itself.

Fired when the value of the search field is changed by the user, for example at each key press.

<b>Note:</b> Do not invalidate or re-render a focused search field, especially during the <code>liveChange</code> event.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.f.SearchManager</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachLiveChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.f.SearchManager;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:search search} event of this <code>sap.f.SearchManager</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.f.SearchManager</code> itself.

Fired when the user triggers a search.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.f.SearchManager</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSearch( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.f.SearchManager;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:suggest suggest} event of this <code>sap.f.SearchManager</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.f.SearchManager</code> itself.

Fired when the search field is initially focused or its value is changed by the user. This event means that suggestion data should be updated, in case if suggestions are used. Use the value parameter to create new suggestions for it.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.f.SearchManager</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSuggest( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.f.SearchManager;

	/**
	* Binds property {@link #getValue value} to model data.

See {@link sap.ui.base.ManagedObject#bindProperty ManagedObject.bindProperty} for a detailed description of the possible properties of <code>oBindingInfo</code>
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindValue( oBindingInfo:Dynamic):sap.f.SearchManager;

	/**
	* Destroys all the suggestionItems in the aggregation {@link #getSuggestionItems suggestionItems}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySuggestionItems( ):sap.f.SearchManager;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:liveChange liveChange} event of this <code>sap.f.SearchManager</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachLiveChange( fnFunction:()->Void, ?oListener:Dynamic):sap.f.SearchManager;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:search search} event of this <code>sap.f.SearchManager</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSearch( fnFunction:()->Void, ?oListener:Dynamic):sap.f.SearchManager;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:suggest suggest} event of this <code>sap.f.SearchManager</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSuggest( fnFunction:()->Void, ?oListener:Dynamic):sap.f.SearchManager;

	/**
	* Creates a new subclass of class sap.f.SearchManager with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Determines whether the control is enabled.

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

Determines the maximum number of characters. Value '0' means the feature is switched off.

Default value is <code>0</code>.
	* @return	Value of property <code>maxLength</code>
	*/
	public function getMaxLength( ):Int;

	/**
	* Returns a metadata object for class sap.f.SearchManager.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getPlaceholder placeholder}.

Defines the text that is displayed when no value is available. The default placeholder text is the word "Search" in the current local language (if supported) or in English.
	* @return	Value of property <code>placeholder</code>
	*/
	public function getPlaceholder( ):String;

	/**
	* Gets content of aggregation {@link #getSuggestionItems suggestionItems}.

<code>SuggestionItems</code> are the items which are displayed in the suggestions list. The following properties can be used: <ul> <li><code>key</code> - it is not displayed and may be used as internal technical field</li> <li><code>text</code> - it is displayed as normal suggestion text</li> <li><code>icon</code></li> <li><code>description</code> - additional text that may be used to visually display search item type or category</li> </ul>
	* @return	null
	*/
	public function getSuggestionItems( ):Array<sap.m.SuggestionItem>;

	/**
	* Gets current value of property {@link #getValue value}.

Defines the input value.
	* @return	Value of property <code>value</code>
	*/
	public function getValue( ):String;

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
	public function insertSuggestionItem( oSuggestionItem:sap.m.SuggestionItem, iIndex:Int):sap.f.SearchManager;

	/**
	* Removes all the controls from the aggregation {@link #getSuggestionItems suggestionItems}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllSuggestionItems( ):Array<sap.m.SuggestionItem>;
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

Determines whether the control is enabled.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( ?bEnabled:Bool):sap.f.SearchManager;

	/**
	* Sets a new value for property {@link #getEnableSuggestions enableSuggestions}.

If true, a <code>suggest</code> event is fired when user types in the input and when the input is focused. On a phone device, a full screen dialog with suggestions is always shown even if the suggestions list is empty.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bEnableSuggestions New value for property <code>enableSuggestions</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableSuggestions( ?bEnableSuggestions:Bool):sap.f.SearchManager;

	/**
	* Sets a new value for property {@link #getMaxLength maxLength}.

Determines the maximum number of characters. Value '0' means the feature is switched off.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iMaxLength New value for property <code>maxLength</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxLength( ?iMaxLength:Int):sap.f.SearchManager;

	/**
	* Sets a new value for property {@link #getPlaceholder placeholder}.

Defines the text that is displayed when no value is available. The default placeholder text is the word "Search" in the current local language (if supported) or in English.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sPlaceholder New value for property <code>placeholder</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPlaceholder( sPlaceholder:String):sap.f.SearchManager;

	/**
	* Sets a new value for property {@link #getValue value}.

Defines the input value.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sValue New value for property <code>value</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValue( sValue:String):sap.f.SearchManager;

	/**
	* Unbinds property {@link #getValue value} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindValue( ):sap.f.SearchManager;
}

typedef SearchManagerArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Defines the input value.
	*/
	@:optional var value:String;

	/**
	* Defines the text that is displayed when no value is available. The default placeholder text is the word "Search" in the current local language (if supported) or in English.
	*/
	@:optional var placeholder:String;

	/**
	* Determines the maximum number of characters. Value '0' means the feature is switched off.
	*/
	@:optional var maxLength:haxe.extern.EitherType<String,Int>;

	/**
	* Determines whether the control is enabled.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* If true, a <code>suggest</code> event is fired when user types in the input and when the input is focused. On a phone device, a full screen dialog with suggestions is always shown even if the suggestions list is empty.
	*/
	@:optional var enableSuggestions:haxe.extern.EitherType<String,Bool>;

    /**
    * <code>SuggestionItems</code> are the items which are displayed in the suggestions list. The following properties can be used: <ul> <li><code>key</code> - it is not displayed and may be used as internal technical field</li> <li><code>text</code> - it is displayed as normal suggestion text</li> <li><code>icon</code></li> <li><code>description</code> - additional text that may be used to visually display search item type or category</li> </ul>
    */
	@:optional var suggestionItems:Array<haxe.extern.EitherType<String,sap.m.SuggestionItem>>;

	/**
	* Fired when the value of the search field is changed by the user, for example at each key press.

<b>Note:</b> Do not invalidate or re-render a focused search field, especially during the <code>liveChange</code> event.
	*/
	@:optional var liveChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when the user triggers a search.
	*/
	@:optional var search:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when the search field is initially focused or its value is changed by the user. This event means that suggestion data should be updated, in case if suggestions are used. Use the value parameter to create new suggestions for it.
	*/
	@:optional var suggest:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
