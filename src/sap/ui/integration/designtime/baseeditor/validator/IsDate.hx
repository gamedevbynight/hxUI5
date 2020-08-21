package sap.ui.integration.designtime.baseeditor.validator;

@:native("sap.ui.integration.designtime.baseEditor.validator.IsDate")
extern class IsDate
{

	/**
	* Validator function
	* @param	sDateString Date string to validate
	* @return	Validation result
	*/
	public static function validate( sDateString:String):Bool;
}

