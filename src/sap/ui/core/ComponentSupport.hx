package sap.ui.core;

@:native("module:sap/ui/core/ComponentSupport")
extern class ComponentSupport
{

	/**
	* Find all DOM elements with the attribute <code>data-sap-ui-component</code> and parse the attributes from these DOM elements for the settings of the <code>ComponentContainer</code> which will be placed into these DOM elements.

This function is called automatically once the module has been required.
	* @return	Void
	*/
	public static function run( ):Void;
}

