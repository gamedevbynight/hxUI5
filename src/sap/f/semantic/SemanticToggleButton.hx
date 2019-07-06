package sap.f.semantic;

@:native("sap.f.semantic.SemanticToggleButton")

/**
* A base class for the {@link sap.f.semantic.FavoriteAction} and {@link sap.f.semantic.FlagAction}.
*/
extern class SemanticToggleButton extends sap.f.semantic.SemanticButton
{
	@:overload(function(?sId:String, ?mSettings:SemanticToggleButtonArgs):Void {})
	public function new(?mSettings:SemanticToggleButtonArgs):Void;

	/**
	* Creates a new subclass of class sap.f.semantic.SemanticToggleButton with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.f.semantic.SemanticButton.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.f.semantic.SemanticToggleButton.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getPressed pressed}.

Defines the <code>SemanticToggleButton</code> pressed state.

The property is set to <code>true</code> when the control is toggled (default is <code>false</code>).

Default value is <code>false</code>.
	* @return	Value of property <code>pressed</code>
	*/
	public function getPressed( ):Bool;

	/**
	* Sets a new value for property {@link #getPressed pressed}.

Defines the <code>SemanticToggleButton</code> pressed state.

The property is set to <code>true</code> when the control is toggled (default is <code>false</code>).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bPressed New value for property <code>pressed</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPressed( bPressed:Bool):sap.f.semantic.SemanticToggleButton;
}

typedef SemanticToggleButtonArgs = sap.f.semantic.SemanticButton.SemanticButtonArgs & {

	/**
	* Defines the <code>SemanticToggleButton</code> pressed state.

The property is set to <code>true</code> when the control is toggled (default is <code>false</code>).
	*/
	@:optional var pressed:haxe.extern.EitherType<String,Bool>;
}