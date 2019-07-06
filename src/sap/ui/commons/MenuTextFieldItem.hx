package sap.ui.commons;

@:native("sap.ui.commons.MenuTextFieldItem")

/**
* Special menu item which contains a label and a text field. This menu item is e.g. helpful for filter implementations. The aggregation <code>submenu</code> (inherited from parent class) is not supported for this type of menu item.
*/
extern class MenuTextFieldItem extends sap.ui.unified.MenuTextFieldItem
{
	@:overload(function(?sId:String, ?mSettings:MenuTextFieldItemArgs):Void {})
	public function new(?mSettings:MenuTextFieldItemArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.MenuTextFieldItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.unified.MenuTextFieldItem.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.commons.MenuTextFieldItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

typedef MenuTextFieldItemArgs = sap.ui.unified.MenuTextFieldItem.MenuTextFieldItemArgs & {
}
