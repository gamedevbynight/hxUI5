package sap.ui.core.routing;

@:native("sap.ui.core.routing.HashChanger")

/**
* Class for manipulating and receiving changes of the browserhash with the hasher framework.

Fires a <code>hashChanged</code> event if the browser hash changes.
*/
extern class HashChanger extends sap.ui.base.EventProvider
{
public function new():Void;

	/**
	* Creates a new subclass of class sap.ui.core.routing.HashChanger with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.EventProvider.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets the current hash
	* @return	the current hash
	*/
	public function getHash( ):String;

	/**
	* Gets a global singleton of the HashChanger. The singleton will get created when this function is invoked for the first time.
	* @return	The global HashChanger
	*/
	public static function getInstance( ):sap.ui.core.routing.HashChanger;

	/**
	* Returns a metadata object for class sap.ui.core.routing.HashChanger.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Will start listening to hashChanges with the parseHash function. This will also fire a hashchanged event with the initial hash.
	* @return	false if it was initialized before, true if it was initialized the first time
	*/
	public function init( ):Bool;

	/**
	* Replaces the hash with a certain value. When using the replace function, no browser history entry is written. If you want to have an entry in the browser history, please use the {@link #setHash} function.
	* @param	sHash New hash
	* @return	Void
	*/
	public function replaceHash( sHash:String):Void;

	/**
	* Sets the hash to a certain value. When using this function, a browser history entry is written. If you do not want to have an entry in the browser history, please use the {@link #replaceHash} function.
	* @param	sHash New hash
	* @return	Void
	*/
	public function setHash( sHash:String):Void;
}

