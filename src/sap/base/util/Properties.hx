package sap.base.util;

@:native("module:sap/base/util/Properties")

/**
* Represents a collection of string properties (key/value pairs).

Each key and its corresponding value in the collection is a string, keys are case-sensitive.

Use {@link module:sap/base/util/Properties.create} to create an instance of {@link module:sap/base/util/Properties}.

The {@link #getProperty} method can be used to retrieve a value from the collection, {@link #setProperty} to store or change a value for a key and {@link #getKeys} can be used to retrieve an array of all keys that are currently stored in the collection.
*/
extern class Properties
{

	/**
	* Creates and returns a clone of the property collection.
	* @return	A clone of the property collection
	*/
	public function clone( ):sap.base.util.Properties;

	/**
	* Creates and returns a new instance of {@link module:sap/base/util/Properties}.

If option 'url' is passed, immediately a load request for the given target is triggered. A property file that is loaded can contain comments with a leading ! or #. The loaded property list does not contain any comments.
	* @param	mParams Parameters used to initialize the property list
	* @return	A new property collection (synchronous case) or <code>null</code> if the file could not be loaded and <code>returnNullIfMissing</code> was set; in case of asynchronous loading, always a Promise is returned, which resolves with the property collection or with <code>null</code> if the file could not be loaded and <code>returnNullIfMissing</code> was set to true
	*/
	public static function create( ?mParams:Dynamic):Dynamic;

	/**
	* Returns an array of all keys in the property collection.
	* @return	All keys in the property collection
	*/
	public function getKeys( ):Array<String>;

	/**
	* Returns the value for the given key or <code>null</code> if the collection has no value for the key.

Optionally, a default value can be given which will be returned if the collection does not contain a value for the key; only non-empty default values are supported.
	* @param	sKey Key to return the value for
	* @param	sDefaultValue Optional, a default value that will be returned if the requested key is not in the collection
	* @return	Value for the given key or the default value or <code>null</code> if no default value or a falsy default value was given
	*/
	public function getProperty( sKey:String, ?sDefaultValue:String):String;

	/**
	* Stores or changes the value for the given key in the collection.

If the given value is not a string, the collection won't be modified. The key is always cast to a string.
	* @param	sKey Key of the property
	* @param	sValue String value for the key
	* @return	Void
	*/
	public function setProperty( sKey:String, sValue:String):Void;
}

