package sap.tnt;

@:native("sap.tnt.ToolHeaderUtilitySeparator")

/**
* The ToolHeaderUtilitySeparator control is used in the sap.tnt.ToolHeader control to specify where the overflow button is placed.
*/
extern class ToolHeaderUtilitySeparator extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ToolHeaderUtilitySeparatorArgs):Void {})
	public function new(?mSettings:ToolHeaderUtilitySeparatorArgs):Void;

	/**
	* Creates a new subclass of class sap.tnt.ToolHeaderUtilitySeparator with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.tnt.ToolHeaderUtilitySeparator.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef ToolHeaderUtilitySeparatorArgs = sap.ui.core.Control.ControlArgs & {
}
