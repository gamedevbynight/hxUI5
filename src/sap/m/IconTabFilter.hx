package sap.m;

@:native("sap.m.IconTabFilter")

/**
* Represents a selectable item inside an IconTabBar.
*/
extern class IconTabFilter extends sap.ui.core.Item implements sap.m.IconTab implements sap.ui.core.PopupInterface
{
	@:overload(function(?sId:String, ?mSettings:IconTabFilterArgs):Void {})
	public function new(?mSettings:IconTabFilterArgs):Void;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.m.IconTabFilter;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.m.IconTab):sap.m.IconTabFilter;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.m.IconTabFilter;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.m.IconTabFilter;

	/**
	* Creates a new subclass of class sap.m.IconTabFilter with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Item.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets content of aggregation {@link #getContent content}.

The content displayed for this item (optional).

If this content is set, it is displayed instead of the general content inside the IconTabBar.
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getCount count}.

Represents the "count" text, which is displayed in the tab filter.

Default value is <code>empty string</code>.
	* @return	Value of property <code>count</code>
	*/
	public function getCount( ):String;

	/**
	* Gets current value of property {@link #getDesign design}.

Specifies whether the icon and the texts are placed vertically or horizontally.

Default value is <code>Vertical</code>.
	* @return	Value of property <code>design</code>
	*/
	public function getDesign( ):sap.m.IconTabFilterDesign;

	/**
	* Gets current value of property {@link #getIcon icon}.

Specifies the icon to be displayed for the tab filter.

Default value is <code>empty string</code>.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getIconColor iconColor}.

Specifies the icon color.

If an icon font is used, the color can be chosen from the icon colors (sap.ui.core.IconColor). Possible semantic colors are: Neutral, Positive, Critical, Negative. Instead of the semantic icon color the brand color can be used, this is named Default. Semantic colors and brand colors should not be mixed up inside one IconTabBar.

Default value is <code>Default</code>.
	* @return	Value of property <code>iconColor</code>
	*/
	public function getIconColor( ):sap.ui.core.IconColor;

	/**
	* Gets current value of property {@link #getIconDensityAware iconDensityAware}.

If set to true, it sends one or more requests, trying to get the density perfect version of the image if this version of the image doesn't exist on the server. Default value is set to true.

If bandwidth is key for the application, set this value to false.

Default value is <code>true</code>.
	* @return	Value of property <code>iconDensityAware</code>
	*/
	public function getIconDensityAware( ):Bool;

	/**
	* Gets content of aggregation {@link #getItems items}.

The sub items of this filter (optional).
	* @return	null
	*/
	public function getItems( ):Array<sap.m.IconTab>;

	/**
	* Returns a metadata object for class sap.m.IconTabFilter.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getShowAll showAll}.

Enables special visualization for disabled filter (show all items). <b>Note:</b> You can use this property when you use <code>IconTabBar</code> as a filter. In order for it to be displayed correctly, the other tabs in the filter should consist of an icon, text and an optional count. It can be set to true for the first tab filter. You can find more detailed information in the {@link https://experience.sap.com/fiori-design-web/icontabbar/#tabs-as-filters UX Guidelines}.

Default value is <code>false</code>.
	* @return	Value of property <code>showAll</code>
	*/
	public function getShowAll( ):Bool;

	/**
	* Gets current value of property {@link #getVisible visible}.

Specifies whether the tab filter is rendered.

Default value is <code>true</code>.
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

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
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.m.IconTabFilter;

	/**
	* Inserts a item into the aggregation {@link #getItems items}.
	* @param	oItem The item to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertItem( oItem:sap.m.IconTab, iIndex:Int):sap.m.IconTabFilter;

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
	* Sets a new value for property {@link #getCount count}.

Represents the "count" text, which is displayed in the tab filter.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sCount New value for property <code>count</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCount( ?sCount:String):sap.m.IconTabFilter;

	/**
	* Sets a new value for property {@link #getDesign design}.

Specifies whether the icon and the texts are placed vertically or horizontally.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Vertical</code>.
	* @param	sDesign New value for property <code>design</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDesign( ?sDesign:sap.m.IconTabFilterDesign):sap.m.IconTabFilter;

	/**
	* Sets a new value for property {@link #getIcon icon}.

Specifies the icon to be displayed for the tab filter.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( ?sIcon:sap.ui.core.URI):sap.m.IconTabFilter;

	/**
	* Sets a new value for property {@link #getIconColor iconColor}.

Specifies the icon color.

If an icon font is used, the color can be chosen from the icon colors (sap.ui.core.IconColor). Possible semantic colors are: Neutral, Positive, Critical, Negative. Instead of the semantic icon color the brand color can be used, this is named Default. Semantic colors and brand colors should not be mixed up inside one IconTabBar.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Default</code>.
	* @param	sIconColor New value for property <code>iconColor</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconColor( ?sIconColor:sap.ui.core.IconColor):sap.m.IconTabFilter;

	/**
	* Sets a new value for property {@link #getIconDensityAware iconDensityAware}.

If set to true, it sends one or more requests, trying to get the density perfect version of the image if this version of the image doesn't exist on the server. Default value is set to true.

If bandwidth is key for the application, set this value to false.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bIconDensityAware New value for property <code>iconDensityAware</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconDensityAware( ?bIconDensityAware:Bool):sap.m.IconTabFilter;

	/**
	* Sets a new value for property {@link #getShowAll showAll}.

Enables special visualization for disabled filter (show all items). <b>Note:</b> You can use this property when you use <code>IconTabBar</code> as a filter. In order for it to be displayed correctly, the other tabs in the filter should consist of an icon, text and an optional count. It can be set to true for the first tab filter. You can find more detailed information in the {@link https://experience.sap.com/fiori-design-web/icontabbar/#tabs-as-filters UX Guidelines}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowAll New value for property <code>showAll</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowAll( ?bShowAll:Bool):sap.m.IconTabFilter;

	/**
	* Sets a new value for property {@link #getVisible visible}.

Specifies whether the tab filter is rendered.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisible New value for property <code>visible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisible( ?bVisible:Bool):sap.m.IconTabFilter;
}

typedef IconTabFilterArgs = sap.ui.core.Item.ItemArgs & {

	/**
	* Represents the "count" text, which is displayed in the tab filter.
	*/
	@:optional var count:String;

	/**
	* Enables special visualization for disabled filter (show all items). <b>Note:</b> You can use this property when you use <code>IconTabBar</code> as a filter. In order for it to be displayed correctly, the other tabs in the filter should consist of an icon, text and an optional count. It can be set to true for the first tab filter. You can find more detailed information in the {@link https://experience.sap.com/fiori-design-web/icontabbar/#tabs-as-filters UX Guidelines}.
	*/
	@:optional var showAll:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies the icon to be displayed for the tab filter.
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Specifies the icon color.

If an icon font is used, the color can be chosen from the icon colors (sap.ui.core.IconColor). Possible semantic colors are: Neutral, Positive, Critical, Negative. Instead of the semantic icon color the brand color can be used, this is named Default. Semantic colors and brand colors should not be mixed up inside one IconTabBar.
	*/
	@:optional var iconColor:haxe.extern.EitherType<String,sap.ui.core.IconColor>;

	/**
	* If set to true, it sends one or more requests, trying to get the density perfect version of the image if this version of the image doesn't exist on the server. Default value is set to true.

If bandwidth is key for the application, set this value to false.
	*/
	@:optional var iconDensityAware:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies whether the tab filter is rendered.
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies whether the icon and the texts are placed vertically or horizontally.
	*/
	@:optional var design:haxe.extern.EitherType<String,sap.m.IconTabFilterDesign>;

    /**
    * The content displayed for this item (optional).

If this content is set, it is displayed instead of the general content inside the IconTabBar.
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * The sub items of this filter (optional).
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.m.IconTab>>;

    /**
    * The expand icon if there are sub filters
    */
	@:optional var _expandButton:haxe.extern.EitherType<String,sap.m.Button>;
}
