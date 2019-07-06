package sap.ui.model;

@:native("sap.ui.model.TreeBindingUtils")
extern class TreeBindingUtils
{

	/**
	* Merges together oNewSection into a set of other sections (aSections) The array/objects are not modified, the function returns a new section array.
	* @param	aSections the sections into which oNewSection will be merged
	* @param	oNewSection the section which should be merged into aNewSections
	* @return	a new array containing all sections from aSections merged with oNewSection
	*/
	public static function mergeSections( aSections:Array<Dynamic>, oNewSection:Dynamic):Array<Dynamic>;
}

