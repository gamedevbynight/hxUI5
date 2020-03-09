package sap.ui.unified;

@:native("sap.ui.unified.MenuItemBase")

/**
* Abstract base class for menu item which provides common properties and events for all concrete item implementations.
*/
extern class MenuItemBase extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:MenuItemBaseArgs):Void {})
	public function new(?mSettings:MenuItemBaseArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:select select} event of this <code>sap.ui.unified.MenuItemBase</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.MenuItemBase</code> itself.

Fired when the item is selected by the user. <b>Note:</b> The event is also available for items which have a submenu. In general, applications must not handle event in this case because the user selection opens the sub menu.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.MenuItemBase</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.MenuItemBase;

	/**
	* Destroys the submenu in the aggregation {@link #getSubmenu submenu}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySubmenu( ):sap.ui.unified.MenuItemBase;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:select select} event of this <code>sap.ui.unified.MenuItemBase</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelect( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.MenuItemBase;

	/**
	* Creates a new subclass of class sap.ui.unified.MenuItemBase with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

When an item is disabled the item can not be selected by the user. The enabled property of the item has no effect when the menu of the item is disabled ({@link sap.ui.unified.Menu#getEnabled Menu#getEnabled}).

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Returns a metadata object for class sap.ui.unified.MenuItemBase.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getStartsSection startsSection}.

Defines whether a visual separator should be rendered before the item. <b>Note:</b> If an item is invisible also the separator of this item is not shown.

Default value is <code>false</code>.
	* @return	Value of property <code>startsSection</code>
	*/
	public function getStartsSection( ):Bool;

	/**
	* Gets content of aggregation {@link #getSubmenu submenu}.

An optional submenu of the item which is opened when the item is selected by the user.
	* @return	null
	*/
	public function getSubmenu( ):sap.ui.unified.Menu;

	/**
	* Gets current value of property {@link #getVisible visible}.

Invisible items do not appear in the menu.

Default value is <code>true</code>.
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

When an item is disabled the item can not be selected by the user. The enabled property of the item has no effect when the menu of the item is disabled ({@link sap.ui.unified.Menu#getEnabled Menu#getEnabled}).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( bEnabled:Bool):sap.ui.unified.MenuItemBase;

	/**
	* Sets a new value for property {@link #getStartsSection startsSection}.

Defines whether a visual separator should be rendered before the item. <b>Note:</b> If an item is invisible also the separator of this item is not shown.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bStartsSection New value for property <code>startsSection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setStartsSection( bStartsSection:Bool):sap.ui.unified.MenuItemBase;

	/**
	* Sets the aggregated {@link #getSubmenu submenu}.
	* @param	oSubmenu The submenu to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSubmenu( oSubmenu:sap.ui.unified.Menu):sap.ui.unified.MenuItemBase;

	/**
	* Sets a new value for property {@link #getVisible visible}.

Invisible items do not appear in the menu.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisible New value for property <code>visible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisible( bVisible:Bool):sap.ui.unified.MenuItemBase;
}

typedef MenuItemBaseArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* When an item is disabled the item can not be selected by the user. The enabled property of the item has no effect when the menu of the item is disabled ({@link sap.ui.unified.Menu#getEnabled Menu#getEnabled}).
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Invisible items do not appear in the menu.
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines whether a visual separator should be rendered before the item. <b>Note:</b> If an item is invisible also the separator of this item is not shown.
	*/
	@:optional var startsSection:haxe.extern.EitherType<String,Bool>;

    /**
    * An optional submenu of the item which is opened when the item is selected by the user.
    */
	@:optional var submenu:haxe.extern.EitherType<String,sap.ui.unified.Menu>;

	/**
	* Fired when the item is selected by the user. <b>Note:</b> The event is also available for items which have a submenu. In general, applications must not handle event in this case because the user selection opens the sub menu.
	*/
	@:optional var select:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
