package sap.ui.model;

@:native("sap.ui.model.PropertyBinding")

/**
* The PropertyBinding is used to access single data values in the data model.
*/
extern class PropertyBinding extends sap.ui.model.Binding
{

	/**
	* 
	* @param	oModel null
	* @param	sPath null
	* @param	oContext null
	* @param	mParameters null
	* @return	Object
	*/
	public function new( ?oModel:sap.ui.model.Model, ?sPath:String, ?oContext:sap.ui.model.Context, ?mParameters:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.PropertyBinding with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.Binding.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns the binding mode
	* @return	the binding mode
	*/
	public function getBindingMode( ):sap.ui.model.BindingMode;

	/**
	* Returns the current external value of the bound target which is formatted via a type or formatter function.
	* @return	the current value of the bound target
	*/
	public function getExternalValue( ):Dynamic;

	/**
	* Returns the formatter function
	* @return	the formatter function
	*/
	public function getFormatter( ):()->Void;

	/**
	* Returns the related JavaScript primitive value of the bound target which is parsed by the {@link sap.ui.model.SimpleType#getModelFormat model format} of this binding's type. If this binding doesn't have a type, the original value which is stored in the model is returned.

This method will be used when targetType if set to "internal" or it's included in a {@link sap.ui.model.CompositeBinding CompositeBinding} and the CompositeBinding needs to have the related JavaScript primitive values for its type or formatter.
	* @return	the value which is parsed by the model format of the bound target or the original value in case of no type.
	*/
	public function getInternalValue( ):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.model.PropertyBinding.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the raw model value, as it exists in the model dataset

This method will be used when targetType of a binding is set to "raw" or it's included in a {@link sap.ui.model.CompositeBinding CompositeBinding} and the CompositeBinding needs to have the related JavaScript primitive values for its type or formatter.
	* @return	the value which is parsed by the model format of the bound target or the original value in case of no type.
	*/
	public function getRawValue( ):Dynamic;

	/**
	* Returns the type if any for the binding.
	* @return	the binding type
	*/
	public function getType( ):sap.ui.model.Type;

	/**
	* Returns the current value of the bound target
	* @return	the current value of the bound target
	*/
	public function getValue( ):Dynamic;

	/**
	* Resumes the binding update. Change events will be fired again.

When the binding is resumed and the control value was changed in the meantime, the control value will be set to the current value from the model and a change event will be fired.
	* @return	Void
	*/
	public function resume( ):Void;

	/**
	* Sets the value for this binding. The value is parsed and validated against its type and then set to the binding. A model implementation should check if the current default binding mode permits setting the binding value and if so set the new value also in the model.
	* @param	vValue the value to set for this binding
	* @return	a Promise in case asynchronous parsing/validation is done
	*/
	public function setExternalValue( vValue:Dynamic):Dynamic;

	/**
	* Sets the optional formatter function for the binding.
	* @param	fnFormatter the formatter function for the binding
	* @return	Void
	*/
	public function setFormatter( fnFormatter:()->Void):Void;

	/**
	* Sets the value for this binding with the related JavaScript primitive type. The value is formatted with the {@link sap.ui.model.SimpleType#getModelFormat model format} and validated against its type and then set to the model.
	* @param	vValue the value to set for this binding
	* @return	Void
	*/
	public function setInternalValue( vValue:Dynamic):Void;

	/**
	* Sets the value for this binding with the raw model value. This setter will perform type validation, in case a type is defined on the binding.
	* @param	vValue the value to set for this binding
	* @return	Void
	*/
	public function setRawValue( vValue:Dynamic):Void;

	/**
	* Sets the optional type and internal type for the binding. The type and internal type are used to do the parsing/formatting correctly. The internal type is the property type of the element which the value is formatted to.
	* @param	oType the type for the binding
	* @param	sInternalType the internal type of the element property which this binding is bound against.
	* @return	Void
	*/
	public function setType( oType:sap.ui.model.Type, sInternalType:String):Void;

	/**
	* Sets the value for this binding. A model implementation should check if the current default binding mode permits setting the binding value and if so set the new value also in the model.
	* @param	vValue the value to set for this binding
	* @return	Void
	*/
	public function setValue( vValue:Dynamic):Void;
}

