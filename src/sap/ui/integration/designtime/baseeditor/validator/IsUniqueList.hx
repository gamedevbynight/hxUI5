package sap.ui.integration.designtime.baseeditor.validator;

@:native("sap.ui.integration.designtime.baseEditor.validator.IsUniqueList")
extern class IsUniqueList
{

	/**
	* Validator function
	* @param	aValue List to validate
	* @return	Validation result
	*/
	public static function validate( aValue:String):Bool;
}

