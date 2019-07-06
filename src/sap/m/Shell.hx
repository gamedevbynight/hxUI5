package sap.m;

@:native("sap.m.Shell")

/**
* The Shell control can be used as root element of applications. It can contain an App or a <code>SplitApp</code> control. The Shell provides some overarching functionality for the overall application and takes care of visual adaptation, such as a frame around the App, on desktop browser platforms.
*/
extern class Shell extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ShellArgs):Void {})
	public function new(?mSettings:ShellArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:logout logout} event of this <code>sap.m.Shell</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Shell</code> itself.

Fires when the user presses the logout button/link.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Shell</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachLogout( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Shell;

	/**
	* Destroys the app in the aggregation {@link #getApp app}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyApp( ):sap.m.Shell;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:logout logout} event of this <code>sap.m.Shell</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachLogout( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Shell;

	/**
	* Creates a new subclass of class sap.m.Shell with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getApp app}.

A Shell contains an App or a SplitApp (they may be wrapped in a View). Other control types are not allowed.
	* @return	null
	*/
	public function getApp( ):sap.ui.core.Control;

	/**
	* Gets current value of property {@link #getAppWidthLimited appWidthLimited}.

Determines whether the width of the content (the aggregated App) should be limited or extended to the full screen width.

Default value is <code>true</code>.
	* @return	Value of property <code>appWidthLimited</code>
	*/
	public function getAppWidthLimited( ):Bool;

	/**
	* Gets current value of property {@link #getBackgroundColor backgroundColor}.

Defines the background color of the Shell. If set, this color will override the default background defined by the theme. This should only be set when really required. Any configured background image will be placed above this colored background. Use the backgroundRepeat property to define whether this image should be stretched to cover the complete Shell or whether it should be tiled.
	* @return	Value of property <code>backgroundColor</code>
	*/
	public function getBackgroundColor( ):sap.ui.core.CSSColor;

	/**
	* Gets current value of property {@link #getBackgroundImage backgroundImage}.

Defines the background image of the Shell. If set, this image will override the default background defined by the theme. This should only be set when really required. This background image will be placed above any color set for the background. Use the backgroundRepeat property to define whether this image should be stretched to cover the complete Shell or whether it should be tiled.
	* @return	Value of property <code>backgroundImage</code>
	*/
	public function getBackgroundImage( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getBackgroundOpacity backgroundOpacity}.

Defines the opacity of the background image. The opacity can be set between 0 (fully transparent) and 1 (fully opaque). This can be used to improve readability of the Shell content by making the background image partly transparent.

Default value is <code>1</code>.
	* @return	Value of property <code>backgroundOpacity</code>
	*/
	public function getBackgroundOpacity( ):Float;

	/**
	* Gets current value of property {@link #getBackgroundRepeat backgroundRepeat}.

Determines whether the background image (if configured) should be proportionally stretched to cover the whole Shell (false, default) or whether it should be tiled (true).

Default value is <code>false</code>.
	* @return	Value of property <code>backgroundRepeat</code>
	*/
	public function getBackgroundRepeat( ):Bool;

	/**
	* Gets current value of property {@link #getHeaderRightText headerRightText}.

Defines texts, such as the name of the logged-in user, which should be displayed on the right side of the header (if there is enough space to display the header at all - this only happens on very tall screens (1568px height), otherwise, it is always hidden).
	* @return	Value of property <code>headerRightText</code>
	*/
	public function getHeaderRightText( ):String;

	/**
	* Gets current value of property {@link #getHomeIcon homeIcon}.

Sets the icon used for the mobile device home screen and the icon to be used for bookmarks by desktop browsers.

This property should be only set once, and as early as possible. Subsequent calls replace the previous icon settings and may lead to different behavior depending on the browser.

Different image sizes for device home screen need to be given as PNG images, an ICO file needs to be given as desktop browser bookmark icon (other file formats may not work in all browsers). The <code>precomposed</code> flag defines whether there is already a glow effect contained in the home screen images (or whether iOS should add such an effect). The given structure could look like this: { 'phone':'phone-icon_57x57.png', 'phone@2':'phone-retina_114x114.png', 'tablet':'tablet-icon_72x72.png', 'tablet@2':'tablet-retina_144x144.png', 'precomposed':true, 'favicon':'favicon.ico' }

See jQuery.sap.setIcons() for full documentation.
	* @return	Value of property <code>homeIcon</code>
	*/
	public function getHomeIcon( ):Dynamic;

	/**
	* Gets current value of property {@link #getLogo logo}.

Defines the logo to be displayed next to the App when the screen is sufficiently large.
	* @return	Value of property <code>logo</code>
	*/
	public function getLogo( ):sap.ui.core.URI;

	/**
	* Returns a metadata object for class sap.m.Shell.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getShowLogout showLogout}.

Determines whether the Logout button should be displayed. Currently, this only happens on very tall screens (1568px height), otherwise, it is always hidden.

Default value is <code>true</code>.
	* @return	Value of property <code>showLogout</code>
	*/
	public function getShowLogout( ):Bool;

	/**
	* Gets current value of property {@link #getTitle title}.

Defines the application title, which may or may not be displayed outside the actual application, depending on the available screen size.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Gets current value of property {@link #getTitleLevel titleLevel}.

Defines the semantic level of the title.

This information is used by assistive technologies, such as screen readers to create a hierarchical site map for faster navigation. Depending on this setting an HTML h1-h6 element is used.

Default value is <code>H1</code>.
	* @return	Value of property <code>titleLevel</code>
	*/
	public function getTitleLevel( ):sap.ui.core.TitleLevel;

	/**
	* Sets the aggregated {@link #getApp app}.
	* @param	oApp The app to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setApp( oApp:sap.ui.core.Control):sap.m.Shell;

	/**
	* Sets a new value for property {@link #getAppWidthLimited appWidthLimited}.

Determines whether the width of the content (the aggregated App) should be limited or extended to the full screen width.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bAppWidthLimited New value for property <code>appWidthLimited</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAppWidthLimited( bAppWidthLimited:Bool):sap.m.Shell;

	/**
	* Sets a new value for property {@link #getBackgroundColor backgroundColor}.

Defines the background color of the Shell. If set, this color will override the default background defined by the theme. This should only be set when really required. Any configured background image will be placed above this colored background. Use the backgroundRepeat property to define whether this image should be stretched to cover the complete Shell or whether it should be tiled.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sBackgroundColor New value for property <code>backgroundColor</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundColor( sBackgroundColor:sap.ui.core.CSSColor):sap.m.Shell;

	/**
	* Sets a new value for property {@link #getBackgroundImage backgroundImage}.

Defines the background image of the Shell. If set, this image will override the default background defined by the theme. This should only be set when really required. This background image will be placed above any color set for the background. Use the backgroundRepeat property to define whether this image should be stretched to cover the complete Shell or whether it should be tiled.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sBackgroundImage New value for property <code>backgroundImage</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundImage( sBackgroundImage:sap.ui.core.URI):sap.m.Shell;

	/**
	* Sets a new value for property {@link #getBackgroundOpacity backgroundOpacity}.

Defines the opacity of the background image. The opacity can be set between 0 (fully transparent) and 1 (fully opaque). This can be used to improve readability of the Shell content by making the background image partly transparent.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	fBackgroundOpacity New value for property <code>backgroundOpacity</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundOpacity( fBackgroundOpacity:Float):sap.m.Shell;

	/**
	* Sets a new value for property {@link #getBackgroundRepeat backgroundRepeat}.

Determines whether the background image (if configured) should be proportionally stretched to cover the whole Shell (false, default) or whether it should be tiled (true).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bBackgroundRepeat New value for property <code>backgroundRepeat</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundRepeat( bBackgroundRepeat:Bool):sap.m.Shell;

	/**
	* Sets a new value for property {@link #getHeaderRightText headerRightText}.

Defines texts, such as the name of the logged-in user, which should be displayed on the right side of the header (if there is enough space to display the header at all - this only happens on very tall screens (1568px height), otherwise, it is always hidden).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHeaderRightText New value for property <code>headerRightText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeaderRightText( sHeaderRightText:String):sap.m.Shell;

	/**
	* Sets a new value for property {@link #getHomeIcon homeIcon}.

Sets the icon used for the mobile device home screen and the icon to be used for bookmarks by desktop browsers.

This property should be only set once, and as early as possible. Subsequent calls replace the previous icon settings and may lead to different behavior depending on the browser.

Different image sizes for device home screen need to be given as PNG images, an ICO file needs to be given as desktop browser bookmark icon (other file formats may not work in all browsers). The <code>precomposed</code> flag defines whether there is already a glow effect contained in the home screen images (or whether iOS should add such an effect). The given structure could look like this: { 'phone':'phone-icon_57x57.png', 'phone@2':'phone-retina_114x114.png', 'tablet':'tablet-icon_72x72.png', 'tablet@2':'tablet-retina_144x144.png', 'precomposed':true, 'favicon':'favicon.ico' }

See jQuery.sap.setIcons() for full documentation.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oHomeIcon New value for property <code>homeIcon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHomeIcon( oHomeIcon:Dynamic):sap.m.Shell;

	/**
	* Sets a new value for property {@link #getLogo logo}.

Defines the logo to be displayed next to the App when the screen is sufficiently large.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sLogo New value for property <code>logo</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLogo( sLogo:sap.ui.core.URI):sap.m.Shell;

	/**
	* Sets a new value for property {@link #getShowLogout showLogout}.

Determines whether the Logout button should be displayed. Currently, this only happens on very tall screens (1568px height), otherwise, it is always hidden.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowLogout New value for property <code>showLogout</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowLogout( bShowLogout:Bool):sap.m.Shell;

	/**
	* Sets a new value for property {@link #getTitle title}.

Defines the application title, which may or may not be displayed outside the actual application, depending on the available screen size.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( sTitle:String):sap.m.Shell;

	/**
	* Sets a new value for property {@link #getTitleLevel titleLevel}.

Defines the semantic level of the title.

This information is used by assistive technologies, such as screen readers to create a hierarchical site map for faster navigation. Depending on this setting an HTML h1-h6 element is used.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>H1</code>.
	* @param	sTitleLevel New value for property <code>titleLevel</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleLevel( sTitleLevel:sap.ui.core.TitleLevel):sap.m.Shell;
}

typedef ShellArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the application title, which may or may not be displayed outside the actual application, depending on the available screen size.
	*/
	@:optional var title:String;

	/**
	* Defines the logo to be displayed next to the App when the screen is sufficiently large.
	*/
	@:optional var logo:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Determines whether the Logout button should be displayed. Currently, this only happens on very tall screens (1568px height), otherwise, it is always hidden.
	*/
	@:optional var showLogout:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines texts, such as the name of the logged-in user, which should be displayed on the right side of the header (if there is enough space to display the header at all - this only happens on very tall screens (1568px height), otherwise, it is always hidden).
	*/
	@:optional var headerRightText:String;

	/**
	* Determines whether the width of the content (the aggregated App) should be limited or extended to the full screen width.
	*/
	@:optional var appWidthLimited:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the background color of the Shell. If set, this color will override the default background defined by the theme. This should only be set when really required. Any configured background image will be placed above this colored background. Use the backgroundRepeat property to define whether this image should be stretched to cover the complete Shell or whether it should be tiled.
	*/
	@:optional var backgroundColor:haxe.extern.EitherType<String,sap.ui.core.CSSColor>;

	/**
	* Defines the background image of the Shell. If set, this image will override the default background defined by the theme. This should only be set when really required. This background image will be placed above any color set for the background. Use the backgroundRepeat property to define whether this image should be stretched to cover the complete Shell or whether it should be tiled.
	*/
	@:optional var backgroundImage:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Determines whether the background image (if configured) should be proportionally stretched to cover the whole Shell (false, default) or whether it should be tiled (true).
	*/
	@:optional var backgroundRepeat:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the opacity of the background image. The opacity can be set between 0 (fully transparent) and 1 (fully opaque). This can be used to improve readability of the Shell content by making the background image partly transparent.
	*/
	@:optional var backgroundOpacity:haxe.extern.EitherType<String,Float>;

	/**
	* Sets the icon used for the mobile device home screen and the icon to be used for bookmarks by desktop browsers.

This property should be only set once, and as early as possible. Subsequent calls replace the previous icon settings and may lead to different behavior depending on the browser.

Different image sizes for device home screen need to be given as PNG images, an ICO file needs to be given as desktop browser bookmark icon (other file formats may not work in all browsers). The <code>precomposed</code> flag defines whether there is already a glow effect contained in the home screen images (or whether iOS should add such an effect). The given structure could look like this: { 'phone':'phone-icon_57x57.png', 'phone@2':'phone-retina_114x114.png', 'tablet':'tablet-icon_72x72.png', 'tablet@2':'tablet-retina_144x144.png', 'precomposed':true, 'favicon':'favicon.ico' }

See jQuery.sap.setIcons() for full documentation.
	*/
	@:optional var homeIcon:haxe.extern.EitherType<String,Dynamic>;

	/**
	* Defines the semantic level of the title.

This information is used by assistive technologies, such as screen readers to create a hierarchical site map for faster navigation. Depending on this setting an HTML h1-h6 element is used.
	*/
	@:optional var titleLevel:haxe.extern.EitherType<String,sap.ui.core.TitleLevel>;

    /**
    * A Shell contains an App or a SplitApp (they may be wrapped in a View). Other control types are not allowed.
    */
	@:optional var app:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* Fires when the user presses the logout button/link.
	*/
	@:optional var logout:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
