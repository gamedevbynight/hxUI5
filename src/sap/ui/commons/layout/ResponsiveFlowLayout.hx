package sap.ui.commons.layout;

@:native("sap.ui.commons.layout.ResponsiveFlowLayout")

/**
* This is a layout where several controls can be added. These controls are blown up to fit a whole line. If the window resizes the controls are moved between the lines and resized again.
*/
extern class ResponsiveFlowLayout extends sap.ui.layout.ResponsiveFlowLayout
{
	@:overload(function(?sId:String, ?mSettings:ResponsiveFlowLayoutArgs):Void {})
	public function new(?mSettings:ResponsiveFlowLayoutArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.layout.ResponsiveFlowLayout with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.layout.ResponsiveFlowLayout.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.commons.layout.ResponsiveFlowLayout.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

typedef ResponsiveFlowLayoutArgs = sap.ui.layout.ResponsiveFlowLayout.ResponsiveFlowLayoutArgs & {
}
