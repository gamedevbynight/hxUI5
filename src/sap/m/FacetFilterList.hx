package sap.m;

@:native("sap.m.FacetFilterList")

/**
* Represents a list of values for the {@link sap.m.FacetFilter} control.

<b>Note: </b><code>FacetFilterList</code> is a subclass of {@link sap.m.List} and supports growing enablement feature via the property <code>growing</code>. When you use this feature, be aware that it only works with one-way data binding. Having growing feature enabled when the <code>items</code> aggregation is bound to a model with two-way data binding, may lead to unexpected and/or inconsistent behavior across browsers, such as unexpected closing of the list.

While the <code>FacetFilterList</code> popup is opened (when the user selects a button corresponding to the list's name), any other activities leading to focus change will close it. For example, when the popup is opened and the app developer loads a {@link sap.m.BusyDialog} or any other dialog that obtains the focus, the popup will be closed.
*/
extern class FacetFilterList extends sap.m.List
{
	@:overload(function(?sId:String, ?mSettings:FacetFilterListArgs):Void {})
	public function new(?mSettings:FacetFilterListArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:listClose listClose} event of this <code>sap.m.FacetFilterList</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.FacetFilterList</code> itself.

Triggered after the list of items is closed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.FacetFilterList</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachListClose( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.FacetFilterList;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:listOpen listOpen} event of this <code>sap.m.FacetFilterList</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.FacetFilterList</code> itself.

Fired before the filter list is opened.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.FacetFilterList</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachListOpen( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.FacetFilterList;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:search search} event of this <code>sap.m.FacetFilterList</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.FacetFilterList</code> itself.

Triggered after the Search button is pressed or by pressing Enter in search input field.

The default filtering behavior of the control can be prevented by calling <code>sap.ui.base.Event.prototype.preventDefault</code> function in the <code>search</code> event handler function. Preventing the default behavior is useful in cases when items aggregation could be taking long time fetching from the OData model. As a result, no list items are loaded initially. If the default filtering behavior is prevented then filtering behavior has to be defined at application level inside the <code>search</code> event handler function.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.FacetFilterList</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSearch( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.FacetFilterList;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:listClose listClose} event of this <code>sap.m.FacetFilterList</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachListClose( fnFunction:()->Void, ?oListener:Dynamic):sap.m.FacetFilterList;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:listOpen listOpen} event of this <code>sap.m.FacetFilterList</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachListOpen( fnFunction:()->Void, ?oListener:Dynamic):sap.m.FacetFilterList;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:search search} event of this <code>sap.m.FacetFilterList</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSearch( fnFunction:()->Void, ?oListener:Dynamic):sap.m.FacetFilterList;

	/**
	* Creates a new subclass of class sap.m.FacetFilterList with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.List.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getActive active}.

Indicates that the list is displayed as a button when the FacetFilter type is set to <code>Simple</code>.

<b>Note:</b> Set the <code>showPersonalization</code> property of the <code>FacetFilter</code> to <code>true</code> when this property is set to <code>false</code>. This is needed, as the non-active lists are not displayed, and without a personalization button they can't be selected by the user.

Default value is <code>true</code>.
	* @return	Value of property <code>active</code>
	*/
	public function getActive( ):Bool;

	/**
	* Gets current value of property {@link #getAllCount allCount}.

Determines the number of objects that match this item in the target data set when all filter items are selected.
	* @return	Value of property <code>allCount</code>
	*/
	public function getAllCount( ):Int;

	/**
	* Gets current value of property {@link #getDataType dataType}.

FacetFilterList data type. Only String data type will provide search function.

Default value is <code>String</code>.
	* @return	Value of property <code>dataType</code>
	*/
	public function getDataType( ):sap.m.FacetFilterListDataType;

	/**
	* Gets current value of property {@link #getEnableCaseInsensitiveSearch enableCaseInsensitiveSearch}.

If set to <code>true</code>, enables case-insensitive search for OData.

Default value is <code>false</code>.
	* @return	Value of property <code>enableCaseInsensitiveSearch</code>
	*/
	public function getEnableCaseInsensitiveSearch( ):Bool;

	/**
	* Gets current value of property {@link #getKey key}.

Unique identifier for this filter list.
	* @return	Value of property <code>key</code>
	*/
	public function getKey( ):String;

	/**
	* Returns a metadata object for class sap.m.FacetFilterList.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getRetainListSequence retainListSequence}.

Retains the list sequence if it is inactive and made active again.

Default value is <code>false</code>.
	* @return	Value of property <code>retainListSequence</code>
	*/
	public function getRetainListSequence( ):Bool;

	/**
	* Returns the keys of the selected elements as an associative array. An empty object is returned if no items are selected.
	* @return	Object with the selected keys
	*/
	public function getSelectedKeys( ):Dynamic;

	/**
	* Gets current value of property {@link #getSequence sequence}.

Sequence that determines the order in which FacetFilterList is shown on the FacetFilter. Lists are rendered by ascending order of sequence.

Default value is <code>-1</code>.
	* @return	Value of property <code>sequence</code>
	*/
	public function getSequence( ):Int;

	/**
	* Gets current value of property {@link #getShowRemoveFacetIcon showRemoveFacetIcon}.

Specifies whether remove icon for facet is visible or hidden.

Default value is <code>true</code>.
	* @return	Value of property <code>showRemoveFacetIcon</code>
	*/
	public function getShowRemoveFacetIcon( ):Bool;

	/**
	* Gets current value of property {@link #getTitle title}.

Defines the title of the facet. The facet title is displayed on the facet button when the FacetFilter type is set to <code>Simple</code>. It is also displayed as a list item in the facet page of the dialog.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Gets current value of property {@link #getWordWrap wordWrap}.

If set to <code>true</code>, the item text wraps when it is too long.

Default value is <code>false</code>.
	* @return	Value of property <code>wordWrap</code>
	*/
	public function getWordWrap( ):Bool;

	/**
	* Removes the specified key from the selected keys cache and deselects the item.
	* @param	sKey The key of the selected item to be removed from the cache. If <code>null</code> then the text parameter will be used as the key.
	* @param	sText The text of the selected item to be removed from the cache. If the key parameter is <code>null</code> then text will be used as the key.
	* @return	Void
	*/
	public function removeSelectedKey( sKey:String, sText:String):Void;

	/**
	* Removes all selected keys from the selected keys cache and deselects all items.
	* @return	Void
	*/
	public function removeSelectedKeys( ):Void;

	/**
	* Sets a new value for property {@link #getActive active}.

Indicates that the list is displayed as a button when the FacetFilter type is set to <code>Simple</code>.

<b>Note:</b> Set the <code>showPersonalization</code> property of the <code>FacetFilter</code> to <code>true</code> when this property is set to <code>false</code>. This is needed, as the non-active lists are not displayed, and without a personalization button they can't be selected by the user.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bActive New value for property <code>active</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setActive( ?bActive:Bool):sap.m.FacetFilterList;

	/**
	* Sets a new value for property {@link #getAllCount allCount}.

Determines the number of objects that match this item in the target data set when all filter items are selected.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iAllCount New value for property <code>allCount</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAllCount( iAllCount:Int):sap.m.FacetFilterList;

	/**
	* Sets a new value for property {@link #getDataType dataType}.

FacetFilterList data type. Only String data type will provide search function.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>String</code>.
	* @param	sDataType New value for property <code>dataType</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDataType( ?sDataType:sap.m.FacetFilterListDataType):sap.m.FacetFilterList;

	/**
	* Sets a new value for property {@link #getEnableCaseInsensitiveSearch enableCaseInsensitiveSearch}.

If set to <code>true</code>, enables case-insensitive search for OData.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bEnableCaseInsensitiveSearch New value for property <code>enableCaseInsensitiveSearch</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableCaseInsensitiveSearch( ?bEnableCaseInsensitiveSearch:Bool):sap.m.FacetFilterList;

	/**
	* Sets a new value for property {@link #getKey key}.

Unique identifier for this filter list.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sKey New value for property <code>key</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setKey( sKey:String):sap.m.FacetFilterList;

	/**
	* Overrides to allow only MultiSelect and SingleSelectMaster list modes. If an invalid mode is given then the mode will not be changed.
	* @param	mode The list mode
	* @return	<code>this</code> to allow method chaining
	*/
	public function setMode( mode:sap.m.ListMode):sap.m.FacetFilterList;

	/**
	* Sets a new value for property {@link #getRetainListSequence retainListSequence}.

Retains the list sequence if it is inactive and made active again.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bRetainListSequence New value for property <code>retainListSequence</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRetainListSequence( ?bRetainListSequence:Bool):sap.m.FacetFilterList;

	/**
	* Used to pre-select FacetFilterItems, such as when restoring FacetFilterList selections from a variant. Keys are cached separately from the actual FacetFilterItems so that they remain even when the physical items are removed by filtering or sorting. If aKeys is <code>undefined</code>, <code>null</code>, or {} (empty object) then all keys are deleted. After this method completes, only those items with matching keys will be selected. All other items in the list will be deselected.
	* @param	oKeys Associative array indicating which FacetFilterItems should be selected in the list. Each property must be set to the value of a FacetFilterItem.key property. Each property value should be set to the FacetFilterItem.text property value. The text value is used to display the FacetFilterItem text when the FacetFilterList button or FacetFilter summary bar is displayed. If no property value is set then the property key is used for the text.
	* @return	Void
	*/
	public function setSelectedKeys( oKeys:Dynamic):Void;

	/**
	* Sets a new value for property {@link #getSequence sequence}.

Sequence that determines the order in which FacetFilterList is shown on the FacetFilter. Lists are rendered by ascending order of sequence.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>-1</code>.
	* @param	iSequence New value for property <code>sequence</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSequence( ?iSequence:Int):sap.m.FacetFilterList;

	/**
	* Sets a new value for property {@link #getShowRemoveFacetIcon showRemoveFacetIcon}.

Specifies whether remove icon for facet is visible or hidden.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowRemoveFacetIcon New value for property <code>showRemoveFacetIcon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowRemoveFacetIcon( ?bShowRemoveFacetIcon:Bool):sap.m.FacetFilterList;

	/**
	* Sets a new value for property {@link #getTitle title}.

Defines the title of the facet. The facet title is displayed on the facet button when the FacetFilter type is set to <code>Simple</code>. It is also displayed as a list item in the facet page of the dialog.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( sTitle:String):sap.m.FacetFilterList;

	/**
	* Sets a new value for property {@link #getWordWrap wordWrap}.

If set to <code>true</code>, the item text wraps when it is too long.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bWordWrap New value for property <code>wordWrap</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWordWrap( ?bWordWrap:Bool):sap.m.FacetFilterList;
}

typedef FacetFilterListArgs = sap.m.List.ListArgs & {

	/**
	* Defines the title of the facet. The facet title is displayed on the facet button when the FacetFilter type is set to <code>Simple</code>. It is also displayed as a list item in the facet page of the dialog.
	*/
	@:optional var title:String;

	/**
	* If set to <code>true</code>, the item text wraps when it is too long.
	*/
	@:optional var wordWrap:haxe.extern.EitherType<String,Bool>;

	/**
	* Indicates that the list is displayed as a button when the FacetFilter type is set to <code>Simple</code>.

<b>Note:</b> Set the <code>showPersonalization</code> property of the <code>FacetFilter</code> to <code>true</code> when this property is set to <code>false</code>. This is needed, as the non-active lists are not displayed, and without a personalization button they can't be selected by the user.
	*/
	@:optional var active:haxe.extern.EitherType<String,Bool>;

	/**
	* If set to <code>true</code>, enables case-insensitive search for OData.
	*/
	@:optional var enableCaseInsensitiveSearch:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the number of objects that match this item in the target data set when all filter items are selected.
	*/
	@:optional var allCount:haxe.extern.EitherType<String,Int>;

	/**
	* Sequence that determines the order in which FacetFilterList is shown on the FacetFilter. Lists are rendered by ascending order of sequence.
	*/
	@:optional var sequence:haxe.extern.EitherType<String,Int>;

	/**
	* Unique identifier for this filter list.
	*/
	@:optional var key:String;

	/**
	* Specifies whether remove icon for facet is visible or hidden.
	*/
	@:optional var showRemoveFacetIcon:haxe.extern.EitherType<String,Bool>;

	/**
	* Retains the list sequence if it is inactive and made active again.
	*/
	@:optional var retainListSequence:haxe.extern.EitherType<String,Bool>;

	/**
	* FacetFilterList data type. Only String data type will provide search function.
	*/
	@:optional var dataType:haxe.extern.EitherType<String,sap.m.FacetFilterListDataType>;

	/**
	* Triggered after the list of items is closed.
	*/
	@:optional var listClose:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired before the filter list is opened.
	*/
	@:optional var listOpen:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Triggered after the Search button is pressed or by pressing Enter in search input field.

The default filtering behavior of the control can be prevented by calling <code>sap.ui.base.Event.prototype.preventDefault</code> function in the <code>search</code> event handler function. Preventing the default behavior is useful in cases when items aggregation could be taking long time fetching from the OData model. As a result, no list items are loaded initially. If the default filtering behavior is prevented then filtering behavior has to be defined at application level inside the <code>search</code> event handler function.
	*/
	@:optional var search:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
