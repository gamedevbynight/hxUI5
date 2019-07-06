package sap.f;

@:native("sap.f.ShellBar")

/**
* A horizontal bar control holding multiple child controls used as application shell header.

<h3>Overview</h3>

The <code>ShellBar</code> is used as the uppermost section (shell) of the app. It is fully responsive and adaptive, and corresponds to the SAP Fiori Design Guidelines.

<h3>Usage</h3>

Content specified in the <code>ShellBar</code> properties and aggregations is automatically positioned in dedicated places of the control.
*/
extern class ShellBar extends sap.ui.core.Control implements sap.f.IShellBar implements sap.m.IBar
{
	@:overload(function(?sId:String, ?mSettings:ShellBarArgs):Void {})
	public function new(?mSettings:ShellBarArgs):Void;

	/**
	* Adds some additionalContent to the aggregation {@link #getAdditionalContent additionalContent}.
	* @param	oAdditionalContent The additionalContent to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAdditionalContent( oAdditionalContent:sap.f.IShellBar):sap.f.ShellBar;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:avatarPressed avatarPressed} event of this <code>sap.f.ShellBar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.f.ShellBar</code> itself.

Fired when the profile avatar is pressed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.f.ShellBar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAvatarPressed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.f.ShellBar;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:copilotPressed copilotPressed} event of this <code>sap.f.ShellBar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.f.ShellBar</code> itself.

Fired when the SAP CoPilot icon is pressed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.f.ShellBar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachCopilotPressed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.f.ShellBar;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:homeIconPressed homeIconPressed} event of this <code>sap.f.ShellBar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.f.ShellBar</code> itself.

Fired when the <code>homeIcon</code> is pressed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.f.ShellBar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachHomeIconPressed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.f.ShellBar;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:menuButtonPressed menuButtonPressed} event of this <code>sap.f.ShellBar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.f.ShellBar</code> itself.

Fired when the alternative menu button is pressed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.f.ShellBar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachMenuButtonPressed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.f.ShellBar;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:navButtonPressed navButtonPressed} event of this <code>sap.f.ShellBar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.f.ShellBar</code> itself.

Fired when the navigation/back button is pressed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.f.ShellBar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachNavButtonPressed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.f.ShellBar;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:notificationsPressed notificationsPressed} event of this <code>sap.f.ShellBar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.f.ShellBar</code> itself.

Fired when the notifications button is pressed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.f.ShellBar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachNotificationsPressed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.f.ShellBar;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:productSwitcherPressed productSwitcherPressed} event of this <code>sap.f.ShellBar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.f.ShellBar</code> itself.

Fired when the product switcher button is pressed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.f.ShellBar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachProductSwitcherPressed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.f.ShellBar;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:searchButtonPressed searchButtonPressed} event of this <code>sap.f.ShellBar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.f.ShellBar</code> itself.

Fired when the search button is pressed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.f.ShellBar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSearchButtonPressed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.f.ShellBar;

	/**
	* Destroys all the additionalContent in the aggregation {@link #getAdditionalContent additionalContent}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyAdditionalContent( ):sap.f.ShellBar;

	/**
	* Destroys the menu in the aggregation {@link #getMenu menu}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyMenu( ):sap.f.ShellBar;

	/**
	* Destroys the profile in the aggregation {@link #getProfile profile}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyProfile( ):sap.f.ShellBar;

	/**
	* Destroys the searchManager in the aggregation {@link #getSearchManager searchManager}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySearchManager( ):sap.f.ShellBar;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:avatarPressed avatarPressed} event of this <code>sap.f.ShellBar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAvatarPressed( fnFunction:()->Void, ?oListener:Dynamic):sap.f.ShellBar;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:copilotPressed copilotPressed} event of this <code>sap.f.ShellBar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachCopilotPressed( fnFunction:()->Void, ?oListener:Dynamic):sap.f.ShellBar;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:homeIconPressed homeIconPressed} event of this <code>sap.f.ShellBar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachHomeIconPressed( fnFunction:()->Void, ?oListener:Dynamic):sap.f.ShellBar;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:menuButtonPressed menuButtonPressed} event of this <code>sap.f.ShellBar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachMenuButtonPressed( fnFunction:()->Void, ?oListener:Dynamic):sap.f.ShellBar;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:navButtonPressed navButtonPressed} event of this <code>sap.f.ShellBar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachNavButtonPressed( fnFunction:()->Void, ?oListener:Dynamic):sap.f.ShellBar;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:notificationsPressed notificationsPressed} event of this <code>sap.f.ShellBar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachNotificationsPressed( fnFunction:()->Void, ?oListener:Dynamic):sap.f.ShellBar;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:productSwitcherPressed productSwitcherPressed} event of this <code>sap.f.ShellBar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachProductSwitcherPressed( fnFunction:()->Void, ?oListener:Dynamic):sap.f.ShellBar;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:searchButtonPressed searchButtonPressed} event of this <code>sap.f.ShellBar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSearchButtonPressed( fnFunction:()->Void, ?oListener:Dynamic):sap.f.ShellBar;

	/**
	* Creates a new subclass of class sap.f.ShellBar with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getAdditionalContent additionalContent}.

Additional content to be displayed in the control.

<b>Note:</b> Only controls implementing the <code>{@link sap.f.IShellBar}</code> interface are allowed.
	* @return	null
	*/
	public function getAdditionalContent( ):Array<sap.f.IShellBar>;

	/**
	* Gets current value of property {@link #getHomeIcon homeIcon}.

Defines the URI to the home icon, such as company or product logo.

Default value is <code>empty string</code>.
	* @return	Value of property <code>homeIcon</code>
	*/
	public function getHomeIcon( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getHomeIconTooltip homeIconTooltip}.

Defines a custom tooltip for the home icon. If not set, a default tooltip is used.

Default value is <code>empty string</code>.
	* @return	Value of property <code>homeIconTooltip</code>
	*/
	public function getHomeIconTooltip( ):String;

	/**
	* Gets content of aggregation {@link #getMenu menu}.

The menu attached to the main title.
	* @return	null
	*/
	public function getMenu( ):sap.m.Menu;

	/**
	* Returns a metadata object for class sap.f.ShellBar.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getNotificationsNumber notificationsNumber}.

Defines the displayed number of upcoming notifications.

Default value is <code>empty string</code>.
	* @return	Value of property <code>notificationsNumber</code>
	*/
	public function getNotificationsNumber( ):String;

	/**
	* Gets content of aggregation {@link #getProfile profile}.

The profile avatar.
	* @return	null
	*/
	public function getProfile( ):sap.f.Avatar;

	/**
	* Gets content of aggregation {@link #getSearchManager searchManager}.

Configurable search.

<b>Note:</b> If <code>showSearch</code> is set to <code>true</code>, two search buttons appear.
	* @return	null
	*/
	public function getSearchManager( ):sap.f.SearchManager;

	/**
	* Gets current value of property {@link #getSecondTitle secondTitle}.

Defines the secondary title of the control.

Default value is <code>empty string</code>.
	* @return	Value of property <code>secondTitle</code>
	*/
	public function getSecondTitle( ):String;

	/**
	* Gets current value of property {@link #getShowCopilot showCopilot}.

Determines whether the SAP CoPilot icon is displayed.

Default value is <code>false</code>.
	* @return	Value of property <code>showCopilot</code>
	*/
	public function getShowCopilot( ):Bool;

	/**
	* Gets current value of property {@link #getShowMenuButton showMenuButton}.

Determines whether a hamburger menu button is displayed (as an alternative if the <code>menu</code> aggregation is not used).

Default value is <code>false</code>.
	* @return	Value of property <code>showMenuButton</code>
	*/
	public function getShowMenuButton( ):Bool;

	/**
	* Gets current value of property {@link #getShowNavButton showNavButton}.

Determines whether a back navigation button is displayed.

Default value is <code>false</code>.
	* @return	Value of property <code>showNavButton</code>
	*/
	public function getShowNavButton( ):Bool;

	/**
	* Gets current value of property {@link #getShowNotifications showNotifications}.

Determines whether the notifications button is displayed.

Default value is <code>false</code>.
	* @return	Value of property <code>showNotifications</code>
	*/
	public function getShowNotifications( ):Bool;

	/**
	* Gets current value of property {@link #getShowProductSwitcher showProductSwitcher}.

Determines whether the product switcher button is displayed.

Default value is <code>false</code>.
	* @return	Value of property <code>showProductSwitcher</code>
	*/
	public function getShowProductSwitcher( ):Bool;

	/**
	* Gets current value of property {@link #getShowSearch showSearch}.

Determines whether the search button is displayed.

Default value is <code>false</code>.
	* @return	Value of property <code>showSearch</code>
	*/
	public function getShowSearch( ):Bool;

	/**
	* Gets current value of property {@link #getTitle title}.

Defines the main title of the control.

Default value is <code>empty string</code>.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Checks for the provided <code>sap.f.IShellBar</code> in the aggregation {@link #getAdditionalContent additionalContent}. and returns its index if found or -1 otherwise.
	* @param	oAdditionalContent The additionalContent whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfAdditionalContent( oAdditionalContent:sap.f.IShellBar):Int;

	/**
	* Inserts a additionalContent into the aggregation {@link #getAdditionalContent additionalContent}.
	* @param	oAdditionalContent The additionalContent to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the additionalContent should be inserted at; for a negative value of <code>iIndex</code>, the additionalContent is inserted at position 0; for a value greater than the current size of the aggregation, the additionalContent is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertAdditionalContent( oAdditionalContent:sap.f.IShellBar, iIndex:Int):sap.f.ShellBar;
	@:overload( function(vAdditionalContent:Int):sap.f.IShellBar{ })
	@:overload( function(vAdditionalContent:String):sap.f.IShellBar{ })

	/**
	* Removes a additionalContent from the aggregation {@link #getAdditionalContent additionalContent}.
	* @param	vAdditionalContent The additionalContent to remove or its index or id
	* @return	The removed additionalContent or <code>null</code>
	*/
	public function removeAdditionalContent( vAdditionalContent:sap.f.IShellBar):sap.f.IShellBar;

	/**
	* Removes all the controls from the aggregation {@link #getAdditionalContent additionalContent}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAdditionalContent( ):Array<sap.f.IShellBar>;

	/**
	* Sets a new value for property {@link #getHomeIcon homeIcon}.

Defines the URI to the home icon, such as company or product logo.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sHomeIcon New value for property <code>homeIcon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHomeIcon( sHomeIcon:sap.ui.core.URI):sap.f.ShellBar;

	/**
	* Sets a new value for property {@link #getHomeIconTooltip homeIconTooltip}.

Defines a custom tooltip for the home icon. If not set, a default tooltip is used.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sHomeIconTooltip New value for property <code>homeIconTooltip</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHomeIconTooltip( sHomeIconTooltip:String):sap.f.ShellBar;

	/**
	* Sets the aggregated {@link #getMenu menu}.
	* @param	oMenu The menu to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMenu( oMenu:sap.m.Menu):sap.f.ShellBar;

	/**
	* Sets the aggregated {@link #getProfile profile}.
	* @param	oProfile The profile to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setProfile( oProfile:sap.f.Avatar):sap.f.ShellBar;

	/**
	* Sets the aggregated {@link #getSearchManager searchManager}.
	* @param	oSearchManager The searchManager to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSearchManager( oSearchManager:sap.f.SearchManager):sap.f.ShellBar;

	/**
	* Sets a new value for property {@link #getSecondTitle secondTitle}.

Defines the secondary title of the control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sSecondTitle New value for property <code>secondTitle</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSecondTitle( sSecondTitle:String):sap.f.ShellBar;

	/**
	* Sets a new value for property {@link #getShowCopilot showCopilot}.

Determines whether the SAP CoPilot icon is displayed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowCopilot New value for property <code>showCopilot</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowCopilot( bShowCopilot:Bool):sap.f.ShellBar;

	/**
	* Sets a new value for property {@link #getShowMenuButton showMenuButton}.

Determines whether a hamburger menu button is displayed (as an alternative if the <code>menu</code> aggregation is not used).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowMenuButton New value for property <code>showMenuButton</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowMenuButton( bShowMenuButton:Bool):sap.f.ShellBar;

	/**
	* Sets a new value for property {@link #getShowNavButton showNavButton}.

Determines whether a back navigation button is displayed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowNavButton New value for property <code>showNavButton</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowNavButton( bShowNavButton:Bool):sap.f.ShellBar;

	/**
	* Sets a new value for property {@link #getShowNotifications showNotifications}.

Determines whether the notifications button is displayed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowNotifications New value for property <code>showNotifications</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowNotifications( bShowNotifications:Bool):sap.f.ShellBar;

	/**
	* Sets a new value for property {@link #getShowProductSwitcher showProductSwitcher}.

Determines whether the product switcher button is displayed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowProductSwitcher New value for property <code>showProductSwitcher</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowProductSwitcher( bShowProductSwitcher:Bool):sap.f.ShellBar;

	/**
	* Sets a new value for property {@link #getShowSearch showSearch}.

Determines whether the search button is displayed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowSearch New value for property <code>showSearch</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowSearch( bShowSearch:Bool):sap.f.ShellBar;

	/**
	* Sets a new value for property {@link #getTitle title}.

Defines the main title of the control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( sTitle:String):sap.f.ShellBar;
}

typedef ShellBarArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the main title of the control.
	*/
	@:optional var title:String;

	/**
	* Defines the secondary title of the control.
	*/
	@:optional var secondTitle:String;

	/**
	* Defines the URI to the home icon, such as company or product logo.
	*/
	@:optional var homeIcon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Defines a custom tooltip for the home icon. If not set, a default tooltip is used.
	*/
	@:optional var homeIconTooltip:String;

	/**
	* Determines whether a hamburger menu button is displayed (as an alternative if the <code>menu</code> aggregation is not used).
	*/
	@:optional var showMenuButton:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether a back navigation button is displayed.
	*/
	@:optional var showNavButton:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the SAP CoPilot icon is displayed.
	*/
	@:optional var showCopilot:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the search button is displayed.
	*/
	@:optional var showSearch:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the notifications button is displayed.
	*/
	@:optional var showNotifications:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the product switcher button is displayed.
	*/
	@:optional var showProductSwitcher:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the displayed number of upcoming notifications.
	*/
	@:optional var notificationsNumber:String;

    /**
    * The menu attached to the main title.
    */
	@:optional var menu:haxe.extern.EitherType<String,sap.m.Menu>;

    /**
    * Configurable search.

<b>Note:</b> If <code>showSearch</code> is set to <code>true</code>, two search buttons appear.
    */
	@:optional var searchManager:haxe.extern.EitherType<String,sap.f.SearchManager>;

    /**
    * The profile avatar.
    */
	@:optional var profile:haxe.extern.EitherType<String,sap.f.Avatar>;

    /**
    * Additional content to be displayed in the control.

<b>Note:</b> Only controls implementing the <code>{@link sap.f.IShellBar}</code> interface are allowed.
    */
	@:optional var additionalContent:Array<haxe.extern.EitherType<String,sap.f.IShellBar>>;

    /**
    * Holds the internally created OverflowToolbar.
    */
	@:optional var _overflowToolbar:haxe.extern.EitherType<String,sap.m.OverflowToolbar>;

	/**
	* Fired when the profile avatar is pressed.
	*/
	@:optional var avatarPressed:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when the SAP CoPilot icon is pressed.
	*/
	@:optional var copilotPressed:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when the <code>homeIcon</code> is pressed.
	*/
	@:optional var homeIconPressed:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when the alternative menu button is pressed.
	*/
	@:optional var menuButtonPressed:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when the navigation/back button is pressed.
	*/
	@:optional var navButtonPressed:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when the notifications button is pressed.
	*/
	@:optional var notificationsPressed:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when the product switcher button is pressed.
	*/
	@:optional var productSwitcherPressed:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when the search button is pressed.
	*/
	@:optional var searchButtonPressed:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
