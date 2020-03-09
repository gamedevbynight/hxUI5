package sap.m.semantic;

@:native("sap.m.semantic.FilterSelect")

/**
* A FilterSelect is a {@link sap.m.Select} control enhanced with styling according to the semantics of a common "Filter" acton.

A FilterSelect cannot be used independently but only as aggregation content of a {@link sap.m.semantic.SemanticPage}.

The filtering options should be added to the <code>items</code> aggregation of {@link sap.m.semantic.FilterSelect} and will be displayed as a pop-up list with support for single-item selection. If this simple popup list is not sufficient for your use case, you can implement your own custom dialog by using {@link sap.m.semantic.FilterAction} to trigger the dialog opening.
*/
extern class FilterSelect extends sap.m.semantic.SemanticSelect implements sap.m.semantic.IFilter
{
	@:overload(function(?sId:String, ?mSettings:FilterSelectArgs):Void {})
	public function new(?mSettings:FilterSelectArgs):Void;

	/**
	* Creates a new subclass of class sap.m.semantic.FilterSelect with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.semantic.SemanticSelect.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.m.semantic.FilterSelect.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef FilterSelectArgs = sap.m.semantic.SemanticSelect.SemanticSelectArgs & {
}
