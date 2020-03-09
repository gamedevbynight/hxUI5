package sap.ui.core;

@:native("sap.ui.core.History")

/**
* History handles the history of certain controls (e.g. sap.ui.commons.SearchField).
*/
extern class History extends sap.ui.base.Object
{

	/**
	* Creates a new subclass of class sap.ui.core.History with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.core.History.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

typedef HistoryArgs = sap.ui.base.Object.ObjectArgs & {
}
