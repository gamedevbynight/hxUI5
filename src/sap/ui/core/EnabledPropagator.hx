package sap.ui.core;

@:native("sap.ui.core.EnabledPropagator")

/**
* Helper Class for enhancement of a Control with propagation of enabled property.
*/
extern class EnabledPropagator
{

	/**
	* 
	* @param	bDefault the value that should be used as default value for the enhancement of the control.
	* @param	bLegacy whether the introduced property should use the old name 'Enabled'
	* @return	Object
	*/
	public function new( ?bDefault:Bool, ?bLegacy:Bool):Void;
}

