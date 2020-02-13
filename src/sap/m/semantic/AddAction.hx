package sap.m.semantic;

@:native("sap.m.semantic.AddAction")

/**
* An AddAction button has default semantic-specific properties and is eligible for aggregation content of a {@link sap.m.semantic.SemanticPage}.

See {@link sap.m.semantic.MasterPage#addAction}, {@link sap.m.semantic.FullscreenPage#addAction}, {@link sap.m.semantic.DetailPage#addAction}
*/
extern class AddAction extends sap.m.semantic.SemanticButton
{
	@:overload(function(?sId:String, ?mSettings:AddActionArgs):Void {})
	public function new(?mSettings:AddActionArgs):Void;

	/**
	* Creates a new subclass of class sap.m.semantic.AddAction with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.semantic.SemanticButton.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.m.semantic.AddAction.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef AddActionArgs = sap.m.semantic.SemanticButton.SemanticButtonArgs & {
}
