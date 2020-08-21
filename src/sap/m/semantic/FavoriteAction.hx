package sap.m.semantic;

@:native("sap.m.semantic.FavoriteAction")

/**
* A FavoriteAction button has default semantic-specific properties and is eligible for aggregation content of a {@link sap.m.semantic.SemanticPage}.
*/
extern class FavoriteAction extends sap.m.semantic.SemanticToggleButton
{
	@:overload(function(?sId:String, ?mSettings:FavoriteActionArgs):Void {})
	public function new(?mSettings:FavoriteActionArgs):Void;

	/**
	* Creates a new subclass of class sap.m.semantic.FavoriteAction with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.semantic.SemanticToggleButton.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.m.semantic.FavoriteAction.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef FavoriteActionArgs = sap.m.semantic.SemanticToggleButton.SemanticToggleButtonArgs & {
}
