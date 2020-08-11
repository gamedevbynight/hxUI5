package sap.ui.model;

@:native("sap.ui.model.Binding")

/**
* The Binding is the object, which holds the necessary information for a data binding, like the binding path and the binding context, and acts like an interface to the model for the control, so it is the event provider for changes in the data model and provides getters for accessing properties or lists.
*/
extern class Binding extends sap.ui.base.EventProvider
{

	/**
	* 
	* @param	oModel the model
	* @param	sPath the path
	* @param	oContext the context object
	* @param	mParameters null
	* @return	Object
	*/
	public function new( ?oModel:sap.ui.model.Model, ?sPath:String, ?oContext:sap.ui.model.Context, ?mParameters:Dynamic):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:change change} event of this <code>sap.ui.model.Model</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.model.Binding</code> itself.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with, defaults to this <code>sap.ui.model.Binding</code> itself
	* @return	Void
	*/
	public function attachChange( fnFunction:()->Void, ?oListener:Dynamic):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:dataReceived dataReceived} event of this <code>sap.ui.model.Binding</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.model.Binding</code> itself.
	* @param	fnFunction Function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with, defaults to this <code>sap.ui.model.Binding</code> itself
	* @return	Void
	*/
	public function attachDataReceived( fnFunction:()->Void, ?oListener:Dynamic):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:dataRequested dataRequested} event of this <code>sap.ui.model.Binding</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.model.Binding</code> itself.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with, defaults to this <code>sap.ui.model.Binding</code> itself
	* @return	Void
	*/
	public function attachDataRequested( fnFunction:()->Void, ?oListener:Dynamic):Void;

	/**
	* Removes all control messages for this binding from the MessageManager in addition to the standard clean-up tasks.
	* @return	Void
	*/
	public function destroy( ):Void;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:change change} event of this <code>sap.ui.model.Binding</code>.
	* @param	fnFunction Function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Void
	*/
	public function detachChange( fnFunction:()->Void, ?oListener:Dynamic):Void;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:dataReceived dataReceived} event of this <code>sap.ui.model.Binding</code>.
	* @param	fnFunction Function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Void
	*/
	public function detachDataReceived( fnFunction:()->Void, ?oListener:Dynamic):Void;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:dataRequested dataRequested} event of this <code>sap.ui.model.Binding</code>.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Void
	*/
	public function detachDataRequested( fnFunction:()->Void, ?oListener:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.Binding with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.EventProvider.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns the model context in which this binding will be resolved.

If the binding path is absolute, the context is not relevant.
	* @return	Context object
	*/
	public function getContext( ):sap.ui.model.Context;

	/**
	* Returns a metadata object for class sap.ui.model.Binding.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the model to which this binding belongs.
	* @return	Model to which this binding belongs
	*/
	public function getModel( ):sap.ui.model.Model;

	/**
	* Returns the model path to which this binding binds.

<<<<<<< HEAD
Might be a relative or absolute path. If it is relative, it will be resolved relative to the context as returned by {@link #getContext}.
=======
Might be a relative or absolute path. If it is relative, it will be resolved relative to the context as returned by {@link getContext()}.
>>>>>>> bd78e88ba76c5bd0a95baa0cbb72c1713c532a11
	* @return	Binding path
	*/
	public function getPath( ):String;

	/**
	* Returns whether the binding is initial, which means it did not get an initial value yet
<<<<<<< HEAD
	* @return	Whether the binding is initial
=======
	* @return	Whether binding is initial
>>>>>>> bd78e88ba76c5bd0a95baa0cbb72c1713c532a11
	*/
	public function isInitial( ):Bool;

	/**
	* Returns whether the binding is relative, which means its path does not start with a slash ('/')
<<<<<<< HEAD
	* @return	Whether the binding is relative
=======
	* @return	Whether binding is relative
>>>>>>> bd78e88ba76c5bd0a95baa0cbb72c1713c532a11
	*/
	public function isRelative( ):Bool;

	/**
	* Returns whether the binding is resolved, which means the binding's path is absolute or the binding has a model context.
	* @return	Whether the binding is resolved
	*/
	public function isResolved( ):Bool;

	/**
	* Returns true if the binding is suspended or false if not.
<<<<<<< HEAD
	* @return	Whether the binding is suspended
=======
	* @return	Whether binding is suspended
>>>>>>> bd78e88ba76c5bd0a95baa0cbb72c1713c532a11
	*/
	public function isSuspended( ):Bool;

	/**
	* Refreshes the binding, check whether the model data has been changed and fire change event if this is the case. For server side models this should refetch the data from the server. To update a control, even if no data has been changed, e.g. to reset a control after failed validation, please use the parameter <code>bForceUpdate</code>.
	* @param	bForceUpdate Update the bound control even if no data has been changed
	* @return	Void
	*/
	public function refresh( bForceUpdate:Bool):Void;

	/**
	* Resumes the binding update. Change events will be fired again.

When the binding is resumed, a change event will be fired immediately, if the data has changed while the binding was suspended. For server-side models, a request to the server will be triggered, if a refresh was requested while the binding was suspended.
	* @return	Void
	*/
	public function resume( ):Void;

	/**
	* Suspends the binding update. No change events will be fired.

A refresh call with bForceUpdate set to true will also update the binding and fire a change in suspended mode. Special operations on bindings, which require updates to work properly (as paging or filtering in list bindings) will also update and cause a change event although the binding is suspended.
	* @return	Void
	*/
	public function suspend( ):Void;
}

