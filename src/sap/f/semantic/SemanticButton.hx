package sap.f.semantic;

@:native("sap.f.semantic.SemanticButton")

/**
* A base class for the available semantic actions, such as {@link sap.f.semantic.AddAction AddAction}, {@link sap.f.semantic.CloseAction CloseAction}, etc.
*/
extern class SemanticButton extends sap.m.semantic.SemanticButton
{
	@:overload(function(?sId:String, ?mSettings:SemanticButtonArgs):Void {})
	public function new(?mSettings:SemanticButtonArgs):Void;

	/**
	* Creates a new subclass of class sap.f.semantic.SemanticButton with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.semantic.SemanticButton.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.f.semantic.SemanticButton.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
<<<<<<< HEAD
=======

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Determines whether the <code>SemanticButton</code> is enabled.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( bEnabled:Bool):sap.f.semantic.SemanticButton;
>>>>>>> bd78e88ba76c5bd0a95baa0cbb72c1713c532a11
}

typedef SemanticButtonArgs = sap.m.semantic.SemanticButton.SemanticButtonArgs & {
}
