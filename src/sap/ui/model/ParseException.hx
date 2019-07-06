package sap.ui.model;

@:native("sap.ui.model.ParseException")

/**
* Instances of this exception are thrown when an error occurs while converting a string value to a specific property type in the model.
*/
extern class ParseException
{

	/**
	* 
	* @param	message Message explaining how the validation failed
	* @return	Object
	*/
	public function new( ?message:String):Void;
}

