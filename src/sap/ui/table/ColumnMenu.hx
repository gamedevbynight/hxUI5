package sap.ui.table;

@:native("sap.ui.table.ColumnMenu")

/**
* The column menu provides all common actions that can be performed on a column.
*/
extern class ColumnMenu extends sap.ui.unified.Menu
{
	@:overload(function(?sId:String, ?mSettings:ColumnMenuArgs):Void {})
	public function new(?mSettings:ColumnMenuArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.table.ColumnMenu with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.unified.Menu.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.table.ColumnMenu.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef ColumnMenuArgs = sap.ui.unified.Menu.MenuArgs & {
}
