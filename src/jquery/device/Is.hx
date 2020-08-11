package jquery.device;

@:native("jquery.device.is")
extern class Is
{

	/**
	* Whether the application runs on an Android phone - based not on screen size but user-agent (so this is not guaranteed to be equal to jQuery.device.is.phone on Android) https://developers.google.com/chrome/mobile/docs/user-agent Some device vendors however do not follow this rule
	*/
	 public static var android_phone:Bool;

	/**
	* Whether the application runs on an Android tablet - based not on screen size but user-agent (so this is not guaranteed to be equal to jQuery.device.is.tablet on Android) https://developers.google.com/chrome/mobile/docs/user-agent Some device vendors however do not follow this rule
	*/
	 public static var android_tablet:Bool;

	/**
	* Whether the running device is a desktop browser. If a desktop browser runs in mobile device simulation mode (with URL parameter sap-ui-xx-test-mobile), this property will be false.
	*/
	 public static var desktop:Bool;

	/**
	* Whether the application runs on an iPad
	*/
	 public static var ipad:Bool;

	/**
	* Whether the application runs on an iPhone
	*/
	 public static var iphone:Bool;

	/**
	* Whether the device is in "landscape" orientation (also "true" when the device does not know about the orientation)
	*/
	 public static var landscape:Bool;

	/**
	* Whether the running device is a phone. If a desktop browser runs in mobile device simulation mode (with URL parameter sap-ui-xx-test-mobile), this property will also be set according to the simulated platform. This property will be false when runs in desktop browser.
	*/
	 public static var phone:Bool;

	/**
	* Whether the device is in portrait orientation
	*/
	 public static var portrait:Bool;

	/**
	* Whether the application runs in standalone mode without browser UI (launched from the iOS home screen)
	*/
	 public static var standalone:Bool;

	/**
	* Whether the running device is a tablet. If a desktop browser runs in mobile device simulation mode (with URL parameter sap-ui-xx-test-mobile), this property will also be set according to the simulated platform. This property will be false when runs in desktop browser.
	*/
	 public static var tablet:Bool;


}

