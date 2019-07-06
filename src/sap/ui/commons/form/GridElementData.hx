package sap.ui.commons.form;

@:native("sap.ui.commons.form.GridElementData")

/**
* The grid specific layout data for FormElement fields. The width property of the elements is ignored since the width is defined by grid cells.
*/
extern class GridElementData extends sap.ui.layout.form.GridElementData
{
	@:overload(function(?sId:String, ?mSettings:GridElementDataArgs):Void {})
	public function new(?mSettings:GridElementDataArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.form.GridElementData with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.layout.form.GridElementData.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.commons.form.GridElementData.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

typedef GridElementDataArgs = sap.ui.layout.form.GridElementData.GridElementDataArgs & {
}
