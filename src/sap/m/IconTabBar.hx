package sap.m;

@:native("sap.m.IconTabBar")

/**
* The IconTabBar represents a collection of tabs with associated content. <h3>Overview</h3> The IconTabBar can be used for navigation within an object, or as a filter. Different types of IconTabBar are used based on the contents. <ul> <li>Filter - There is only one main content for all tabs. The main content can be filtered, based on the selected tab.</li> <li>Normal tab bar - The contents of each tab are independent from each other.</li> <li>Combination of the above - There can be both filtered and independent contents.</li> </ul> <h3>Structure</h3> The IconTabBar can hold two types of entities {@link sap.m.IconTabFilter sap.m.IconTabFilter} and {@link sap.m.IconTabSeparator sap.m.IconTabSeparator}

The IconTabFilter holds all information on an item - text, icon and count.

<<<<<<< HEAD
The IconTabSeparator holds an icon that can be used to show a process that runs from item to item. <h3>Usage</h3> <h4>Text only</h4> Uses text labels as tabs with optional counter <ul> <li>Used when there are no suitable icons for all items.</li> <li>Used when longer labels are needed.</li> <li>If <code>headerMode</code> property is set to <code>Inline</code> the text and the count are displayed in one line.</li> <li><code>UpperCase</code> is disabled.</li> <li>Use title case.</li> </ul> <h4>Icon Tabs</h4> Round tabs with optional counter and label <ul> <li>Used when there are unique icons for all items.</li> <li>Only shorter labels are possible.</li> <li>Provide labels for all icons or for none. Do not mix these.</li> </ul> <h4>Tabs as filters</h4> Tabs with filtered content from the same set of items <ul> <li>Provide an <i>"All"</i> tab to show all items without filtering.</li> <li>Use counters to show the number of items in each filter.</li> </ul> <h4>Tabs as process steps</h4> Tabs show a single step in a process <ul> <li>Use an arrow (e.g. triple-chevron) as a separator to connect the steps.</li> <li>Use counters to show the number of items in each filter.</li> </ul> <h3>Responsive Behavior</h3> <ul> <li>Text-only tabs are never truncated.</li> <li>Use the <code>expandable</code> property to specify whether users can collapse the tab container (default = true).</li> <li>On desktop, tabs can be dragged and dropped (property <code>enableTabReordering</code>).</li> <li>If you have a large number of tabs, only the tabs that can fit on screen will be visible. All other tabs that can't fit on the screen are available in an overflow tab "More".</li> </ul> When using the <code>sap.m.IconTabBar</code> in SAP Quartz themes, the breakpoints and layout paddings could be determined by the Icon Tab Bar's width. To enable this concept and add responsive paddings to an element of the Icon Tab Bar control, you have to add the following classes depending on your use case: <code>sapUiResponsivePadding--header</code>, <code>sapUiResponsivePadding--content</code>.
=======
The IconTabBarSeparator holds an icon that can be used to show a process that runs from item to item. <h3>Usage</h3> <h4>Text only</h4> Uses text labels as tabs with optional counter <ul> <li>Used when there are no suitable icons for all items.</li> <li>Used when longer labels are needed.</li> <li>If <code>headerMode</code> property is set to <code>Inline</code> the text and the count are displayed in one line.</li> <li><code>UpperCase</code> is disabled.</li> <li>Use title case.</li> </ul> <h4>Icon Tabs</h4> Round tabs with optional counter and label <ul> <li>Used when there are unique icons for all items.</li> <li>Only shorter labels are possible.</li> <li>Provide labels for all icons or for none. Do not mix these.</li> </ul> <h4>Tabs as filters</h4> Tabs with filtered content from the same set of items <ul> <li>Provide an <i>"All"</i> tab to show all items without filtering.</li> <li>Use counters to show the number of items in each filter.</li> </ul> <h4>Tabs as process steps</h4> Tabs show a single step in a process <ul> <li>Use an arrow (e.g. triple-chevron) as a separator to connect the steps.</li> <li>Use counters to show the number of items in each filter.</li> </ul> <h3>Responsive Behavior</h3> <ul> <li>Text-only tabs are never truncated.</li> <li>Use the <code>expandable</code> property to specify whether users can collapse the tab container (default = true).</li> <li>On desktop, tabs can be dragged and dropped (property <code>enableTabReordering</code>).</li> <li>If you have a large number of tabs, you can scroll through them with the arrows. Additionally all tabs are available in an overflow button (property <code>showOverflowSelectList</code>).</li> </ul> When using the <code>sap.m.IconTabBar</code> in SAP Quartz themes, the breakpoints and layout paddings could be determined by the Icon Tab Bar's width. To enable this concept and add responsive paddings to an element of the Icon Tab Bar control, you have to add the following classes depending on your use case: <code>sapUiResponsivePadding--header</code>, <code>sapUiResponsivePadding--content</code>.
>>>>>>> bd78e88ba76c5bd0a95baa0cbb72c1713c532a11
*/
extern class IconTabBar extends sap.ui.core.Control implements sap.m.ObjectHeaderContainer implements sap.f.IDynamicPageStickyContent
{
	@:overload(function(?sId:String, ?mSettings:IconTabBarArgs):Void {})
	public function new(?mSettings:IconTabBarArgs):Void;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.m.IconTabBar;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.m.IconTab):sap.m.IconTabBar;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:expand expand} event of this <code>sap.m.IconTabBar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.IconTabBar</code> itself.

Indicates that the tab will expand or collapse.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.IconTabBar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachExpand( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.IconTabBar;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:select select} event of this <code>sap.m.IconTabBar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.IconTabBar</code> itself.

Fires when an item is selected.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.IconTabBar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.IconTabBar;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.m.IconTabBar;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.m.IconTabBar;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:expand expand} event of this <code>sap.m.IconTabBar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachExpand( fnFunction:()->Void, ?oListener:Dynamic):sap.m.IconTabBar;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:select select} event of this <code>sap.m.IconTabBar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelect( fnFunction:()->Void, ?oListener:Dynamic):sap.m.IconTabBar;

	/**
	* Creates a new subclass of class sap.m.IconTabBar with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getApplyContentPadding applyContentPadding}.

Determines whether the IconTabBar content fits to the full area. The paddings are removed if it's set to false.

Default value is <code>true</code>.
	* @return	Value of property <code>applyContentPadding</code>
	*/
	public function getApplyContentPadding( ):Bool;

	/**
	* Gets current value of property {@link #getAriaTexts ariaTexts}.

Specifies optional texts for the screen reader.

The given object can contain the following keys: <code>headerLabel</code> - text to serve as a label for the header, <code>headerDescription</code> - text to serve as a description for the header.
	* @return	Value of property <code>ariaTexts</code>
	*/
	public function getAriaTexts( ):Dynamic;

	/**
	* Gets current value of property {@link #getBackgroundDesign backgroundDesign}.

Specifies the background color of the IconTabBar.

Depending on the theme, you can change the state of the background color to "Solid", "Translucent", or "Transparent". Default is "Solid".

Default value is <code>Solid</code>.
	* @return	Value of property <code>backgroundDesign</code>
	*/
	public function getBackgroundDesign( ):sap.m.BackgroundDesign;

	/**
	* Gets content of aggregation {@link #getContent content}.

Represents the contents displayed below the IconTabBar. If there are multiple contents, they are rendered after each other. The developer has to manage to display the right one or use the content aggregation inside the IconTabFilter (which will be displayed instead if it is set).
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getEnableTabReordering enableTabReordering}.

Specifies whether tab reordering is enabled. Relevant only for desktop devices. The {@link sap.m.IconTabSeparator sap.m.IconTabSeparator} cannot be dragged and dropped Items can be moved around {@link sap.m.IconTabSeparator sap.m.IconTabSeparator}

Default value is <code>false</code>.
	* @return	Value of property <code>enableTabReordering</code>
	*/
	public function getEnableTabReordering( ):Bool;

	/**
	* Gets current value of property {@link #getExpandable expandable}.

Defines if the tabs are collapsible and expandable.

Default value is <code>true</code>.
	* @return	Value of property <code>expandable</code>
	*/
	public function getExpandable( ):Bool;

	/**
	* Gets current value of property {@link #getExpanded expanded}.

Indicates if the actual tab content is expanded or not.

Default value is <code>true</code>.
	* @return	Value of property <code>expanded</code>
	*/
	public function getExpanded( ):Bool;

	/**
	* Gets current value of property {@link #getHeaderBackgroundDesign headerBackgroundDesign}.

Specifies the background color of the header.

Depending on the theme, you can change the state of the background color to "Solid", "Translucent", or "Transparent". Default is "Solid".

Default value is <code>Solid</code>.
	* @return	Value of property <code>headerBackgroundDesign</code>
	*/
	public function getHeaderBackgroundDesign( ):sap.m.BackgroundDesign;

	/**
	* Gets current value of property {@link #getHeaderMode headerMode}.

Specifies the header mode. <b>Note:</b> The Inline mode works only if no icons are set.

Default value is <code>Standard</code>.
	* @return	Value of property <code>headerMode</code>
	*/
	public function getHeaderMode( ):sap.m.IconTabHeaderMode;

	/**
	* Gets content of aggregation {@link #getItems items}.

The items displayed in the IconTabBar.
	* @return	null
	*/
	public function getItems( ):Array<sap.m.IconTab>;

	/**
	* Gets current value of property {@link #getMaxNestingLevel maxNestingLevel}.

Specifies the allowed level of tabs nesting within one another using drag and drop. Default value is 0 which means nesting via interaction is not allowed. Maximum value is 100. This property allows nesting via user interaction only, and does not restrict adding items to the <code>items</code> aggregation of {@link sap.m.IconTabFilter sap.m.IconTabFilter}.

Default value is <code>0</code>.
	* @return	Value of property <code>maxNestingLevel</code>
	*/
	public function getMaxNestingLevel( ):Int;

	/**
	* Returns a metadata object for class sap.m.IconTabBar.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Reflector for the internal header's selectedKey property.
	* @return	The current property value.
	*/
	public function getSelectedKey( ):String;

	/**
	* Reflector for the internal header's showSelection property.
	* @return	The current property value.
	*/
	public function getShowSelection( ):Bool;

	/**
	* Gets current value of property {@link #getStretchContentHeight stretchContentHeight}.

Determines whether the IconTabBar height is stretched to the maximum possible height of its parent container. As a prerequisite, the height of the parent container must be defined as a fixed value.

Default value is <code>false</code>.
	* @return	Value of property <code>stretchContentHeight</code>
	*/
	public function getStretchContentHeight( ):Bool;

	/**
	* Gets current value of property {@link #getTabDensityMode tabDensityMode}.

Specifies the visual density mode of the tabs.

The values that can be applied are <code>Cozy</code>, <code>Compact</code> and <code>Inherit</code>. <code>Cozy</code> and <code>Compact</code> render the control in one of these modes independent of the global density settings. The <code>Inherit</code> value follows the global density settings which are applied. For compatibility reasons, the default value is <code>Cozy</code>.

Default value is <code>Cozy</code>.
	* @return	Value of property <code>tabDensityMode</code>
	*/
	public function getTabDensityMode( ):sap.m.IconTabDensityMode;

	/**
	* Gets current value of property {@link #getUpperCase upperCase}.

Determines whether the text of the icon tab filter (not the count) is displayed in uppercase.

Default value is <code>false</code>.
	* @return	Value of property <code>upperCase</code>
	*/
	public function getUpperCase( ):Bool;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getContent content}. and returns its index if found or -1 otherwise.
	* @param	oContent The content whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfContent( oContent:sap.ui.core.Control):Int;

	/**
	* Checks for the provided <code>sap.m.IconTab</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.m.IconTab):Int;

	/**
	* Inserts a content into the aggregation {@link #getContent content}.
	* @param	oContent The content to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the content should be inserted at; for a negative value of <code>iIndex</code>, the content is inserted at position 0; for a value greater than the current size of the aggregation, the content is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.m.IconTabBar;

	/**
	* Inserts a item into the aggregation {@link #getItems items}.
	* @param	oItem The item to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertItem( oItem:sap.m.IconTab, iIndex:Int):sap.m.IconTabBar;

	/**
	* Removes all the controls from the aggregation {@link #getContent content}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllContent( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls from the aggregation {@link #getItems items}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllItems( ):Array<sap.m.IconTab>;
	@:overload( function(vContent:Int):sap.ui.core.Control{ })
	@:overload( function(vContent:String):sap.ui.core.Control{ })

	/**
	* Removes a content from the aggregation {@link #getContent content}.
	* @param	vContent The content to remove or its index or id
	* @return	The removed content or <code>null</code>
	*/
	public function removeContent( vContent:sap.ui.core.Control):sap.ui.core.Control;
	@:overload( function(vItem:Int):sap.m.IconTab{ })
	@:overload( function(vItem:String):sap.m.IconTab{ })

	/**
	* Removes a item from the aggregation {@link #getItems items}.
	* @param	vItem The item to remove or its index or id
	* @return	The removed item or <code>null</code>
	*/
	public function removeItem( vItem:sap.m.IconTab):sap.m.IconTab;

	/**
	* Sets a new value for property {@link #getApplyContentPadding applyContentPadding}.

Determines whether the IconTabBar content fits to the full area. The paddings are removed if it's set to false.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bApplyContentPadding New value for property <code>applyContentPadding</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setApplyContentPadding( ?bApplyContentPadding:Bool):sap.m.IconTabBar;

	/**
	* Sets the ariaTexts property.
	* @param	oAriaTexts New value for ariaTexts.
	* @return	this Reference to this in order to allow method chaining
	*/
	public function setAriaTexts( oAriaTexts:Dynamic):sap.m.IconTabBar;

	/**
	* Sets a new value for property {@link #getBackgroundDesign backgroundDesign}.

Specifies the background color of the IconTabBar.

Depending on the theme, you can change the state of the background color to "Solid", "Translucent", or "Transparent". Default is "Solid".

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Solid</code>.
	* @param	sBackgroundDesign New value for property <code>backgroundDesign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundDesign( ?sBackgroundDesign:sap.m.BackgroundDesign):sap.m.IconTabBar;

	/**
	* Sets the enableTabReordering property.
	* @param	value New value for enableTabReordering.
	* @return	this IconTabBar reference for chaining.
	*/
	public function setEnableTabReordering( value:Bool):sap.m.IconTabBar;

	/**
	* Sets a new value for property {@link #getExpandable expandable}.

Defines if the tabs are collapsible and expandable.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bExpandable New value for property <code>expandable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setExpandable( ?bExpandable:Bool):sap.m.IconTabBar;

	/**
	* Sets the tab content as expanded.
	* @param	bExpanded New parameter value.
	* @return	this IconTabBar reference for chaining.
	*/
	public function setExpanded( bExpanded:Bool):sap.m.IconTabBar;

	/**
	* Sets the header background design.
	* @param	headerBackgroundDesign New parameter value.
	* @return	this IconTabBar reference for chaining.
	*/
	public function setHeaderBackgroundDesign( headerBackgroundDesign:sap.m.BackgroundDesign):sap.m.IconTabBar;

	/**
	* Sets the header mode.
	* @param	mode New parameter value.
	* @return	this IconTabBar reference for chaining.
	*/
	public function setHeaderMode( mode:sap.m.IconTabHeaderMode):sap.m.IconTabBar;

	/**
	* Sets a new value for property {@link #getMaxNestingLevel maxNestingLevel}.

Specifies the allowed level of tabs nesting within one another using drag and drop. Default value is 0 which means nesting via interaction is not allowed. Maximum value is 100. This property allows nesting via user interaction only, and does not restrict adding items to the <code>items</code> aggregation of {@link sap.m.IconTabFilter sap.m.IconTabFilter}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iMaxNestingLevel New value for property <code>maxNestingLevel</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxNestingLevel( ?iMaxNestingLevel:Int):sap.m.IconTabBar;

	/**
	* Reflector for the internal header's selectedKey property.
	* @param	sValue The new value.
	* @return	this Pointer for chaining.
	*/
	public function setSelectedKey( sValue:String):sap.m.IconTabBar;

	/**
	* Reflector for the internal header's showSelection property.
	* @param	bValue the new value.
	* @return	this IconTabBar reference for chaining.
	*/
	public function setShowSelection( bValue:Bool):sap.m.IconTabBar;

	/**
	* Sets a new value for property {@link #getStretchContentHeight stretchContentHeight}.

Determines whether the IconTabBar height is stretched to the maximum possible height of its parent container. As a prerequisite, the height of the parent container must be defined as a fixed value.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bStretchContentHeight New value for property <code>stretchContentHeight</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setStretchContentHeight( ?bStretchContentHeight:Bool):sap.m.IconTabBar;

	/**
	* Sets the tab density mode.
	* @param	mode New parameter value.
	* @return	this IconTabBar reference for chaining.
	*/
	public function setTabDensityMode( mode:sap.m.IconTabHeaderMode):sap.m.IconTabBar;

	/**
	* Sets a new value for property {@link #getUpperCase upperCase}.

Determines whether the text of the icon tab filter (not the count) is displayed in uppercase.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bUpperCase New value for property <code>upperCase</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUpperCase( ?bUpperCase:Bool):sap.m.IconTabBar;
}

typedef IconTabBarArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines if the tabs are collapsible and expandable.
	*/
	@:optional var expandable:haxe.extern.EitherType<String,Bool>;

	/**
	* Indicates if the actual tab content is expanded or not.
	*/
	@:optional var expanded:haxe.extern.EitherType<String,Bool>;

	/**
	* Key of the selected tab item.

If the key has no corresponding aggregated item, no changes will apply. If duplicate keys exists the first item matching the key is used.
	*/
	@:optional var selectedKey:String;

	/**
	* Determines whether the text of the icon tab filter (not the count) is displayed in uppercase.
	*/
	@:optional var upperCase:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the IconTabBar height is stretched to the maximum possible height of its parent container. As a prerequisite, the height of the parent container must be defined as a fixed value.
	*/
	@:optional var stretchContentHeight:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the IconTabBar content fits to the full area. The paddings are removed if it's set to false.
	*/
	@:optional var applyContentPadding:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies the background color of the IconTabBar.

Depending on the theme, you can change the state of the background color to "Solid", "Translucent", or "Transparent". Default is "Solid".
	*/
	@:optional var backgroundDesign:haxe.extern.EitherType<String,sap.m.BackgroundDesign>;

	/**
	* Specifies the header mode. <b>Note:</b> The Inline mode works only if no icons are set.
	*/
	@:optional var headerMode:haxe.extern.EitherType<String,sap.m.IconTabHeaderMode>;

	/**
	* Specifies the background color of the header.

Depending on the theme, you can change the state of the background color to "Solid", "Translucent", or "Transparent". Default is "Solid".
	*/
	@:optional var headerBackgroundDesign:haxe.extern.EitherType<String,sap.m.BackgroundDesign>;

	/**
	* Specifies whether tab reordering is enabled. Relevant only for desktop devices. The {@link sap.m.IconTabSeparator sap.m.IconTabSeparator} cannot be dragged and dropped Items can be moved around {@link sap.m.IconTabSeparator sap.m.IconTabSeparator}
	*/
	@:optional var enableTabReordering:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies the allowed level of tabs nesting within one another using drag and drop. Default value is 0 which means nesting via interaction is not allowed. Maximum value is 100. This property allows nesting via user interaction only, and does not restrict adding items to the <code>items</code> aggregation of {@link sap.m.IconTabFilter sap.m.IconTabFilter}.
	*/
	@:optional var maxNestingLevel:haxe.extern.EitherType<String,Int>;

	/**
	* Specifies the visual density mode of the tabs.

The values that can be applied are <code>Cozy</code>, <code>Compact</code> and <code>Inherit</code>. <code>Cozy</code> and <code>Compact</code> render the control in one of these modes independent of the global density settings. The <code>Inherit</code> value follows the global density settings which are applied. For compatibility reasons, the default value is <code>Cozy</code>.
	*/
	@:optional var tabDensityMode:haxe.extern.EitherType<String,sap.m.IconTabDensityMode>;

	/**
	* Specifies optional texts for the screen reader.

The given object can contain the following keys: <code>headerLabel</code> - text to serve as a label for the header, <code>headerDescription</code> - text to serve as a description for the header.
	*/
	@:optional var ariaTexts:haxe.extern.EitherType<String,Dynamic>;

    /**
    * The items displayed in the IconTabBar.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.m.IconTab>>;

    /**
    * Represents the contents displayed below the IconTabBar. If there are multiple contents, they are rendered after each other. The developer has to manage to display the right one or use the content aggregation inside the IconTabFilter (which will be displayed instead if it is set).
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * Internal aggregation for managing the icon tab elements.
    */
	@:optional var _header:haxe.extern.EitherType<String,sap.m.IconTabHeader>;

	/**
	* Indicates that the tab will expand or collapse.
	*/
	@:optional var expand:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fires when an item is selected.
	*/
	@:optional var select:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
