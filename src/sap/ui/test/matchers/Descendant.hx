package sap.ui.test.matchers;

@:native("sap.ui.test.matchers.Descendant")

/**
* Checks if a control has a given descendant.
*/
extern class Descendant
{
	@:overload( function(?vDescendantControl:Dynamic, ?bDirect:Bool):Void{ })

	/**
	* 
	* @param	vDescendantControl The descendant control to check. If undefined, it validates every control to true. Can be a control or a control ID
	* @param	bDirect specifies if the descendant should be a direct child
	* @return	Object
	*/
	public function new( ?vDescendantControl:String, ?bDirect:Bool):Void;
}

