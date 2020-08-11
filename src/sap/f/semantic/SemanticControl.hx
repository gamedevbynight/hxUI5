package sap.f.semantic;

@:native("sap.f.semantic.SemanticControl")

/**
* The base class for the {@link sap.f.semantic.SemanticButton}.
*/
extern class SemanticControl extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:SemanticControlArgs):Void {})
	public function new(?mSettings:SemanticControlArgs):Void;

	/**
	* Creates a new subclass of class sap.f.semantic.SemanticControl with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.f.semantic.SemanticControl.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getVisible visible}.

Determines whether the <code>SemanticControl</code> is visible.

Default value is <code>true</code>.
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

	/**
	* Sets a new value for property {@link #getVisible visible}.

Determines whether the <code>SemanticControl</code> is visible.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisible New value for property <code>visible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisible( ?bVisible:Bool):sap.f.semantic.SemanticControl;
}

typedef SemanticControlArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Determines whether the <code>SemanticControl</code> is visible.
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

    /**
    * Hidden aggregation.
    */
	@:optional var _control:haxe.extern.EitherType<String,sap.ui.core.Control>;
}
