package sap.ui.model;

@:native("sap.ui.model.Model")

/**
* This is an abstract base class for model objects.
*/
extern class Model extends sap.ui.core.message.MessageProcessor
{
public function new():Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:parseError parseError} event of this <code>sap.ui.model.Model</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.model.Model</code> itself.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.model.Model</code> itself.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachParseError( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.Model;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:propertyChange propertyChange} event of this <code>sap.ui.model.Model</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.model.Model</code> itself.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.model.Model</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPropertyChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.Model;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:requestCompleted requestCompleted} event of this <code>sap.ui.model.Model</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.model.Model</code> itself.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.model.Model</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachRequestCompleted( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.Model;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:requestFailed requestFailed} event of this <code>sap.ui.model.Model</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.model.Model</code> itself.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.model.Model</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachRequestFailed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.Model;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:requestSent requestSent} event of this <code>sap.ui.model.Model</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.model.Model</code> itself.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.model.Model</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachRequestSent( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.Model;
	@:overload( function(sPath:String, ?oContext:Dynamic, ?mParameters:Dynamic, ?oEvents:Dynamic):sap.ui.model.ContextBinding{ })

	/**
	* Create ContextBinding.
	* @param	sPath the path pointing to the property that should be bound or an object which contains the following parameter properties: path, context, parameters
	* @param	oContext the context object for this databinding (optional)
	* @param	mParameters additional model specific parameters (optional)
	* @param	oEvents event handlers can be passed to the binding ({change:myHandler})
	* @return	null
	*/
	public function bindContext( sPath:Dynamic, ?oContext:Dynamic, ?mParameters:Dynamic, ?oEvents:Dynamic):sap.ui.model.ContextBinding;

	/**
	* Implement in inheriting classes.
	* @param	sPath the path pointing to the list / array that should be bound
	* @param	oContext the context object for this databinding (optional)
	* @param	aSorters initial sort order (can be either a sorter or an array of sorters) (optional)
	* @param	aFilters predefined filter/s (can be either a filter or an array of filters) (optional)
	* @param	mParameters additional model specific parameters (optional)
	* @return	null
	*/
	public function bindList( sPath:String, ?oContext:Dynamic, ?aSorters:sap.ui.model.Sorter, ?aFilters:Array<Dynamic>, ?mParameters:Dynamic):sap.ui.model.ListBinding;

	/**
	* Implement in inheriting classes.
	* @param	sPath the path pointing to the property that should be bound
	* @param	oContext the context object for this databinding (optional)
	* @param	mParameters additional model specific parameters (optional)
	* @return	null
	*/
	public function bindProperty( sPath:String, ?oContext:Dynamic, ?mParameters:Dynamic):sap.ui.model.PropertyBinding;

	/**
	* Implement in inheriting classes.
	* @param	sPath the path pointing to the tree / array that should be bound
	* @param	oContext the context object for this databinding (optional)
	* @param	aFilters predefined filter/s contained in an array (optional)
	* @param	mParameters additional model specific parameters (optional)
	* @param	aSorters predefined sap.ui.model.sorter/s contained in an array (optional)
	* @return	null
	*/
	public function bindTree( sPath:String, ?oContext:Dynamic, ?aFilters:Array<Dynamic>, ?mParameters:Dynamic, ?aSorters:Array<Dynamic>):sap.ui.model.TreeBinding;

	/**
	* Implement in inheriting classes.
	* @param	sPath the path to create the new context from
	* @param	oContext the context which should be used to create the new binding context
	* @param	mParameters the parameters used to create the new binding context
	* @param	fnCallBack the function which should be called after the binding context has been created
	* @param	bReload force reload even if data is already available. For server side models this should refetch the data from the server
	* @return	the binding context, if it could be created synchronously
	*/
	public function createBindingContext( sPath:String, ?oContext:Dynamic, ?mParameters:Dynamic, ?fnCallBack:()->Void, ?bReload:Bool):sap.ui.model.Context;

	/**
	* Destroys the model and clears the model data.

A model implementation may override this function and perform model specific cleanup tasks e.g. abort requests, prevent new requests, etc.
	* @return	Void
	*/
	public function destroy( ):Void;

	/**
	* Implement in inheriting classes.
	* @param	oContext to destroy
	* @return	Void
	*/
	public function destroyBindingContext( oContext:Dynamic):Void;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:parseError parseError} event of this <code>sap.ui.model.Model</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachParseError( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.Model;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:propertyChange propertyChange} event of this <code>sap.ui.model.Model</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPropertyChange( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.Model;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:requestCompleted requestCompleted} event of this <code>sap.ui.model.Model</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachRequestCompleted( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.Model;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:requestFailed requestFailed} event of this <code>sap.ui.model.Model</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachRequestFailed( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.Model;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:requestSent requestSent} event of this <code>sap.ui.model.Model</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachRequestSent( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.Model;

	/**
	* Creates a new subclass of class sap.ui.model.Model with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.message.MessageProcessor.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Get the default binding mode for the model.
	* @return	Default binding mode of the model
	*/
	public function getDefaultBindingMode( ):sap.ui.model.BindingMode;

	/**
	* Returns a metadata object for class sap.ui.model.Model.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the meta model associated with this model if it is available for the concrete model type.
	* @return	The meta model or <code>undefined</code> if no meta model exists.
	*/
	public function getMetaModel( ):sap.ui.model.MetaModel;

	/**
	* Implement in inheriting classes.
	* @param	sPath Path to where to read the object
	* @param	oContext Context with which the path should be resolved
	* @param	mParameters Additional model specific parameters
	* @return	The value for the given path/context or <code>undefined</code> if data could not be found
	*/
	public function getObject( sPath:String, ?oContext:Dynamic, ?mParameters:Dynamic):Dynamic;

	/**
	* Returns the original value for the property with the given path and context.

The original value is the value that was last responded by a server if using a server model implementation.
	* @param	sPath Path/name of the property
	* @param	oContext Context if available to access the property value
	* @return	vValue The value of the property
	*/
	public function getOriginalProperty( sPath:String, ?oContext:Dynamic):Dynamic;

	/**
	* Implement in inheriting classes.
	* @param	sPath the path to where to read the attribute value
	* @param	oContext the context with which the path should be resolved
	* @return	Void
	*/
	public function getProperty( sPath:String, ?oContext:Dynamic):Void;

	/**
	* Check if the specified binding mode is supported by the model.
	* @param	sMode The binding mode to check
	* @return	Void
	*/
	public function isBindingModeSupported( sMode:sap.ui.model.BindingMode):Void;

	/**
	* Returns whether legacy path syntax is used.
	* @return	null
	*/
	public function isLegacySyntax( ):Bool;

	/**
	* Refresh the model.

This will check all bindings for updated data and update the controls if data has been changed.
	* @param	bForceUpdate Update controls even if data has not been changed
	* @return	Void
	*/
	public function refresh( bForceUpdate:Bool):Void;

	/**
	* Set the default binding mode for the model.

If the default binding mode should be changed, this method should be called directly after model instance creation and before any binding creation. Otherwise it is not guaranteed that the existing bindings will be updated with the new binding mode.
	* @param	sMode The default binding mode to set for the model
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDefaultBindingMode( sMode:sap.ui.model.BindingMode):sap.ui.model.Model;

	/**
	* Enables legacy path syntax handling.

This defines, whether relative bindings, which do not have a defined binding context, should be compatible to earlier releases which means they are resolved relative to the root element or handled strict and stay unresolved until a binding context is set.
	* @param	bLegacySyntax The path syntax to use
	* @return	Void
	*/
	public function setLegacySyntax( bLegacySyntax:Bool):Void;

	/**
	* Sets messages.
	* @param	mMessages Messages for this model
	* @return	Void
	*/
	public function setMessages( mMessages:Dynamic):Void;

	/**
	* Set the maximum number of entries which are used for list bindings.

The default size limit for models is 100.
	* @param	iSizeLimit Collection size limit
	* @return	Void
	*/
	public function setSizeLimit( iSizeLimit:Int):Void;
}

