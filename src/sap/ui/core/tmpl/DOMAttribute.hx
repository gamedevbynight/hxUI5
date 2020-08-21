package sap.ui.core.tmpl;

@:native("sap.ui.core.tmpl.DOMAttribute")

/**
* Represents a DOM attribute of a DOM element.
*/
extern class DOMAttribute extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:DOMAttributeArgs):Void {})
	public function new(?mSettings:DOMAttributeArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.core.tmpl.DOMAttribute with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.ui.core.tmpl.DOMAttribute.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getName name}.

Name of the DOM attribute
	* @return	Value of property <code>name</code>
	*/
	public function getName( ):String;

	/**
	* Gets current value of property {@link #getValue value}.

Value of the DOM attribute
	* @return	Value of property <code>value</code>
	*/
	public function getValue( ):String;

	/**
	* Sets a new value for property {@link #getName name}.

Name of the DOM attribute

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sName New value for property <code>name</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setName( ?sName:String):sap.ui.core.tmpl.DOMAttribute;

	/**
	* Sets a new value for property {@link #getValue value}.

Value of the DOM attribute

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sValue New value for property <code>value</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValue( ?sValue:String):sap.ui.core.tmpl.DOMAttribute;
}

typedef DOMAttributeArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Name of the DOM attribute
	*/
	@:optional var name:String;

	/**
	* Value of the DOM attribute
	*/
	@:optional var value:String;
}
