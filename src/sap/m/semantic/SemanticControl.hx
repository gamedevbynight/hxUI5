package sap.m.semantic;

@:native("sap.m.semantic.SemanticControl")

/**
* A semantic control is an abstraction for either a {@link sap.m.semantic.SemanticButton} or {@link sap.m.semantic.SemanticSelect} , eligible for aggregation content of a {@link sap.m.semantic.SemanticPage}.
*/
extern class SemanticControl extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:SemanticControlArgs):Void {})
	public function new(?mSettings:SemanticControlArgs):Void;

	/**
	* Creates a new subclass of class sap.m.semantic.SemanticControl with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.m.semantic.SemanticControl.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Implementation of a commonly used function that adapts <code>sap.ui.core.Element</code> to provide DOM reference for opening popovers.
	* @return	The DOM reference of the actual wrapped control
	*/
	public function getPopupAnchorDomRef( ):js.html.Element;

	/**
	* Gets current value of property {@link #getVisible visible}.

See {@link sap.ui.core.Control#visible}

Default value is <code>true</code>.
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

	/**
	* Sets a new value for property {@link #getVisible visible}.

See {@link sap.ui.core.Control#visible}

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisible New value for property <code>visible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisible( ?bVisible:Bool):sap.m.semantic.SemanticControl;
}

typedef SemanticControlArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* See {@link sap.ui.core.Control#visible}
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

    /**
    * The internal control instance, that is abstracted by the semantic control. Can be {@link sap.m.Button}, {@link sap.m.semantic.SemanticOverflowToolbarButton} or {@link sap.m.Select}
    */
	@:optional var _control:haxe.extern.EitherType<String,sap.ui.core.Control>;
}
