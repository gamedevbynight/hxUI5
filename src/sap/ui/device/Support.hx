package sap.ui.device;

@:native("sap.ui.Device.support")
extern class Support
{

	/**
	* If this flag is set to <code>true</code>, the used browser natively supports media queries via JavaScript.

<b>Note:</b> The {@link sap.ui.Device.media media queries API} of the device API can also be used when there is no native support.
	*/
	 public static var matchmedia:Bool;

	/**
	* If this flag is set to <code>true</code>, the used browser natively supports events of media queries via JavaScript.

<b>Note:</b> The {@link sap.ui.Device.media media queries API} of the device API can also be used when there is no native support.
	*/
	 public static var matchmedialistener:Bool;

	/**
	* If this flag is set to <code>true</code>, the used browser natively supports the <code>orientationchange</code> event.

<b>Note:</b> The {@link sap.ui.Device.orientation orientation event} of the device API can also be used when there is no native support.
	*/
	 public static var orientation:Bool;

	/**
	* If this flag is set to <code>true</code>, the used browser supports pointer events.
	*/
	 public static var pointer:Bool;

	/**
	* If this flag is set to <code>true</code>, the device has a display with a high resolution.
	*/
	 public static var retina:Bool;

	/**
	* If this flag is set to <code>true</code>, the used browser supports touch events.

<b>Note:</b> This flag indicates whether the used browser supports touch events or not. This does not necessarily mean that the used device has a touchable screen.
	*/
	 public static var touch:Bool;

	/**
	* If this flag is set to <code>true</code>, the used browser supports web sockets.
	*/
	 public static var websocket:Bool;


}

