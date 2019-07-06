package sap.f.semantic;

@:native("sap.f.semantic.CloseAction")

/**
* A semantic-specific button, eligible for the <code>closeAction</code> aggregation of the {@link sap.f.semantic.SemanticPage} to be placed in its title.
*/
extern class CloseAction extends sap.f.semantic.SemanticButton
{
	@:overload(function(?sId:String, ?mSettings:CloseActionArgs):Void {})
	public function new(?mSettings:CloseActionArgs):Void;

	/**
	* Creates a new subclass of class sap.f.semantic.CloseAction with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.f.semantic.SemanticButton.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.f.semantic.CloseAction.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

typedef CloseActionArgs = sap.f.semantic.SemanticButton.SemanticButtonArgs & {
}
