package sap.ui.test.matchers;

@:native("sap.ui.test.matchers.BindingPath")

/**
* Checks if a control has a binding context with the exact same binding path.

As of version 1.60, comparison is strict and can include one or more binding criteria: <ul> <li>context path (matches children of bound controls, eg: items in a table)</li> <li>property path (matches controls with no context and a single bound property, eg: Text with binding for property text)</li> <li>context path + property path (matches children of bound controls, where the child has a binding for a certain property within the context)</li> </ul>

<b>Note:</b> Before version 1.60, the only available criteria is binding context path.

As of version 1.72, it is available as a declarative matcher with the following syntax: <code><pre>{
    bindingPath: {
        path: "string",
        modelName: "string",
        propertyPath: "string"
    }
}
</code></pre>
*/
extern class BindingPath extends sap.ui.test.matchers.Matcher
{

	/**
	* 
	* @param	mSettings Map/JSON-object with initial settings for the new BindingPath.
	* @return	Object
	*/
	public function new( ?mSettings:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.test.matchers.BindingPath with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.test.matchers.Matcher.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.test.matchers.BindingPath.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getModelName modelName}.

The name of the binding model that is used for matching.
	* @return	Value of property <code>modelName</code>
	*/
	public function getModelName( ):String;

	/**
	* Gets current value of property {@link #getPath path}.

The value of the binding context path that is used for matching.
	* @return	Value of property <code>path</code>
	*/
	public function getPath( ):String;

	/**
	* Gets current value of property {@link #getPropertyPath propertyPath}.

The value of the binding property path that is used for matching. If (context) path is also set, propertyPath will be assumed to be relative to the binding context path
	* @return	Value of property <code>propertyPath</code>
	*/
	public function getPropertyPath( ):String;

	/**
	* Checks if the control has a binding with matching path
	* @param	oControl the control that is checked by the matcher
	* @return	true if the binding values match strictly
	*/
	public function isMatching( oControl:sap.ui.core.Control):Bool;

	/**
	* Sets a new value for property {@link #getModelName modelName}.

The name of the binding model that is used for matching.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sModelName New value for property <code>modelName</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setModelName( sModelName:String):sap.ui.test.matchers.BindingPath;

	/**
	* Sets a new value for property {@link #getPath path}.

The value of the binding context path that is used for matching.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sPath New value for property <code>path</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPath( sPath:String):sap.ui.test.matchers.BindingPath;

	/**
	* Sets a new value for property {@link #getPropertyPath propertyPath}.

The value of the binding property path that is used for matching. If (context) path is also set, propertyPath will be assumed to be relative to the binding context path

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sPropertyPath New value for property <code>propertyPath</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPropertyPath( sPropertyPath:String):sap.ui.test.matchers.BindingPath;
}

