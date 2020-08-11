package sap.ui.core.component;

@:native("sap.ui.core.Component.registry")
extern class Registry
{

	/**
	* Number of existing components.
	*/
	 public static var size:Int;



	/**
	* Return an object with all instances of <code>sap.ui.core.Component</code>, keyed by their ID.

Each call creates a new snapshot object. Depending on the size of the UI, this operation therefore might be expensive. Consider to use the <code>forEach</code> or <code>filter</code> method instead of executing similar operations on the returned object.

<b>Note</b>: The returned object is created by a call to <code>Object.create(null)</code>, and therefore lacks all methods of <code>Object.prototype</code>, e.g. <code>toString</code> etc.
	* @return	Object with all components, keyed by their ID
	*/
	public static function all( ):Map<sap.ui.core.ID,sap.ui.core.Component>;

	/**
	* Returns an array with components for which the given <code>callback</code> returns a value that coerces to <code>true</code>.

The expected signature of the callback is <pre>
   function callback(oComponent, sID)
</pre> where <code>oComponent</code> is the currently visited component instance and <code>sID</code> is the ID of that instance.

If components are created or destroyed within the <code>callback</code>, then the behavior is not specified. Newly added objects might or might not be visited. When a component is destroyed during the filtering and was not visited yet, it might or might not be visited. As the behavior for such concurrent modifications is not specified, it may change in newer releases.

If a <code>thisArg</code> is given, it will be provided as <code>this</code> context when calling <code>callback</code>. The <code>this</code> value that the implementation of <code>callback</code> sees, depends on the usual resolution mechanism. E.g. when <code>callback</code> was bound to some context object, that object wins over the given <code>thisArg</code>.

This function returns an array with all components matching the given predicate. The order of the components in the array is not specified and might change between calls (over time and across different versions of UI5).
	* @param	callback predicate against which each Component is tested
	* @param	thisArg context object to provide as <code>this</code> in each call of <code>callback</code>
	* @return	Array of components matching the predicate; order is undefined and might change in newer versions of UI5
	*/
	public static function filter( callback:()->Void, ?thisArg:Dynamic):Array<sap.ui.core.Component>;

	/**
	* Calls the given <code>callback</code> for each existing component.

The expected signature of the callback is <pre>
   function callback(oComponent, sID)
</pre> where <code>oComponent</code> is the currently visited component instance and <code>sID</code> is the ID of that instance.

The order in which the callback is called for components is not specified and might change between calls (over time and across different versions of UI5).

If components are created or destroyed within the <code>callback</code>, then the behavior is not specified. Newly added objects might or might not be visited. When a component is destroyed during the filtering and was not visited yet, it might or might not be visited. As the behavior for such concurrent modifications is not specified, it may change in newer releases.

If a <code>thisArg</code> is given, it will be provided as <code>this</code> context when calling <code>callback</code>. The <code>this</code> value that the implementation of <code>callback</code> sees, depends on the usual resolution mechanism. E.g. when <code>callback</code> was bound to some context object, that object wins over the given <code>thisArg</code>.
	* @param	callback Function to call for each Component
	* @param	thisArg Context object to provide as <code>this</code> in each call of <code>callback</code>
	* @return	Void
	*/
	public static function forEach( callback:()->Void, ?thisArg:Dynamic):Void;

	/**
	* Retrieves a Component by its ID.

When the ID is <code>null</code> or <code>undefined</code> or when there's no Component with the given ID, then <code>undefined</code> is returned.
	* @param	id ID of the Component to retrieve
	* @return	Component with the given ID or <code>undefined</code>
	*/
	public static function get( id:sap.ui.core.ID):Dynamic;
}

