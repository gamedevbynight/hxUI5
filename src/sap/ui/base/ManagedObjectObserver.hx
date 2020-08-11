package sap.ui.base;


/**
* Use the <code>ManagedObjectObserver</code> to get notified when properties, aggregations or associations of a <code>ManagedObject</code> instance have changed.

Use the {@link #observe} method to add instances of ManagedObject that should be observed or to enhance the set of observed properties, aggregations etc. for an already observed instance.

Use the {@link #unobserve} method to stop observing an instance of ManagedObject or to reduce the set of observed properties, aggregations etc. for an observed instance.

Use the {@link #disconnect} method to completely stop observing all instances of ManagedObject hat previously had been added to this observer.

The only parameter to the constructor is a function <code>fnCallback</code> which will be called for every observed change. Depending on the type of the change, different change objects are passed to the callback:

<h4>Property Change</h4> {string} change.name the name of the property that changed<br> {string} change.type 'property'<br> {object} change.object the managed object instance on which the change occurred<br> {any} change.old the old value<br> {any} change.current the new value<br>

<h4>Aggregation Change</h4> {string} change.name the name of the aggregation that changed<br> {string} change.type 'aggregation'<br> {object} change.object the managed object instance on which the change occurred<br> {any} change.mutation 'remove' or 'insert'<br> {sap.ui.base.ManagedObject} change.child the child managed object instance<br>

<h4>Association Change</h4> {string} change.name the name of the association that changed<br> {string} change.type 'association'<br> {object} change.object the managed object instance on which the change occurred<br> {any} change.mutation 'remove' or 'insert'<br> {string|string[]} change.ids the ids that changed<br>

<h4>Event Registry Change</h4> {string} change.name the name of the event that changed<br> {string} change.type 'event'<br> {object} change.object the managed object instance on which the change occurred<br> {any} change.mutation 'remove' or 'insert'<br> {object} change.listener the listener object<br> {object} change.func the listeners function<br> {object} change.data the events data<br>

<h4>Binding Change</h4> {string} change.name the name of the binding that changed<br> {string} change.type 'binding'<br> {object} change.object the managed object instance on which the change occurred<br> {any} change.mutation 'prepare', 'ready' or 'remove'<br> {object} change.bindingInfo the binding info object<br> {string} change.memberType 'property' or 'aggregation'<br>

<h4>destroy managed Object</h4> {string} change.type 'destroy'<br> {object} change.object the managed object instance on which the change occurred<br>
*/
extern class ManagedObjectObserver extends sap.ui.base.Object
{

	/**
	* Creates a new subclass of class sap.ui.base.ManagedObjectObserver with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.base.ManagedObjectObserver.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

