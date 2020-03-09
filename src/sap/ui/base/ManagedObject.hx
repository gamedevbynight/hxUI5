package sap.ui.base;


/**
* Base Class that introduces some basic concepts, such as, state management and data binding.

New subclasses of ManagedObject are created with a call to {@link #.extend ManagedObject.extend} and can make use of the following managed features:

<h3>Properties</h3> Managed properties represent the state of a ManagedObject. They can store a single value of a simple data type (like 'string' or 'int'). They have a <i>name</i> (e.g. 'size') and methods to get the current value (<code>getSize</code>), or to set a new value (<code>setSize</code>). When a property is modified by calling the setter, the ManagedObject is marked as invalidated. A managed property can be bound against a property in a {@link sap.ui.model.Model} by using the {@link #bindProperty} method. Updates to the model property will be automatically reflected in the managed property and - if TwoWay databinding is active, changes to the managed property will be reflected in the model. An existing binding can be removed by calling {@link #unbindProperty}.

If a ManagedObject is cloned, the clone will have the same values for its managed properties as the source of the clone - if the property wasn't bound. If it is bound, the property in the clone will be bound to the same model property as in the source.

Details about the declaration of a managed property, the metadata that describes it and the set of methods that are automatically generated to access it, can be found in the documentation of the {@link sap.ui.base.ManagedObject.extend extend } method.

<h3>Aggregations</h3> Managed aggregations can store one or more references to other ManagedObjects. They are a mean to control the lifecycle of the aggregated objects: one ManagedObject can be aggregated by at most one parent ManagedObject at any time. When a ManagedObject is destroyed, all aggregated objects are destroyed as well and the object itself is removed from its parent. That is, aggregations won't contain destroyed objects or null/undefined.

Aggregations have a <i>name</i> ('e.g 'header' or 'items'), a <i>cardinality</i> ('0..1' or '0..n') and are of a specific <i>type</i> (which must be a subclass of ManagedObject as well or a UI5 interface). A ManagedObject will provide methods to set or get the aggregated object for a specific aggregation of cardinality 0..1 (e.g. <code>setHeader</code>, <code>getHeader</code> for an aggregation named 'header'). For an aggregation of cardinality 0..n, there are methods to get all aggregated objects (<code>getItems</code>), to locate an object in the aggregation (e.g. <code>indexOfItem</code>), to add, insert or remove a single aggregated object (<code>addItem</code>, <code>insertItem</code>, <code>removeItem</code>) or to remove or destroy all objects from an aggregation (<code>removeAllItems</code>, <code>destroyItems</code>).

Details about the declaration of a managed aggregation, the metadata that describes the aggregation, and the set of methods that are automatically generated to access it, can be found in the documentation of the {@link sap.ui.base.ManagedObject.extend extend} method.

Aggregations of cardinality 0..n can be bound to a collection in a model by using {@link #bindAggregation} (and unbound again using {@link #unbindAggregation}). For each context in the model collection, a corresponding object will be created in the managed aggregation, either by cloning a template object or by calling a factory function.

Aggregations also control the databinding context of bound objects: by default, aggregated objects inherit all models and binding contexts from their parent object.

When a ManagedObject is cloned, all aggregated objects will be cloned as well - but only if they haven't been added by databinding. In that case, the aggregation in the clone will be bound to the same model collection.

<h3>Associations</h3> Managed associations also form a relationship between objects, but they don't define a lifecycle for the associated objects. They even can 'break' in the sense that an associated object might have been destroyed already although it is still referenced in an association. For the same reason, the internal storage for associations are not direct object references but only the IDs of the associated target objects.

Associations have a <i>name</i> ('e.g 'initialFocus'), a <i>cardinality</i> ('0..1' or '0..n') and are of a specific <i>type</i> (which must be a subclass of ManagedObject as well or a UI5 interface). A ManagedObject will provide methods to set or get the associated object for a specific association of cardinality 0..1 (e.g. <code>setInitialFocus</code>, <code>getInitialFocus</code>). For an association of cardinality 0..n, there are methods to get all associated objects (<code>getRefItems</code>), to add, insert or remove a single associated object (<code>addRefItem</code>, <code>insertRefItem</code>, <code>removeRefItem</code>) or to remove all objects from an association (<code>removeAllRefItems</code>).

Details about the declaration of a managed association, the metadata that describes it and the set of methods that are automatically generated to access it, can be found in the documentation of the {@link sap.ui.base.ManagedObject.extend extend} method.

Associations can't be bound to the model.

When a ManagedObject is cloned, the result for an association depends on the relationship between the associated target object and the root of the clone operation. If the associated object is part of the to-be-cloned object tree (reachable via aggregations from the root of the clone operation), then the cloned association will reference the clone of the associated object. Otherwise the association will reference the same object as in the original tree. When a ManagedObject is destroyed, other objects that are only associated, are not affected by the destroy operation.

<h3>Events</h3> Managed events provide a mean for communicating important state changes to an arbitrary number of 'interested' listeners. Events have a <i>name</i> and (optionally) a set of <i>parameters</i>. For each event there will be methods to add or remove an event listener as well as a method to fire the event. (e.g. <code>attachChange</code>, <code>detachChange</code>, <code>fireChange</code> for an event named 'change').

Details about the declaration of managed events, the metadata that describes the event, and the set of methods that are automatically generated to access it, can be found in the documentation of the {@link sap.ui.base.ManagedObject.extend extend} method.

When a ManagedObject is cloned, all listeners registered for any event in the clone source are also registered to the clone. Later changes are not reflected in any direction (neither from source to clone, nor vice versa).

<a name="lowlevelapi"><h3>Low Level APIs:</h3></a> The prototype of ManagedObject provides several generic, low level APIs to manage properties, aggregations, associations, and events. These generic methods are solely intended for implementing higher level, non-generic methods that manage a single managed property etc. (e.g. a function <code>setSize(value)</code> that sets a new value for property 'size'). {@link sap.ui.base.ManagedObject.extend} creates default implementations of those higher level APIs for all managed aspects. The implementation of a subclass then can override those default implementations with a more specific implementation, e.g. to implement a side effect when a specific property is set or retrieved. It is therefore important to understand that the generic low-level methods ARE NOT SUITABLE FOR GENERIC ACCESS to the state of a managed object, as that would bypass the overriding higher level methods and their side effects.
*/
extern class ManagedObject extends sap.ui.base.EventProvider
{
	@:overload(function(?sId:String, ?mSettings:ManagedObjectArgs):Void {})
	public function new(?mSettings:ManagedObjectArgs):Void;

	/**
	* Sets all the properties, aggregations, associations and event handlers as given in the object literal <code>mSettings</code>. If a property, aggregation, etc. is not listed in <code>mSettings</code>, then its value is not changed by this method.

For properties and 0..1 aggregations/associations, any given setting overwrites the current value. For 0..n aggregations, the given values are appended; event listeners are registered in addition to existing ones.

For the possible keys and values in <code>mSettings</code> see the general documentation in {@link sap.ui.base.ManagedObject} or the specific documentation of the constructor of the concrete managed object class.
	* @param	mSettings the settings to apply to this managed object
	* @param	oScope Scope object to resolve types and formatters
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function applySettings( mSettings:Dynamic, ?oScope:Dynamic):sap.ui.base.ManagedObject;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:formatError formatError} event of this <code>sap.ui.base.ManagedObject</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.base.ManagedObject</code> itself.

Fired when a new value for a bound property should have been propagated from the model, but formatting the value failed with an exception.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.base.ManagedObject</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachFormatError( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.base.ManagedObject;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:modelContextChange modelContextChange} event of this <code>sap.ui.base.ManagedObject</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.base.ManagedObject</code> itself.

Fired when models or contexts are changed on this object (either by calling setModel/setBindingContext or due to propagation)
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.base.ManagedObject</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachModelContextChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.base.ManagedObject;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:parseError parseError} event of this <code>sap.ui.base.ManagedObject</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.base.ManagedObject</code> itself.

Fired when a new value for a bound property should have been propagated to the model, but parsing the value failed with an exception.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.base.ManagedObject</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachParseError( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.base.ManagedObject;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:validationError validationError} event of this <code>sap.ui.base.ManagedObject</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.base.ManagedObject</code> itself.

Fired when a new value for a bound property should have been propagated to the model, but validating the value failed with an exception.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.base.ManagedObject</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachValidationError( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.base.ManagedObject;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:validationSuccess validationSuccess} event of this <code>sap.ui.base.ManagedObject</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.base.ManagedObject</code> itself.

Fired after a new value for a bound property has been propagated to the model. Only fired, when the binding uses a data type.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.base.ManagedObject</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachValidationSuccess( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.base.ManagedObject;

	/**
	* Bind an aggregation to the model.

Whenever the corresponding model becomes available or changes (either via a call to {@link #setModel setModel} or propagated from a {@link #getParent parent}), its {@link sap.ui.model.Model#bindList bindList} method will be called to create a new {@link sap.ui.model.ListBinding ListBinding} with the configured binding options.

The bound aggregation will use the given template, clone it for each item which exists in the bound list and set the appropriate binding context.

This is a generic method which can be used to bind any aggregation to the model. A class may flag aggregations in its metadata with <code>bindable: "bindable"</code> to get typed <code>bind<i>Something</i></code> and <code>unbind<i>Something</i></code> methods for those aggregations.

Also see {@link topic:91f057786f4d1014b6dd926db0e91070 List Binding (Aggregation Binding)} in the documentation.

For more information on the <code>oBindingInfo.key</code> property and its usage, see {@link topic:7cdff73f308b4b10bdf7d83b7aba72e7 Extended Change Detection}.
	* @param	sName Name of a public aggregation to bind
	* @param	oBindingInfo Binding info
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function bindAggregation( sName:String, oBindingInfo:Dynamic):sap.ui.base.ManagedObject;

	/**
	* Bind the object to the referenced entity in the model.

The entity is used as the binding context to resolve bound properties or aggregations of the object itself and all of its children relatively to the given path. If a relative binding path is used, it will be evaluated anew whenever the parent context changes.

Whenever the corresponding model becomes available or changes (either via a call to {@link #setModel setModel} or propagated from a {@link #getParent parent}), its {@link sap.ui.model.Model#bindContext bindContext} method will be called to create a new {@link sap.ui.model.ContextBinding ContextBinding} with the configured binding options.

There is no difference between <code>bindObject</code> and {@link sap.ui.core.Element#bindElement bindElement}. Method <code>bindElement</code> was deprecated and renamed to <code>bindObject</code> when this kind of binding was no longer limited to <code>sap.ui.core.Element</code>s.

Also see {@link topic:91f05e8b6f4d1014b6dd926db0e91070 Context Binding} in the documentation.
	* @param	oBindingInfo An object describing the binding
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function bindObject( oBindingInfo:Dynamic):sap.ui.base.ManagedObject;

	/**
	* Binds a property to the model.

Whenever the corresponding model becomes available or changes (either via a call to {@link #setModel setModel} or propagated from a {@link #getParent parent}), its {@link sap.ui.model.Model#bindProperty bindProperty} method will be called to create a new {@link sap.ui.model.PropertyBinding PropertyBinding} with the configured binding options.

The Setter for the given property will be called by the binding with the value retrieved from the data model. When the binding mode is <code>OneTime</code>, the property will be set only once. When it is <code>OneWay</code>, the property will be updated whenever the corresponding data in the model changes. In mode <code>TwoWay</code>, changes to the property (not originating in the model) will be reported back to the model (typical use case: user interaction changes the value of a control).

This is a generic method which can be used to bind any property to the model. A managed object may flag any property in its metadata with <code>bindable: "bindable"</code> to additionally provide named methods to bind and unbind the corresponding property.

<b>Composite Binding</b><br> A composite property binding which combines data from multiple model paths can be declared using the <code>parts</code> parameter instead of <code>path</code>. The <code>formatter</code> function or a {@link sap.ui.model.CompositeType composite type} then can be used to combine the parts, Properties with a composite binding are also known as "calculated fields".

Example: <pre>
  oTxt.bindValue({
    parts: [
      {path: "/firstName", type: "sap.ui.model.type.String"},
      {path: "myModel2>/lastName"}
    ]
  });
</pre>

Note that a composite binding will be forced into mode <code>OneWay</code> when one of the binding parts is not in mode <code>TwoWay</code>.

<b>Formatter Functions</b><br> When a formatter function is specified for the binding or for a binding part, it will be called with the value of the bound model property. After setting the initial property value, the formatter function will only be called again when the bound model property changes (simple property binding) or when at least one of the bound model properties changes (formatter function of a composite binding). Note that a binding only monitors the bound model data for changes. Dependencies of the formatter implementation to other model data is not known to the binding and changes won't be detected.

When the formatter for a property binding (simple or composite) is called, the managed object will be given as <code>this</code> context. For formatters of binding parts in a composite binding, this is not the case.

Also see {@link topic:91f0652b6f4d1014b6dd926db0e91070 Property Binding} in the documentation.
	* @param	sName Name of a public property to bind; public aggregations of cardinality 0..1 that have an alternative, simple type (e.g. "string" or "int") can also be bound with this method
	* @param	oBindingInfo Binding information
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function bindProperty( sName:String, oBindingInfo:Dynamic):sap.ui.base.ManagedObject;

	/**
	* Clones a tree of objects starting with the object on which clone is called first (root object).

The IDs within the newly created clone tree are derived from the original IDs by appending the given <code>sIdSuffix</code> (if no suffix is given, one will be created; it will be unique across multiple clone calls).

The <code>oOptions</code> configuration object can have the following properties: <ul> <li>The boolean value <code>cloneChildren</code> specifies whether associations/aggregations will be cloned</li> <li>The boolean value <code>cloneBindings</code> specifies if bindings will be cloned</li> </ul> Note: In case the configuration <code>oOptions</code> is specified, the default values <code>true</code> no longer apply, which means in case <code>cloneChildren</code> or <code>cloneBindings</code> is not specified, then this ia assumed to be <code>false</code> and associations/aggregations or bindings are not cloned.

For each cloned object, the following settings are cloned based on the metadata of the object and the defined options: <ul> <li>All properties that are not bound. If <code>cloneBindings</code> is <code>false</code>, also the bound properties will be cloned; in general, values are referenced 1:1, not cloned. For some property types, however, the getters or setters might clone the value (e.g. array types and properties using metadata option <code>byValue</code>)</li> <li>All aggregated objects that are not bound. If <code>cloneBindings</code> is <code>false</code>, also the ones that are bound will be cloned; they are all cloned recursively using the same <code>sIdSuffix</code></li> <li>All associated controls; when an association points to an object inside the cloned object tree, then the cloned association will be modified so that it points to the clone of the target object. When the association points to a managed object outside of the cloned object tree, then its target won't be changed.</li> <li>All models set via <code>setModel()</code>; used by reference.</li> <li>All property and aggregation bindings (if <code>cloneBindings</code> is <code>true</code>); the pure binding information (path, model name) is cloned, but all other information like template control or factory function, data type or formatter function are copied by reference. The bindings themselves are created anew as they are specific for the combination (object, property, model). As a result, any later changes to a binding of the original object are not reflected in the clone, but changes to e.g the type or template etc. are.</li> </ul>

Each clone is created by first collecting the above mentioned settings and then creating a new instance with the normal constructor function. As a result, any side effects of mutator methods (<code>setProperty</code> etc.) or init hooks are repeated during clone creation. There is no need to override <code>clone()</code> just to reproduce these internal settings!

Custom controls however can override <code>clone()</code> to implement additional clone steps. They usually will first call <code>clone()</code> on the super class and then modify the returned clone accordingly.

Applications <b>must never provide</b> the second parameter <code>aLocaleIds</code>. It is determined automatically for the root object (and its non-existence also serves as an indicator for the root object). Specifying it will break the implementation of <code>clone()</code>.
	* @param	sIdSuffix a suffix to be appended to the cloned object ID
	* @param	aLocalIds an array of local IDs within the cloned hierarchy (internally used)
	* @param	oOptions Configuration object; when omitted, both properties default to <code>true</code>; when specified, undefined properties default to <code>false</code>
	* @return	Reference to the newly created clone
	*/
	public function clone( ?sIdSuffix:String, ?aLocalIds:Array<String>, ?oOptions:Dynamic):sap.ui.base.ManagedObject;
	@:overload( function(vData:sap.ui.base.ManagedObject, ?oKeyInfo:Dynamic, ?oScope:Dynamic):Void{ })

	/**
	* Creates a new ManagedObject from the given data.

If <code>vData</code> is a managed object already, that object is returned. If <code>vData</code> is an object (literal), then a new object is created with <code>vData</code> as settings. The type of the object is either determined by a property of name <code>Type</code> (capital 'T') in the <code>vData</code> or by a property <code>type</code> (lower case 't') in the <code>oKeyInfo</code> object. In both cases, the type can be specified by name (dot separated name of the class) or by the constructor function of the class.
	* @param	vData the data to create the object from
	* @param	oKeyInfo null
	* @param	oScope Scope object to resolve types and formatters in bindings
	* @return	Void
	*/
	public static function create( vData:Dynamic, ?oKeyInfo:Dynamic, ?oScope:Dynamic):Void;

	/**
	* Cleans up the resources associated with this object and all its aggregated children.

After an object has been destroyed, it can no longer be used!

Applications should call this method if they don't need the object any longer.
	* @param	bSuppressInvalidate if true, this ManagedObject is not marked as changed
	* @return	Void
	*/
	public function destroy( ?bSuppressInvalidate:Bool):Void;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:formatError formatError} event of this <code>sap.ui.base.ManagedObject</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachFormatError( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.base.ManagedObject;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:modelContextChange modelContextChange} event of this <code>sap.ui.base.ManagedObject</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachModelContextChange( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.base.ManagedObject;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:parseError parseError} event of this <code>sap.ui.base.ManagedObject</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachParseError( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.base.ManagedObject;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:validationError validationError} event of this <code>sap.ui.base.ManagedObject</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachValidationError( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.base.ManagedObject;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:validationSuccess validationSuccess} event of this <code>sap.ui.base.ManagedObject</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachValidationSuccess( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.base.ManagedObject;

	/**
	* Escapes the given value so it can be used in the constructor's settings object. Should be used when property values are initialized with static string values which could contain binding characters (curly braces).
	* @param	vValue Value to escape; only needs to be done for string values, but the call will work for all types
	* @return	The given value, escaped for usage as static property value in the constructor's settings object (or unchanged, if not of type string)
	*/
	public static function escapeSettingsValue( vValue:Dynamic):Dynamic;

	/**
	* Defines a new subclass of ManagedObject with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> can contain the same information that {@link sap.ui.base.Object.extend} already accepts, plus the following new properties in the 'metadata' object literal:

<ul> <li><code>library : <i>string</i></code></li> <li><code>properties : <i>object</i></code></li> <li><code>defaultProperty : <i>string</i></code></li> <li><code>aggregations : <i>object</i></code></li> <li><code>defaultAggregation : <i>string</i></code></li> <li><code>associations : <i>object</i></code></li> <li><code>events : <i>object</i></code></li> <li><code>specialSettings : <i>object</i></code>// this one is still experimental and not for public usage!</li> </ul>

Each of these properties is explained in more detail lateron.

Example: <pre>
ManagedObect.extend('sap.mylib.MyClass', {
  metadata : {
    library: 'sap.mylib',
    properties : {
      value: 'string',
      width: 'sap.ui.core.CSSSize',
      height: { type: 'sap.ui.core.CSSSize', defaultValue: '100%'}
      description: { type: 'string', defaultValue: '', selector: '#{id}-desc'}
    },
    defaultProperty : 'value',
    aggregations : {
      header : { type: 'sap.mylib.FancyHeader', multiple : false }
      items : 'sap.ui.core.Control',
      buttons: { type: 'sap.mylib.Button', multiple : true, selector: '#{id} > .sapMLButtonsSection'}
    },
    defaultAggregation : 'items',
    associations : {
      initiallyFocused : { type: 'sap.ui.core.Control' }
    },
    events: {
      beforeOpen : {
        parameters : {
          opener : { type: 'sap.ui.core.Control' }
        }
      }
    },
  },

  init: function() {
  }

}); // end of 'extend' call
</pre>

Detailed explanation of properties<br>

<b>'library'</b> : <i>string</i><br> Name of the library that the new subclass should belong to. If the subclass is a control or element, it will automatically register with that library so that authoring tools can discover it. By convention, the name of the subclass should have the library name as a prefix, e.g. 'sap.ui.commons.Panel' belongs to library 'sap.ui.commons'.

<b>'properties'</b> : <i>object</i><br> An object literal whose properties each define a new managed property in the ManagedObject subclass. The value can either be a simple string which then will be assumed to be the type of the new property or it can be an object literal with the following properties <ul> <li><code>type: <i>string</i></code> type of the new property. Must either be one of the built-in types 'string', 'boolean', 'int', 'float', 'object', 'array', 'function' or 'any', or a type created and registered with {@link sap.ui.base.DataType.createType} or an array type based on one of the previous types.</li> <li><code>visibility: <i>string</i></code> either 'hidden' or 'public', defaults to 'public'. Properties that belong to the API of a class must be 'public' whereas 'hidden' properties can only be used internally. Only public properties are accepted by the constructor or by <code>applySettings</code> or in declarative representations like an <code>XMLView</code>. Equally, only public properties are cloned.</li> <li><code>byValue: <i>boolean</i></code> (either can be omitted or set to the boolean value <code>true</code>) If set to <code>true</code>, the property value will be {@link module:sap/base/util/deepClone deep cloned} on write and read operations to ensure that the internal value can't be modified by the outside. The property <code>byValue</code> is currently limited to a <code>boolean</code> value. Other types are reserved for future use. Class definitions must only use boolean values for the flag (or omit it), but readers of ManagedObject metadata should handle any truthy value as <code>true</code> to be future safe. Note that using <code>byValue:true</code> has a performance impact on property access and therefore should be used carefully. It also doesn't make sense to set this option for properties with a primitive type (they have value semantic anyhow) or for properties with arrays of primitive types (they have been cloned already in the past with a cheaper implementation). Future versions of UI5 might encourage this as a limitation during class definition. <li><code>group:<i>string</i></code> a semantic grouping of the properties, intended to be used in design time tools. Allowed values are (case sensitive): Accessibility, Appearance, Behavior, Data, Designtime, Dimension, Identification, Misc</li> <li><code>defaultValue: <i>any</i></code> the default value for the property or null if there is no defaultValue.</li> <li><code>bindable: <i>boolean|string</i></code> (either can be omitted or set to the boolean value <code>true</code> or the magic string 'bindable') If set to <code>true</code> or 'bindable', additional named methods <code>bind<i>Name</i></code> and <code>unbind<i>Name</i></code> are generated as convenience. Despite its name, setting this flag is not mandatory to make the managed property bindable. The generic methods {@link #bindProperty} and {@link #unbindProperty} can always be used. </li> <li><code>selector: <i>string</i></code> Optional; can be set to a valid CSS selector (as accepted by the {@link https://developer.mozilla.org/en-US/docs/Web/API/Element/querySelector Element.prototype.querySelector} method). When set, it locates the DOM element that represents this property's value. It should only be set for properties that have a visual text representation in the DOM.

The purpose of the selector is to allow other framework parts or design time tooling to identify the DOM parts of a control or element that represent a specific property without knowing the control or element implementation in detail.

As an extension to the standard CSS selector syntax, the selector string can contain the placeholder <code>{id}</code> (multiple times). Before evaluating the selector in the context of an element or control, all occurrences of the placeholder have to be replaced by the (potentially escaped) ID of that element or control. In fact, any selector should start with <code>#{id}</code> to ensure that the query result is limited to the desired element or control.

<b>Note</b>: there is a convenience method {@link sap.ui.core.Element#getDomRefForSetting} that evaluates the selector in the context of a concrete element or control instance. It also handles the placeholder <code>{id}</code>. Only selected framework features may use that private method, it is not yet a public API and might be changed or removed in future versions of UI5. However, instead of maintaining the <code>selector</code> in the metadata, element and control classes can overwrite <code>getDomRefForSetting</code> and determine the DOM element dynamically.</li> </ul> Property names should use camelCase notation, start with a lowercase letter and only use characters from the set [a-zA-Z0-9_$]. If an aggregation in the literal is preceded by a JSDoc comment (doclet) and if the UI5 plugin and template are used for JSDoc3 generation, the doclet will be used as generic documentation of the aggregation.

For each public property 'foo', the following methods will be created by the "extend" method and will be added to the prototype of the subclass: <ul> <li>getFoo() - returns the current value of property 'foo'. Internally calls {@link #getProperty}</li> <li>setFoo(v) - sets 'v' as the new value of property 'foo'. Internally calls {@link #setProperty}</li> <li>bindFoo(c) - (only if property was defined to be 'bindable'): convenience function that wraps {@link #bindProperty}</li> <li>unbindFoo() - (only if property was defined to be 'bindable'): convenience function that wraps {@link #unbindProperty}</li> </ul> For hidden properties, no methods are generated.

<b>'defaultProperty'</b> : <i>string</i><br> When specified, the default property must match the name of one of the properties defined for the new subclass (either own or inherited). The named property can be used to identify the main property to be used for bound data. E.g. the value property of a field control.

<b>'aggregations'</b> : <i>object</i><br> An object literal whose properties each define a new aggregation in the ManagedObject subclass. The value can either be a simple string which then will be assumed to be the type of the new aggregation or it can be an object literal with the following properties <ul> <li><code>type: <i>string</i></code> type of the new aggregation. must be the full global name of a ManagedObject subclass or UI5 interface (in dot notation, e.g. 'sap.m.Button')</li> <li><code>[multiple]: <i>boolean</i></code> whether the aggregation is a 0..1 (false) or a 0..n aggregation (true), defaults to true </li> <li><code>[singularName]: <i>string</i></code>. Singular name for 0..n aggregations. For 0..n aggregations the name by convention should be the plural name. Methods affecting multiple objects in an aggregation will use the plural name (e.g. getItems(), whereas methods that deal with a single object will use the singular name (e.g. addItem). The framework knows a set of common rules for building plural form of English nouns and uses these rules to determine a singular name on its own. if that name is wrong, a singluarName can be specified with this property. </li> <li><code>[visibility]: <i>string</i></code> either 'hidden' or 'public', defaults to 'public'. Aggregations that belong to the API of a class must be 'public' whereas 'hidden' aggregations typically are used for the implementation of composite classes (e.g. composite controls). Only public aggregations are accepted by the constructor or by <code>applySettings</code> or in declarative representations like an <code>XMLView</code>. Equally, only public aggregations are cloned.</li> <li><code>bindable: <i>boolean|string</i></code> (either can be omitted or set to the boolean value <code>true</code> or the magic string 'bindable') If set to <code>true</code> or 'bindable', additional named methods <code>bind<i>Name</i></code> and <code>unbind<i>Name</i></code> are generated as convenience. Despite its name, setting this flag is not mandatory to make the managed aggregation bindable. The generic methods {@link #bindAggregation} and {@link #unbindAggregation} can always be used. </li> <li><code>forwarding: <i>object</i></code> If set, this defines a forwarding of objects added to this aggregation into an aggregation of another ManagedObject - typically to an inner control within a composite control. This means that all adding, removal, or other operations happening on the source aggregation are actually called on the target instance. All elements added to the source aggregation will be located at the target aggregation (this means the target instance is their parent). Both, source and target element will return the added elements when asked for the content of the respective aggregation. If present, the named (non-generic) aggregation methods will be called for the target aggregation. Aggregations can only be forwarded to non-hidden aggregations of the same or higher multiplicity (i.e. an aggregation with multiplicity "0..n" cannot be forwarded to an aggregation with multiplicity "0..1"). The target aggregation must also be "compatible" to the source aggregation in the sense that any items given to the source aggregation must also be valid in the target aggregation (otherwise the target element will throw a validation error). If the forwarded elements use data binding, the target element must be properly aggregated by the source element to make sure all models are available there as well. The aggregation target must remain the same instance across the entire lifetime of the source control. Aggregation forwarding will behave unexpectedly when the content in the target aggregation is modified by other actors (e.g. by the target element or by another forwarding from a different source aggregation). Hence, this is not allowed. The forwarding configuration object defines the target of the forwarding. The available settings are: <ul> <li><code>idSuffix: <i>string</i></code>A string which is appended to the ID of <i>this</i> ManagedObject to construct the ID of the target ManagedObject. This is one of the two options to specify the target. This option requires the target instance to be created in the init() method of this ManagedObject and to be always available.</li> <li><code>getter: <i>string</i></code>The name of the function on instances of this ManagedObject which returns the target instance. This second option to specify the target can be used for lazy instantiation of the target. Note that either idSuffix or getter must be given. Also note that the target instance returned by the getter must remain the same over the entire lifetime of this ManagedObject and the implementation assumes that all instances return the same type of object (at least the target aggregation must always be defined in the same class).</li> <li><code>aggregation: <i>string</i></code>The name of the aggregation on the target into which the objects shall be forwarded. The multiplicity of the target aggregation must be the same as the one of the source aggregation for which forwarding is defined.</li> <li><code>[forwardBinding]: <i>boolean</i></code>Whether any binding should happen on the forwarding target or not. Default if omitted is <code>false</code>, which means any bindings happen on the outer ManagedObject. When the binding is forwarded, all binding methods like updateAggregation, getBindingInfo, refreshAggregation etc. are called on the target element of the forwarding instead of being called on this element. The basic aggregation mutator methods (add/remove etc.) are only called on the forwarding target element. Without forwardBinding, they are called on this element, but forwarded to the forwarding target, where they actually modify the aggregation. </li> </ul> </li> <li><code>selector: <i>string</i></code> Optional; can be set to a valid CSS selector (as accepted by the {@link https://developer.mozilla.org/en-US/docs/Web/API/Element/querySelector Element.prototype.querySelector} method). When set, it locates the DOM element that surrounds the aggregation's content. It should only be set for aggregations that have a visual representation in the DOM. A DOM element surrounding the aggregation's rendered content should be available in the DOM, even if the aggregation is empty or not rendered for some reason. In cases where this is not possible or not intended, <code>getDomRefForSetting</code> can be overridden, see below.

The purpose of the selector is to allow other framework parts like drag and drop or design time tooling to identify those DOM parts of a control or element that represent a specific aggregation without knowing the control or element implementation in detail.

As an extension to the standard CSS selector syntax, the selector string can contain the placeholder <code>{id}</code> (multiple times). Before evaluating the selector in the context of an element or control, all occurrences of the placeholder have to be replaced by the (potentially escaped) ID of that element or control. In fact, any selector should start with <code>#{id}</code> to ensure that the query result is limited to the desired element or control.

<b>Note</b>: there is a convenience method {@link sap.ui.core.Element#getDomRefForSetting} that evaluates the selector in the context of a concrete element or control instance. It also handles the placeholder <code>{id}</code>. Only selected framework features may use that private method, it is not yet a public API and might be changed or removed in future versions of UI5. However, instead of maintaining the <code>selector</code> in the metadata, element and control classes can overwrite <code>getDomRefForSetting</code> to calculate or add the appropriate DOM Element dynamically.</li> </li> </ul> Aggregation names should use camelCase notation, start with a lowercase letter and only use characters from the set [a-zA-Z0-9_$]. The name for a hidden aggregations might start with an underscore. If an aggregation in the literal is preceded by a JSDoc comment (doclet) and if the UI5 plugin and template are used for JSDoc3 generation, the doclet will be used as generic documentation of the aggregation.

For each public aggregation 'item' of cardinality 0..1, the following methods will be created by the "extend" method and will be added to the prototype of the subclass: <ul> <li>getItem() - returns the current value of aggregation 'item'. Internally calls {@link #getAggregation} with a default value of <code>undefined</code></li> <li>setItem(o) - sets 'o' as the new aggregated object in aggregation 'item'. Internally calls {@link #setAggregation}</li> <li>destroyItem(o) - destroy a currently aggregated object in aggregation 'item' and clears the aggregation. Internally calls {@link #destroyAggregation}</li> <li>bindItem(c) - (only if aggregation was defined to be 'bindable'): convenience function that wraps {@link #bindAggregation}</li> <li>unbindItem() - (only if aggregation was defined to be 'bindable'): convenience function that wraps {@link #unbindAggregation}</li> </ul> For a public aggregation 'items' of cardinality 0..n, the following methods will be created: <ul> <li>getItems() - returns an array with the objects contained in aggregation 'items'. Internally calls {@link #getAggregation} with a default value of <code>[]</code></li> <li>addItem(o) - adds an object as last element in the aggregation 'items'. Internally calls {@link #addAggregation}</li> <li>insertItem(o,p) - inserts an object into the aggregation 'items'. Internally calls {@link #insertAggregation}</li> <li>indexOfItem(o) - returns the position of the given object within the aggregation 'items'. Internally calls {@link #indexOfAggregation}</li> <li>removeItem(v) - removes an object from the aggregation 'items'. Internally calls {@link #removeAggregation}</li> <li>removeItems() - removes all objects from the aggregation 'items'. Internally calls {@link #removeAllAggregation}</li> <li>destroyItems() - destroy all currently aggregated objects in aggregation 'items' and clears the aggregation. Internally calls {@link #destroyAggregation}</li> <li>bindItems(c) - (only if aggregation was defined to be 'bindable'): convenience function that wraps {@link #bindAggregation}</li> <li>unbindItems() - (only if aggregation was defined to be 'bindable'): convenience function that wraps {@link #unbindAggregation}</li> </ul> For hidden aggregations, no methods are generated.

<b>'defaultAggregation'</b> : <i>string</i><br> When specified, the default aggregation must match the name of one of the aggregations defined for the new subclass (either own or inherited). The named aggregation will be used in contexts where no aggregation is specified. E,g. when an object in an XMLView embeds other objects without naming an aggregation, as in the following example: <pre>
 &lt;!-- assuming the defaultAggregation for Dialog is 'content' -->
 &lt;Dialog>
   &lt;Text/>
   &lt;Button/>
 &lt;/Dialog>
</pre>

<b>'associations'</b> : <i>object</i><br> An object literal whose properties each define a new association of the ManagedObject subclass. The value can either be a simple string which then will be assumed to be the type of the new association or it can be an object literal with the following properties <ul> <li><code>type: <i>string</i></code> type of the new association</li> <li><code>multiple: <i>boolean</i></code> whether the association is a 0..1 (false) or a 0..n association (true), defaults to false(1) for associations</li> <li><code>[singularName]: <i>string</i></code>. Singular name for 0..n associations. For 0..n associations the name by convention should be the plural name. Methods affecting multiple objects in an association will use the plural name (e.g. getItems(), whereas methods that deal with a single object will use the singular name (e.g. addItem). The framework knows a set of common rules for building plural form of English nouns and uses these rules to determine a singular name on its own. if that name is wrong, a singluarName can be specified with this property.</li> <li><code>visibility: <i>string</i></code> either 'hidden' or 'public', defaults to 'public'. Associations that belong to the API of a class must be 'public' whereas 'hidden' associations can only be used internally. Only public associations are accepted by the constructor or by <code>applySettings</code> or in declarative representations like an <code>XMLView</code>. Equally, only public associations are cloned.</li> </ul> Association names should use camelCase notation, start with a lowercase letter and only use characters from the set [a-zA-Z0-9_$]. If an association in the literal is preceded by a JSDoc comment (doclet) and if the UI5 plugin and template are used for JSDoc3 generation, the doclet will be used as generic documentation of the association.

For each association 'ref' of cardinality 0..1, the following methods will be created by the "extend" method and will be added to the prototype of the subclass: <ul> <li>getRef() - returns the current value of association 'item'. Internally calls {@link #getAssociation} with a default value of <code>undefined</code></li> <li>setRef(o) - sets 'o' as the new associated object in association 'item'. Internally calls {@link #setAssociation}</li> </ul> For a public association 'refs' of cardinality 0..n, the following methods will be created: <ul> <li>getRefs() - returns an array with the objects contained in association 'items'. Internally calls {@link #getAssociation} with a default value of <code>[]</code></li> <li>addRef(o) - adds an object as last element in the association 'items'. Internally calls {@link #addAssociation}</li> <li>removeRef(v) - removes an object from the association 'items'. Internally calls {@link #removeAssociation}</li> <li>removeAllRefs() - removes all objects from the association 'items'. Internally calls {@link #removeAllAssociation}</li> </ul> For hidden associations, no methods are generated.

<b>'events'</b> : <i>object</i><br> An object literal whose properties each define a new event of the ManagedObject subclass. The value can either be a simple string which then will be assumed to be the type of the new association or it can be an object literal with the following properties <ul> <li><code>allowPreventDefault: <i>boolean</i></code> whether the event allows to prevented the default behavior of the event source</li> <li><code>parameters: <i>object</i></code> an object literal that describes the parameters of this event. </li> </ul> Event names should use camelCase notation, start with a lower-case letter and only use characters from the set [a-zA-Z0-9_$]. If an event in the literal is preceded by a JSDoc comment (doclet) and if the UI5 plugin and template are used for JSDoc3 generation, the doclet will be used as generic documentation of the event.

For each event 'Some' the following methods will be created by the "extend" method and will be added to the prototype of the subclass: <ul> <li>attachSome(fn,o) - registers a listener for the event. Internally calls {@link #attachEvent}</li> <li>detachSome(fn,o) - deregisters a listener for the event. Internally calls {@link #detachEvent}</li> <li>fireSome() - fire the event. Internally calls {@link #fireEvent}</li> </ul>

<b>'specialSettings'</b> : <i>object</i><br> Special settings are an experimental feature and MUST NOT BE DEFINED in controls or applications outside of the <code>sap.ui.core</code> library. There's no generic or general way how to set or get the values for special settings. For the same reason, they cannot be bound against a model. If there's a way for consumers to define a value for a special setting, it must be documented in the class that introduces the setting.
	* @param	sClassName name of the class to be created
	* @param	oClassInfo object literal with information about the class
	* @param	FNMetaImpl constructor function for the metadata object. If not given, it defaults to <code>sap.ui.base.ManagedObjectMetadata</code>.
	* @return	the created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Searches and returns all aggregated objects that pass the given check function.

When the search is done recursively (<code>bRecursive === true</code>), it will be executed depth-first and ancestors will be added to the result array before their descendants.

If no check function is given, all aggregated objects will pass the check and be added to the result array.

<b>Take care: this operation might be expensive.</b>
	* @param	bRecursive Whether the whole aggregation tree should be searched
	* @param	fnCondition Objects for which this function returns a falsy value will not be added to the result array
	* @return	Array of aggregated objects that passed the check
	*/
	public function findAggregatedObjects( bRecursive:Bool, ?fnCondition:Bool):Array<sap.ui.base.ManagedObject>;

	/**
	* Get the binding object for a specific aggregation/property
	* @param	sName the name of the property or aggregation
	* @return	the binding for the given name
	*/
	public function getBinding( sName:String):sap.ui.model.Binding;

	/**
	* Get the binding context of this object for the given model name.

If the object does not have a binding context set on itself and has no own model set, it will use the first binding context defined in its parent hierarchy.

<b>Note:</b> to be compatible with future versions of this API, you must not use the following model names: <ul> <li><code>null</code></li> <li>empty string <code>""</code></li> <li>string literals <code>"null"</code> or <code>"undefined"</code></li> </ul> Omitting the model name (or using the value <code>undefined</code>) is explicitly allowed and refers to the default model.

<b>Note:</b> A ManagedObject inherits binding contexts from the Core only when it is a descendant of a UIArea.
	* @param	sModelName the name of the model or <code>undefined</code>
	* @return	The binding context of this object
	*/
	public function getBindingContext( ?sModelName:String):sap.ui.model.Context;

	/**
	* Returns the object's ID.

There is no guarantee or check or requirement for the ID of a <code>ManagedObject</code> to be unique. Only some subclasses of <code>ManagedObject</code> introduce this as a requirement, e.g. <code>Component</code> or <code>Element</code>. All elements existing in the same window at the same time must have different IDs. A new element will fail during construction when the given ID is already used by another element. But there might be a component with the same ID as an element or another <code>ManagedObject</code>.

For the same reason, there is no general lookup for <code>ManagedObject</code>s via their ID. Only for subclasses that enforce unique IDs, there might be lookup mechanisms (e.g. {@link sap.ui.core.Core#byId sap.ui.getCore().byId()} for elements).
	* @return	The objects's ID.
	*/
	public function getId( ):String;
@:overload( function():sap.ui.base.ManagedObjectMetadata{ })

	/**
	* Returns the metadata for the ManagedObject class.
	* @return	Metadata for the ManagedObject class.
	*/
	public static function getMetadata( ):sap.ui.base.ManagedObjectMetadata;
	@:overload( function(?sModelName:String):sap.ui.model.Model{ })

	/**
	* Get the model to be used for data bindings with the given model name. If the object does not have a model set on itself, it will use the first model defined in its parent hierarchy.

The name can be omitted to reference the default model or it must be a non-empty string.

<b>Note:</b> to be compatible with future versions of this API, you must not use the following model names: <ul> <li><code>null</code></li> <li>empty string <code>""</code></li> <li>string literals <code>"null"</code> or <code>"undefined"</code></li> </ul> Omitting the model name (or using the value <code>undefined</code>) is explicitly allowed and refers to the default model.
	* @param	sModelName name of the model to be retrieved
	* @return	oModel
	*/
	public function getModel( ?sModelName:Dynamic):sap.ui.model.Model;

	/**
	* Get the object binding object for a specific model.

<b>Note:</b> to be compatible with future versions of this API, you must not use the following model names: <ul> <li><code>null</code></li> <li>empty string <code>""</code></li> <li>string literals <code>"null"</code> or <code>"undefined"</code></li> </ul> Omitting the model name (or using the value <code>undefined</code>) is explicitly allowed and refers to the default model.
	* @param	sModelName Non-empty name of the model or <code>undefined</code>
	* @return	Context binding for the given model name or <code>undefined</code>
	*/
	public function getObjectBinding( ?sModelName:String):sap.ui.model.ContextBinding;

	/**
	* Returns the origin info for the value of the given property.

The origin info might contain additional information for translatable texts. The bookkeeping of this information is not active by default and must be activated by configuration. Even then, it might not be present for all properties and their values depending on where the value came form.
	* @param	sPropertyName the name of the property
	* @return	a map of properties describing the origin of this property value or null
	*/
	public function getOriginInfo( sPropertyName:String):Dynamic;

	/**
	* Returns the parent managed object or <code>null</code> if this object hasn't been added to a parent yet.

The parent returned by this method is the technical parent used for data binding, invalidation, rendering etc. It might differ from the object on which the application originally added this object (the so called 'API parent'): some composite controls internally use hidden controls or containers to store their children. This method will return the innermost container that technically contains this object as a child.

<b>Example:</b>

Assume that a <code>Dialog</code> internally uses a (hidden) <code>VerticalLayout</code> to store its content:

<pre>
  Dialog (API parent)
   \__ VerticalLayout (hidden composite part)
      \__ Text (API child)
</pre>

If you add some content by calling the <code>Dialog.prototype.addContent</code> API, this will lead to the following observations:

<pre>
  oDialog.addContent(oText);
  console.log(oText.getParent() === oDialog);  // false
  console.log(oText.getParent() instanceof VerticalLayout); // true
  console.log(oText.getParent().getParent() === oDialog); // true now, but might fail with later versions
</pre>

Technically, from API perspective, <code>oText</code> is added as a child to <code>Dialog</code>. But internally, the <code>Dialog</code> adds the child to the hidden <code>VerticalLayout</code> container. If you now call the <code>getParent</code> method of the child, you will get the internal <code>VerticalLayout</code> object and not the <code>Dialog</code> API parent.

<b>Note: </b> The internal (hidden) structure of a composite control is not fixed and may be changed (see also our "Compatibility Rules"). Therefore, you should <b>never</b> rely on a specific structure or object being returned by <code>getParent</code>.

<b>Note: </b> There is no API to determine the original API parent.
	* @return	The technical parent managed object or <code>null</code>
	*/
	public function getParent( ):sap.ui.base.ManagedObject;

	/**
	* Check if any model is set to the ManagedObject or to one of its parents (including UIArea and Core).

<b>Note:</b> A ManagedObject inherits models from the Core only when it is a descendant of a UIArea.
	* @return	whether a model reference exists or not
	*/
	public function hasModel( ):Bool;

	/**
	* Find out whether a property or aggregation is bound
	* @param	sName the name of the property or aggregation
	* @return	whether a binding exists for the given name
	*/
	public function isBound( sName:String):Bool;

	/**
	* Set the binding context for this ManagedObject for the model with the given name.

<b>Note:</b> to be compatible with future versions of this API, you must not use the following model names: <ul> <li><code>null</code></li> <li>empty string <code>""</code></li> <li>string literals <code>"null"</code> or <code>"undefined"</code></li> </ul> Omitting the model name (or using the value <code>undefined</code>) is explicitly allowed and refers to the default model.

A value of <code>null</code> for <code>oContext</code> hides the parent context. The parent context will no longer be propagated to aggregated child controls. A value of <code>undefined</code> removes a currently active context or a <code>null</code> context and the parent context gets visible and propagated again.

<b>Note:</b> A ManagedObject inherits binding contexts from the Core only when it is a descendant of a UIArea.
	* @param	oContext the new binding context for this object
	* @param	sModelName the name of the model to set the context for or <code>undefined</code>
	* @return	reference to the instance itself
	*/
	public function setBindingContext( oContext:sap.ui.model.Context, ?sModelName:String):sap.ui.base.ManagedObject;

	/**
	* Sets or unsets a model for the given model name for this ManagedObject.

The <code>sName</code> must either be <code>undefined</code> (or omitted) or a non-empty string. When the name is omitted, the default model is set/unset. To be compatible with future versions of this API, you must not use the following model names: <ul> <li><code>null</code></li> <li>empty string <code>""</code></li> <li>string literals <code>"null"</code> or <code>"undefined"</code></li> </ul>

When <code>oModel</code> is <code>null</code> or <code>undefined</code>, a previously set model with that name is removed from this ManagedObject. If an ancestor (parent, UIArea or Core) has a model with that name, this ManagedObject will immediately inherit that model from its ancestor.

All local bindings that depend on the given model name are updated (created if the model references became complete now; updated, if any model reference has changed; removed if the model references became incomplete now).

Any change (new model, removed model, inherited model) is also applied to all aggregated descendants as long as a descendant doesn't have its own model set for the given name.

<b>Note:</b> By design, it is not possible to hide an inherited model by setting a <code>null</code> or <code>undefined</code> model. Applications can set an empty model to achieve the same.

<b>Note:</b> A ManagedObject inherits models from the Core only when it is a descendant of a UIArea.
	* @param	oModel the model to be set or <code>null</code> or <code>undefined</code>
	* @param	sName the name of the model or <code>undefined</code>
	* @return	<code>this</code> to allow method chaining
	*/
	public function setModel( oModel:sap.ui.model.Model, ?sName:String):sap.ui.base.ManagedObject;

	/**
	* Returns a simple string representation of this managed object.

Mainly useful for tracing purposes.
	* @return	a string description of this managed object
	*/
	public function toString( ):String;

	/**
	* Unbind the aggregation from the model.

After unbinding, the current content of the aggregation is destroyed by default. When the <code>bSuppressReset</code> parameter is set, it is however retained.
	* @param	sName Name of the aggregation
	* @param	bSuppressReset Indicates whether destroying the content of the aggregation is skipped
	* @return	Reference to this instance itself
	*/
	public function unbindAggregation( sName:String, bSuppressReset:Bool):sap.ui.base.ManagedObject;

	/**
	* Removes the defined binding context of this object, all bindings will now resolve relative to the parent context again.
	* @param	sModelName Name of the model to remove the context for.
	* @return	Reference to the instance itself
	*/
	public function unbindObject( ?sModelName:String):sap.ui.base.ManagedObject;

	/**
	* Unbind the property from the model
	* @param	sName the name of the property
	* @param	bSuppressReset whether the reset to the default value when unbinding should be suppressed
	* @return	reference to the instance itself
	*/
	public function unbindProperty( sName:String, bSuppressReset:Bool):sap.ui.base.ManagedObject;
}

typedef ManagedObjectArgs = {
@:optional var id : sap.ui.core.ID;
	/**
	* Fired when a new value for a bound property should have been propagated from the model, but formatting the value failed with an exception.
	*/
	@:optional var formatError:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when models or contexts are changed on this object (either by calling setModel/setBindingContext or due to propagation)
	*/
	@:optional var modelContextChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when a new value for a bound property should have been propagated to the model, but parsing the value failed with an exception.
	*/
	@:optional var parseError:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when a new value for a bound property should have been propagated to the model, but validating the value failed with an exception.
	*/
	@:optional var validationError:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired after a new value for a bound property has been propagated to the model. Only fired, when the binding uses a data type.
	*/
	@:optional var validationSuccess:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
