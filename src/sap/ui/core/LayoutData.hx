package sap.ui.core;

@:native("sap.ui.core.LayoutData")

/**
* A layout data base type.
*/
extern class LayoutData extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:LayoutDataArgs):Void {})
	public function new(?mSettings:LayoutDataArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.core.LayoutData with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.core.LayoutData.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef LayoutDataArgs = sap.ui.core.Element.ElementArgs & {
}
