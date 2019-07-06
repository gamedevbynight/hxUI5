package jquery.sap;

@:native("jquery.sap.storage")
extern class Storage
{

	/**
	* Deletes all the entries saved in the session (Independent of the current Storage instance!).

CAUTION: This method should be called only in very particular situations, when a global erasing of data is required. Given that the method deletes the data saved under any ID, it should not be called when managing data for specific controls.
	* @return	true if execution of removal was successful or the data to remove doesn't exist, and false if the feature is unavailable or a problem occurred
	*/
	public static function clear( ):Bool;

	/**
	* Retrieves the state string stored in the session under the key sStorageKeyPrefix + sId.

sStorageKeyPrefix is the id prefix defined for the storage instance (@see jQuery.sap#storage)
	* @param	sId Id for the state to retrieve
	* @return	the string from the storage, if the retrieval was successful, and null otherwise
	*/
	public static function get( sId:String):String;

	/**
	* Returns the type of the storage.
	* @return	the type of the storage or "unknown"
	*/
	public static function getType( ):Dynamic;

	/**
	* Returns whether the given storage is suppported.
	* @return	true if storage is supported, false otherwise (e.g. due to browser security settings)
	*/
	public static function isSupported( ):Bool;

	/**
	* Stores the passed state string in the session, under the key sStorageKeyPrefix + sId.

sStorageKeyPrefix is the id prefix defined for the storage instance (@see jQuery.sap#storage)
	* @param	sId Id for the state to store
	* @param	sStateToStore content to store
	* @return	true if the data were successfully stored, false otherwise
	*/
	public static function put( sId:String, sStateToStore:String):Bool;

	/**
	* Deletes the state string stored in the session under the key sStorageKeyPrefix + sId.s

sStorageKeyPrefix is the id prefix defined for the storage instance (@see jQuery.sap#storage)
	* @param	sId Id for the state to delete
	* @return	true if the deletion was successful or the data doesn't exist under the specified key, and false if the feature is unavailable or a problem occurred
	*/
	public static function remove( sId:String):Bool;

	/**
	* Deletes all state strings stored in the session under the key prefix sStorageKeyPrefix + sIdPrefix.

sStorageKeyPrefix is the id prefix defined for the storage instance (@see jQuery.sap#storage)
	* @param	sIdPrefix Id prefix for the states to delete
	* @return	true if the deletion was successful or the data doesn't exist under the specified key, and false if the feature is unavailable or a problem occurred
	*/
	public static function removeAll( sIdPrefix:String):Bool;
}

