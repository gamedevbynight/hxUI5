package sap.ui.model.analytics;

@:native("sap.ui.model.analytics.AnalyticalTreeBindingAdapter")

/**
* null
*/
extern class AnalyticalTreeBindingAdapter
{

	/**
	* Checks if the AnalyticalBinding has totaled measures available. Used for rendering sum rows.
	* @return	Whether the binding has totaled measures or not
	*/
	public function hasTotaledMeasures( ):Bool;
}

