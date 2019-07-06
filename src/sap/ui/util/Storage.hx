package sap.ui.util;

@:native("module:sap/ui/util/Storage")

/**
* A Storage API for JavaScript.

<b>Note:</b> The Web Storage API stores the data on the client. Therefore, you must not use this API for confidential information.

Provides a unified interface and methods to store data on the client using the Web Storage API or a custom implementation. By default, data can be persisted inside localStorage or a sessionStorage.

You can access the 'default' storage by using {@link module:sap/ui/util/Storage} methods static on the module export or by creating an own instance of Storage via the constructor.

A typical intended usage of this API is the storage of a string representing the state of a control. In this case, the data is stored in the browser session, and the methods to be used are {@link #put} and {@link #get}. The method {@link #remove} can be used to delete the previously saved state.

For the sake of completeness, the method {@link #clear} is available. However, it should be called only in very particular situations, when a global erasing of data is required. If only keys with certain prefix should be deleted, the method {@link #removeAll} should be used.
*/
extern class Storage
{
	@:overload( function(?pStorage:sap.ui.util.storage.Type, ?sStorageKeyPrefix:String):Void{ })

	/**
	* 
	* @param	pStorage The type this storage should be of or an Object implementing the typical Storage API for direct usage.
	* @param	sStorageKeyPrefix The prefix to use in this storage.
	* @return	Object
	*/
	public function new( ?pStorage:Storage, ?sStorageKeyPrefix:String):Void;

	/**
	* Clears the whole storage (Independent of the current Storage instance!).

<b>CAUTION</b> This method should be called only in very particular situations, when a global erasing of data is required. Given that the method deletes the data saved under any ID, it should not be called when managing data for specific controls.
	* @return	true if execution of removal was successful or the data to remove doesn't exist, and false if the feature is unavailable or a problem occurred
	*/
	public function clear( ):Bool;

	/**
	* Retrieves data item for a specific key.
	* @param	sKey key to retrieve
	* @return	keys value or null
	*/
	public function get( sKey:String):Dynamic;

	/**
	* Returns the storage type.
	* @return	storage type or "unknown"
	*/
	public function getType( ):Dynamic;

	/**
	* Returns whether the given storage is suppported.
	* @return	true if storage is supported, false otherwise (e.g. due to browser security settings)
	*/
	public function isSupported( ):Bool;

	/**
	* Add key to the storage or updates value if the key already exists.
	* @param	sKey key to create
	* @param	sValue value to create/update
	* @return	true if the data was successfully stored, otherwise false
	*/
	public function put( sKey:String, sValue:String):Bool;

	/**
	* Removes key from storage if it exists.
	* @param	sKey key to remove
	* @return	true if the deletion was successful or the data doesn't exist under the specified key, and false if the feature is unavailable or a problem occurred
	*/
	public function remove( sKey:String):Bool;

	/**
	* Removes all stored keys.
	* @param	sIdPrefix prefix id for the states to delete
	* @return	true if the deletion was successful or the data doesn't exist under the specified key, and false if the feature is unavailable or a problem occurred
	*/
	public function removeAll( sIdPrefix:String):Bool;
}

