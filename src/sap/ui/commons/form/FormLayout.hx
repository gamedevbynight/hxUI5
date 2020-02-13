package sap.ui.commons.form;

@:native("sap.ui.commons.form.FormLayout")

/**
* Base layout for Forms. Other Layouts must inherit from this one.
*/
extern class FormLayout extends sap.ui.layout.form.FormLayout
{
	@:overload(function(?sId:String, ?mSettings:FormLayoutArgs):Void {})
	public function new(?mSettings:FormLayoutArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.form.FormLayout with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.layout.form.FormLayout.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.commons.form.FormLayout.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef FormLayoutArgs = sap.ui.layout.form.FormLayout.FormLayoutArgs & {
}
