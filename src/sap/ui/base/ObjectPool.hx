package sap.ui.base;


/**
* Manages a pool of objects all of the same type; the type has to be specified at pool construction time.

Maintains a list of free objects of the given type. If {@link sap.ui.base.ObjectPool.prototype.borrowObject} is called, an existing free object is taken from the pool and the <code>init</code> method is called on this object.

When no longer needed, any borrowed object should be returned to the pool by calling {@link #returnObject}. At that point in time, the reset method is called on the object and the object is added to the list of free objects.

See {@link sap.ui.base.Poolable} for a description of the contract for poolable objects.

Example: <pre>
  this.oEventPool = new sap.ui.base.ObjectPool(sap.ui.base.Event);
  var oEvent = this.oEventPool.borrowObject(iEventId, mParameters);
</pre>
*/
extern class ObjectPool extends sap.ui.base.Object
{

	/**
	* 
	* @param	oObjectClass constructor for the class of objects that this pool should manage
	* @return	Object
	*/
	public function new( ?oObjectClass:()->Void):Void;

	/**
	* Borrows a free object from the pool. Any arguments to this method are forwarded to the init method of the borrowed object.
	* @param	any optional initialization parameters for the borrowed object
	* @return	the borrowed object of the same type that has been specified for this pool
	*/
	public function borrowObject( ?any:Dynamic):Dynamic;

	/**
	* Creates a new subclass of class sap.ui.base.ObjectPool with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.base.ObjectPool.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns an object to the pool. The object must have been borrowed from this pool beforehand. The reset method is called on the object before it is added to the set of free objects.
	* @param	oObject the object to return to the pool
	* @return	Void
	*/
	public function returnObject( oObject:Dynamic):Void;
}

