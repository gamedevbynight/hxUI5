package sap.ui.integration.designtime.baseeditor.validator;

@:native("sap.ui.integration.designtime.baseEditor.validator.ValidatorRegistry")
extern class ValidatorRegistry
{

	/**
	* Deregisters all validators.
	* @return	Void
	*/
	public static function deregisterAllValidators( ):Void;

	/**
	* Deregisters the given validator type and cancels the loading.
	* @param	sName Validator type to deregister
	* @return	Void
	*/
	public static function deregisterValidators( sName:String):Void;

	/**
	* Returns the validator for the given type if it was loaded.
	* @param	sName Validator type
	* @return	Validator
	*/
	public static function getValidator( sName:String):Dynamic;

	/**
	* Checks whether the given validator type was registered but not loaded yet.
	* @param	sName Validator type
	* @return	Whether the validator was registered
	*/
	public static function isRegistered( sName:String):Bool;

	/**
	* Ready check to make sure that all registered validators were loaded.
	* @return	Promise which resolves when all validators are ready
	*/
	public static function ready( ):js.lib.Promise<ValidatorRegistry>;

	/**
	* Registers the given validator types. If a validator type is already registered, it will be skipped and must first be deregistered using the <code>ValidatorRegistry.deregisterValidator</code> function.
	* @param	mNames Validator types and paths to register
	* @return	Void
	*/
	public static function registerValidators( mNames:object<string,string>):Void;
}

