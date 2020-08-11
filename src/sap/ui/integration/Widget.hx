package sap.ui.integration;

@:native("sap.ui.integration.Widget")

/**
* <h3>Overview</h3> The Widget is a wrapper for {@link sap.ui.core.ComponentContainer}. It is configured via an app descriptor manifest.json file.
*/
extern class Widget extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:WidgetArgs):Void {})
	public function new(?mSettings:WidgetArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:action action} event of this <code>sap.ui.integration.Widget</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.integration.Widget</code> itself.

Fired when an action is triggered on the Widget.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.integration.Widget</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAction( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.integration.Widget;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:manifestReady manifestReady} event of this <code>sap.ui.integration.Widget</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.integration.Widget</code> itself.

Fired when the manifest is loaded.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.integration.Widget</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachManifestReady( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.integration.Widget;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:action action} event of this <code>sap.ui.integration.Widget</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAction( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.integration.Widget;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:manifestReady manifestReady} event of this <code>sap.ui.integration.Widget</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachManifestReady( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.integration.Widget;

	/**
	* Creates a new subclass of class sap.ui.integration.Widget with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getBaseUrl baseUrl}.

Base URL

Default value is <code>empty string</code>.
	* @return	Value of property <code>baseUrl</code>
	*/
	public function getBaseUrl( ):String;

	/**
	* Gets values of manifest parameters combined with the parameters from <code>parameters</code> property.

<b>Notes</b>

- Use this method when the manifest is ready. Check <code>manifestReady</code> event.

- Use this method inside your component.
	* @return	Object containing parameters in format <code>{parameterKey: parameterValue}</code>.
	*/
	public function getCombinedParameters( ):Map<String,Dynamic>;

	/**
	* ID of the element which is the current target of the association {@link #getHost host}, or <code>null</code>.
	* @return	null
	*/
	public function getHost( ):sap.ui.core.ID;

	/**
	* Gets the instance of the <code>host</code> association.
	* @return	The host object associated with this widget.
	*/
	public function getHostInstance( ):sap.ui.integration.Host;

	/**
	* Overwrites getter for Widget manifest.
	* @return	Cloned of the parameters.
	*/
	public function getManifest( ):Dynamic;

	/**
	* Gets current value of property {@link #getManifestChanges manifestChanges}.

Defines a list of configuration settings, which will be merged into the original manifest.

This can be a list of flexibility changes generated during designtime.

Each level of changes is an item in the list. The change has property "content" which contains the configuration, that will be merged on top of the original <code>sap.widget</code> section.

Example: <pre>
[
    {"content": {"header": {"title": "My title"}}},
    {"content": {"header": {"title": "My new title"}}}
]
</pre>
	* @return	Value of property <code>manifestChanges</code>
	*/
	public function getManifestChanges( ):Array<Dynamic>;

	/**
	* Returns a value from the manifest based on the specified path.

<b>Note</b> Use this method when the manifest is fully ready. Check <code>manifestReady</code> event.
	* @param	sPath The path to return a value for.
	* @return	The value at the specified path.
	*/
	public function getManifestEntry( sPath:String):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.integration.Widget.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Sets a new value for property {@link #getBaseUrl baseUrl}.

Base URL

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sBaseUrl New value for property <code>baseUrl</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBaseUrl( ?sBaseUrl:String):sap.ui.integration.Widget;
	@:overload( function(oHost:sap.ui.core.ID):sap.ui.integration.Widget{ })

	/**
	* Sets the associated {@link #getHost host}.
	* @param	oHost ID of an element which becomes the new target of this host association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHost( oHost:sap.ui.core.Control):sap.ui.integration.Widget;

	/**
	* Sets a new value for property {@link #getManifest manifest}.

The URL of the manifest or an object.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	oManifest= New value for property <code>manifest</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setManifest( ?oManifest:Dynamic):sap.ui.integration.Widget;

	/**
	* Sets a new value for property {@link #getManifestChanges manifestChanges}.

Defines a list of configuration settings, which will be merged into the original manifest.

This can be a list of flexibility changes generated during designtime.

Each level of changes is an item in the list. The change has property "content" which contains the configuration, that will be merged on top of the original <code>sap.widget</code> section.

Example: <pre>
[
    {"content": {"header": {"title": "My title"}}},
    {"content": {"header": {"title": "My new title"}}}
]
</pre>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sManifestChanges New value for property <code>manifestChanges</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setManifestChanges( sManifestChanges:Array<Dynamic>):sap.ui.integration.Widget;
}

typedef WidgetArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The URL of the manifest or an object.
	*/
	@:optional var manifest:Dynamic;

	/**
	* Overrides the default values of the parameters, which are defined in the manifest. The value is an object containing parameters in format <code>{parameterKey: parameterValue}</code>.
	*/
	@:optional var parameters:haxe.extern.EitherType<String,Dynamic>;

	/**
	* Base URL
	*/
	@:optional var baseUrl:String;

	/**
	* Defines a list of configuration settings, which will be merged into the original manifest.

This can be a list of flexibility changes generated during designtime.

Each level of changes is an item in the list. The change has property "content" which contains the configuration, that will be merged on top of the original <code>sap.widget</code> section.

Example: <pre>
[
    {"content": {"header": {"title": "My title"}}},
    {"content": {"header": {"title": "My new title"}}}
]
</pre>
	*/
	@:optional var manifestChanges:Array<haxe.extern.EitherType<String,Dynamic>>;

    /**
    * Defines the content of the Widget.
    */
	@:optional var _content:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* The host.
	*/
	@:optional var host:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* Fired when an action is triggered on the Widget.
	*/
	@:optional var action:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when the manifest is loaded.
	*/
	@:optional var manifestReady:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
