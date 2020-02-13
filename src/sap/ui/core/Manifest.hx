package sap.ui.core;

@:native("sap.ui.core.Manifest")

/**
* The Manifest class.
*/
extern class Manifest extends sap.ui.base.Object
{

	/**
	* 
	* @param	oManifest the manifest object
	* @param	mOptions (optional) the configuration options
	* @return	Object
	*/
	public function new( ?oManifest:Dynamic, ?mOptions:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.core.Manifest with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns the Component name which is defined in the manifest as <code>sap.ui5/componentName</code> or <code>sap.app/id</code>
	* @return	the component name
	*/
	public function getComponentName( ):String;

	/**
	* Returns the configuration of a manifest section or the value for a specific path. If no key is specified, the return value is null.

Example: <code> { "sap.ui5": { "dependencies": { "libs": { "sap.m": {} }, "components": { "my.component.a": {} } } }); </code>

The configuration above can be accessed in the following ways: <ul> <li><b>By section/namespace</b>: <code>oManifest.getEntry("sap.ui5")</code></li> <li><b>By path</b>: <code>oManifest.getEntry("/sap.ui5/dependencies/libs")</code></li> </ul>

By section/namespace returns the configuration for the specified manifest section and by path allows to specify a concrete path to a dedicated entry inside the manifest. The path syntax always starts with a slash (/).
	* @param	sKey Either the manifest section name (namespace) or a concrete path
	* @return	Value of the key (could be any kind of value)
	*/
	public function getEntry( sKey:String):Dynamic;

	/**
	* Returns the manifest defined in the metadata of the component. If not specified, the return value is null.
	* @return	manifest.
	*/
	public function getJson( ):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.core.Manifest.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the raw manifest defined in the metadata of the component. If not specified, the return value is null.
	* @return	manifest
	*/
	public function getRawJson( ):Dynamic;

	/**
	* Resolves the given URI relative to the Component by default or optional relative to the manifest when passing 'manifest' as second parameter.
	* @param	sUri URI to resolve as string
	* @param	sRelativeTo defines to which base URI the given URI will be resolved to; one of ‘component' (default) or 'manifest'
	* @return	resolved URI as string
	*/
	public function resolveUri( sUri:String, ?sRelativeTo:String):String;
}

