package sap.m.semantic;

@:native("sap.m.semantic.SendEmailAction")

/**
* A SendEmailAction button has default semantic-specific properties and is eligible for aggregation content of a {@link sap.m.semantic.SemanticPage}.
*/
extern class SendEmailAction extends sap.m.semantic.SemanticButton
{
	@:overload(function(?sId:String, ?mSettings:SendEmailActionArgs):Void {})
	public function new(?mSettings:SendEmailActionArgs):Void;

	/**
	* Creates a new subclass of class sap.m.semantic.SendEmailAction with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.semantic.SemanticButton.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.m.semantic.SendEmailAction.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef SendEmailActionArgs = sap.m.semantic.SemanticButton.SemanticButtonArgs & {
}
