package sap.ui.integration.designtime.baseeditor.validator;

@:native("sap.ui.integration.designtime.baseEditor.validator.IsUniqueKey")
extern class IsUniqueKey
{

	/**
	* Validator function
	* @param	sValue New key value to validate
	* @param	oConfig Validator config
	* @return	Validation result
	*/
	public static function validate( sValue:String, oConfig:Dynamic):Bool;
}

