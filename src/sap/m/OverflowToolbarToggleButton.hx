package sap.m;

@:native("sap.m.OverflowToolbarToggleButton")

/**
* Represents an {@link sap.m.ToggleButton} that shows its text only when in the overflow area of an {@link sap.m.OverflowToolbar}.

<b>Note:</b> This control is intended to be used exclusively in the context of the <code>OverflowToolbar</code>, whenever it is required to have buttons that show only an icon in the toolbar, but icon and text in the overflow menu.
*/
extern class OverflowToolbarToggleButton extends sap.m.ToggleButton
{
	@:overload(function(?sId:String, ?mSettings:OverflowToolbarToggleButtonArgs):Void {})
	public function new(?mSettings:OverflowToolbarToggleButtonArgs):Void;

	/**
	* Creates a new subclass of class sap.m.OverflowToolbarToggleButton with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.ToggleButton.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.m.OverflowToolbarToggleButton.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef OverflowToolbarToggleButtonArgs = sap.m.ToggleButton.ToggleButtonArgs & {
}
