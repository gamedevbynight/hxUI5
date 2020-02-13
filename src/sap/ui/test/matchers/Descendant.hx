package sap.ui.test.matchers;

@:native("sap.ui.test.matchers.Descendant")

/**
* Checks if a control has a given descendant.

As of version 1.72, it is available as a declarative matcher with the following syntax: <code><pre>{
    descendant: "object" // where "object" is a declarative matcher for the descendant
}
</code></pre>
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

