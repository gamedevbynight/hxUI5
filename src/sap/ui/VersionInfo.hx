package sap.ui;

@:native("sap.ui.VersionInfo")
extern class VersionInfo
{

	/**
	* Loads the version info file (resources/sap-ui-version.json) asynchronously and returns a Promise. The returned Promise resolves with the version info files content.

If a library name is specified then the version info of the individual library will be retrieved.

In case of the version info file is not available an error will occur when calling this function.
	* @param	mOptions an object map (see below)
	* @return	a Promise which resolves with one of these values: the full version info, the library specific one, undefined if library is not listed or there was an error during loading.
	*/
	public static function load( mOptions:Dynamic):js.lib.Promise<VersionInfo>;
}

