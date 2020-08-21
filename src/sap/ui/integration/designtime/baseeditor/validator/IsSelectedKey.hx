package sap.ui.integration.designtime.baseeditor.validator;

@:native("sap.ui.integration.designtime.baseEditor.validator.IsSelectedKey")
extern class IsSelectedKey
{

	/**
	* Validator function
	* @param	sValue Key to validate
	* @param	oConfig Validator config
	* @return	Validation result
	*/
	public static function validate( sValue:String, oConfig:Dynamic):Bool;
}

