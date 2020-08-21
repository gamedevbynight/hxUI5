package sap.m;

@:native("sap.m.UploadCollectionParameter")

/**
* Defines a structure of the element of the 'parameters' aggregation.
*/
extern class UploadCollectionParameter extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:UploadCollectionParameterArgs):Void {})
	public function new(?mSettings:UploadCollectionParameterArgs):Void;

	/**
	* Creates a new subclass of class sap.m.UploadCollectionParameter with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.m.UploadCollectionParameter.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getName name}.

Specifies the name of the parameter.
	* @return	Value of property <code>name</code>
	*/
	public function getName( ):String;

	/**
	* Gets current value of property {@link #getValue value}.

Specifies the value of the parameter.
	* @return	Value of property <code>value</code>
	*/
	public function getValue( ):String;

	/**
	* Sets a new value for property {@link #getName name}.

Specifies the name of the parameter.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sName New value for property <code>name</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setName( ?sName:String):sap.m.UploadCollectionParameter;

	/**
	* Sets a new value for property {@link #getValue value}.

Specifies the value of the parameter.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sValue New value for property <code>value</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValue( ?sValue:String):sap.m.UploadCollectionParameter;
}

typedef UploadCollectionParameterArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Specifies the name of the parameter.
	*/
	@:optional var name:String;

	/**
	* Specifies the value of the parameter.
	*/
	@:optional var value:String;
}
