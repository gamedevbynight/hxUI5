package sap.ui.model;

@:native("module:sap/ui/model/FilterProcessor")
extern class FilterProcessor
{

	/**
	* Groups filters according to their path and combines filters on the same path using "OR" and filters on different paths using "AND", all multi-filters contained are ANDed.
	* @param	aFilters the filters to be grouped
	* @return	Single Filter containing all filters of the array combined or undefined
	*/
	public static function groupFilters( aFilters:Array<sap.ui.model.Filter>):sap.ui.model.Filter;
}

