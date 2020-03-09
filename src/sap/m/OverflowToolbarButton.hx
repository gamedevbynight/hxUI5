package sap.m;

@:native("sap.m.OverflowToolbarButton")

/**
* Represents an {@link sap.m.Button} that shows its text only when in the overflow area of an {@link sap.m.OverflowToolbar}.

<b>Note:</b> This control is intended to be used exclusively in the context of the <code>OverflowToolbar</code>, whenever it is required to have buttons that show only an icon in the toolbar, but icon and text in the overflow menu.
*/
extern class OverflowToolbarButton extends sap.m.Button implements sap.f.IShellBar
{
	@:overload(function(?sId:String, ?mSettings:OverflowToolbarButtonArgs):Void {})
	public function new(?mSettings:OverflowToolbarButtonArgs):Void;

	/**
	* Creates a new subclass of class sap.m.OverflowToolbarButton with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.Button.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.m.OverflowToolbarButton.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef OverflowToolbarButtonArgs = sap.m.Button.ButtonArgs & {
}
