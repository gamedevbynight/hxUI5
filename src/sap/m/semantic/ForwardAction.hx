package sap.m.semantic;

@:native("sap.m.semantic.ForwardAction")

/**
* A ForwardAction button has default semantic-specific properties and is eligible for aggregation content of a {@link sap.m.semantic.SemanticPage}.
*/
extern class ForwardAction extends sap.m.semantic.SemanticButton
{
	@:overload(function(?sId:String, ?mSettings:ForwardActionArgs):Void {})
	public function new(?mSettings:ForwardActionArgs):Void;

	/**
	* Creates a new subclass of class sap.m.semantic.ForwardAction with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.semantic.SemanticButton.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.m.semantic.ForwardAction.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef ForwardActionArgs = sap.m.semantic.SemanticButton.SemanticButtonArgs & {
}
