package sap.ui.core.delegate;

@:native("sap.ui.core.delegate.ItemNavigation")

/**
* Delegate for the navigation between DOM nodes with the keyboard.

The <code>ItemNavigation</code> provides keyboard and mouse navigation between DOM nodes representing items. This means that controls rendering a list of items can attach this delegate to get a common keyboard and mouse support to navigate between these items. It is possible to navigate between the items via the arrow keys. If needed, paging using the Page Up and Page Down keys is possible. (To activate call <code>setPageSize</code> with a value &gt; 0.) HOME and END keys are also supported. Focusing an item via mouse also is also supported. For mouse navigation, the <code>mousedown</code> event is used.

As the <code>ItemNavigation</code> works with DOM nodes, the items and the control area must be provided as DOM references. There is one root DOM reference (set via <code>setRootDomRef</code>). All item DOM references (set via <code>setItemDomRefs</code>) must be places somewhere inside of this root DOM reference. Only focusable items are used for the navigation, meaning disabled items or separator items are just ignored by navigating through the items. In some cases however, it makes sense to put the non-focusable items in the array of the DOM references to keep the indexes stable or like in the calling control. <b>Hint:</b> To make a DOM reference focusable a <code>tabindex</code> of -1 can be set.

<b>Note</b> After re-rendering of the control or changing the DOM nodes of the control, the DOM references of the <code>ItemNavigation</code> must be updated. Then the same item (corresponding to the index) will get the focus.

The <code>ItemNavigation</code> adjusts the <code>tabindex</code> of all DOM references relating to the current focused item. So if the control containing the items gets the focus (e.g. via tab navigation), it is always the focused items which will be focused.

<b>Note:</b> If the <code>ItemNavigation</code> is nested in another <code>ItemNavigation</code> (e.g. <code>SegmentedButton</code> in <code>Toolbar</code>), the <code>RootDomRef</code> will always have <code>tabindex</code> -1.

Per default the <code>ItemNavigation</code> cycles over the items. It navigates again to the first item if the Arrow Down or Arrow Right key is pressed while the last item has the focus. It navigates to the last item if arrow up or arrow left is pressed while the first item has the focus. If you want to stop the navigation at the first and last item, call the <code>setCycling</code> method with a value of <code>false</code>.

It is possible to have multiple columns in the item navigation. If multiple columns are used, the keyboard navigation changes. The Arrow Right and Arrow Left keys will take the user to the next or previous item, and the Arrow Up and Arrow Down keys will navigate the same way but in a vertical direction.

The <code>ItemNavigation</code> also allows setting a selected index that is used to identify the selected item. Initially, if no other focus is set, the selected item will be the focused one. Note that navigating through the items will not change the selected item, only the focus. (For example a radio group has one selected item.)
*/
extern class ItemNavigation extends sap.ui.base.EventProvider
{

	/**
	* 
	* @param	oDomRef The root DOM reference that includes all items
	* @param	aItemDomRefs Array of DOM references representing the items for the navigation
	* @param	bNotInTabChain Whether the selected element should be in the tab chain or not
	* @return	Object
	*/
	public function new( ?oDomRef:js.html.Element, ?aItemDomRefs:Array<js.html.Element>, ?bNotInTabChain:Bool):Void;

	/**
	* Creates a new subclass of class sap.ui.core.delegate.ItemNavigation with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.EventProvider.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns disabled modifiers These modifiers will not be handled by the <code>ItemNavigation</code>
	* @param	oDisabledModifiers Object that includes event type with disabled keys as an array
	* @return	Object that includes event type with disabled keys as an array
	*/
	public function getDisabledModifiers( oDisabledModifiers:Dynamic):Dynamic;

	/**
	* Returns the array of item DOM references
	* @return	Array of item DOM references
	*/
	public function getItemDomRefs( ):Array<js.html.Element>;

	/**
	* Returns a metadata object for class sap.ui.core.delegate.ItemNavigation.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the root DOM reference surrounding the items
	* @return	Root DOM reference
	*/
	public function getRootDomRef( ):js.html.Element;

	/**
	* Check whether given event has disabled modifier or not
	* @param	oEvent jQuery event
	* @return	Flag if disabled modifiers are set
	*/
	public function hasDisabledModifier( oEvent:jquery.Event):Bool;

	/**
	* Sets whether the items are displayed in columns.

If columns are used, the Arrow Up and Arrow Down keys navigate to the next or previous item of the column. If the first or last item of the column is reached, the next focused item is then in the next or previous column.
	* @param	iColumns Count of columns for the table mode or cycling mode
	* @param	bNoColumnChange Forbids jumping to an other column with Arrow Up and Arrow Down keys
	* @return	<code>this</code> to allow method chaining
	*/
	public function setColumns( iColumns:Int, bNoColumnChange:Bool):sap.ui.core.delegate.ItemNavigation;

	/**
	* Sets whether the <code>ItemNavigation</code> should cycle through the items.

If cycling is disabled the navigation stops at the first and last item, if the corresponding arrow keys are used.
	* @param	bCycling Set to true if cycling should be done, else false
	* @return	<code>this</code> to allow method chaining
	*/
	public function setCycling( bCycling:Bool):sap.ui.core.delegate.ItemNavigation;

	/**
	* Sets the disabled modifiers These modifiers will not be handled by the <code>ItemNavigation</code>

<pre>
Example: Disable shift + up handling of the <code>ItemNavigation</code>

oItemNavigation.setDisabledModifiers({
    sapnext : ["shift"]
});

Possible keys are : "shift", "alt", "ctrl", "meta"
Possible events are : "sapnext", "sapprevious", "saphome", "sapend"
</pre>
	* @param	oDisabledModifiers Object that includes event type with disabled keys as an array
	* @return	<code>this</code> to allow method chaining
	*/
	public function setDisabledModifiers( oDisabledModifiers:Dynamic):sap.ui.core.delegate.ItemNavigation;

	/**
	* Sets behavior of HOME and END keys if columns are used.
	* @param	bStayInRow HOME -> go to first item in row; END -> go to last item in row
	* @param	bCtrlEnabled HOME/END with CTRL -> go to first/last item of all
	* @return	<code>this</code> to allow method chaining
	*/
	public function setHomeEndColumnMode( bStayInRow:Bool, bCtrlEnabled:Bool):sap.ui.core.delegate.ItemNavigation;

	/**
	* Sets the item DOM references as an array for the items
	* @param	aItemDomRefs Array of DOM references or DOM node list object, representing the items
	* @return	<code>this</code> to allow method chaining
	*/
	public function setItemDomRefs( aItemDomRefs:Array<js.html.Element>):sap.ui.core.delegate.ItemNavigation;

	/**
	* Sets the page size of the item navigation to allow Page Up and Page Down keys.
	* @param	iPageSize The page size, needs to be at least 1
	* @return	<code>this</code> to allow method chaining
	*/
	public function setPageSize( iPageSize:Int):sap.ui.core.delegate.ItemNavigation;

	/**
	* Sets the root DOM reference surrounding the items
	* @param	oDomRef Root DOM reference
	* @return	<code>this</code> to allow method chaining
	*/
	public function setRootDomRef( oDomRef:Dynamic):sap.ui.core.delegate.ItemNavigation;

	/**
	* Sets the selected index if the used control supports selection.
	* @param	iIndex Index of the first selected item
	* @return	<code>this</code> to allow method chaining
	*/
	public function setSelectedIndex( iIndex:Int):sap.ui.core.delegate.ItemNavigation;

	/**
	* Sets whether the <code>ItemNavigation</code> should use the table mode to navigate through the items (navigation in a grid).
	* @param	bTableMode Set to true if table mode should be used, else false
	* @param	bTableList This sets a different behavior for table mode. In this mode we keep using table navigation but there are some differences. e.g. <ul> <li>Page-up moves focus to the first row, not to the first cell like in table mode</li> <li>Page-down moves focus to the last row, not to the last cell like in table mode</li> </ul>
	* @return	<code>this</code> to allow method chaining
	*/
	public function setTableMode( bTableMode:Bool, ?bTableList:Bool):sap.ui.core.delegate.ItemNavigation;
}

