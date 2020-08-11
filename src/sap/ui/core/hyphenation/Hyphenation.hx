package sap.ui.core.hyphenation;

@:native("sap.ui.core.hyphenation.Hyphenation")

/**
* This class provides methods for evaluating the possibility of using browser-native hyphenation or initializing and using a third-party hyphenation module.

<h3>Overview</h3> By using this API, a developer can check if browser-native hyphenation is supported for a particular language.

When browser-native hyphenation is not supported or if otherwise required, the API can be used to hyphenate texts. A third-party library "Hyphenopoly" is used in that case.

It is used internally by controls that support the <code>wrappingType:{@link sap.m.WrappingType WrappingType.Hyphenated}</code> property.

As the class is singleton, an instance should be acquired from {@link sap.ui.core.hyphenation.Hyphenation.getInstance Hyphenation.getInstance}.

<h3>Usage</h3> <h4>When to use:</h4> <ul> <li>To check if browser-native hyphenation is available for particular language.</li> <li>To hyphenate texts if browser-native hyphenation is not available.</li> </ul> <h4>When not to use:</h4> <ul> <li> If the use case is covered by controls that support the property <code>wrappingType:{@link sap.m.WrappingType WrappingType.Hyphenated}</code>. This functionality is supported by {@link sap.m.Title sap.m.Title}, {@link sap.m.Label sap.m.Label} and {@link sap.m.Text sap.m.Text}. </li> <li>If browser-native hyphenation is available</li> </ul>

<h3>Example</h3> <pre>
if (!Hyphenation.getInstance().canUseNativeHyphenation("en")) {
	Hyphenation.getInstance().initialize("en").then(function() {
		console.log(Hyphenation.getInstance().hyphenate("An example text to hyphenate.", "en"));
	});
}
</pre>

For more information, see {@link topic:6322164936f047de941ec522b95d7b70 Hyphenation for Text Controls}.

<code>Caution:</code> Note that as the hyphenation feature uses third-party and browser-native tools, we are not responsible for any grammatical incorrectness or inconsistencies of the hyphenation. Also, the variety of supported languages is outside the scope of our control and may be subject to future changes.
*/
extern class Hyphenation extends sap.ui.base.ManagedObject
{

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:error error} event of this <code>sap.ui.core.hyphenation.Hyphenation</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.core.hyphenation.Hyphenation</code> itself.

Fired if an error with initialization or hyphenation occurs.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.core.hyphenation.Hyphenation</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachError( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.hyphenation.Hyphenation;

	/**
	* Checks if native hyphenation works in the current browser for the given language. This check is performed against the value of the "lang" HTML attribute of the page.
	* @param	sLang For what language to check. The global application language is the default one
	* @return	True if native hyphenation works for the given language. False if native hyphenation will not work. Null if the language is not known to the Hyphenation API
	*/
	public function canUseNativeHyphenation( ?sLang:String):Dynamic;

	/**
	* Checks if third-party hyphenation works for the given language.
	* @param	sLang For what language to check. The global application language is the default one.
	* @return	True if third-party hyphenation works for the given language. False if third-party hyphenation doesn't work. Null if the language is not known to the <code>Hyphenation</code> API.
	*/
	public function canUseThirdPartyHyphenation( ?sLang:String):Dynamic;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:error error} event of this <code>sap.ui.core.hyphenation.Hyphenation</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachError( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.hyphenation.Hyphenation;

	/**
	* Creates a new subclass of class sap.ui.core.hyphenation.Hyphenation with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.ManagedObject.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* What languages were initialized with {@link sap.ui.core.hyphenation.Hyphenation#initialize Hyphenation#initialize}
	* @return	List of languages which were initialized
	*/
	public function getInitializedLanguages( ):Array<Dynamic>;

	/**
	* Returns the singleton instance of the Hyphenation API.
	* @return	The singleton instance of the Hyphenation API
	*/
	public static function getInstance( ):sap.ui.core.hyphenation.Hyphenation;

	/**
	* Returns a metadata object for class sap.ui.core.hyphenation.Hyphenation.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.ManagedObjectMetadata;

	/**
	* Hyphenates the given text with the third-party library.

Adds the soft hyphen symbol at the places where words can break.
	* @param	sText The text to hyphenate
	* @param	sLang The language of the text. The global application language is the default one
	* @return	The text with the hyphens symbol added
	*/
	public function hyphenate( sText:String, ?sLang:String):String;

	/**
	* Initializes the third-party library for the given language.

Loads required third-party resources and language-specific resources.
	* @param	sLang The language for which the third-party library should be initialized. The global application language is the default one
	* @return	A promise which resolves when all language resources are loaded. Rejects if the language is not supported
	*/
	public function initialize( ?sLang:String):js.lib.Promise<Hyphenation>;

	/**
	* Checks if the given language was initialized with {@link sap.ui.core.hyphenation.Hyphenation#initialize Hyphenation#initialize}
	* @param	sLang The language to check for
	* @return	True if the language was initialized
	*/
	public function isLanguageInitialized( ?sLang:String):Bool;

	/**
	* Checks if <code>Hyphenation</code> API knows about the given language.

If it is a known language, the API can be used to check browser-native and third-party support.
	* @param	sLang For what language to check. The global application language is the default one.
	* @return	True if the language is known to the <code>Hyphenation</code> API
	*/
	public function isLanguageSupported( ?sLang:String):Bool;
}

