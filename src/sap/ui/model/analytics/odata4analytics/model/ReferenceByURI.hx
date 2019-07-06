package sap.ui.model.analytics.odata4analytics.model;

@:native("sap.ui.model.analytics.odata4analytics.Model.ReferenceByURI")

/**
* Handle to an OData model by the URI pointing to it.
*/
extern class ReferenceByURI
{

	/**
	* 
	* @param	sURI holding the URI.
	* @return	Object
	*/
	public function new( ?sURI:String):Void;
}

