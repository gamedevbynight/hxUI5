package sap.ui.test.actions;

@:native("sap.ui.test.actions.Action")

/**
* Actions for Opa5 - needs to implement an executeOn function that should simulate a user interaction on a control
*/
extern class Action extends sap.ui.base.ManagedObject
{
public function new():Void;

	/**
	* Creates a new subclass of class sap.ui.test.actions.Action with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.ManagedObject.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getIdSuffix idSuffix}.

Use this only if the target property or the default of the action does not work for your control. The id suffix of the DOM Element the press action will be executed on. For most of the controls you do not have to specify this, since the Control Adapters will find the correct DOM Element. But some controls have multiple DOM elements that could be target of your Action. Then you should set this property. For a detailed documentation of the suffix see {@link sap.ui.core.Element#$}
	* @return	Value of property <code>idSuffix</code>
	*/
	public function getIdSuffix( ):String;

	/**
	* Returns a metadata object for class sap.ui.test.actions.Action.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.ManagedObjectMetadata;

	/**
	* Sets a new value for property {@link #getIdSuffix idSuffix}.

Use this only if the target property or the default of the action does not work for your control. The id suffix of the DOM Element the press action will be executed on. For most of the controls you do not have to specify this, since the Control Adapters will find the correct DOM Element. But some controls have multiple DOM elements that could be target of your Action. Then you should set this property. For a detailed documentation of the suffix see {@link sap.ui.core.Element#$}

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIdSuffix New value for property <code>idSuffix</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIdSuffix( sIdSuffix:String):sap.ui.test.actions.Action;
}

