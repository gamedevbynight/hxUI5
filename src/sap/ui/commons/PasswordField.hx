package sap.ui.commons;

@:native("sap.ui.commons.PasswordField")

/**
* A text field with masked characters which borrows its properties and methods from TextField.
*/
extern class PasswordField extends sap.ui.commons.TextField
{
	@:overload(function(?sId:String, ?mSettings:PasswordFieldArgs):Void {})
	public function new(?mSettings:PasswordFieldArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.PasswordField with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.commons.TextField.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.commons.PasswordField.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef PasswordFieldArgs = sap.ui.commons.TextField.TextFieldArgs & {
}
