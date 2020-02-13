package sap.ui.model;

@:native("sap.ui.model.FormatException")

/**
* Instances of this exception are thrown when converting a model value to its representation on the UI fails.
*/
extern class FormatException
{

	/**
	* 
	* @param	message A message explaining why the formatting of a value failed
	* @return	Object
	*/
	public function new( ?message:String):Void;
}

