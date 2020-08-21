package sap.ui.integration.designtime.baseeditor.validator;

@:native("sap.ui.integration.designtime.baseEditor.validator.NotABinding")
extern class NotABinding
{

	/**
	* Validator function
	* @param	sValue Value to validate
	* @return	Validation result
	*/
	public static function validate( sValue:String):Bool;
}

