package sap.f.dnd;

@:native("sap.f.dnd.GridDropInfo")

/**
* Provides enhanced configuration for drop operations inside grid-based controls.

If drop position is <code>Between</code> and drop layout is <code>Horizontal</code>, this drop configuration will provide enhanced visualization and interaction, better suited for grid items. It will show a drop indicator which mimics the size of the dragged item and shows the potential drop position inside the grid. The indicator will push away other grid items, showing the correct arrangement calculated by the grid’s auto-placement algorithm.

When position is different than <code>Between</code> or layout is not <code>Horizontal</code>, the drag and drop will look and behave like the general <code>{@link sap.ui.core.dnd.DropInfo}</code>.

<b>Note:</b> This configuration might be ignored due to control {@link sap.ui.core.Element.extend metadata} restrictions.
*/
extern class GridDropInfo extends sap.ui.core.dnd.DropInfo implements sap.ui.core.dnd.IDropInfo
{
	@:overload(function(?sId:String, ?mSettings:GridDropInfoArgs):Void {})
	public function new(?mSettings:GridDropInfoArgs):Void;

	/**
	* Creates a new subclass of class sap.f.dnd.GridDropInfo with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.dnd.DropInfo.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.f.dnd.GridDropInfo.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

typedef GridDropInfoArgs = sap.ui.core.dnd.DropInfo.DropInfoArgs & {
}
