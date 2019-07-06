package sap.ui.test.matchers;

@:native("sap.ui.test.matchers.Ancestor")

/**
* Checks if a control has a defined ancestor.
*/
extern class Ancestor
{
	@:overload( function(?vAncestor:Dynamic, ?bDirect:Bool):Void{ })

	/**
	* 
	* @param	vAncestor the ancestor control to check, if undefined, validates every control to true. Can be a control or a control ID
	* @param	bDirect specifies if the ancestor should be a direct ancestor (parent)
	* @return	Object
	*/
	public function new( ?vAncestor:String, ?bDirect:Bool):Void;
}

