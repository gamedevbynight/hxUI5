package sap.ui.device;

@:native("sap.ui.Device.system")
extern class System
{

	/**
	* If this flag is set to <code>true</code>, the device is recognized as a combination of a desktop system and tablet.

Furthermore, a CSS class <code>sap-combi</code> is added to the document root element.

<b>Note:</b> This property is mainly for Microsoft Windows 8 (and following) devices where the mouse and touch event may be supported natively by the browser being used. This property is set to <code>true</code> only when both mouse and touch event are natively supported.
	*/
	 public static var combi:Bool;

	/**
	* If this flag is set to <code>true</code>, the device is recognized as a desktop system.

Furthermore, a CSS class <code>sap-desktop</code> is added to the document root element.
	*/
	 public static var desktop:Bool;

	/**
	* If this flag is set to <code>true</code>, the device is recognized as a phone.

Furthermore, a CSS class <code>sap-phone</code> is added to the document root element.
	*/
	 public static var phone:Bool;

	/**
	* If this flag is set to <code>true</code>, the device is recognized as a tablet.

Furthermore, a CSS class <code>sap-tablet</code> is added to the document root element.

<b>Note:</b> This flag is also true for some browsers on desktop devices running on Windows 8 or higher. Also see the documentation for {@link sap.ui.Device.system.combi} devices. You can use the following logic to ensure that the current device is a tablet device:

<pre>
if(sap.ui.Device.system.tablet && !sap.ui.Device.system.desktop){
	...tablet related commands...
}
</pre>
	*/
	 public static var tablet:Bool;


}

