package sap.m.semantic;

@:native("sap.m.semantic.MainAction")

/**
* A MainAction button has default semantic-specific properties and is eligible for aggregation content of a {@link sap.m.semantic.SemanticPage}.
*/
extern class MainAction extends sap.m.semantic.SemanticButton
{
	@:overload(function(?sId:String, ?mSettings:MainActionArgs):Void {})
	public function new(?mSettings:MainActionArgs):Void;

	/**
	* Creates a new subclass of class sap.m.semantic.MainAction with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.semantic.SemanticButton.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.m.semantic.MainAction.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getText text}.

Button text
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Sets a new value for property {@link #getText text}.

Button text

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( sText:String):sap.m.semantic.MainAction;
}

typedef MainActionArgs = sap.m.semantic.SemanticButton.SemanticButtonArgs & {

	/**
	* Button text
	*/
	@:optional var text:String;
}
