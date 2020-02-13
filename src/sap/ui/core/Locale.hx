package sap.ui.core;

@:native("sap.ui.core.Locale")

/**
* Locale represents a locale setting, consisting of a language, script, region, variants, extensions and private use section.
*/
extern class Locale extends sap.ui.base.Object
{

	/**
	* 
	* @param	sLocaleId the locale identifier, in format en-US or en_US.
	* @return	Object
	*/
	public function new( ?sLocaleId:String):Void;

	/**
	* Creates a new subclass of class sap.ui.core.Locale with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Get the locale extension as a single string or <code>null</code>.

The extension always consists of a singleton character (not 'x'), a dash '-' and one or more extension token, each separated again with a dash.

Use {@link #getExtensions} to get the individual extension tokens as an array.
	* @return	the extension
	*/
	public function getExtension( ):String;

	/**
	* Get the locale extensions as an array of tokens.

The leading singleton and the separating dashes are not part of the result. If there is no extensions section in the locale tag, an empty array is returned.
	* @return	the individual extension sections
	*/
	public function getExtensionSubtags( ):Array<String>;

	/**
	* Get the locale language.

Note that the case might differ from the original script tag (Lower case is enforced as recommended by BCP47/ISO639).
	* @return	the language code
	*/
	public function getLanguage( ):String;

	/**
	* Returns a metadata object for class sap.ui.core.Locale.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Get the locale private use section or <code>null</code>.
	* @return	the private use section
	*/
	public function getPrivateUse( ):String;

	/**
	* Get the locale private use section as an array of tokens.

The leading singleton and the separating dashes are not part of the result. If there is no private use section in the locale tag, an empty array is returned.
	* @return	the tokens of the private use section
	*/
	public function getPrivateUseSubtags( ):Array<String>;

	/**
	* Get the locale region or <code>null</code> if none was specified.

Note that the case might differ from the original script tag (Upper case is enforced as recommended by BCP47/ISO3166-1).
	* @return	the ISO3166-1 region code (2-letter or 3-digits)
	*/
	public function getRegion( ):String;

	/**
	* Get the locale script or <code>null</code> if none was specified.

Note that the case might differ from the original language tag (Upper case first letter and lower case reminder enforced as recommended by BCP47/ISO15924)
	* @return	the script code or null
	*/
	public function getScript( ):String;

	/**
	* Get the locale variants as a single string or <code>null</code>.

Multiple variants are separated by a dash '-'.
	* @return	the variant or null
	*/
	public function getVariant( ):String;

	/**
	* Get the locale variants as an array of individual variants.

The separating dashes are not part of the result. If there is no variant section in the locale tag, an empty array is returned.
	* @return	the individual variant sections
	*/
	public function getVariantSubtags( ):Array<String>;
}

