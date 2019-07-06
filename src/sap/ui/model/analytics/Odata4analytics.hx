package sap.ui.model.analytics;

@:native("sap.ui.model.analytics.odata4analytics")
extern class Odata4analytics
{

	/**
	* Specify which components of the dimension shall be included in the value set.
	* @param	bIncludeText Indicator whether or not to include the dimension text (if available) in the value set.
	* @param	bIncludeAttributes Indicator whether or not to include all dimension attributes (if available) in the value set.
	* @return	Void
	*/
	public static function includeDimensionTextAttributes( bIncludeText:Bool, bIncludeAttributes:Bool):Void;
}

