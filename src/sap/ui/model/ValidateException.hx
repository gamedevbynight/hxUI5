package sap.ui.model;

@:native("sap.ui.model.ValidateException")

/**
* Instances of this exception are thrown when a validation error occurs while checking the defined constraints for a type.
*/
extern class ValidateException
{

	/**
	* 
	* @param	message Message explaining how the validation failed
	* @param	violatedConstraints Names of the constraints that will be violated; names should be the same as documented for the type constructor
	* @return	Object
	*/
	public function new( ?message:String, ?violatedConstraints:Array<String>):Void;
}

