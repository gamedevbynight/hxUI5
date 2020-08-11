package sap.ui.device;

@:native("sap.ui.Device.os")
extern class Os
{

	/**
	* If this flag is set to <code>true</code>, an Android operating system is used.
	*/
	 public static var android:Bool;

	/**
	* If this flag is set to <code>true</code>, a Blackberry operating system is used.
	*/
	 public static var blackberry:Bool;

	/**
	* If this flag is set to <code>true</code>, an iOS operating system is used.
	*/
	 public static var ios:Bool;

	/**
	* If this flag is set to <code>true</code>, a Linux operating system is used.
	*/
	 public static var linux:Bool;

	/**
	* If this flag is set to <code>true</code>, a Mac operating system is used.

<b>Note:</b> An iPad using Safari browser, which is requesting desktop sites, is also recognized as Macintosh.
	*/
	 public static var macintosh:Bool;

	/**
	* The name of the operating system.
	*/
	 public static var name:String;

	/**
	* The version of the operating system as <code>float</code>.

Might be <code>-1</code> if no version can be determined.
	*/
	 public static var version:Float;

	/**
	* The version of the operating system as <code>string</code>.

Might be empty if no version can be determined.
	*/
	 public static var versionStr:String;

	/**
	* If this flag is set to <code>true</code>, a Windows operating system is used.
	*/
	 public static var windows:Bool;

	/**
	* If this flag is set to <code>true</code>, a Windows Phone operating system is used.
	*/
	 public static var windows_phone:Bool;


}

