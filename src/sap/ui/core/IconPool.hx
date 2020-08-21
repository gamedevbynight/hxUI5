package sap.ui.core;

@:native("sap.ui.core.IconPool")
extern class IconPool
{

	/**
	* Register an additional icon to the sap.ui.core.IconPool.
	* @param	iconName the name of the icon.
	* @param	collectionName the name of icon collection. The built in icons are with empty collectionName, so if additional icons need to be registered in IconPool, the collectionName can't be empty.
	* @param	iconInfo the icon info which contains the following properties:
	* @return	the info object of the registered icon which has the name, collection, uri, fontFamily, content and suppressMirroring properties.
	*/
	public static function addIcon( iconName:String, collectionName:String, iconInfo:Dynamic):Dynamic;
	@:overload( function(setting:String, constructor:(Dynamic)->Void):sap.ui.core.Control{ })

	/**
	* Creates an instance of {@link sap.ui.core.Icon} if the given URI is an icon URI, otherwise the given constructor is called. The given URI is set to the src property of the control.
	* @param	setting Contains the properties which will be used to instantiate the returned control. All properties of the associated constructor can be used. Unknown properties are ignored. It should contain at least a property named src. If it's given with a string type, it will be taken as the value of src property.
	* @param	constructor The constructor function which is called when the given URI isn't an icon URI
	* @return	Either an instance of sap.ui.core.Icon or instance created by calling the given constructor
	*/
	public static function createControlByURI( setting:Dynamic, constructor:(Dynamic)->Void):sap.ui.core.Control;

	/**
	* Checks if the icon font is loaded
	* @param	sCollectionName icon collection name
	* @return	a Promise that resolves when the icon font is loaded; or <code>undefined</code> if the icon font has not been registered yet
	*/
	public static function fontLoaded( sCollectionName:String):Dynamic;

	/**
	* Returns all names of registered collections in IconPool
	* @return	An array contains all of the registered collections' names.
	*/
	public static function getIconCollectionNames( ):Array<Dynamic>;

	/**
	* Returns the icon url based on the given mime type
	* @param	sMimeType the mime type of a file (e.g. "application/zip")
	* @return	the icon url (e.g. "sap-icon://attachment-zip-file")
	*/
	public static function getIconForMimeType( sMimeType:String):String;

	/**
	* Returns an info object for the icon with the given <code>iconName</code> and <code>collectionName</code>.

Instead of giving name and collection, a complete icon-URI can be provided as <code>iconName</code>. The method will determine name and collection from the URI, see {@link #.isIconURI IconPool.isIconURI} for details.

The returned info object has the following properties: <ul> <li><code>string: name</code> Name of the icon</li> <li><code>string: collection</code> Name of the collection that contains the icon or <code>undefined</code> in case of the default collection</li> <li><code>string: uri</code> Icon URI that identifies the icon</li> <li><code>string: fontFamily</code> CSS font family to use for this icon</li> <li><code>string: content</code> Character sequence that represents the icon in the icon font</li> <li><code>string: text</code> Alternative text describing the icon (optional, might be empty)</li> <li><code>boolean: suppressMirroring</code> Whether the icon needs no mirroring in right-to-left mode</li> </ul>
	* @param	iconName Name of the icon, or a complete icon-URI with icon collection and icon name; must not be empty
	* @param	collectionName Name of the icon collection; to access built-in icons, omit the collection name
	* @param	loadingMode The approach for loading the icon info, if it is not already available: sync - font metadata is loaded synchronously and the icon info is returned immediately async - a promise is returned that returns the icon info when the font metadata is loaded mixed - until the font metadata is loaded a promise is returned, afterwards the icon info
	* @return	Info object or Promise for the icon depending on the loadingMode or <code>undefined</code> when the icon can't be found or no icon name was given.
	*/
	public static function getIconInfo( iconName:String, ?collectionName:String, ?loadingMode:String):Dynamic;

	/**
	* Returns all name of icons that are registered under the given collection.
	* @param	collectionName the name of collection where icon names are retrieved.
	* @return	An array contains all of the registered icon names under the given collection.
	*/
	public static function getIconNames( collectionName:String):Array<Dynamic>;

	/**
	* Returns the URI of the icon in the pool which has the given <code>iconName</code> and <code>collectionName</code>.
	* @param	iconName Name of the icon, must not be empty
	* @param	collectionName Name of the icon collection; to access built-in icons, omit the collection name
	* @return	URI of the icon or <code>undefined</code> if the icon can't be found in the IconPool
	*/
	public static function getIconURI( iconName:String, ?collectionName:String):String;

	/**
	* Returns whether the given <code>uri</code> is an icon URI.

A string is an icon URI when it can be parsed as a URI and when it has one of the two forms <ul> <li>sap-icon://collectionName/iconName</li> <li>sap-icon://iconName</li> </ul> where collectionName and iconName must be non-empty.
	* @param	uri The URI to check
	* @return	Whether the URI matches the icon URI format
	*/
	public static function isIconURI( uri:String):Bool;

	/**
	* Registers an additional icon font to the icon pool
	* @param	oConfig configuration object for registering the font
	* @return	Void
	*/
	public static function registerFont( oConfig:Dynamic):Void;
}

