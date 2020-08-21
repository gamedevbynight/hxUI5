package sap.ui.core.tmpl;

@:native("sap.ui.core.tmpl.TemplateControl")

/**
* This is the base class for all template controls. Template controls are declared based on templates.
*/
extern class TemplateControl extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:TemplateControlArgs):Void {})
	public function new(?mSettings:TemplateControlArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:afterRendering afterRendering} event of this <code>sap.ui.core.tmpl.TemplateControl</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.core.tmpl.TemplateControl</code> itself.

Fired when the Template Control has been (re-)rendered and its HTML is present in the DOM.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.core.tmpl.TemplateControl</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAfterRendering( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.core.tmpl.TemplateControl;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeRendering beforeRendering} event of this <code>sap.ui.core.tmpl.TemplateControl</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.core.tmpl.TemplateControl</code> itself.

Fired before this Template Control is re-rendered. Use to unbind event handlers from HTML elements etc.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.core.tmpl.TemplateControl</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforeRendering( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.core.tmpl.TemplateControl;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:afterRendering afterRendering} event of this <code>sap.ui.core.tmpl.TemplateControl</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAfterRendering( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.core.tmpl.TemplateControl;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeRendering beforeRendering} event of this <code>sap.ui.core.tmpl.TemplateControl</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforeRendering( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.core.tmpl.TemplateControl;

	/**
	* Creates a new subclass of class sap.ui.core.tmpl.TemplateControl with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getContext context}.

The context is a data object. It can be used for default template expressions. A change of the context object leads to a re-rendering whereas a change of a nested property of the context object doesn't. By default the context is an empty object.
	* @return	Value of property <code>context</code>
	*/
	public function getContext( ):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.core.tmpl.TemplateControl.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* ID of the element which is the current target of the association {@link #getTemplate template}, or <code>null</code>.
	* @return	null
	*/
	public function getTemplate( ):sap.ui.core.ID;

	/**
	* Sets a new value for property {@link #getContext context}.

The context is a data object. It can be used for default template expressions. A change of the context object leads to a re-rendering whereas a change of a nested property of the context object doesn't. By default the context is an empty object.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oContext New value for property <code>context</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContext( ?oContext:Dynamic):sap.ui.core.tmpl.TemplateControl;
	@:overload( function(oTemplate:sap.ui.core.ID):sap.ui.core.tmpl.TemplateControl{ })

	/**
	* Sets the associated {@link #getTemplate template}.
	* @param	oTemplate ID of an element which becomes the new target of this template association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTemplate( oTemplate:sap.ui.core.tmpl.Template):sap.ui.core.tmpl.TemplateControl;
}

typedef TemplateControlArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The context is a data object. It can be used for default template expressions. A change of the context object leads to a re-rendering whereas a change of a nested property of the context object doesn't. By default the context is an empty object.
	*/
	@:optional var context:haxe.extern.EitherType<String,Dynamic>;

    /**
    * The nested controls of the template control
    */
	@:optional var controls:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* The template on which the template control is based on.
	*/
	@:optional var template:haxe.extern.EitherType<String,sap.ui.core.tmpl.Template>;

	/**
	* Fired when the Template Control has been (re-)rendered and its HTML is present in the DOM.
	*/
	@:optional var afterRendering:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired before this Template Control is re-rendered. Use to unbind event handlers from HTML elements etc.
	*/
	@:optional var beforeRendering:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
