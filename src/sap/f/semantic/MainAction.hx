package sap.f.semantic;

@:native("sap.f.semantic.MainAction")

/**
* Serves as a base class for the {@link sap.f.semantic.TitleMainAction} and {@link sap.f.semantic.FooterMainAction} controls.
*/
extern class MainAction extends sap.f.semantic.SemanticButton
{
	@:overload(function(?sId:String, ?mSettings:MainActionArgs):Void {})
	public function new(?mSettings:MainActionArgs):Void;

	/**
	* Creates a new subclass of class sap.f.semantic.MainAction with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.f.semantic.SemanticButton.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.f.semantic.MainAction.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getText text}.

Defines <code>MainAction</code> text
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Sets a new value for property {@link #getText text}.

Defines <code>MainAction</code> text

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( sText:String):sap.f.semantic.MainAction;
}

typedef MainActionArgs = sap.f.semantic.SemanticButton.SemanticButtonArgs & {

	/**
	* Defines <code>MainAction</code> text
	*/
	@:optional var text:String;
}
