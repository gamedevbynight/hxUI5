package sap.ui.core.mvc;

@:native("sap.ui.core.mvc.View")

/**
* A base class for Views.

Introduces the relationship to a Controller, some basic visual appearance settings like width and height, and provides lifecycle events.

Views form an ID scope for the elements and controls in their content. They can prefix the IDs of elements either automatically (e.g. XMLView) or programmatically (using {@link #createId}). With method {@link #byId}, elements or controls can be found with their view-local ID. Also see {@link topic:91f28be26f4d1014b6dd926db0e91070 "Support for Unique IDs"} in the documentation.
*/
extern class View extends sap.ui.core.Control implements sap.ui.core.IDScope
{
	@:overload(function(?sId:String, ?mSettings:ViewArgs):Void {})
	public function new(?mSettings:ViewArgs):Void;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.ui.core.mvc.View;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:afterInit afterInit} event of this <code>sap.ui.core.mvc.View</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.core.mvc.View</code> itself.

Fired when the View has parsed the UI description and instantiated the contained controls (/control tree).
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.core.mvc.View</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAfterInit( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.core.mvc.View;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:afterRendering afterRendering} event of this <code>sap.ui.core.mvc.View</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.core.mvc.View</code> itself.

Fired when the View has been (re-)rendered and its HTML is present in the DOM.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.core.mvc.View</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAfterRendering( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.core.mvc.View;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeExit beforeExit} event of this <code>sap.ui.core.mvc.View</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.core.mvc.View</code> itself.

Fired when the view has received the request to destroy itself, but before it has destroyed anything.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.core.mvc.View</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforeExit( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.core.mvc.View;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeRendering beforeRendering} event of this <code>sap.ui.core.mvc.View</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.core.mvc.View</code> itself.

Fired before this View is re-rendered. Use to unbind event handlers from HTML elements etc.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.core.mvc.View</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforeRendering( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.core.mvc.View;

	/**
	* Returns an element by its ID in the context of this view.

This method expects a view-local ID of an element (the same as e.g. defined in the *.view.xml of an XMLView). For a search with a global ID (the value returned by <code>oElement.getId()</code>) you should rather use {@link sap.ui.core.Core#byId sap.ui.getCore().byId()}.
	* @param	sId View local ID of the element
	* @return	Element by its ID or <code>undefined</code>
	*/
	public function byId( sId:String):sap.ui.core.Element;

	/**
	* Creates a clone of this view.

Overrides the clone method to avoid conflicts between generic cloning of the content aggregation and content creation as defined by the UI5 Model View Controller lifecycle.

For more details see the {@link topic:a575619e25c2487f904bae71764e2350 View Cloning} section in the documentation.
	* @param	sIdSuffix Suffix to be appended to the cloned element IDs
	* @param	aLocalIds Array of local IDs within the cloned hierarchy (internally used)
	* @return	Reference to the newly created clone
	*/
	public function clone( ?sIdSuffix:String, ?aLocalIds:Array<String>):sap.ui.core.mvc.View;

	/**
	* Creates a view of the given type, name and with the given ID.

If the option <code>viewName</code> is given, the corresponding view module is loaded if needed.

See also the API references for the specific view factories: <ul> <li>{@link sap.ui.core.mvc.XMLView.create}</li> <li>{@link sap.ui.core.mvc.JSView.create}</li> <li>{@link sap.ui.core.mvc.JSONView.create}</li> <li>{@link sap.ui.core.mvc.HTMLView.create}</li> </ul>
	* @param	oOptions Options for the view instantiation. Can contain any settings that are documented for the {@link sap.ui.core.mvc.View}; specialized view types could bring in additional settings.
	* @return	A Promise which resolves with the created View instance
	*/
	public static function create( oOptions:Dynamic):js.lib.Promise<sap.ui.core.mvc.View>;

	/**
	* Convert the given view local element ID to a globally unique ID by prefixing it with the view ID.
	* @param	sId View local ID of the element
	* @return	prefixed id
	*/
	public function createId( sId:String):String;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.ui.core.mvc.View;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:afterInit afterInit} event of this <code>sap.ui.core.mvc.View</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAfterInit( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.core.mvc.View;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:afterRendering afterRendering} event of this <code>sap.ui.core.mvc.View</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAfterRendering( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.core.mvc.View;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeExit beforeExit} event of this <code>sap.ui.core.mvc.View</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforeExit( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.core.mvc.View;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeRendering beforeRendering} event of this <code>sap.ui.core.mvc.View</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforeRendering( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.core.mvc.View;

	/**
	* Creates a new subclass of class sap.ui.core.mvc.View with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets content of aggregation {@link #getContent content}.

Child Controls of the view
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Returns the view's Controller instance or null for a controller-less View.
	* @return	Controller of this view.
	*/
	public function getController( ):Dynamic;

	/**
	* An (optional) method to be implemented by Views. When no controller instance is given at View instantiation time AND this method exists and returns the (package and class) name of a controller, the View tries to load and instantiate the controller and to connect it to itself.
	* @return	the name of the controller
	*/
	public function getControllerName( ):String;

	/**
	* Gets current value of property {@link #getDisplayBlock displayBlock}.

Whether the CSS display should be set to "block". Set this to "true" if the default display "inline-block" causes a vertical scrollbar with Views that are set to 100% height. Do not set this to "true" if you want to display other content in the same HTML parent on either side of the View (setting to "true" may push that other content to the next/previous line).

Default value is <code>false</code>.
	* @return	Value of property <code>displayBlock</code>
	*/
	public function getDisplayBlock( ):Bool;

	/**
	* Gets current value of property {@link #getHeight height}.

The height
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Returns the local ID of an element by removing the view ID prefix or <code>null</code> if the ID does not contain a prefix.
	* @param	sId Prefixed ID
	* @return	ID without prefix or <code>null</code>
	*/
	public function getLocalId( sId:String):String;

	/**
	* Returns a metadata object for class sap.ui.core.mvc.View.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Returns user specific data object
	* @return	viewData
	*/
	public function getViewData( ):Dynamic;

	/**
	* Gets current value of property {@link #getViewName viewName}.

Name of the View
	* @return	Value of property <code>viewName</code>
	*/
	public function getViewName( ):String;

	/**
	* Gets current value of property {@link #getWidth width}.

The width

Default value is <code>'100%'</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getContent content}. and returns its index if found or -1 otherwise.
	* @param	oContent The content whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfContent( oContent:sap.ui.core.Control):Int;

	/**
	* Inserts a content into the aggregation {@link #getContent content}.
	* @param	oContent The content to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the content should be inserted at; for a negative value of <code>iIndex</code>, the content is inserted at position 0; for a value greater than the current size of the aggregation, the content is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.ui.core.mvc.View;

	/**
	* Removes all the controls from the aggregation {@link #getContent content}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllContent( ):Array<sap.ui.core.Control>;
	@:overload( function(vContent:Int):sap.ui.core.Control{ })
	@:overload( function(vContent:String):sap.ui.core.Control{ })

	/**
	* Removes a content from the aggregation {@link #getContent content}.
	* @param	vContent The content to remove or its index or id
	* @return	The removed content or <code>null</code>
	*/
	public function removeContent( vContent:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Sets a new value for property {@link #getDisplayBlock displayBlock}.

Whether the CSS display should be set to "block". Set this to "true" if the default display "inline-block" causes a vertical scrollbar with Views that are set to 100% height. Do not set this to "true" if you want to display other content in the same HTML parent on either side of the View (setting to "true" may push that other content to the next/previous line).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bDisplayBlock New value for property <code>displayBlock</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDisplayBlock( ?bDisplayBlock:Bool):sap.ui.core.mvc.View;

	/**
	* Sets a new value for property {@link #getHeight height}.

The height

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( ?sHeight:sap.ui.core.CSSSize):sap.ui.core.mvc.View;

	/**
	* Sets a new value for property {@link #getViewName viewName}.

Name of the View

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sViewName New value for property <code>viewName</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setViewName( ?sViewName:String):sap.ui.core.mvc.View;

	/**
	* Sets a new value for property {@link #getWidth width}.

The width

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>'100%'</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.ui.core.mvc.View;
}

typedef ViewArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The width
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* The height
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Name of the View
	*/
	@:optional var viewName:String;

	/**
	* Whether the CSS display should be set to "block". Set this to "true" if the default display "inline-block" causes a vertical scrollbar with Views that are set to 100% height. Do not set this to "true" if you want to display other content in the same HTML parent on either side of the View (setting to "true" may push that other content to the next/previous line).
	*/
	@:optional var displayBlock:haxe.extern.EitherType<String,Bool>;

    /**
    * Child Controls of the view
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Fired when the View has parsed the UI description and instantiated the contained controls (/control tree).
	*/
	@:optional var afterInit:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when the View has been (re-)rendered and its HTML is present in the DOM.
	*/
	@:optional var afterRendering:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when the view has received the request to destroy itself, but before it has destroyed anything.
	*/
	@:optional var beforeExit:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired before this View is re-rendered. Use to unbind event handlers from HTML elements etc.
	*/
	@:optional var beforeRendering:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
