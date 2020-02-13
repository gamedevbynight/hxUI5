package sap.m;

@:native("sap.m.SplitApp")

/**
* SplitApp is another possible root element of an SAPUI5 mobile application besides {@link sap.m.App}. It contains two NavContainers if running on tablet or desktop, and one on phone. The display of master NavContainer depends on the portrait/landscape mode of the device and the mode of SplitApp. <h3>Structure</h3> The SplitApp divides the screen into two areas: <ul> <li>Master area - contains a list of available items where the user can search and filter.</li> <li>Details area - contains a control which shows further details on the item(s) selected from the master view.</li> </ul> Both areas have separate headers and footer bars with navigation and actions. <h3>Usage</h3> <h4>When to use</h4> <ul> <li>You need to review and process different items quickly with minimal navigation.</li> </ul> <h4>When not to use</h4> <ul> <li>You need to offer complex filters for the list of items.</li> <li>You need to see different attributes for each item in the list, and compare these values across items.</li> <li>You want to display a single object. Do not use the master list to display different facets of the same object.</li> </ul> <h3>Responsive Behavior</h3> On narrow screens for phones (or tablet devices in portrait mode), the master list and the details are split into two separate pages.

The user can navigate between the list and details, and see all the available information for each area.

<b>Note:</b> The SplitApp should be used only as a root element of an application. It cannot be used as a child control of some container.
*/
extern class SplitApp extends sap.m.SplitContainer
{
	@:overload(function(?sId:String, ?mSettings:SplitAppArgs):Void {})
	public function new(?mSettings:SplitAppArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:orientationChange orientationChange} event of this <code>sap.m.SplitApp</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SplitApp</code> itself.

Fires when orientation (portrait/landscape) is changed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SplitApp</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachOrientationChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SplitApp;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:orientationChange orientationChange} event of this <code>sap.m.SplitApp</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachOrientationChange( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SplitApp;

	/**
	* Creates a new subclass of class sap.m.SplitApp with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.SplitContainer.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getHomeIcon homeIcon}.

Represents the icon to be displayed on the home screen of iOS devices after the user does "add to home screen". Note that only the first attempt to set the homeIcon is executed, subsequent settings are ignored. The icon must be in PNG format. The property can either store the URL of one single icon or an object holding icon URLs for the different required sizes. Note that if single icon is used for all devices, when scaled, its quality can regress. A desktop icon (used for bookmarks and overriding the favicon) can also be configured. This requires an object to be given and the "icon" property of this object then defines the desktop bookmark icon. For this icon, PNG is not supported by Internet Explorer. The ICO format is supported by all browsers. ICO is also preferred for this desktop icon setting as the file can contain different images for different resolutions.

One example is:

app.setHomeIcon({ 'phone':'phone-icon.png', 'phone@2':'phone-retina.png', 'tablet':'tablet-icon.png', 'tablet@2':'tablet-retina.png', 'icon':'desktop.ico' });

The image size is 57/114 px for the phone and 72/144 px for the tablet. If an object is given but one of the sizes is not given, the largest given icon will be used for this size.

On Android, these icons may or may not be used by the device. Chances can be improved by adding glare effect, rounded corners, setting the file name to end with "-precomposed.png", and setting the homeIconPrecomposed property to true.
	* @return	Value of property <code>homeIcon</code>
	*/
	public function getHomeIcon( ):Dynamic;

	/**
	* Returns a metadata object for class sap.m.SplitApp.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Sets a new value for property {@link #getHomeIcon homeIcon}.

Represents the icon to be displayed on the home screen of iOS devices after the user does "add to home screen". Note that only the first attempt to set the homeIcon is executed, subsequent settings are ignored. The icon must be in PNG format. The property can either store the URL of one single icon or an object holding icon URLs for the different required sizes. Note that if single icon is used for all devices, when scaled, its quality can regress. A desktop icon (used for bookmarks and overriding the favicon) can also be configured. This requires an object to be given and the "icon" property of this object then defines the desktop bookmark icon. For this icon, PNG is not supported by Internet Explorer. The ICO format is supported by all browsers. ICO is also preferred for this desktop icon setting as the file can contain different images for different resolutions.

One example is:

app.setHomeIcon({ 'phone':'phone-icon.png', 'phone@2':'phone-retina.png', 'tablet':'tablet-icon.png', 'tablet@2':'tablet-retina.png', 'icon':'desktop.ico' });

The image size is 57/114 px for the phone and 72/144 px for the tablet. If an object is given but one of the sizes is not given, the largest given icon will be used for this size.

On Android, these icons may or may not be used by the device. Chances can be improved by adding glare effect, rounded corners, setting the file name to end with "-precomposed.png", and setting the homeIconPrecomposed property to true.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oHomeIcon New value for property <code>homeIcon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHomeIcon( oHomeIcon:Dynamic):sap.m.SplitApp;
}

typedef SplitAppArgs = sap.m.SplitContainer.SplitContainerArgs & {

	/**
	* Represents the icon to be displayed on the home screen of iOS devices after the user does "add to home screen". Note that only the first attempt to set the homeIcon is executed, subsequent settings are ignored. The icon must be in PNG format. The property can either store the URL of one single icon or an object holding icon URLs for the different required sizes. Note that if single icon is used for all devices, when scaled, its quality can regress. A desktop icon (used for bookmarks and overriding the favicon) can also be configured. This requires an object to be given and the "icon" property of this object then defines the desktop bookmark icon. For this icon, PNG is not supported by Internet Explorer. The ICO format is supported by all browsers. ICO is also preferred for this desktop icon setting as the file can contain different images for different resolutions.

One example is:

app.setHomeIcon({ 'phone':'phone-icon.png', 'phone@2':'phone-retina.png', 'tablet':'tablet-icon.png', 'tablet@2':'tablet-retina.png', 'icon':'desktop.ico' });

The image size is 57/114 px for the phone and 72/144 px for the tablet. If an object is given but one of the sizes is not given, the largest given icon will be used for this size.

On Android, these icons may or may not be used by the device. Chances can be improved by adding glare effect, rounded corners, setting the file name to end with "-precomposed.png", and setting the homeIconPrecomposed property to true.
	*/
	@:optional var homeIcon:Dynamic;

	/**
	* Fires when orientation (portrait/landscape) is changed.
	*/
	@:optional var orientationChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
