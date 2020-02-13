package sap.ui.core;

@:native("sap.ui.core.ComponentContainer")

/**
* Container that embeds a <code>sap/ui/core/UIComponent</code> in a control tree.

<b>Concerning asynchronous component loading:</b>

To activate a fully asynchronous loading behavior of components and their dependencies, the property <code>async</code> needs to be set to <code>true</code> and the <code>manifest</code> property needs to be set to a 'truthy' value, e.g. <code>true</code> or a URL to the manifest location. If both options are correctly set, the component factory will load and evaluate the component manifest first. In this way, the additional dependencies of the Component are already known before the Component preload/controller is loaded. Both the component preload/controller and the additional dependencies can thus be loaded asynchronously and in parallel.

Sample usage of the ComponentContainer:

<pre>
    &lt;!-- inside XML view -->
    ...
    &lt;core:ComponentContainer
        usage="someComponent"
        manifest="true"
        async="true"
    />
</pre>

See also {@link sap.ui.core.ComponentSupport}.
*/
extern class ComponentContainer extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ComponentContainerArgs):Void {})
	public function new(?mSettings:ComponentContainerArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:componentCreated componentCreated} event of this <code>sap.ui.core.ComponentContainer</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.core.ComponentContainer</code> itself.

Fired when the component instance has been created by the ComponentContainer.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.core.ComponentContainer</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachComponentCreated( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.ComponentContainer;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:componentFailed componentFailed} event of this <code>sap.ui.core.ComponentContainer</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.core.ComponentContainer</code> itself.

Fired when the creation of the component instance has failed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.core.ComponentContainer</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachComponentFailed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.ComponentContainer;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:componentCreated componentCreated} event of this <code>sap.ui.core.ComponentContainer</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachComponentCreated( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.ComponentContainer;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:componentFailed componentFailed} event of this <code>sap.ui.core.ComponentContainer</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachComponentFailed( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.ComponentContainer;

	/**
	* Creates a new subclass of class sap.ui.core.ComponentContainer with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAsync async}.

Flag whether the component should be created sync (default) or async. The default will be async when initially the property <code>manifest</code> is set to a truthy value and for the property <code>async</code> no value has been specified. This property can only be applied initially.

Default value is <code>false</code>.
	* @return	Value of property <code>async</code>
	*/
	public function getAsync( ):Bool;

	/**
	* Gets current value of property {@link #getAutoPrefixId autoPrefixId}.

Flag, whether to auto-prefix the ID of the nested Component or not. If this property is set to true the ID of the Component will be prefixed with the ID of the ComponentContainer followed by a single dash. This property can only be applied initially.

Default value is <code>false</code>.
	* @return	Value of property <code>autoPrefixId</code>
	*/
	public function getAutoPrefixId( ):Bool;

	/**
	* ID of the element which is the current target of the association {@link #getComponent component}, or <code>null</code>.
	* @return	null
	*/
	public function getComponent( ):sap.ui.core.ID;

	/**
	* Gets current value of property {@link #getHandleValidation handleValidation}.

Enable/disable validation handling by MessageManager for this component. The resulting Messages will be propagated to the controls. This property can only be applied initially.

Default value is <code>false</code>.
	* @return	Value of property <code>handleValidation</code>
	*/
	public function getHandleValidation( ):Bool;

	/**
	* Gets current value of property {@link #getHeight height}.

Container height in CSS size
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getLifecycle lifecycle}.

Lifecycle behavior for the Component associated by the <code>ComponentContainer</code>. The default behavior is <code>Legacy</code>. This means that the <code>ComponentContainer</code> takes care that the Component is destroyed when the <code>ComponentContainer</code> is destroyed, but it is <b>not</b> destroyed when a new Component is associated. If you use the <code>usage</code> property to create the Component, the default behavior is <code>Container</code>. This means that the Component is destroyed when the <code>ComponentContainer</code> is destroyed or a new Component is associated. This property must only be applied before a component instance is created.

Default value is <code>Legacy</code>.
	* @return	Value of property <code>lifecycle</code>
	*/
	public function getLifecycle( ):sap.ui.core.ComponentLifecycle;

	/**
	* Gets current value of property {@link #getManifest manifest}.

Controls when and from where to load the manifest for the Component. When set to any truthy value, the manifest will be loaded asynchronously by default and evaluated before the Component controller, if it is set to a falsy value other than <code>undefined</code>, the manifest will be loaded after the controller. A non-empty string value will be interpreted as the URL location from where to load the manifest. A non-null object value will be interpreted as manifest content. This property can only be applied initially.
	* @return	Value of property <code>manifest</code>
	*/
	public function getManifest( ):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.core.ComponentContainer.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getName name}.

Component name, the package where the component is contained. This property can only be applied initially.
	* @return	Value of property <code>name</code>
	*/
	public function getName( ):String;

	/**
	* Gets current value of property {@link #getPropagateModel propagateModel}.

Defines whether binding information is propagated to the component.

Default value is <code>false</code>.
	* @return	Value of property <code>propagateModel</code>
	*/
	public function getPropagateModel( ):Bool;

	/**
	* Gets current value of property {@link #getSettings settings}.

The settings object passed to the component when created. This property can only be applied initially.
	* @return	Value of property <code>settings</code>
	*/
	public function getSettings( ):Dynamic;

	/**
	* Gets current value of property {@link #getUrl url}.

The URL of the component. This property can only be applied initially.
	* @return	Value of property <code>url</code>
	*/
	public function getUrl( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getUsage usage}.

The component usage. If the ComponentContainer is used inside a Component, this Component can define a usage which will be used for creating the Component. This property can only be applied initially.
	* @return	Value of property <code>usage</code>
	*/
	public function getUsage( ):String;

	/**
	* Gets current value of property {@link #getWidth width}.

Container width in CSS size
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Sets a new value for property {@link #getAsync async}.

Flag whether the component should be created sync (default) or async. The default will be async when initially the property <code>manifest</code> is set to a truthy value and for the property <code>async</code> no value has been specified. This property can only be applied initially.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bAsync New value for property <code>async</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAsync( bAsync:Bool):sap.ui.core.ComponentContainer;

	/**
	* Sets a new value for property {@link #getAutoPrefixId autoPrefixId}.

Flag, whether to auto-prefix the ID of the nested Component or not. If this property is set to true the ID of the Component will be prefixed with the ID of the ComponentContainer followed by a single dash. This property can only be applied initially.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bAutoPrefixId New value for property <code>autoPrefixId</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAutoPrefixId( bAutoPrefixId:Bool):sap.ui.core.ComponentContainer;
	@:overload( function(vComponent:String):sap.ui.core.ComponentContainer{ })

	/**
	* Sets the component of the container. Depending on the ComponentContainer's lifecycle this might destroy the old associated Component.

Once the component is associated with the container the cross connection to the component will be set and the models will be propagated if defined. If the <code>usage</code> property is set the ComponentLifecycle is processed like a "Container" lifecycle.
	* @param	vComponent ID of an element which becomes the new target of this component association. Alternatively, an element instance may be given.
	* @return	the reference to <code>this</code> in order to allow method chaining
	*/
	public function setComponent( vComponent:sap.ui.core.UIComponent):sap.ui.core.ComponentContainer;

	/**
	* Sets a new value for property {@link #getHandleValidation handleValidation}.

Enable/disable validation handling by MessageManager for this component. The resulting Messages will be propagated to the controls. This property can only be applied initially.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bHandleValidation New value for property <code>handleValidation</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHandleValidation( bHandleValidation:Bool):sap.ui.core.ComponentContainer;

	/**
	* Sets a new value for property {@link #getHeight height}.

Container height in CSS size

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( sHeight:sap.ui.core.CSSSize):sap.ui.core.ComponentContainer;

	/**
	* Sets a new value for property {@link #getLifecycle lifecycle}.

Lifecycle behavior for the Component associated by the <code>ComponentContainer</code>. The default behavior is <code>Legacy</code>. This means that the <code>ComponentContainer</code> takes care that the Component is destroyed when the <code>ComponentContainer</code> is destroyed, but it is <b>not</b> destroyed when a new Component is associated. If you use the <code>usage</code> property to create the Component, the default behavior is <code>Container</code>. This means that the Component is destroyed when the <code>ComponentContainer</code> is destroyed or a new Component is associated. This property must only be applied before a component instance is created.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Legacy</code>.
	* @param	sLifecycle New value for property <code>lifecycle</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLifecycle( sLifecycle:sap.ui.core.ComponentLifecycle):sap.ui.core.ComponentContainer;

	/**
	* Sets a new value for property {@link #getManifest manifest}.

Controls when and from where to load the manifest for the Component. When set to any truthy value, the manifest will be loaded asynchronously by default and evaluated before the Component controller, if it is set to a falsy value other than <code>undefined</code>, the manifest will be loaded after the controller. A non-empty string value will be interpreted as the URL location from where to load the manifest. A non-null object value will be interpreted as manifest content. This property can only be applied initially.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oManifest New value for property <code>manifest</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setManifest( oManifest:Dynamic):sap.ui.core.ComponentContainer;

	/**
	* Sets a new value for property {@link #getName name}.

Component name, the package where the component is contained. This property can only be applied initially.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sName New value for property <code>name</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setName( sName:String):sap.ui.core.ComponentContainer;

	/**
	* Sets a new value for property {@link #getPropagateModel propagateModel}.

Defines whether binding information is propagated to the component.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bPropagateModel New value for property <code>propagateModel</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPropagateModel( bPropagateModel:Bool):sap.ui.core.ComponentContainer;

	/**
	* Sets a new value for property {@link #getSettings settings}.

The settings object passed to the component when created. This property can only be applied initially.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oSettings New value for property <code>settings</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSettings( oSettings:Dynamic):sap.ui.core.ComponentContainer;

	/**
	* Sets a new value for property {@link #getUrl url}.

The URL of the component. This property can only be applied initially.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sUrl New value for property <code>url</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUrl( sUrl:sap.ui.core.URI):sap.ui.core.ComponentContainer;

	/**
	* Sets a new value for property {@link #getUsage usage}.

The component usage. If the ComponentContainer is used inside a Component, this Component can define a usage which will be used for creating the Component. This property can only be applied initially.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sUsage New value for property <code>usage</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUsage( sUsage:String):sap.ui.core.ComponentContainer;

	/**
	* Sets a new value for property {@link #getWidth width}.

Container width in CSS size

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.core.ComponentContainer;
}

typedef ComponentContainerArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Component name, the package where the component is contained. This property can only be applied initially.
	*/
	@:optional var name:String;

	/**
	* The URL of the component. This property can only be applied initially.
	*/
	@:optional var url:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Flag whether the component should be created sync (default) or async. The default will be async when initially the property <code>manifest</code> is set to a truthy value and for the property <code>async</code> no value has been specified. This property can only be applied initially.
	*/
	@:optional var async:haxe.extern.EitherType<String,Bool>;

	/**
	* Enable/disable validation handling by MessageManager for this component. The resulting Messages will be propagated to the controls. This property can only be applied initially.
	*/
	@:optional var handleValidation:haxe.extern.EitherType<String,Bool>;

	/**
	* The settings object passed to the component when created. This property can only be applied initially.
	*/
	@:optional var settings:haxe.extern.EitherType<String,Dynamic>;

	/**
	* Defines whether binding information is propagated to the component.
	*/
	@:optional var propagateModel:haxe.extern.EitherType<String,Bool>;

	/**
	* Container width in CSS size
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Container height in CSS size
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Lifecycle behavior for the Component associated by the <code>ComponentContainer</code>. The default behavior is <code>Legacy</code>. This means that the <code>ComponentContainer</code> takes care that the Component is destroyed when the <code>ComponentContainer</code> is destroyed, but it is <b>not</b> destroyed when a new Component is associated. If you use the <code>usage</code> property to create the Component, the default behavior is <code>Container</code>. This means that the Component is destroyed when the <code>ComponentContainer</code> is destroyed or a new Component is associated. This property must only be applied before a component instance is created.
	*/
	@:optional var lifecycle:haxe.extern.EitherType<String,sap.ui.core.ComponentLifecycle>;

	/**
	* Flag, whether to auto-prefix the ID of the nested Component or not. If this property is set to true the ID of the Component will be prefixed with the ID of the ComponentContainer followed by a single dash. This property can only be applied initially.
	*/
	@:optional var autoPrefixId:haxe.extern.EitherType<String,Bool>;

	/**
	* The component usage. If the ComponentContainer is used inside a Component, this Component can define a usage which will be used for creating the Component. This property can only be applied initially.
	*/
	@:optional var usage:String;

	/**
	* Controls when and from where to load the manifest for the Component. When set to any truthy value, the manifest will be loaded asynchronously by default and evaluated before the Component controller, if it is set to a falsy value other than <code>undefined</code>, the manifest will be loaded after the controller. A non-empty string value will be interpreted as the URL location from where to load the manifest. A non-null object value will be interpreted as manifest content. This property can only be applied initially.
	*/
	@:optional var manifest:Dynamic;

	/**
	* The component displayed in this ComponentContainer.
	*/
	@:optional var component:haxe.extern.EitherType<String,sap.ui.core.UIComponent>;

	/**
	* Fired when the component instance has been created by the ComponentContainer.
	*/
	@:optional var componentCreated:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when the creation of the component instance has failed.
	*/
	@:optional var componentFailed:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
