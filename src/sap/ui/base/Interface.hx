package sap.ui.base;


/**
* A class whose instances act as a facade for other objects.

<b>Note:</b> If a class returns a facade in its constructor, only the defined functions will be visible, no internals of the class can be accessed.
*/
extern class Interface
{

	/**
	* 
	* @param	oObject Object for which a facade should be created
	* @param	aMethods Names of the methods, that should be available in the new facade
	* @return	Object
	*/
	public function new( ?oObject:sap.ui.base.Object, ?aMethods:Array<String>):Void;
}

