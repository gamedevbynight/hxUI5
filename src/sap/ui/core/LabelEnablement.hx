package sap.ui.core;

@:native("sap.ui.core.LabelEnablement")
extern class LabelEnablement
{

	/**
	* Returns an array of IDs of the labels referencing the given element.
	* @param	oElement The element whose referencing labels should be returned
	* @return	an array of ids of the labels referencing the given element
	*/
	public static function getReferencingLabels( oElement:sap.ui.core.Element):Array<String>;

	/**
	* Returns <code>true</code> when the given control is required (property 'required') or one of its referencing labels, <code>false</code> otherwise.
	* @param	oElement The element which should be checked for its required state
	* @return	<code>true</code> when the given control is required (property 'required') or one of its referencing labels, <code>false</code> otherwise
	*/
	public static function isRequired( oElement:sap.ui.core.Element):Bool;
}

