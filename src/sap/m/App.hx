package sap.m;

@:native("sap.m.App")

/**
* The root element of a UI5 mobile app.

<h3>Overview</h3>

The <code>App</code> inherits from {@link sap.m.NavContainer} and thus provides its navigation capabilities. It adds certain header tags to the HTML page which are considered useful for mobile apps.

<h3>Usage</h3>

You can configure the home icon of the <code>App</code>. For more information, see the <code>homeIcon</code> property.

There are options for setting the background color and a background image with the use of the <code>backgroundColor</code> and <code>backgroundImage</code> properties.
*/
extern class App extends sap.m.NavContainer
{
	@:overload(function(?sId:String, ?mSettings:AppArgs):Void {})
	public function new(?mSettings:AppArgs):Void;

	/**
	* Creates a new subclass of class sap.m.App with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.NavContainer.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getBackgroundColor backgroundColor}.

Background color of the App. If set, this color will override the default background defined by the theme. So this should only be set when really required. Any configured background image will be placed above this colored background. But any theme adaptation in the Theme Designer will override this setting. Use the "backgroundRepeat" property to define whether this image should be stretched to cover the complete App or whether it should be tiled.
	* @return	Value of property <code>backgroundColor</code>
	*/
	public function getBackgroundColor( ):String;

	/**
	* Gets current value of property {@link #getBackgroundImage backgroundImage}.

Background image of the App. If set, this image will override the default background defined by the theme. So this should only be set when really required. This background image will be placed above any color set for the background. But any theme adaptation in the Theme Designer will override this image setting. Use the "backgroundRepeat" property to define whether this image should be stretched to cover the complete App or whether it should be tiled.
	* @return	Value of property <code>backgroundImage</code>
	*/
	public function getBackgroundImage( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getBackgroundOpacity backgroundOpacity}.

Opacity of the background image. The opacity can be set between 0 (fully transparent) and 1 fully opaque). This can be used to make the application content better readable by making the background image partly transparent.

Default value is <code>1</code>.
	* @return	Value of property <code>backgroundOpacity</code>
	*/
	public function getBackgroundOpacity( ):Float;

	/**
	* Gets current value of property {@link #getBackgroundRepeat backgroundRepeat}.

Whether the background image (if configured) should be proportionally stretched to cover the whole App (false) or whether it should be tiled (true).

Default value is <code>false</code>.
	* @return	Value of property <code>backgroundRepeat</code>
	*/
	public function getBackgroundRepeat( ):Bool;

	/**
	* Gets current value of property {@link #getHomeIcon homeIcon}.

The icon to be displayed on the home screen of iOS devices after the user does "add to home screen".

Note that only the first attempt to set the homeIcon will be executed, subsequent settings are ignored.

This icon must be in PNG format. The property can either hold the URL of one single icon which is used for all devices (and possibly scaled, which looks not perfect), or an object holding icon URLs for the different required sizes.

A desktop icon (used for bookmarks and overriding the favicon) can also be configured. This requires an object to be given and the "icon" property of this object then defines the desktop bookmark icon. For this icon, PNG is not supported by Internet Explorer. The ICO format is supported by all browsers. ICO is also preferred for this desktop icon setting because the file can contain different images for different resolutions.

One example is:

app.setHomeIcon({ 'phone':'phone-icon.png', 'phone@2':'phone-retina.png', 'tablet':'tablet-icon.png', 'tablet@2':'tablet-retina.png', 'icon':'desktop.ico' });

The respective image sizes are 57/114 px for the phone and 72/144 px for the tablet. If an object is given but one of the sizes is not given, the largest given icon will be used for this size.

On Android these icons may or may not be used by the device. Apparently chances can be improved by adding glare effect and rounded corners, setting the file name so it ends with "-precomposed.png" and setting the "homeIconPrecomposed" property to "true".
	* @return	Value of property <code>homeIcon</code>
	*/
	public function getHomeIcon( ):Dynamic;

	/**
	* Returns a metadata object for class sap.m.App.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getMobileWebAppCapable mobileWebAppCapable}.

Determines whether the <code>App</code> is displayed without address bar when opened from an exported home screen icon on a mobile device.

Keep in mind that if enabled, there is no back button provided by the browser and the app must provide own navigation on all displayed pages to avoid dead ends.

<b>Note</b> The property can be toggled, but it doesn't take effect in real time. It takes the set value at the moment when the home screen icon is exported by the user. For example, if the icon is exported while the property is set to <code>true</code>, the <code>App</code> will have no address bar when opened from that same icon regardless of a changed property value to <code>false</code> at a later time.

Default value is <code>true</code>.
	* @return	Value of property <code>mobileWebAppCapable</code>
	*/
	public function getMobileWebAppCapable( ):Bool;

	/**
	* Sets a new value for property {@link #getBackgroundColor backgroundColor}.

Background color of the App. If set, this color will override the default background defined by the theme. So this should only be set when really required. Any configured background image will be placed above this colored background. But any theme adaptation in the Theme Designer will override this setting. Use the "backgroundRepeat" property to define whether this image should be stretched to cover the complete App or whether it should be tiled.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sBackgroundColor New value for property <code>backgroundColor</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundColor( sBackgroundColor:String):sap.m.App;

	/**
	* Sets a new value for property {@link #getBackgroundImage backgroundImage}.

Background image of the App. If set, this image will override the default background defined by the theme. So this should only be set when really required. This background image will be placed above any color set for the background. But any theme adaptation in the Theme Designer will override this image setting. Use the "backgroundRepeat" property to define whether this image should be stretched to cover the complete App or whether it should be tiled.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sBackgroundImage New value for property <code>backgroundImage</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundImage( sBackgroundImage:sap.ui.core.URI):sap.m.App;

	/**
	* Sets a new value for property {@link #getBackgroundOpacity backgroundOpacity}.

Opacity of the background image. The opacity can be set between 0 (fully transparent) and 1 fully opaque). This can be used to make the application content better readable by making the background image partly transparent.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	fBackgroundOpacity New value for property <code>backgroundOpacity</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundOpacity( fBackgroundOpacity:Float):sap.m.App;

	/**
	* Sets a new value for property {@link #getBackgroundRepeat backgroundRepeat}.

Whether the background image (if configured) should be proportionally stretched to cover the whole App (false) or whether it should be tiled (true).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bBackgroundRepeat New value for property <code>backgroundRepeat</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundRepeat( bBackgroundRepeat:Bool):sap.m.App;

	/**
	* Sets a new value for property {@link #getHomeIcon homeIcon}.

The icon to be displayed on the home screen of iOS devices after the user does "add to home screen".

Note that only the first attempt to set the homeIcon will be executed, subsequent settings are ignored.

This icon must be in PNG format. The property can either hold the URL of one single icon which is used for all devices (and possibly scaled, which looks not perfect), or an object holding icon URLs for the different required sizes.

A desktop icon (used for bookmarks and overriding the favicon) can also be configured. This requires an object to be given and the "icon" property of this object then defines the desktop bookmark icon. For this icon, PNG is not supported by Internet Explorer. The ICO format is supported by all browsers. ICO is also preferred for this desktop icon setting because the file can contain different images for different resolutions.

One example is:

app.setHomeIcon({ 'phone':'phone-icon.png', 'phone@2':'phone-retina.png', 'tablet':'tablet-icon.png', 'tablet@2':'tablet-retina.png', 'icon':'desktop.ico' });

The respective image sizes are 57/114 px for the phone and 72/144 px for the tablet. If an object is given but one of the sizes is not given, the largest given icon will be used for this size.

On Android these icons may or may not be used by the device. Apparently chances can be improved by adding glare effect and rounded corners, setting the file name so it ends with "-precomposed.png" and setting the "homeIconPrecomposed" property to "true".

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oHomeIcon New value for property <code>homeIcon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHomeIcon( oHomeIcon:Dynamic):sap.m.App;

	/**
	* Sets a new value for property {@link #getMobileWebAppCapable mobileWebAppCapable}.

Determines whether the <code>App</code> is displayed without address bar when opened from an exported home screen icon on a mobile device.

Keep in mind that if enabled, there is no back button provided by the browser and the app must provide own navigation on all displayed pages to avoid dead ends.

<b>Note</b> The property can be toggled, but it doesn't take effect in real time. It takes the set value at the moment when the home screen icon is exported by the user. For example, if the icon is exported while the property is set to <code>true</code>, the <code>App</code> will have no address bar when opened from that same icon regardless of a changed property value to <code>false</code> at a later time.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bMobileWebAppCapable New value for property <code>mobileWebAppCapable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMobileWebAppCapable( bMobileWebAppCapable:Bool):sap.m.App;
}

typedef AppArgs = sap.m.NavContainer.NavContainerArgs & {

	/**
	* The icon to be displayed on the home screen of iOS devices after the user does "add to home screen".

Note that only the first attempt to set the homeIcon will be executed, subsequent settings are ignored.

This icon must be in PNG format. The property can either hold the URL of one single icon which is used for all devices (and possibly scaled, which looks not perfect), or an object holding icon URLs for the different required sizes.

A desktop icon (used for bookmarks and overriding the favicon) can also be configured. This requires an object to be given and the "icon" property of this object then defines the desktop bookmark icon. For this icon, PNG is not supported by Internet Explorer. The ICO format is supported by all browsers. ICO is also preferred for this desktop icon setting because the file can contain different images for different resolutions.

One example is:

app.setHomeIcon({ 'phone':'phone-icon.png', 'phone@2':'phone-retina.png', 'tablet':'tablet-icon.png', 'tablet@2':'tablet-retina.png', 'icon':'desktop.ico' });

The respective image sizes are 57/114 px for the phone and 72/144 px for the tablet. If an object is given but one of the sizes is not given, the largest given icon will be used for this size.

On Android these icons may or may not be used by the device. Apparently chances can be improved by adding glare effect and rounded corners, setting the file name so it ends with "-precomposed.png" and setting the "homeIconPrecomposed" property to "true".
	*/
	@:optional var homeIcon:Dynamic;

	/**
	* Background color of the App. If set, this color will override the default background defined by the theme. So this should only be set when really required. Any configured background image will be placed above this colored background. But any theme adaptation in the Theme Designer will override this setting. Use the "backgroundRepeat" property to define whether this image should be stretched to cover the complete App or whether it should be tiled.
	*/
	@:optional var backgroundColor:String;

	/**
	* Background image of the App. If set, this image will override the default background defined by the theme. So this should only be set when really required. This background image will be placed above any color set for the background. But any theme adaptation in the Theme Designer will override this image setting. Use the "backgroundRepeat" property to define whether this image should be stretched to cover the complete App or whether it should be tiled.
	*/
	@:optional var backgroundImage:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Whether the background image (if configured) should be proportionally stretched to cover the whole App (false) or whether it should be tiled (true).
	*/
	@:optional var backgroundRepeat:haxe.extern.EitherType<String,Bool>;

	/**
	* Opacity of the background image. The opacity can be set between 0 (fully transparent) and 1 fully opaque). This can be used to make the application content better readable by making the background image partly transparent.
	*/
	@:optional var backgroundOpacity:haxe.extern.EitherType<String,Float>;

	/**
	* Determines whether the <code>App</code> is displayed without address bar when opened from an exported home screen icon on a mobile device.

Keep in mind that if enabled, there is no back button provided by the browser and the app must provide own navigation on all displayed pages to avoid dead ends.

<b>Note</b> The property can be toggled, but it doesn't take effect in real time. It takes the set value at the moment when the home screen icon is exported by the user. For example, if the icon is exported while the property is set to <code>true</code>, the <code>App</code> will have no address bar when opened from that same icon regardless of a changed property value to <code>false</code> at a later time.
	*/
	@:optional var mobileWebAppCapable:haxe.extern.EitherType<String,Bool>;
}
