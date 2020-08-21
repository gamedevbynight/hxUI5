package sap.ui.commons.form;

@:native("sap.ui.commons.form.ResponsiveLayout")

/**
* Renders a form with responsive layout. Internally the ResponsiveFlowLayout is used.
*/
extern class ResponsiveLayout extends sap.ui.layout.form.ResponsiveLayout
{
	@:overload(function(?sId:String, ?mSettings:ResponsiveLayoutArgs):Void {})
	public function new(?mSettings:ResponsiveLayoutArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.form.ResponsiveLayout with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.layout.form.ResponsiveLayout.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.ui.commons.form.ResponsiveLayout.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef ResponsiveLayoutArgs = sap.ui.layout.form.ResponsiveLayout.ResponsiveLayoutArgs & {
}
