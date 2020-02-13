package sap.ui.core;

@:native("sap.ui.core.Configuration")

/**
* Collects and stores the configuration of the current environment.

The Configuration is initialized once when the {@link sap.ui.core.Core} is created. There are different ways to set the environment configuration (in ascending priority): <ol> <li>System defined defaults</li> <li>Server wide defaults, read from /sap-ui-config.json</li> <li>Properties of the global configuration object window["sap-ui-config"]</li> <li>A configuration string in the data-sap-ui-config attribute of the bootstrap tag.</li> <li>Individual data-sap-ui-<i>xyz</i> attributes of the bootstrap tag</li> <li>Using URL parameters</li> <li>Setters in this Configuration object (only for some parameters)</li> </ol>

That is, attributes of the DOM reference override the system defaults, URL parameters override the DOM attributes (where empty URL parameters set the parameter back to its system default). Calling setters at runtime will override any previous settings calculated during object creation.

The naming convention for parameters is: <ul> <li>in the URL : sap-ui-<i>PARAMETER-NAME</i>="value"</li> <li>in the DOM : data-sap-ui-<i>PARAMETER-NAME</i>="value"</li> </ul> where <i>PARAMETER-NAME</i> is the name of the parameter in lower case.

Values of boolean parameters are case insensitive where "true" and "x" are interpreted as true.
*/
extern class Configuration extends sap.ui.base.Object
{
public function new():Void;

	/**
	* Applies multiple changes to the configuration at once.

If the changed settings contain localization related settings like <code>language</code> or <ode>calendarType</code>, then only a single <code>localizationChanged</code> event will be fired. As the framework has to inform all existing components, elements, models etc. about localization changes, using <code>applySettings</code> can significantly reduce the overhead for multiple changes, esp. when they occur after the UI has been created already.

The <code>mSettings</code> can contain any property <code><i>xyz</i></code> for which a setter method <code>set<i>XYZ</i></code> exists in the API of this class. Similarly, values for the {@link sap.ui.core.Configuration.FormatSettings format settings} API can be provided in a nested object with name <code>formatSettings</code>.
	* @param	mSettings Configuration options to apply
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function applySettings( mSettings:Dynamic):sap.ui.core.Configuration;

	/**
	* Creates a new subclass of class sap.ui.core.Configuration with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns whether the accessibility mode is used or not.
	* @return	whether the accessibility mode is used or not
	*/
	public function getAccessibility( ):Bool;

	/**
	* Returns the current animation mode.
	* @return	The current animationMode
	*/
	public function getAnimationMode( ):sap.ui.core.configuration.AnimationMode;

	/**
	* Base URLs to AppCacheBuster ETag-Index files.
	* @return	array of base URLs
	*/
	public function getAppCacheBuster( ):Array<String>;

	/**
	* The loading mode (sync|async|batch) of the AppCacheBuster (sync is default)
	* @return	"sync" | "async"
	*/
	public function getAppCacheBusterMode( ):String;

	/**
	* Returns whether the framework automatically adds automatically the ARIA role 'application' to the HTML body or not.
	* @return	null
	*/
	public function getAutoAriaBodyRole( ):Bool;

	/**
	* Returns the used compatibility version for the given feature.
	* @param	sFeature the key of desired feature
	* @return	the used compatibility version
	*/
	public function getCompatibilityVersion( sFeature:String):jquery.sap.Version;

	/**
	* Returns whether the page runs in debug mode.
	* @return	whether the page runs in debug mode
	*/
	public function getDebug( ):Bool;

	/**
	* Returns whether the Fiori2Adaptation is on.
	* @return	false - no adaptation, true - full adaptation, comma-separated list - partial adaptation Possible values: style, collapse, title, back, hierarchy
	*/
	public function getFiori2Adaptation( ):Dynamic;

	/**
	* Returns the URL from where the UI5 flexibility services are called; if empty, the flexibility services are not called.
	* @return	URL from where the flexibility services are requested
	*/
	public function getFlexibilityServices( ):String;

	/**
	* Returns the format locale string with language and region code. Falls back to language configuration, in case it has not been explicitly defined.
	* @return	the format locale string with language and country code
	*/
	public function getFormatLocale( ):String;

	/**
	* Returns a configuration object that bundles the format settings of UI5.
	* @return	A FormatSettings object.
	*/
	public function getFormatSettings( ):sap.ui.core.configuration.FormatSettings;

	/**
	* frameOptions mode (allow/deny/trusted).
	* @return	frameOptions mode
	*/
	public function getFrameOptions( ):String;

	/**
	* Returns whether the UI5 control inspector is displayed. Has only an effect when the sap-ui-debug module has been loaded
	* @return	whether the UI5 control inspector is displayed
	*/
	public function getInspect( ):Bool;

	/**
	* Returns a string that identifies the current language.

The value returned by this methods in most cases corresponds to the exact value that has been configured by the user or application or that has been determined from the user agent settings. It has not been normalized, but has been validated against a relaxed version of {@link http://www.ietf.org/rfc/bcp/bcp47.txt BCP47}, allowing underscores ('_') instead of the suggested dashes ('-') and not taking the case of letters into account.

The exceptions mentioned above affect languages that have been specified via the URL parameter <code>sap-language</code>. That parameter by definition represents an SAP logon language code ('ABAP language'). Most but not all of these language codes are valid ISO639 two-letter languages and as such are valid BCP47 language tags. For better BCP47 compliance, the framework maps the following non-BCP47 SAP logon codes to a BCP47 substitute: <pre>
   "ZH"  -->  "zh-Hans"         // script 'Hans' added to distinguish it from zh-Hant
   "ZF"  -->  "zh-Hant"         // ZF is not a valid ISO639 code, use the compliant language + script 'Hant'
		 "    "1Q"  -->  "en-US-x-saptrc"  // special language code for supportability (tracing),
                                   represented as en-US with a private extension
   "2Q"  -->  "en-US-x-sappsd"  // special language code for supportability (pseudo translation),
                                   represented as en-US with a private extension
</pre>

For a normalized BCP47 tag, call {@link #getLanguageTag} or call {@link #getLocale} to get a {@link sap.ui.core.Locale Locale} object matching the language.
	* @return	Language string as configured
	*/
	public function getLanguage( ):String;

	/**
	* Returns a BCP47-compliant language tag for the current language.

The return value of this method is especially useful for an HTTP <code>Accept</code> header.
	* @return	The language tag for the current language, conforming to BCP47
	*/
	public function getLanguageTag( ):String;

	/**
	* Returns a Locale object for the current language.

The Locale is derived from the {@link #getLanguage language} property.
	* @return	The locale
	*/
	public function getLocale( ):sap.ui.core.Locale;

	/**
	* Flag whether a Component should load the manifest first.
	* @return	true if a Component should load the manifest first
	*/
	public function getManifestFirst( ):Bool;

	/**
	* Returns a metadata object for class sap.ui.core.Configuration.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns whether there should be an exception on any duplicate element IDs.
	* @return	whether there should be an exception on any duplicate element IDs
	*/
	public function getNoDuplicateIds( ):Bool;

	/**
	* Returns whether the text origin information is collected.
	* @return	whether the text info is collected
	*/
	public function getOriginInfo( ):Bool;

	/**
	* The name of the root component to start or empty.
	* @return	name of the root component
	*/
	public function getRootComponent( ):String;

	/**
	* Returns whether the page uses the RTL text direction.

If no mode has been explicitly set (neither <code>true</code> nor <code>false</code>), the mode is derived from the current language setting.
	* @return	whether the page uses the RTL text direction
	*/
	public function getRTL( ):Bool;

	/**
	* Returns an SAP logon language for the current language.
	* @return	The SAP logon language code for the current language
	*/
	public function getSAPLogonLanguage( ):String;

	/**
	* Returns the theme name
	* @return	the theme name
	*/
	public function getTheme( ):String;

	/**
	* Prefix to be used for automatically generated control IDs. Default is a double underscore "__".
	* @return	the prefix to be used
	*/
	public function getUIDPrefix( ):String;

	/**
	* Returns the version of the framework.

Similar to <code>sap.ui.version</code>.
	* @return	the version
	*/
	public function getVersion( ):jquery.sap.Version;

	/**
	* URL of the whitelist service.
	* @return	whitelist service URL
	*/
	public function getWhitelistService( ):String;

	/**
	* Sets the current animation mode.

Expects an animation mode as string and validates it. If a wrong animation mode was set, an error is thrown. If the mode is valid it is set, then the attributes <code>data-sap-ui-animation</code> and <code>data-sap-ui-animation-mode</code> of the HTML document root element are also updated. If the <code>animationMode</code> is <code>Configuration.AnimationMode.none</code> the old <code>animation</code> property is set to <code>false</code>, otherwise it is set to <code>true</code>.
	* @param	sAnimationMode A valid animation mode
	* @return	Void
	*/
	public function setAnimationMode( sAnimationMode:sap.ui.core.configuration.AnimationMode):Void;
	@:overload( function(sCalendarType:sap.ui.core.CalendarType):sap.ui.core.Configuration{ })

	/**
	* Sets the new calendar type to be used from now on in locale dependent functionality (for example, formatting, translation texts, etc.).
	* @param	sCalendarType the new calendar type. Set it with null to clear the calendar type and the calendar type is calculated based on the format settings and current locale.
	* @return	<code>this</code> to allow method chaining
	*/
	public function setCalendarType( sCalendarType:Dynamic):sap.ui.core.Configuration;
	@:overload( function(sFormatLocale:String):sap.ui.core.Configuration{ })

	/**
	* Sets a new format locale to be used from now on for retrieving locale specific formatters. Modifying this setting does not have an impact on the retrieval of translated texts!

Can either be set to a concrete value (a BCP47 or Java locale compliant language tag) or to <code>null</code>. When set to <code>null</code> (default value) then locale specific formatters are retrieved for the current language.

After changing the format locale, the framework tries to update localization specific parts of the UI. See the documentation of {@link #setLanguage} for details and restrictions.

<b>Note</b>: When a format locale is set, it has higher priority than a number, date or time format defined with a call to <code>setLegacyNumberFormat</code>, <code>setLegacyDateFormat</code> or <code>setLegacyTimeFormat</code>.

<b>Note</b>: See documentation of {@link #setLanguage} for restrictions.
	* @param	sFormatLocale the new format locale as a BCP47 compliant language tag; case doesn't matter and underscores can be used instead of dashes to separate components (compatibility with Java Locale IDs)
	* @return	<code>this</code> to allow method chaining
	*/
	public function setFormatLocale( sFormatLocale:Dynamic):sap.ui.core.Configuration;

	/**
	* Sets a new language to be used from now on for language/region dependent functionality (e.g. formatting, data types, translated texts, ...).

When the language can't be interpreted as a BCP47 language (using the relaxed syntax described in {@link #getLanguage}, an error will be thrown.

When the language has changed, the Core will fire its {@link sap.ui.core.Core#event:localizationChanged localizationChanged} event.

<h3>Restrictions</h3>

The framework <strong>does not</strong> guarantee that already created, language dependent objects will be updated by this call. It therefore remains best practice for applications to switch the language early, e.g. before any language dependent objects are created. Applications that need to support more dynamic changes of the language should listen to the <code>localizationChanged</code> event and adapt all language dependent objects that they use (e.g. by rebuilding their UI).

Currently, the framework notifies the following objects about a change of the localization settings before it fires the <code>localizationChanged</code> event:

<ul> <li>date and number data types that are used in property bindings or composite bindings in existing Elements, Controls, UIAreas or Components</li> <li>ResourceModels currently assigned to the Core, a UIArea, Component, Element or Control</li> <li>Elements or Controls that implement the <code>onlocalizationChanged</code> hook (note the lowercase 'l' in onlocalizationChanged)</li> </ul>

It furthermore derives the RTL mode from the new language, if no explicit RTL mode has been set. If the RTL mode changes, the following additional actions will be taken:

<ul> <li>the URLs of already loaded library theme files will be changed</li> <li>the <code>dir</code> attribute of the page will be changed to reflect the new mode.</li> <li>all UIAreas will be invalidated (which results in a rendering of the whole UI5 UI)</li> </ul>

This method does not accept SAP language codes for <code>sLanguage</code>. Instead, a second parameter <code>sSAPLogonLanguage</code> can be provided with an SAP language code corresponding to the given language. A given value will be returned by the {@link #getSAPLogonLanguage} method. It is up to the caller to provide a consistent pair of BCP47 language and SAP language code. The SAP language code is only checked to be of length 2 and must consist of letters or digits only.

<b>Note</b>: When using this method please take note of and respect the above mentioned restrictions.
	* @param	sLanguage the new language as a BCP47 compliant language tag; case doesn't matter and underscores can be used instead of dashes to separate components (compatibility with Java Locale IDs)
	* @param	sSAPLogonLanguage SAP language code that corresponds to the <code>sLanguage</code>; if a value is specified, future calls to <code>getSAPLogonLanguage</code> will return that value; if no value is specified, the framework will use the ISO639 language part of <code>sLanguage</code> as SAP Logon language.
	* @return	<code>this</code> to allow method chaining
	*/
	public function setLanguage( sLanguage:String, ?sSAPLogonLanguage:String):sap.ui.core.Configuration;
	@:overload( function(bRTL:Bool):sap.ui.core.Configuration{ })

	/**
	* Sets the character orientation mode to be used from now on.

Can either be set to a concrete value (true meaning right-to-left, false meaning left-to-right) or to <code>null</code> which means that the character orientation mode should be derived from the current language (incl. region) setting.

After changing the character orientation mode, the framework tries to update localization specific parts of the UI. See the documentation of {@link #setLanguage} for details and restrictions.

<b>Note</b>: See documentation of {@link #setLanguage} for restrictions.
	* @param	bRTL new character orientation mode or <code>null</code>
	* @return	<code>this</code> to allow method chaining
	*/
	public function setRTL( bRTL:Dynamic):sap.ui.core.Configuration;
}

