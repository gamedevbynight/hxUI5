package sap.ui.test.matchers;

@:native("sap.ui.test.matchers.LabelFor")

/**
* The LabelFor matcher checks if a given control has a label associated with it. For every Label on the page, the matcher checks if: <ul> <li> its labelFor association is to the given control </li> <li> its properties match a condition </li> </ul> Labels can be matched by: <ul> <li> text </li> <li> i18n key, modelName, parameters or propertyName. See {@link sap.ui.test.matchers.I18NText} </li> <li> combination of text and key is not possible </li> </ul> Some control types cannot be in a labelFor association: <ul> <li> sap.ui.comp.navpopover.SmartLink </li> <li> sap.m.Link </li> <li> sap.m.Label </li> <li> sap.m.Text </li> </ul>

As of version 1.72, it is available as a declarative matcher with the following syntax: <code><pre>{
    labelFor: {
        text: "string",
        modelName: "string",
        key: "string",
        parameters: "any",
        propertyName: "string"
    }
}
</code></pre>
*/
extern class LabelFor extends sap.ui.test.matchers.Matcher
{

	/**
	* 
	* @param	mSettings optional map/JSON-object with initial settings for the new LabelFor
	* @return	Object
	*/
	public function new( ?mSettings:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.test.matchers.LabelFor with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.test.matchers.Matcher.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getKey key}.

The key of the I18N text in the containing {@link module:sap/base/i18n/ResourceBundle}.
	* @return	Value of property <code>key</code>
	*/
	public function getKey( ):String;

	/**
	* Returns a metadata object for class sap.ui.test.matchers.LabelFor.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.ManagedObjectMetadata;

	/**
	* Gets current value of property {@link #getModelName modelName}.

The name of the {@link sap.ui.model.resource.ResourceModel} assigned to the control.

Default value is <code>i18n</code>.
	* @return	Value of property <code>modelName</code>
	*/
	public function getModelName( ):String;

	/**
	* Gets current value of property {@link #getParameters parameters}.

The parameters for replacing the placeholders of the I18N text. See {@link module:sap/base/i18n/ResourceBundle#getText}.
	* @return	Value of property <code>parameters</code>
	*/
	public function getParameters( ):Dynamic;

	/**
	* Gets current value of property {@link #getPropertyName propertyName}.

The name of the control property to match the I18N text with.

Default value is <code>text</code>.
	* @return	Value of property <code>propertyName</code>
	*/
	public function getPropertyName( ):String;

	/**
	* Gets current value of property {@link #getText text}.

The text of the {@link sap.m.Label} which have the labelFor property.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Checks for control with labelFor property annotating other control
	* @param	oControl the control that is checked by the matcher
	* @return	true if the Control has a label that matches the criteria
	*/
	public function isMatching( oControl:sap.ui.core.Control):Bool;

	/**
	* Sets a new value for property {@link #getKey key}.

The key of the I18N text in the containing {@link module:sap/base/i18n/ResourceBundle}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sKey New value for property <code>key</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setKey( sKey:String):sap.ui.test.matchers.LabelFor;

	/**
	* Sets a new value for property {@link #getModelName modelName}.

The name of the {@link sap.ui.model.resource.ResourceModel} assigned to the control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>i18n</code>.
	* @param	sModelName New value for property <code>modelName</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setModelName( ?sModelName:String):sap.ui.test.matchers.LabelFor;

	/**
	* Sets a new value for property {@link #getParameters parameters}.

The parameters for replacing the placeholders of the I18N text. See {@link module:sap/base/i18n/ResourceBundle#getText}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oParameters New value for property <code>parameters</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setParameters( oParameters:Dynamic):sap.ui.test.matchers.LabelFor;

	/**
	* Sets a new value for property {@link #getPropertyName propertyName}.

The name of the control property to match the I18N text with.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>text</code>.
	* @param	sPropertyName New value for property <code>propertyName</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPropertyName( ?sPropertyName:String):sap.ui.test.matchers.LabelFor;

	/**
	* Sets a new value for property {@link #getText text}.

The text of the {@link sap.m.Label} which have the labelFor property.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( sText:String):sap.ui.test.matchers.LabelFor;
}

