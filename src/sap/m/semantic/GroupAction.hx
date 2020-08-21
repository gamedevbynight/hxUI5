package sap.m.semantic;

@:native("sap.m.semantic.GroupAction")

/**
* A GroupAction is a {@link sap.m.Button} control enhanced with styling according to the semantics of a common "Group" action.

A GroupAction cannot be used independently but only as aggregation content of a {@link sap.m.semantic.SemanticPage}.

Your app should listen to the <code>press</code> event of {@link sap.m.semantic.GroupAction} in order to trigger the display of the grouping options.

If your grouping options are a simple list of items and require single choice only, then you can consider using a {@link sap.m.semantic.GroupSelect} instead.
*/
extern class GroupAction extends sap.m.semantic.SemanticButton implements sap.m.semantic.IGroup
{
	@:overload(function(?sId:String, ?mSettings:GroupActionArgs):Void {})
	public function new(?mSettings:GroupActionArgs):Void;

	/**
	* Creates a new subclass of class sap.m.semantic.GroupAction with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.semantic.SemanticButton.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.m.semantic.GroupAction.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef GroupActionArgs = sap.m.semantic.SemanticButton.SemanticButtonArgs & {
}
