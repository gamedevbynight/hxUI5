package sap.ui.integration.designtime.baseeditor.validator;

@:native("sap.ui.integration.designtime.baseEditor.validator.IsBoolean")
extern class IsBoolean
{
	@:overload( function(vValue:Bool):Bool{ })

	/**
	* Validator function
	* @param	vValue Value to validate
	* @return	Validation result
	*/
	public static function validate( vValue:String):Bool;
}

