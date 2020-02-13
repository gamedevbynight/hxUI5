package sap.ui.commons.form;

@:native("sap.ui.commons.form.FormContainer")

/**
* Used to group form elements.
*/
extern class FormContainer extends sap.ui.layout.form.FormContainer
{
	@:overload(function(?sId:String, ?mSettings:FormContainerArgs):Void {})
	public function new(?mSettings:FormContainerArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.form.FormContainer with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.layout.form.FormContainer.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.commons.form.FormContainer.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Getter for property <code>visible</code>. Invisible FormContainers are not rendered.

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
	public function setVisible( bVisible:Bool):sap.ui.commons.form.FormContainer;
}

typedef FormContainerArgs = sap.ui.layout.form.FormContainer.FormContainerArgs & {
}
