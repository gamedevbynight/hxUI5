package sap.base.i18n;

@:native("module:sap/base/i18n/ResourceBundle")

/**
* Contains locale-specific texts.

If you need a locale-specific text within your application, you can use the resource bundle to load the locale-specific file from the server and access the texts of it.

Use {@link module:sap/base/i18n/ResourceBundle.create} to create an instance of sap/base/i18n/ResourceBundle (.properties without any locale information, e.g. "mybundle.properties"), and optionally a locale. The locale is defined as a string of the language and an optional country code separated by underscore (e.g. "en_GB" or "fr"). If no locale is passed, the default locale is "en" if the SAPUI5 framework is not available. Otherwise the default locale is taken from the SAPUI5 configuration.

With the getText() method of the resource bundle, a locale-specific string value for a given key will be returned.

With the given locale, the resource bundle requests the locale-specific properties file (e.g. "mybundle_fr_FR.properties"). If no file is found for the requested locale or if the file does not contain a text for the given key, a sequence of fall back locales is tried one by one. First, if the locale contains a region information (fr_FR), then the locale without the region is tried (fr). If that also can't be found or doesn't contain the requested text, the English file is used (en - assuming that most development projects contain at least English texts). If that also fails, the file without locale (base URL of the bundle) is tried.

If none of the requested files can be found or none of them contains a text for the given key, then the key itself is returned as text.

Exception: Fallback for "zh_HK" is "zh_TW" before zh.
*/
extern class ResourceBundle
{

	/**
	* Creates and returns a new instance of {@link module:sap/base/i18n/ResourceBundle} using the given URL and locale to determine what to load.
	* @param	mParams Parameters used to initialize the resource bundle
	* @return	A new resource bundle or a Promise on that bundle (in asynchronous case)
	*/
	public static function create( ?mParams:Dynamic):Dynamic;

	/**
	* Returns a locale-specific string value for the given key sKey.

The text is searched in this resource bundle according to the fallback chain described in {@link module:sap/base/i18n/ResourceBundle}. If no text could be found, the key itself is used as text.

If the second parameter <code>aArgs</code> is given, then any placeholder of the form "{<i>n</i>}" (with <i>n</i> being an integer) is replaced by the corresponding value from <code>aArgs</code> with index <i>n</i>. Note: This replacement is applied to the key if no text could be found. For more details on the replacement mechanism refer to {@link module:sap/base/strings/formatMessage}.
	* @param	sKey Key to retrieve the text for
	* @param	aArgs List of parameter values which should replace the placeholders "{<i>n</i>}" (<i>n</i> is the index) in the found locale-specific string value. Note that the replacement is done whenever <code>aArgs</code> is given, no matter whether the text contains placeholders or not and no matter whether <code>aArgs</code> contains a value for <i>n</i> or not.
	* @param	bIgnoreKeyFallback If set, <code>undefined</code> is returned instead of the key string, when the key is not found in any bundle or fallback bundle.
	* @return	The value belonging to the key, if found; otherwise the key itself or <code>undefined</code> depending on <code>bIgnoreKeyFallback</code>.
	*/
	public function getText( sKey:String, ?aArgs:Array<String>, ?bIgnoreKeyFallback:Bool):String;

	/**
	* Checks whether a text for the given key can be found in the first loaded resource bundle or not. Neither the custom resource bundles nor the fallback chain will be processed.

This method allows to check for the existence of a text without triggering requests for the fallback locales.

When requesting the resource bundle asynchronously this check must only be used after the resource bundle has been loaded.
	* @param	sKey Key to check
	* @return	true if the text has been found in the concrete bundle
	*/
	public function hasText( sKey:String):Bool;
}

