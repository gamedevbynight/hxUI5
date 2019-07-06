package sap.m;

@:native("sap.m.IconTabHeader")

/**
* This control displays a number of IconTabFilters and IconTabSeparators. If the available horizontal space is exceeded, a horizontal scrolling appears.
*/
extern class IconTabHeader extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:IconTabHeaderArgs):Void {})
	public function new(?mSettings:IconTabHeaderArgs):Void;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.m.IconTab):sap.m.IconTabHeader;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:select select} event of this <code>sap.m.IconTabHeader</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.IconTabHeader</code> itself.

Fires when an item is selected.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.IconTabHeader</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.IconTabHeader;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.m.IconTabHeader;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:select select} event of this <code>sap.m.IconTabHeader</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelect( fnFunction:()->Void, ?oListener:Dynamic):sap.m.IconTabHeader;

	/**
	* Creates a new subclass of class sap.m.IconTabHeader with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getBackgroundDesign backgroundDesign}.

Specifies the background color of the header.

Depending on the theme, you can change the state of the background color to "Solid", "Translucent", or "Transparent". Default is "Solid".

Default value is <code>Solid</code>.
	* @return	Value of property <code>backgroundDesign</code>
	*/
	public function getBackgroundDesign( ):sap.m.BackgroundDesign;

	/**
	* Gets current value of property {@link #getEnableTabReordering enableTabReordering}.

Specifies whether tab reordering is enabled. Relevant only for desktop devices. The {@link sap.m.IconTabSeparator sap.m.IconTabSeparator} cannot be dragged and dropped Items can be moved around {@link sap.m.IconTabSeparator sap.m.IconTabSeparator}

Default value is <code>false</code>.
	* @return	Value of property <code>enableTabReordering</code>
	*/
	public function getEnableTabReordering( ):Bool;

	/**
	* Gets content of aggregation {@link #getItems items}.

The items displayed in the IconTabHeader.
	* @return	null
	*/
	public function getItems( ):Array<sap.m.IconTab>;

	/**
	* Returns a metadata object for class sap.m.IconTabHeader.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getMode mode}.

Specifies the header mode. <b>Note:</b> The Inline mode works only if no icons are set.

Default value is <code>Standard</code>.
	* @return	Value of property <code>mode</code>
	*/
	public function getMode( ):sap.m.IconTabHeaderMode;

	/**
	* Gets current value of property {@link #getSelectedKey selectedKey}.

Key of the selected item.

If the key has no corresponding aggregated item, no changes will apply. If duplicate keys exists the first item matching, the key is used.
	* @return	Value of property <code>selectedKey</code>
	*/
	public function getSelectedKey( ):String;

	/**
	* Gets current value of property {@link #getShowOverflowSelectList showOverflowSelectList}.

Specifies if the overflow select list is displayed.

The overflow select list represents a list, where all tab filters are displayed, so the user can select specific tab filter easier.

Default value is <code>false</code>.
	* @return	Value of property <code>showOverflowSelectList</code>
	*/
	public function getShowOverflowSelectList( ):Bool;

	/**
	* Gets current value of property {@link #getTabDensityMode tabDensityMode}.

Specifies the visual density mode of the tabs.

The values that can be applied are <code>Cozy</code>, <code>Compact</code> and <code>Inherit</code>. <code>Cozy</code> and <code>Compact</code> render the control in one of these modes independent of the global density settings. The <code>Inherit</code> value follows the global density settings which are applied. For compatibility reasons, the default value is <code>Cozy</code>.

Default value is <code>Cozy</code>.
	* @return	Value of property <code>tabDensityMode</code>
	*/
	public function getTabDensityMode( ):sap.m.IconTabDensityMode;

	/**
	* Gets current value of property {@link #getVisible visible}.

Specifies whether the control is rendered.

Default value is <code>true</code>.
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

	/**
	* Checks for the provided <code>sap.m.IconTab</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.m.IconTab):Int;

	/**
	* Inserts a item into the aggregation {@link #getItems items}.
	* @param	oItem The item to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertItem( oItem:sap.m.IconTab, iIndex:Int):sap.m.IconTabHeader;

	/**
	* Removes all the controls from the aggregation {@link #getItems items}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllItems( ):Array<sap.m.IconTab>;
	@:overload( function(vItem:Int):sap.m.IconTab{ })
	@:overload( function(vItem:String):sap.m.IconTab{ })

	/**
	* Removes a item from the aggregation {@link #getItems items}.
	* @param	vItem The item to remove or its index or id
	* @return	The removed item or <code>null</code>
	*/
	public function removeItem( vItem:sap.m.IconTab):sap.m.IconTab;

	/**
	* Sets a new value for property {@link #getBackgroundDesign backgroundDesign}.

Specifies the background color of the header.

Depending on the theme, you can change the state of the background color to "Solid", "Translucent", or "Transparent". Default is "Solid".

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Solid</code>.
	* @param	sBackgroundDesign New value for property <code>backgroundDesign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundDesign( sBackgroundDesign:sap.m.BackgroundDesign):sap.m.IconTabHeader;

	/**
	* Sets a new value for property {@link #getEnableTabReordering enableTabReordering}.

Specifies whether tab reordering is enabled. Relevant only for desktop devices. The {@link sap.m.IconTabSeparator sap.m.IconTabSeparator} cannot be dragged and dropped Items can be moved around {@link sap.m.IconTabSeparator sap.m.IconTabSeparator}

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bEnableTabReordering New value for property <code>enableTabReordering</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableTabReordering( bEnableTabReordering:Bool):sap.m.IconTabHeader;

	/**
	* Sets a new value for property {@link #getMode mode}.

Specifies the header mode. <b>Note:</b> The Inline mode works only if no icons are set.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Standard</code>.
	* @param	sMode New value for property <code>mode</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMode( sMode:sap.m.IconTabHeaderMode):sap.m.IconTabHeader;

	/**
	* Sets the selected item based on key.
	* @param	sKey The key of the item to be selected
	* @return	this pointer for chaining
	*/
	public function setSelectedKey( sKey:String):sap.m.IconTabHeader;

	/**
	* Sets a new value for property {@link #getShowOverflowSelectList showOverflowSelectList}.

Specifies if the overflow select list is displayed.

The overflow select list represents a list, where all tab filters are displayed, so the user can select specific tab filter easier.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowOverflowSelectList New value for property <code>showOverflowSelectList</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowOverflowSelectList( bShowOverflowSelectList:Bool):sap.m.IconTabHeader;

	/**
	* Sets a new value for property {@link #getTabDensityMode tabDensityMode}.

Specifies the visual density mode of the tabs.

The values that can be applied are <code>Cozy</code>, <code>Compact</code> and <code>Inherit</code>. <code>Cozy</code> and <code>Compact</code> render the control in one of these modes independent of the global density settings. The <code>Inherit</code> value follows the global density settings which are applied. For compatibility reasons, the default value is <code>Cozy</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Cozy</code>.
	* @param	sTabDensityMode New value for property <code>tabDensityMode</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTabDensityMode( sTabDensityMode:sap.m.IconTabDensityMode):sap.m.IconTabHeader;

	/**
	* Sets a new value for property {@link #getVisible visible}.

Specifies whether the control is rendered.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisible New value for property <code>visible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisible( bVisible:Bool):sap.m.IconTabHeader;
}

typedef IconTabHeaderArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Key of the selected item.

If the key has no corresponding aggregated item, no changes will apply. If duplicate keys exists the first item matching, the key is used.
	*/
	@:optional var selectedKey:String;

	/**
	* Specifies whether the control is rendered.
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies the header mode. <b>Note:</b> The Inline mode works only if no icons are set.
	*/
	@:optional var mode:haxe.extern.EitherType<String,sap.m.IconTabHeaderMode>;

	/**
	* Specifies if the overflow select list is displayed.

The overflow select list represents a list, where all tab filters are displayed, so the user can select specific tab filter easier.
	*/
	@:optional var showOverflowSelectList:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies the background color of the header.

Depending on the theme, you can change the state of the background color to "Solid", "Translucent", or "Transparent". Default is "Solid".
	*/
	@:optional var backgroundDesign:haxe.extern.EitherType<String,sap.m.BackgroundDesign>;

	/**
	* Specifies whether tab reordering is enabled. Relevant only for desktop devices. The {@link sap.m.IconTabSeparator sap.m.IconTabSeparator} cannot be dragged and dropped Items can be moved around {@link sap.m.IconTabSeparator sap.m.IconTabSeparator}
	*/
	@:optional var enableTabReordering:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies the visual density mode of the tabs.

The values that can be applied are <code>Cozy</code>, <code>Compact</code> and <code>Inherit</code>. <code>Cozy</code> and <code>Compact</code> render the control in one of these modes independent of the global density settings. The <code>Inherit</code> value follows the global density settings which are applied. For compatibility reasons, the default value is <code>Cozy</code>.
	*/
	@:optional var tabDensityMode:haxe.extern.EitherType<String,sap.m.IconTabDensityMode>;

    /**
    * The items displayed in the IconTabHeader.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.m.IconTab>>;

    /**
    * Internal aggregation for managing the overflow button.
    */
	@:optional var _overflowButton:haxe.extern.EitherType<String,sap.m.Button>;

	/**
	* Fires when an item is selected.
	*/
	@:optional var select:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
