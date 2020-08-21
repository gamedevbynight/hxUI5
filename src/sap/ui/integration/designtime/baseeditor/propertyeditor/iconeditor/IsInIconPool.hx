package sap.ui.integration.designtime.baseeditor.propertyeditor.iconeditor;

@:native("sap.ui.integration.designtime.baseEditor.propertyEditor.iconEditor.IsInIconPool")
extern class IsInIconPool
{
	@:overload( function(vValue:Bool):Bool{ })

	/**
	* Validator function
	* @param	vValue Value to validate
	* @return	Validation result
	*/
	public static function validate( vValue:String):Bool;
}

