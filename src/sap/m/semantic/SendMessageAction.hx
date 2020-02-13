package sap.m.semantic;

@:native("sap.m.semantic.SendMessageAction")

/**
* A SendMessageAction button has default semantic-specific properties and is eligible for aggregation content of a {@link sap.m.semantic.SemanticPage}.
*/
extern class SendMessageAction extends sap.m.semantic.SemanticButton
{
	@:overload(function(?sId:String, ?mSettings:SendMessageActionArgs):Void {})
	public function new(?mSettings:SendMessageActionArgs):Void;

	/**
	* Creates a new subclass of class sap.m.semantic.SendMessageAction with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.semantic.SemanticButton.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.m.semantic.SendMessageAction.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef SendMessageActionArgs = sap.m.semantic.SemanticButton.SemanticButtonArgs & {
}
