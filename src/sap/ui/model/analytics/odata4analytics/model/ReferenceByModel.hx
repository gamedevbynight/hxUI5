package sap.ui.model.analytics.odata4analytics.model;

@:native("sap.ui.model.analytics.odata4analytics.Model.ReferenceByModel")

/**
* Handle to an already instantiated SAPUI5 OData model.
*/
extern class ReferenceByModel
{

	/**
	* 
	* @param	oModel holding the OData model.
	* @return	Object
	*/
	public function new( ?oModel:Dynamic):Void;
}

