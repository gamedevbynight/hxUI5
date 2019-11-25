package sap.ui.test.matchers;

@:native("sap.ui.test.matchers.Ancestor")

/**
* Checks if a control has a defined ancestor.

As of version 1.72, it is available as a declarative matcher with the following syntax: <code><pre>{
    ancestor: "object" // where "object" is a declarative matcher for the ancestor
}
</code></pre>
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

