package sap.ui.model;

@:native("sap.ui.model.ParseException")

/**
* Instances of this exception are thrown when converting a string value to its model representation fails.
*/
extern class ParseException
{

	/**
	* 
	* @param	message A message explaining why the parsing of a value failed; this message is language dependent as it may be displayed on the UI
	* @return	Object
	*/
	public function new( ?message:String):Void;
}

