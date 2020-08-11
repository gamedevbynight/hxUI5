package jquery;

@:native("jquery.os")
extern class Os
{

	/**
	* Whether the current operating system is Android
	*/
	 public static var android:Bool;

	/**
	* Whether the current operating system is BlackBerry
	*/
	 public static var blackberry:Bool;

	/**
	* The version of the operating system parsed as a float (major and first minor version)
	*/
	 public static var fVersion:Float;

	/**
	* Whether the current operating system is Apple iOS
	*/
	 public static var ios:Bool;

	/**
	* The name of the operating system; currently supported are: "ios", "android", "blackberry"
	*/
	 public static var os:String;

	/**
	* The version of the operating system as a string (including minor versions)
	*/
	 public static var version:String;

	/**
	* Whether the current operating system is Windows Phone
	*/
	 public static var winphone:Bool;


}

