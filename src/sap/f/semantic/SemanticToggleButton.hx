package sap.f.semantic;

@:native("sap.f.semantic.SemanticToggleButton")

/**
* A base class for the {@link sap.f.semantic.FavoriteAction} and {@link sap.f.semantic.FlagAction}.
*/
extern class SemanticToggleButton extends sap.m.semantic.SemanticToggleButton
{
	@:overload(function(?sId:String, ?mSettings:SemanticToggleButtonArgs):Void {})
	public function new(?mSettings:SemanticToggleButtonArgs):Void;

	/**
	* Creates a new subclass of class sap.f.semantic.SemanticToggleButton with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.semantic.SemanticToggleButton.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.f.semantic.SemanticToggleButton.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef SemanticToggleButtonArgs = sap.m.semantic.SemanticToggleButton.SemanticToggleButtonArgs & {
}
