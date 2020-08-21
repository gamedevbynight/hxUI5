package sap.ui.integration.designtime.baseeditor.validator;

@:native("sap.ui.integration.designtime.baseEditor.validator.IsStringList")
extern class IsStringList
{

	/**
	* Validator function
	* @param	aValue Strings to validate
	* @return	Validation result
	*/
	public static function validate( aValue:Array<String>):Bool;
}

