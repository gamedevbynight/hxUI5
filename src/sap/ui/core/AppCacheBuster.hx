package sap.ui.core;

@:native("sap.ui.core.AppCacheBuster")
extern class AppCacheBuster
{

	/**
	* Converts the given URL if it matches a URL in the cachebuster index. If not then the same URL will be returned. To prevent URLs from being modified by the application cachebuster you can implement the function <code>sap.ui.core.AppCacheBuster.handleURL</code>.
	* @param	sUrl any URL
	* @return	modified URL when matching the index or unmodified when not
	*/
	public static function convertURL( sUrl:String):String;

	/**
	* Callback function which can be overwritten to programmatically decide whether to rewrite the given URL or not.
	* @param	sUrl any URL
	* @return	<code>true</code> to rewrite or <code>false</code> to ignore
	*/
	public static function handleURL( sUrl:String):Bool;

	/**
	* Normalizes the given URL and make it absolute.
	* @param	sUrl any URL
	* @return	normalized URL
	*/
	public static function normalizeURL( sUrl:String):String;

	/**
	* Registers an application. Loads the cachebuster index file from this locations. All registered files will be considered by the cachebuster and the URLs will be prefixed with the timestamp of the index file.
	* @param	sBaseUrl base URL of an application providing a cachebuster index file
	* @return	Void
	*/
	public static function register( sBaseUrl:String):Void;
}

