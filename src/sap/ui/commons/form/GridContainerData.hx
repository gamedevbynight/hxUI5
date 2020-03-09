package sap.ui.commons.form;

@:native("sap.ui.commons.form.GridContainerData")

/**
* Grid layout specific properties for FormContainers. The width and height properties of the elements are ignored since the witdh and heights are defined by the grid cells.
*/
extern class GridContainerData extends sap.ui.layout.form.GridContainerData
{
	@:overload(function(?sId:String, ?mSettings:GridContainerDataArgs):Void {})
	public function new(?mSettings:GridContainerDataArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.form.GridContainerData with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.layout.form.GridContainerData.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.commons.form.GridContainerData.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef GridContainerDataArgs = sap.ui.layout.form.GridContainerData.GridContainerDataArgs & {
}
