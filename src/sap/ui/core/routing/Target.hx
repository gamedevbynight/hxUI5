package sap.ui.core.routing;

@:native("sap.ui.core.routing.Target")

/**
* Provides a convenient way for placing views into the correct containers of your application.

The main benefit of Targets is lazy loading: you do not have to create the views until you really need them.
*/
extern class Target extends sap.ui.base.EventProvider
{

	/**
	* 
	* @param	oOptions all of the parameters defined in {@link sap.m.routing.Targets#constructor} are accepted here, except for children you need to specify the parent.
	* @param	oCache All views required by this target will get created by the views instance using {@link sap.ui.core.routing.Views#getView}
	* @param	oParent the parent of this target. Will also get displayed, if you display this target. In the config you have the fill the children property {@link sap.m.routing.Targets#constructor}
	* @return	Object
	*/
	public function new( ?oOptions:Dynamic, ?oCache:sap.ui.core.routing.TargetCache, ?oParent:sap.ui.core.routing.Target):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:display display} event of this <code>sap.ui.core.routing.Target</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.core.routing.Target</code> itself.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.core.routing.Target</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachDisplay( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.routing.Target;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:display display} event of this <code>sap.ui.core.routing.Target</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachDisplay( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.routing.Target;

	/**
	* Creates a view and puts it in an aggregation of a control that has been defined in the {@link sap.ui.core.routing.Target#constructor}.
	* @param	vData an object that will be passed to the display event in the data property. If the target has parents, the data will also be passed to them.
	* @return	resolves with {name: *, view: *, control: *} if the target can be successfully displayed otherwise it resolves with {name: *, error: *}
	*/
	public function display( ?vData:Dynamic):js.lib.Promise<Target>;

	/**
	* Creates a new subclass of class sap.ui.core.routing.Target with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.EventProvider.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.core.routing.Target.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

