package sap.ui.core;

@:native("sap.ui.core.SeparatorItem")

/**
* An item that provides a visual separation. It borrows all its methods from the classes sap.ui.core.Item, sap.ui.core.Element, sap.ui.base.EventProvider, and sap.ui.base.Object.
*/
extern class SeparatorItem extends sap.ui.core.Item
{
	@:overload(function(?sId:String, ?mSettings:SeparatorItemArgs):Void {})
	public function new(?mSettings:SeparatorItemArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.core.SeparatorItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Item.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.ui.core.SeparatorItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef SeparatorItemArgs = sap.ui.core.Item.ItemArgs & {
}
