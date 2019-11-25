package sap.ui.test.matchers;

@:native("sap.ui.test.matchers.I18NText")

/**
* The I18NText matcher checks if a control property has the same value as a text from an I18N file.

The matcher automatically: <ul> <li> retrieves the text from the assigned 'i18n' model (name can be changed) </li> <li> checks that the I18N key does actually exist in the file </li> <li> checks if asynchronously loaded I18N have actually been loaded </li> </ul>

As of version 1.72, it is available as a declarative matcher with the following syntax: <code><pre>{
    i18NText: {
        propertyName: "string",
        key: "string",
        parameters: "any",
        modelName: "string"
    }
}
</code></pre>
*/
extern class I18NText extends sap.ui.test.matchers.Matcher
{

	/**
	* 
	* @param	mSettings optional map/JSON-object with initial settings for the new I18NText
	* @return	Object
	*/
	public function new( ?mSettings:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.test.matchers.I18NText with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.test.matchers.Matcher.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getKey key}.

The key of the I18N text in the containing {@link jQuery.sap.util.ResourceBundle}.
	* @return	Value of property <code>key</code>
	*/
	public function getKey( ):String;

	/**
	* Returns a metadata object for class sap.ui.test.matchers.I18NText.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getModelName modelName}.

The name of the {@link sap.ui.model.resource.ResourceModel} assigned to the control.

Default value is <code>i18n</code>.
	* @return	Value of property <code>modelName</code>
	*/
	public function getModelName( ):String;

	/**
	* Gets current value of property {@link #getParameters parameters}.

The parameters for replacing the placeholders of the I18N text. See {@link jQuery.sap.util.ResourceBundle#getText}.
	* @return	Value of property <code>parameters</code>
	*/
	public function getParameters( ):Dynamic;

	/**
	* Gets current value of property {@link #getPropertyName propertyName}.

The name of the control property to match the I18N text with.
	* @return	Value of property <code>propertyName</code>
	*/
	public function getPropertyName( ):String;

	/**
	* Checks if the control has a property that matches the I18N text
	* @param	oControl the control that is checked by the matcher
	* @return	true if the property has a strictly matching value.
	*/
	public function isMatching( oControl:sap.ui.core.Control):Bool;

	/**
	* Sets a new value for property {@link #getKey key}.

The key of the I18N text in the containing {@link jQuery.sap.util.ResourceBundle}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sKey New value for property <code>key</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setKey( sKey:String):sap.ui.test.matchers.I18NText;

	/**
	* Sets a new value for property {@link #getModelName modelName}.

The name of the {@link sap.ui.model.resource.ResourceModel} assigned to the control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>i18n</code>.
	* @param	sModelName New value for property <code>modelName</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setModelName( sModelName:String):sap.ui.test.matchers.I18NText;

	/**
	* Sets a new value for property {@link #getParameters parameters}.

The parameters for replacing the placeholders of the I18N text. See {@link jQuery.sap.util.ResourceBundle#getText}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oParameters New value for property <code>parameters</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setParameters( oParameters:Dynamic):sap.ui.test.matchers.I18NText;

	/**
	* Sets a new value for property {@link #getPropertyName propertyName}.

The name of the control property to match the I18N text with.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sPropertyName New value for property <code>propertyName</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPropertyName( sPropertyName:String):sap.ui.test.matchers.I18NText;
}

