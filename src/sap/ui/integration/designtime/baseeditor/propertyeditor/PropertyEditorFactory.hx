package sap.ui.integration.designtime.baseeditor.propertyeditor;

@:native("sap.ui.integration.designtime.baseEditor.propertyEditor.PropertyEditorFactory")
extern class PropertyEditorFactory
{

	/**
	* Creates a new <code>BasePropertyEditor</code> instance of the given editor type.
	* @param	sPropertyType Type of the property editor to create
	* @return	Promise resolving to the created editor
	*/
	public static function create( sPropertyType:String):js.lib.Promise<sap.ui.integration.designtime.baseeditor.propertyeditor.BasePropertyEditor>;

	/**
	* Deregisters all editor types and removes the loaded classes.
	* @return	Void
	*/
	public static function deregisterAllTypes( ):Void;

	/**
	* Deregisters a type and removes the loaded property editor class.
	* @param	sType Editor type to deregister
	* @return	Void
	*/
	public static function deregisterType( sType:String):Void;

	/**
	* Registers classes for the given editor types. If an editor type is already registered, it will be skipped and must first be deregistered using the <code>PropertyEditorFactory.deregisterType</code> function.
	* @param	mTypes Map containing pairs of editor type and the path to load the class from
	* @return	Resolves with a map with name and object of the registered PropertyEditors
	*/
	public static function registerTypes( mTypes:Map<String,String>):js.lib.Promise<Dynamic>;
}

