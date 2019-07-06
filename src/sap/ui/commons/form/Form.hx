package sap.ui.commons.form;

@:native("sap.ui.commons.form.Form")

/**
* Form control. Holder for form control to be rendered in a specific form layout. A Form supports VariantLayoutData for it's conent to allow a simple switching of Layouts.
*/
extern class Form extends sap.ui.layout.form.Form
{
	@:overload(function(?sId:String, ?mSettings:FormArgs):Void {})
	public function new(?mSettings:FormArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.form.Form with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.layout.form.Form.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.commons.form.Form.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Getter for property <code>visible</code>. Invisible Forms are not rendered.

Default value is <code>true</code>
	* @return	the value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

	/**
	* Setter for property <code>visible</code>.

Default value is <code>true</code>
	* @param	bVisible new value for property <code>visible</code>
	* @return	<code>this</code> to allow method chaining
	*/
	public function setVisible( bVisible:Bool):sap.ui.commons.form.Form;
}

typedef FormArgs = sap.ui.layout.form.Form.FormArgs & {
}
