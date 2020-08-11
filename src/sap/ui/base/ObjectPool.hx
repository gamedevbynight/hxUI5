package sap.ui.base;

@:native("sap.ui.base.ObjectPool")

/**
* Manages a pool of objects for reuse, all of the same type; the type has to be specified at construction time.

Each pool maintains a list of free objects of the given type. If {@link sap.ui.base.ObjectPool.prototype.borrowObject} is called, an existing free object is taken from the pool. When no free object is available, a new instance is created by calling the constructor without any arguments. In either case, the {@link sap.ui.base.Poolable#init} method is called on the object to initialize it with the data for the current caller.

When the object is no longer needed, it has to be returned to the pool by calling {@link #returnObject}. At that point in time, {@link sap.ui.base.Poolable#reset} is called on the object to remove all data from it. Then it is is added back to the list of free objects for future reuse.

See {@link sap.ui.base.Poolable} for a description of the contract for poolable objects.

Example: <pre>
  sap.ui.define([
    "sap/ui/base/Event",
    "sap/ui/base/ObjectPool"
  ], function(Event, ObjectPool) {

    // create a pool for events
    var oEventPool = new ObjectPool(Event);

    ...

    // borrow an instance and initialize it at the same time
    var oEvent = oEventPool.borrowObject('myEvent', this, {foo: 'bar'});
    // this internally calls oEvent.init('myEvent', this, {foo: 'bar'})

    // return the borrowed object
    oEventPool.returnObject(oEvent);
    // this internally calls oEvent.reset()

    ...

  }});
</pre>
*/
extern class ObjectPool extends sap.ui.base.Object
{

	/**
	* 
	* @param	oObjectClass Constructor for the class of objects that this pool should manage
	* @return	Object
	*/
	public function new( ?oObjectClass:()->Void):Void;

	/**
	* Borrows a free object from the pool. Any arguments to this method are forwarded to the init method of the borrowed object.
	* @param	arg optional initialization parameters for the borrowed object
	* @return	The borrowed object of the same type that has been specified for this pool
	*/
	public function borrowObject( ?arg:Dynamic):Dynamic;

	/**
	* Creates a new subclass of class sap.ui.base.ObjectPool with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
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
	* @param	oObject The object to return to the pool
	* @return	Void
	*/
	public function returnObject( oObject:Dynamic):Void;
}

