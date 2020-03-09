package sap.ui.model;

@:native("sap.ui.model.CompositeBinding")

/**
* Combines multiple property bindings (called 'parts') into a single one.

A <code>CompositeBinding</code> combines the values from all its binding parts (each an instance of <code>PropertyBinding</code>), either by calling a formatter function or by involving a {@link sap.ui.model.CompositeType composite type}. When a formatter function is used, then the composite binding is automatically limited to <code>OneWay</code> mode. When a type is used, the binding can also operate in <code>TwoWay</code> mode.

Higher layers of the framework derive composite bindings from easy-to-write string representations (the following features require complex binding syntax, e.g. <code>data-sap-ui-bindingSyntax="complex"</code>):

XML views, for example, convert attribute values with nested curly braces like <pre>
  text="{fullname} &amp;lt;{email}&amp;gt;"
</pre> into a composite binding with two parts (one property binding for property "fullname" and one for property "email") and with a generic formatter function that injects the values of the parts into the string literal "{0} &lt;{1}&gt;" accordingly.

Similarly, {@link topic:daf6852a04b44d118963968a1239d2c0 expression bindings} are parsed and converted into composite bindings, too. The formatter function is created by the framework and executes the calculations as defined by the expression string, taking the values from the binding parts as input.

<b>Note:</b> A nesting of composite bindings is currently not supported (albeit being helpful).
*/
extern class CompositeBinding extends sap.ui.model.PropertyBinding
{
public function new():Void;

	/**
	* Creates a new subclass of class sap.ui.model.CompositeBinding with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.PropertyBinding.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns the property bindings contained in this composite binding.
	* @return	the property bindings in this composite binding
	*/
	public function getBindings( ):Array<Dynamic>;

	/**
	* Returns the current external value of the bound target which is formatted via a type or formatter function.
	* @return	the current value of the bound target
	*/
	public function getExternalValue( ):Dynamic;

	/**
	* Returns the current internal value of the bound target which is an array of the internal (JS native) values of nested bindings
	* @return	the current values of the nested bindings
	*/
	public function getInternalValue( ):Array<Dynamic>;

	/**
	* Returns a metadata object for class sap.ui.model.CompositeBinding.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the current raw value of the bound target which is an array of the raw (model) values of nested bindings
	* @return	the current values of the nested bindings
	*/
	public function getRawValue( ):Array<Dynamic>;

	/**
	* Returns the raw values of the property bindings in an array.
	* @return	the values of the internal property bindings in an array
	*/
	public function getValue( ):Dynamic;

	/**
	* Suspends the binding update. No change events will be fired.

A refresh call with bForceUpdate set to true will also update the binding and fire a change in suspended mode. Special operations on bindings, which require updates to work properly (as paging or filtering in list bindings) will also update and cause a change event although the binding is suspended.
	* @return	Void
	*/
	public function resume( ):Void;

	/**
	* Sets the external value of a composite binding. If no CompositeType is assigned to the binding, the default implementation assumes a space separated list of values. This will cause the setValue to be called for each nested binding, except for undefined values in the array.
	* @param	oValue the value to set for this binding
	* @return	Void
	*/
	public function setExternalValue( oValue:Dynamic):Void;

	/**
	* Sets the internal value of the bound target. Parameter must be an array of values matching the internal (JS native) types of nested bindings.
	* @param	aValues the new values of the nested bindings
	* @return	Void
	*/
	public function setInternalValue( aValues:Array<Dynamic>):Void;

	/**
	* Sets the raw value of the bound target. Parameter must be an array of values matching the raw (model) types of nested bindings.
	* @param	aValues the new values of the nested bindings
	* @return	Void
	*/
	public function setRawValue( aValues:Array<Dynamic>):Void;

	/**
	* Sets the optional type and internal type for the binding. The type and internal type are used to do the parsing/formatting correctly. The internal type is the property type of the element which the value is formatted to.
	* @param	oType the type for the binding
	* @param	sInternalType the internal type of the element property which this binding is bound against.
	* @return	Void
	*/
	public function setType( oType:sap.ui.model.CompositeType, sInternalType:String):Void;

	/**
	* Sets the values. This will cause the setValue to be called for each nested binding, except for undefined values in the array.
	* @param	aValues the values to set for this binding
	* @return	Void
	*/
	public function setValue( aValues:Array<Dynamic>):Void;

	/**
	* Suspends the binding update. No change events will be fired.

A refresh call with bForceUpdate set to true will also update the binding and fire a change in suspended mode. Special operations on bindings, which require updates to work properly (as paging or filtering in list bindings) will also update and cause a change event although the binding is suspended.
	* @return	Void
	*/
	public function suspend( ):Void;
}

