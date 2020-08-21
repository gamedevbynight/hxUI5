package sap.f.semantic;

@:native("sap.f.semantic.FlagAction")

/**
* A semantic-specific button, eligible for the <code>flagAction</code> aggregation of the {@link sap.f.semantic.SemanticPage} to be placed in its title.
*/
extern class FlagAction extends sap.f.semantic.SemanticToggleButton
{
	@:overload(function(?sId:String, ?mSettings:FlagActionArgs):Void {})
	public function new(?mSettings:FlagActionArgs):Void;

	/**
	* Creates a new subclass of class sap.f.semantic.FlagAction with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.f.semantic.SemanticToggleButton.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.f.semantic.FlagAction.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef FlagActionArgs = sap.f.semantic.SemanticToggleButton.SemanticToggleButtonArgs & {
}
