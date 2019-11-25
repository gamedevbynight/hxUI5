package sap.ui.integration.widgets;

@:native("sap.ui.integration.widgets.Card")

/**
* A control that represents a container with a header and content.

<h3>Overview</h3> Cards are small user interface elements which provide the most important information from an app, related to a specific role or task. The information is represented in a compact manner, allowing for actions to be executed. Cards can be described as small representations of an app which can be integrated in different systems.

The integration card is defined in a declarative way, using a manifest.json to be: <ul> <li>Easily integrated into apps</li> <li>Easily reused across apps</li> <li>Understandable by other technologies</li> <li>Self-contained (has a built-in functionality and doesn't need external configuration)</li> <li>Dynamic parameter handling</li> <li>Clear separation of the roles of the card and app developers</li> </ul>

The role of the card developer is to describe the card in a manifest.json file and define: <ul> <li>Header</li> <li>Content</li> <li>Data source</li> <li>Possible actions</li> </ul>

The role of the app developer is to integrate the card into the app and define: <ul> <li>The dimensions of the card inside a layout of choice, using the <code>width</code> and <code>height</code> properties</li> <li>The behavior for the actions described in the manifest.json file, using the action event</li> </ul>

<strong>You can learn more about integration cards in the <a href="test-resources/sap/ui/integration/demokit/cardExplorer/index.html">Card Explorer</a></strong>

<i>When to use</i> <ul> <li>When you want to reuse the card across apps.</li> <li>When you need easy integration and configuration.</li> </ul>

<i>When not to use</i> <ul> <li>When you need more header and content flexibility.</li> <li>When you have to achieve simple card visualization. For such cases, use: {@link sap.f.Card Card}.</li> <li>When you have to use an application model. For such cases, use: {@link sap.f.Card Card}.</li> <li>When you need complex behavior. For such cases, use: {@link sap.f.Card Card}.</li> </ul>
*/
extern class Card extends sap.ui.core.Control implements sap.f.ICard
{
	@:overload(function(?sId:String, ?mSettings:CardArgs):Void {})
	public function new(?mSettings:CardArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:action action} event of this <code>sap.ui.integration.widgets.Card</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.integration.widgets.Card</code> itself.

Fired when an action is triggered on the card.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.integration.widgets.Card</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAction( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.integration.widgets.Card;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:manifestReady manifestReady} event of this <code>sap.ui.integration.widgets.Card</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.integration.widgets.Card</code> itself.

Fired when the manifest is loaded.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.integration.widgets.Card</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachManifestReady( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.integration.widgets.Card;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:action action} event of this <code>sap.ui.integration.widgets.Card</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAction( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.integration.widgets.Card;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:manifestReady manifestReady} event of this <code>sap.ui.integration.widgets.Card</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachManifestReady( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.integration.widgets.Card;

	/**
	* Creates a new subclass of class sap.ui.integration.widgets.Card with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getBaseUrl baseUrl}.

Defines the base URL of the Card Manifest. It should be used when manifest property is an object instead of a URL.
	* @return	Value of property <code>baseUrl</code>
	*/
	public function getBaseUrl( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getDataMode dataMode}.

Defines the state of the <code>Card</code>. When set to <code>Inactive</code>, the <code>Card</code> doesn't make requests.

Default value is <code>Active</code>.
	* @return	Value of property <code>dataMode</code>
	*/
	public function getDataMode( ):sap.ui.integration.CardDataMode;

	/**
	* Gets current value of property {@link #getHeight height}.

Defines the height of the card.

Default value is <code>auto</code>.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* ID of the element which is the current target of the association {@link #getHostConfigurationId hostConfigurationId}, or <code>null</code>.
	* @return	null
	*/
	public function getHostConfigurationId( ):sap.ui.core.ID;

	/**
	* Overwrites getter for card manifest.
	* @return	Cloned of the parameters.
	*/
	public function getManifest( ):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.integration.widgets.Card.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Overwrites getter for card parameters.
	* @return	A Clone of the parameters.
	*/
	public function getParameters( ):Dynamic;

	/**
	* Gets current value of property {@link #getWidth width}.

Defines the width of the card.

Default value is <code>100%</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* null
	* @return	If the card is ready or not.
	*/
	public function isReady( ):Bool;

	/**
	* Refreshes the card by re-applying the manifest settings and triggering all data requests.
	* @return	Void
	*/
	public function refresh( ):Void;

	/**
	* Sets a new value for property {@link #getBaseUrl baseUrl}.

Defines the base URL of the Card Manifest. It should be used when manifest property is an object instead of a URL.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sBaseUrl New value for property <code>baseUrl</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBaseUrl( sBaseUrl:sap.ui.core.URI):sap.ui.integration.widgets.Card;

	/**
	* Sets a new value for the <code>dataMode</code> property.
	* @param	sMode The mode to set to the Card.
	* @return	Pointer to the control instance to allow method chaining.
	*/
	public function setDataMode( sMode:sap.ui.integration.CardDataMode):sap.ui.integration.widgets.Card;

	/**
	* Sets a new value for property {@link #getHeight height}.

Defines the height of the card.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>auto</code>.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( sHeight:sap.ui.core.CSSSize):sap.ui.integration.widgets.Card;
	@:overload( function(oHostConfigurationId:sap.ui.core.ID):sap.ui.integration.widgets.Card{ })

	/**
	* Sets the associated {@link #getHostConfigurationId hostConfigurationId}.
	* @param	oHostConfigurationId ID of an element which becomes the new target of this hostConfigurationId association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHostConfigurationId( oHostConfigurationId:sap.ui.core.Control):sap.ui.integration.widgets.Card;

	/**
	* Sets a new value for property {@link #getManifest manifest}.

The URL of the manifest or an object.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	oManifest New value for property <code>manifest</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setManifest( oManifest:Dynamic):sap.ui.integration.widgets.Card;

	/**
	* Sets a new value for property {@link #getParameters parameters}.

The parameters used in the manifest.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oParameters New value for property <code>parameters</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setParameters( oParameters:Dynamic):sap.ui.integration.widgets.Card;

	/**
	* Sets a new value for property {@link #getWidth width}.

Defines the width of the card.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100%</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.integration.widgets.Card;
}

typedef CardArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The URL of the manifest or an object.
	*/
	@:optional var manifest:Dynamic;

	/**
	* The parameters used in the manifest.
	*/
	@:optional var parameters:haxe.extern.EitherType<String,Dynamic>;

	/**
	* Defines the width of the card.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Defines the height of the card.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Defines the state of the <code>Card</code>. When set to <code>Inactive</code>, the <code>Card</code> doesn't make requests.
	*/
	@:optional var dataMode:haxe.extern.EitherType<String,sap.ui.integration.CardDataMode>;

	/**
	* Defines the base URL of the Card Manifest. It should be used when manifest property is an object instead of a URL.
	*/
	@:optional var baseUrl:haxe.extern.EitherType<String,sap.ui.core.URI>;

    /**
    * Defines the header of the card.
    */
	@:optional var _header:haxe.extern.EitherType<String,sap.f.cards.IHeader>;

    /**
    * Defines the content of the card.
    */
	@:optional var _content:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* The ID of the host configuration.
	*/
	@:optional var hostConfigurationId:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* Fired when an action is triggered on the card.
	*/
	@:optional var action:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when the manifest is loaded.
	*/
	@:optional var manifestReady:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
