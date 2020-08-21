package sap.m;

@:native("sap.m.VBox")

/**
* The VBox control builds the container for a vertical flexible box layout. VBox is a convenience control, as it is just a specialized FlexBox control.<br> <br> <b>Note:</b> Be sure to check the <code>renderType</code> setting to avoid issues due to browser inconsistencies.
*/
extern class VBox extends sap.m.FlexBox
{
	@:overload(function(?sId:String, ?mSettings:VBoxArgs):Void {})
	public function new(?mSettings:VBoxArgs):Void;

	/**
	* Creates a new subclass of class sap.m.VBox with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.FlexBox.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.m.VBox.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef VBoxArgs = sap.m.FlexBox.FlexBoxArgs & {
}
