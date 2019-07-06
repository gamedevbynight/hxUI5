package sap.f.semantic;

@:native("sap.f.semantic.DiscussInJamAction")

/**
* A semantic-specific button, eligible for the <code>discussInJamAction</code> aggregation of the {@link sap.f.semantic.SemanticPage} to be placed in the share menu within its title.
*/
extern class DiscussInJamAction extends sap.f.semantic.SemanticButton
{
	@:overload(function(?sId:String, ?mSettings:DiscussInJamActionArgs):Void {})
	public function new(?mSettings:DiscussInJamActionArgs):Void;

	/**
	* Creates a new subclass of class sap.f.semantic.DiscussInJamAction with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.f.semantic.SemanticButton.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.f.semantic.DiscussInJamAction.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

typedef DiscussInJamActionArgs = sap.f.semantic.SemanticButton.SemanticButtonArgs & {
}
