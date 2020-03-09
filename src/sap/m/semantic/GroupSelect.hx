package sap.m.semantic;

@:native("sap.m.semantic.GroupSelect")

/**
* A GroupSelect is a {@link sap.m.Select} control enhanced with styling according to the semantics of a common "Group" acton.

A GroupSelect cannot be used independently but only as aggregation content of a {@link sap.m.semantic.SemanticPage}.

The grouping options should be added to the <code>items</code> aggregation of {@link sap.m.semantic.GroupSelect} and will be displayed as a pop-up list with support for single-item selection. If this simple popup list is not sufficient for your use case, you can implement your own custom dialog by using {@link sap.m.semantic.GroupAction} to trigger the dialog opening.
*/
extern class GroupSelect extends sap.m.semantic.SemanticSelect implements sap.m.semantic.IGroup
{
	@:overload(function(?sId:String, ?mSettings:GroupSelectArgs):Void {})
	public function new(?mSettings:GroupSelectArgs):Void;

	/**
	* Creates a new subclass of class sap.m.semantic.GroupSelect with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.semantic.SemanticSelect.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.m.semantic.GroupSelect.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef GroupSelectArgs = sap.m.semantic.SemanticSelect.SemanticSelectArgs & {
}
