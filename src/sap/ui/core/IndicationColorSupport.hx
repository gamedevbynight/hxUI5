package sap.ui.core;

@:native("sap.ui.core.IndicationColorSupport")
extern class IndicationColorSupport
{
	@:overload( function(vValue:sap.ui.core.Element):String{ })

	/**
	* Returns a generic indication color message if the given Element has a property <code>IndicationColor</code> with one of the states or the given <code>indicationColor</code> string represents one of five states.
	* @param	vValue the Element of which the indicationColor needs to be checked, or the IndicationColor explicitly
	* @return	the indication color text, if appropriate; otherwise null
	*/
	public static function getAdditionalText( vValue:sap.ui.core.IndicationColor):String;
}

