package sap.uxap;

@:native("sap.uxap.ModelMapping")

/**
* Defines the entity that will be passed to the {@link sap.uxap.ObjectPageLayout}.
*/
extern class ModelMapping extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:ModelMappingArgs):Void {})
	public function new(?mSettings:ModelMappingArgs):Void;

	/**
	* Creates a new subclass of class sap.uxap.ModelMapping with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getExternalModelName externalModelName}.

Determines the external model name.
	* @return	Value of property <code>externalModelName</code>
	*/
	public function getExternalModelName( ):String;

	/**
	* Gets current value of property {@link #getExternalPath externalPath}.

Determines the external path.
	* @return	Value of property <code>externalPath</code>
	*/
	public function getExternalPath( ):String;

	/**
	* Gets current value of property {@link #getInternalModelName internalModelName}.

Determines the internal model name.

Default value is <code>Model</code>.
	* @return	Value of property <code>internalModelName</code>
	*/
	public function getInternalModelName( ):String;

	/**
	* Returns a metadata object for class sap.uxap.ModelMapping.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Sets a new value for property {@link #getExternalModelName externalModelName}.

Determines the external model name.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sExternalModelName New value for property <code>externalModelName</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setExternalModelName( sExternalModelName:String):sap.uxap.ModelMapping;

	/**
	* Sets a new value for property {@link #getExternalPath externalPath}.

Determines the external path.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sExternalPath New value for property <code>externalPath</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setExternalPath( sExternalPath:String):sap.uxap.ModelMapping;

	/**
	* Sets a new value for property {@link #getInternalModelName internalModelName}.

Determines the internal model name.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Model</code>.
	* @param	sInternalModelName New value for property <code>internalModelName</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInternalModelName( sInternalModelName:String):sap.uxap.ModelMapping;
}

typedef ModelMappingArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Determines the external model name.
	*/
	@:optional var externalModelName:String;

	/**
	* Determines the internal model name.
	*/
	@:optional var internalModelName:String;

	/**
	* Determines the external path.
	*/
	@:optional var externalPath:String;
}
