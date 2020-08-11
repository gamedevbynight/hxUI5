package sap.ui.device;

@:native("sap.ui.Device.browser")
extern class Browser
{

	/**
	* If this flag is set to <code>true</code>, a browser featuring a Blink rendering engine is used.
	*/
	 public static var blink:Bool;

	/**
	* If this flag is set to <code>true</code>, a browser that is based on the Chromium browser project is used, such as the Google Chrome browser or the Microsoft Edge (Chromium) browser.
	*/
	 public static var chrome:Bool;

	/**
	* If this flag is set to <code>true</code>, the Microsoft Edge (EdgeHTML) browser is used. The Microsoft Edge (Chromium) browser is reported via the {@link #chrome} flag instead, because it also uses Chromium as its browser engine.
	*/
	 public static var edge:Bool;

	/**
	* If this flag is set to <code>true</code>, the Mozilla Firefox browser is used.
	*/
	 public static var firefox:Bool;

	/**
	* If this flag is set to <code>true</code>, the Safari browser runs in standalone fullscreen mode on iOS.

<b>Note:</b> This flag is only available if the Safari browser was detected. Furthermore, if this mode is detected, technically not a standard Safari is used. There might be slight differences in behavior and detection, e.g. the availability of {@link sap.ui.Device.browser.version}.
	*/
	 public static var fullscreen:Bool;

	/**
	* If this flag is set to <code>true</code>, the Microsoft Internet Explorer browser is used.
	*/
	 public static var internet_explorer:Bool;

	/**
	* If this flag is set to <code>true</code>, the mobile variant of the browser is used or a tablet or phone device is detected.

<b>Note:</b> This information might not be available for all browsers.
	*/
	 public static var mobile:Bool;

	/**
	* If this flag is set to <code>true</code>, a browser featuring a Mozilla engine is used.
	*/
	 public static var mozilla:Bool;

	/**
	* If this flag is set to <code>true</code>, the Microsoft Internet Explorer browser is used.
	*/
	 public static var msie:Bool;

	/**
	* The name of the browser.
	*/
	 public static var name:String;

	/**
	* If this flag is set to <code>true</code>, the Apple Safari browser is used.

<b>Note:</b> This flag is also <code>true</code> when the standalone (fullscreen) mode or webview is used on iOS devices. Please also note the flags {@link sap.ui.Device.browser.fullscreen} and {@link sap.ui.Device.browser.webview}.
	*/
	 public static var safari:Bool;

	/**
	* The version of the browser as <code>float</code>.

Might be <code>-1</code> if no version can be determined.
	*/
	 public static var version:Float;

	/**
	* The version of the browser as <code>string</code>.

Might be empty if no version can be determined.
	*/
	 public static var versionStr:String;

	/**
	* If this flag is set to <code>true</code>, a browser featuring a Webkit engine is used.

<b>Note:</b> This flag is also <code>true</code> when the used browser was based on the Webkit engine, but uses another rendering engine in the meantime. For example the Chrome browser started from version 28 and above uses the Blink rendering engine.
	*/
	 public static var webkit:Bool;

	/**
	* If this flag is set to <code>true</code>, the Safari browser runs in webview mode on iOS.

<b>Note:</b> This flag is only available if the Safari browser was detected. Furthermore, if this mode is detected, technically not a standard Safari is used. There might be slight differences in behavior and detection, e.g. the availability of {@link sap.ui.Device.browser.version}.
	*/
	 public static var webview:Bool;


}

