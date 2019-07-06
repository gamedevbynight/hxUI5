package sap.m.semantic;

@:native("sap.m.semantic.SortAction")

/**
* A SortAction is a {@link sap.m.Button} control enhanced with styling according to the semantics of a common "Sort" action.

A SortAction cannot be used independently but only as aggregation content of a {@link sap.m.semantic.SemanticPage}.

Your app should listen to the <code>press</code> event of {@link sap.m.semantic.SortAction} in order to trigger the display of the sorting options.

If your sorting options are a simple list of items and require single choice only, then you can consider using a {@link sap.m.semantic.SortSelect} instead.
*/
extern class SortAction extends sap.m.semantic.SemanticButton implements sap.m.semantic.ISort
{
	@:overload(function(?sId:String, ?mSettings:SortActionArgs):Void {})
	public function new(?mSettings:SortActionArgs):Void;

	/**
	* Creates a new subclass of class sap.m.semantic.SortAction with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.semantic.SemanticButton.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.m.semantic.SortAction.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

typedef SortActionArgs = sap.m.semantic.SemanticButton.SemanticButtonArgs & {
}
