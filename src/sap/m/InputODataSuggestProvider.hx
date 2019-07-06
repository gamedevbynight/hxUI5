package sap.m;

@:native("sap.m.InputODataSuggestProvider")
extern class InputODataSuggestProvider
{

	/**
	* null
	* @param	oEvent null
	* @param	bResolveInput SuggestProvider resolves all input parameters for the data query
	* @param	bResolveOutput SuggestProvider writes back all output parameters.
	* @param	iLength If iLength is provided only these number of entries will be requested.
	* @return	Void
	*/
	public static function suggest( oEvent:sap.ui.base.Event, bResolveInput:Bool, bResolveOutput:Bool, iLength:Int):Void;
}

