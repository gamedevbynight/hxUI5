package sap.m;

@:native("sap.m.ToolbarSeparator")

/**
* Creates a visual separator (theme dependent: padding, margin, line) between the preceding and succeeding {@link sap.m.Toolbar} item.
*/
extern class ToolbarSeparator extends sap.ui.core.Control implements sap.m.IOverflowToolbarContent
{
	@:overload(function(?sId:String, ?mSettings:ToolbarSeparatorArgs):Void {})
	public function new(?mSettings:ToolbarSeparatorArgs):Void;

	/**
	* Creates a new subclass of class sap.m.ToolbarSeparator with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.m.ToolbarSeparator.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Sets the behavior of the <code>ToolbarSeparator</code> inside an <code>OverflowToolbar</code> configuration.
	* @return	Configuration information for the <code>sap.m.IOverflowToolbarContent</code> interface.
	*/
	public function getOverflowToolbarConfig( ):Dynamic;
}

typedef ToolbarSeparatorArgs = sap.ui.core.Control.ControlArgs & {
}
