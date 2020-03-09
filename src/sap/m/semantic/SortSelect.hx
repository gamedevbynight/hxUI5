package sap.m.semantic;

@:native("sap.m.semantic.SortSelect")

/**
* A SortSelect is a {@link sap.m.Select} control enhanced with styling according to the semantics of a common "Sort" acton.

A SortSelect cannot be used independently but only as aggregation content of a {@link sap.m.semantic.SemanticPage}.

The sorting options should be added to the <code>items</code> aggregation of {@link sap.m.semantic.SortSelect} and will be displayed as a pop-up list with support for single-item selection. If this simple popup list is not sufficient for your use case, you can implement your own custom dialog by using {@link sap.m.semantic.SortAction} to trigger the dialog opening.
*/
extern class SortSelect extends sap.m.semantic.SemanticSelect implements sap.m.semantic.ISort
{
	@:overload(function(?sId:String, ?mSettings:SortSelectArgs):Void {})
	public function new(?mSettings:SortSelectArgs):Void;

	/**
	* Creates a new subclass of class sap.m.semantic.SortSelect with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.semantic.SemanticSelect.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.m.semantic.SortSelect.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef SortSelectArgs = sap.m.semantic.SemanticSelect.SemanticSelectArgs & {
}
