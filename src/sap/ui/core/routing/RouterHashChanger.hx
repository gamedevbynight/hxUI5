package sap.ui.core.routing;

@:native("sap.ui.core.routing.RouterHashChanger")

/**
* Class for manipulating and receiving changes of the relevant hash segment which belongs to a router. This Class doesn't change the browser hash directly, but informs its parent RouterHashChanger and finally changes the browser hash through the {@link sap.ui.core.routing.HashChanger}
*/
extern class RouterHashChanger extends sap.ui.core.routing.HashChangerBase
{

	/**
	* Creates a new subclass of class sap.ui.core.routing.RouterHashChanger with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.routing.HashChangerBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.ui.core.routing.RouterHashChanger.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

