package sap.ui.core.routing;

@:native("sap.ui.core.routing.Targets")

/**
* Provides a convenient way for placing views into the correct containers of your application.

The main benefit of <code>Targets</code> is lazy loading: you do not have to create the views until you really need them. If you are using the mobile library, please use {@link sap.m.routing.Targets} instead of this class.
*/
extern class Targets extends sap.ui.base.EventProvider
{

	/**
	* 
	* @param	oOptions null
	* @return	Object
	*/
	public function new( ?oOptions:Dynamic):Void;

	/**
	* Creates a target by using the given name and options.

If there's already a target with the same name, the existing target is not overwritten and an error log will be written to the console.
	* @param	sName Name of a target
	* @param	oTarget Options of a target. The option names are the same as the ones in "oOptions.targets.anyName" of {@link #constructor}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addTarget( sName:String, oTarget:Dynamic):sap.ui.core.routing.Targets;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:display display} event of this <code>sap.ui.core.routing.Targets</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.core.routing.Targets</code> itself.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.core.routing.Targets</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachDisplay( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.routing.Targets;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:titleChanged titleChanged} event of this <code>sap.ui.core.routing.Targets</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.core.routing.Targets</code> itself.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.core.routing.Targets</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachTitleChanged( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.routing.Targets;

	/**
	* Destroys the targets instance and all created targets. Does not destroy the views instance passed to the constructor. It has to be destroyed separately.
	* @return	this for chaining.
	*/
	public function destroy( ):sap.ui.core.routing.Targets;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:display display} event of this <code>sap.ui.core.routing.Targets</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachDisplay( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.routing.Targets;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:titleChanged titleChanged} event of this <code>sap.ui.core.routing.Targets</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachTitleChanged( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.routing.Targets;
	@:overload( function(vTargets:String, ?oData:Dynamic, ?sTitleTarget:String):Dynamic{ })

	/**
	* Creates a view and puts it in an aggregation of the specified control.
	* @param	vTargets Key of the target as specified in the {@link #constructor}. To display multiple targets you may also pass an array of keys.
	* @param	oData an object that will be passed to the display event in the data property. If the target has parents, the data will also be passed to them.
	* @param	sTitleTarget the name of the target from which the title option is taken for firing the {@link sap.ui.core.routing.Targets#event:titleChanged titleChanged} event
	* @return	this pointer for chaining or a Promise
	*/
	public function display( vTargets:Array<String>, ?oData:Dynamic, ?sTitleTarget:String):Dynamic;

	/**
	* Creates a new subclass of class sap.ui.core.routing.Targets with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.EventProvider.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Fires event {@link #event:created created} to attached listeners.
	* @param	oParameters Parameters to pass along with the event
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function fireDisplay( ?oParameters:Dynamic):sap.ui.core.routing.Targets;

	/**
	* Returns a metadata object for class sap.ui.core.routing.Targets.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
	@:overload( function(vName:String):Dynamic{ })

	/**
	* Returns a target by its name (if you pass myTarget: { view: "myView" }) in the config myTarget is the name.
	* @param	vName the name of a single target or the name of multiple targets
	* @return	The target with the coresponding name or undefined. If an array way passed as name this will return an array with all found targets. Non existing targets will not be returned but will log an error.
	*/
	public function getTarget( vName:Array<String>):Dynamic;

	/**
	* Returns the views instance passed to the constructor
	* @return	the views instance
	*/
	public function getViews( ):sap.ui.core.routing.Views;
}

