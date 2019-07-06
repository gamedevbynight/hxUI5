package sap.ui.core;

@:native("sap.ui.core.ValueStateSupport")
extern class ValueStateSupport
{

	/**
	* Appends a generic success, warning or error message to the given tooltip text if the given Element has a property "valueState" with one of these three states.
	* @param	oElement the Element of which the tooltip needs to be modified
	* @param	sTooltipText the original tooltip text (may be null)
	* @return	the given text, with appended success/warning/error text, if appropriate
	*/
	public static function enrichTooltip( oElement:sap.ui.core.Element, sTooltipText:String):String;

	/**
	* Returns a ValueState object based on the given integer value

0 : ValueState.None 1 : ValueState.Warning 2 : ValueState.Success 3 : ValueState.Error 4 : ValueState.Information
	* @param	iState the state as an integer
	* @return	the corresponding ValueState object
	*/
	public static function formatValueState( iState:Int):sap.ui.core.ValueState;
	@:overload( function(vValue:sap.ui.core.Element):String{ })

	/**
	* Returns a generic success, warning or error message if the given Element has a property "valueState" with one of these three states or the given ValueState represents one of these states.
	* @param	vValue the Element of which the valueState needs to be checked, or the ValueState explicitly
	* @return	the success/warning/error text, if appropriate; otherwise null
	*/
	public static function getAdditionalText( vValue:sap.ui.core.ValueState):String;
}

