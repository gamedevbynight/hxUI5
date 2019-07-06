package sap.ui.test.matchers;

@:native("sap.ui.test.matchers.PropertyStrictEquals")

/**
* Checks if a property has the exact same value.
*/
extern class PropertyStrictEquals extends sap.ui.test.matchers.Matcher
{

	/**
	* 
	* @param	mSettings optional map/JSON-object with initial settings for the new PropertyStrictEquals
	* @return	Object
	*/
	public function new( ?mSettings:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.test.matchers.PropertyStrictEquals with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.test.matchers.Matcher.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.test.matchers.PropertyStrictEquals.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getName name}.

The Name of the property that is used for matching.
	* @return	Value of property <code>name</code>
	*/
	public function getName( ):String;

	/**
	* Gets current value of property {@link #getValue value}.

The value of the property that is used for matching.
	* @return	Value of property <code>value</code>
	*/
	public function getValue( ):Dynamic;

	/**
	* Checks if the control has a property that matches the value
	* @param	oControl the control that is checked by the matcher
	* @return	true if the property has a strictly matching value.
	*/
	public function isMatching( oControl:sap.ui.core.Control):Bool;

	/**
	* Sets a new value for property {@link #getName name}.

The Name of the property that is used for matching.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sName New value for property <code>name</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setName( sName:String):sap.ui.test.matchers.PropertyStrictEquals;

	/**
	* Sets a new value for property {@link #getValue value}.

The value of the property that is used for matching.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oValue New value for property <code>value</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValue( oValue:Dynamic):sap.ui.test.matchers.PropertyStrictEquals;
}

