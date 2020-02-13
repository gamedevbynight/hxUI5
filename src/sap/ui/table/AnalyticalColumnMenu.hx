package sap.ui.table;

@:native("sap.ui.table.AnalyticalColumnMenu")

/**
* A column menu which is used by the analytical column
*/
extern class AnalyticalColumnMenu extends sap.ui.table.ColumnMenu
{
	@:overload(function(?sId:String, ?mSettings:AnalyticalColumnMenuArgs):Void {})
	public function new(?mSettings:AnalyticalColumnMenuArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.table.AnalyticalColumnMenu with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.table.ColumnMenu.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.table.AnalyticalColumnMenu.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef AnalyticalColumnMenuArgs = sap.ui.table.ColumnMenu.ColumnMenuArgs & {
}
