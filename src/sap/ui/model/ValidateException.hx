package sap.ui.model;

@:native("sap.ui.model.ValidateException")

/**
* Instances of this exception are thrown when constraints of a type are violated.
*/
extern class ValidateException
{

	/**
	* 
	* @param	message A message explaining why the validation failed; this message is language dependent as it may be displayed on the UI
	* @param	violatedConstraints Names of the constraints that are violated; the names should be the same as documented in the type's constructor
	* @return	Object
	*/
	public function new( ?message:String, ?violatedConstraints:Array<String>):Void;
}

