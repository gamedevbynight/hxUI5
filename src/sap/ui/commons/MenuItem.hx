package sap.ui.commons;

@:native("sap.ui.commons.MenuItem")

/**
* Standard item to be used inside a menu. A menu item represents an action which can be selected by the user in the menu or it can provide a submenu to organize the actions hierarchically.
*/
extern class MenuItem extends sap.ui.unified.MenuItem
{
	@:overload(function(?sId:String, ?mSettings:MenuItemArgs):Void {})
	public function new(?mSettings:MenuItemArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.MenuItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.unified.MenuItem.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.commons.MenuItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

typedef MenuItemArgs = sap.ui.unified.MenuItem.MenuItemArgs & {
}
