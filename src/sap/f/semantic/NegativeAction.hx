package sap.f.semantic;

@:native("sap.f.semantic.NegativeAction")

/**
* A semantic-specific button, eligible for the <code>negativeAction</code> aggregation of the {@link sap.f.semantic.SemanticPage} to be placed in its footer.
*/
extern class NegativeAction extends sap.f.semantic.SemanticButton
{
	@:overload(function(?sId:String, ?mSettings:NegativeActionArgs):Void {})
	public function new(?mSettings:NegativeActionArgs):Void;

	/**
	* Creates a new subclass of class sap.f.semantic.NegativeAction with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.f.semantic.SemanticButton.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.f.semantic.NegativeAction.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getText text}.

Defines <code>NegativeAction</code> text. <b>Note:</b> the default text is "Reject"
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Sets a new value for property {@link #getText text}.

Defines <code>NegativeAction</code> text. <b>Note:</b> the default text is "Reject"

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( sText:String):sap.f.semantic.NegativeAction;
}

typedef NegativeActionArgs = sap.f.semantic.SemanticButton.SemanticButtonArgs & {

	/**
	* Defines <code>NegativeAction</code> text. <b>Note:</b> the default text is "Reject"
	*/
	@:optional var text:String;
}
