package sap.ui.commons;

@:native("sap.ui.commons.Menu")

/**
* A menu is an interactive element which provides a choice of different actions to the user. These actions (items) can also be organized in submenus. Like other dialog-like controls, the menu is not rendered within the control hierarchy. Instead it can be opened at a specified position via a function call.
*/
extern class Menu extends sap.ui.unified.Menu
{
	@:overload(function(?sId:String, ?mSettings:MenuArgs):Void {})
	public function new(?mSettings:MenuArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.Menu with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.unified.Menu.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.commons.Menu.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef MenuArgs = sap.ui.unified.Menu.MenuArgs & {
}
