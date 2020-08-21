package sap.ui.commons.form;

@:native("sap.ui.commons.form.SimpleForm")

/**
* Use the SimpleForm to create a form based on title, label and fields that are stacked in the content aggregation. Add Title to start a new FormContainer(Group). Add Label to start a new row in the container. Add Input/Display controls as needed. Use LayoutData to influence the layout for special cases in the Input/Display controls.
*/
extern class SimpleForm extends sap.ui.layout.form.SimpleForm
{
	@:overload(function(?sId:String, ?mSettings:SimpleFormArgs):Void {})
	public function new(?mSettings:SimpleFormArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.form.SimpleForm with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.layout.form.SimpleForm.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Getter for property <code>layout</code>. The FormLayout that is used to render the SimpleForm

Default value is <code>ResponsiveLayout</code>
	* @return	the value of property <code>layout</code>
	*/
	public function getLayout( ):sap.ui.commons.form.SimpleFormLayout;

	/**
	* Returns a metadata object for class sap.ui.commons.form.SimpleForm.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Setter for property <code>layout</code>.

Default value is <code>ResponsiveLayout</code>
	* @param	oLayout new value for property <code>layout</code>
	* @return	<code>this</code> to allow method chaining
	*/
	public function setLayout( oLayout:sap.ui.commons.form.SimpleFormLayout):sap.ui.commons.form.SimpleForm;
}

typedef SimpleFormArgs = sap.ui.layout.form.SimpleForm.SimpleFormArgs & {
}
