package sap.ui.model;

@:native("sap.ui.model.FormatException")

/**
* Instances of this exception are thrown when an error occurs while trying to convert a value of the model to a specific property value in the UI.
*/
extern class FormatException
{

	/**
	* 
	* @param	message Message explaining how the validation failed
	* @return	Object
	*/
	public function new( ?message:String):Void;
}

