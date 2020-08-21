package sap.ui.integration.designtime.baseeditor.validator;

@:native("sap.ui.integration.designtime.baseEditor.validator.IsValidBinding")
extern class IsValidBinding
{

	/**
	* Validator function
	* @param	sValue Value to validate
	* @param	oConfig Validator config
	* @return	Validation result
	*/
	public static function validate( sValue:String, oConfig:Dynamic):Bool;
}

