package sap.ui.integration.designtime.baseeditor.validator;

@:native("sap.ui.integration.designtime.baseEditor.validator.IsInteger")
extern class IsInteger
{
	@:overload( function(vValue:String):Bool{ })

	/**
	* Validator function
	* @param	vValue Value to validate
	* @return	Validation result
	*/
	public static function validate( vValue:String):Bool;
}

