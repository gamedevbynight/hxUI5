package sap.f.semantic;

@:native("sap.f.semantic.PositiveAction")

/**
* A semantic-specific button, eligible for the <code>positiveAction</code> aggregation of the {@link sap.f.semantic.SemanticPage} to be placed in its footer.
*/
extern class PositiveAction extends sap.f.semantic.SemanticButton
{
	@:overload(function(?sId:String, ?mSettings:PositiveActionArgs):Void {})
	public function new(?mSettings:PositiveActionArgs):Void;

	/**
	* Creates a new subclass of class sap.f.semantic.PositiveAction with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.f.semantic.SemanticButton.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.f.semantic.PositiveAction.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getText text}.

Defines <code>PositiveAction</code> text. <b>Note:</b> the default text is "Accept"
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Sets a new value for property {@link #getText text}.

Defines <code>PositiveAction</code> text. <b>Note:</b> the default text is "Accept"

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( ?sText:String):sap.f.semantic.PositiveAction;
}

typedef PositiveActionArgs = sap.f.semantic.SemanticButton.SemanticButtonArgs & {

	/**
	* Defines <code>PositiveAction</code> text. <b>Note:</b> the default text is "Accept"
	*/
	@:optional var text:String;
}
