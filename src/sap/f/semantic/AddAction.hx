package sap.f.semantic;

@:native("sap.f.semantic.AddAction")

/**
* A semantic-specific button, eligible for the <code>addAction</code> aggregation of the {@link sap.f.semantic.SemanticPage} to be placed in its title.
*/
extern class AddAction extends sap.f.semantic.SemanticButton
{
	@:overload(function(?sId:String, ?mSettings:AddActionArgs):Void {})
	public function new(?mSettings:AddActionArgs):Void;

	/**
	* Creates a new subclass of class sap.f.semantic.AddAction with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.f.semantic.SemanticButton.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.f.semantic.AddAction.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef AddActionArgs = sap.f.semantic.SemanticButton.SemanticButtonArgs & {
}
