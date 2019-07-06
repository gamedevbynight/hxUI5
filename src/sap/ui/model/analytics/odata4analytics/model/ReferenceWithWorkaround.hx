package sap.ui.model.analytics.odata4analytics.model;

@:native("sap.ui.model.analytics.odata4analytics.Model.ReferenceWithWorkaround")

/**
* Handle to an already instantiated SAPUI5 OData model.
*/
extern class ReferenceWithWorkaround
{

	/**
	* 
	* @param	oModel holding a reference to the OData model, obtained by odata4analytics.Model.ReferenceByModel or by sap.odata4analytics.Model.ReferenceByURI.
	* @param	aWorkaroundID listing all workarounds to be applied.
	* @return	Object
	*/
	public function new( ?oModel:Dynamic, ?aWorkaroundID:Array<String>):Void;
}

