package sap.ui.core.tmpl;

@:native("sap.ui.core.tmpl.Template")

/**
* Base Class for Template.
*/
extern class Template extends sap.ui.base.ManagedObject
{
	@:overload(function(?sId:String, ?mSettings:TemplateArgs):Void {})
	public function new(?mSettings:TemplateArgs):Void;

	/**
	* Returns the registered template for the given ID, if any.
	* @param	sId null
	* @return	the template for the given ID
	*/
	public static function byId( sId:String):sap.ui.core.tmpl.Template;

	/**
	* Creates an anonymous TemplateControl for the Template.
	* @param	sId the control ID
	* @param	oContext the context for the renderer/templating
	* @param	oView null
	* @return	the created control instance
	*/
	public function createControl( sId:String, ?oContext:Dynamic, oView:sap.ui.core.mvc.View):sap.ui.core.tmpl.TemplateControl;

	/**
	* Declares a new control based on this template and returns the created class / constructor function. The class is based on the information coming from the abstract functions <code>createMetadata</code> and <code>createRenderer</code>.
	* @param	sControl the fully qualified name of the control
	* @return	the created class / constructor function
	*/
	public function declareControl( sControl:String):(Dynamic)->Void;

	/**
	* Creates a new subclass of class sap.ui.core.tmpl.Template with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.ManagedObject.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getContent content}.

The Template definition as a String.
	* @return	Value of property <code>content</code>
	*/
	public function getContent( ):String;

	/**
	* null
	* @return	Void
	*/
	public function getInterface( ):Void;

	/**
	* Returns a metadata object for class sap.ui.core.tmpl.Template.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.ManagedObjectMetadata;
	@:overload( function(oRef:String, ?oContext:Dynamic, ?vPosition:String, bInline:Bool):sap.ui.core.tmpl.TemplateControl{ })
	@:overload( function(oRef:String, ?oContext:Dynamic, ?vPosition:Int, bInline:Bool):sap.ui.core.tmpl.TemplateControl{ })
	@:overload( function(oRef:js.html.Element, ?oContext:Dynamic, ?vPosition:String, bInline:Bool):sap.ui.core.tmpl.TemplateControl{ })
	@:overload( function(oRef:js.html.Element, ?oContext:Dynamic, ?vPosition:Int, bInline:Bool):sap.ui.core.tmpl.TemplateControl{ })
	@:overload( function(oRef:sap.ui.core.Control, ?oContext:Dynamic, ?vPosition:String, bInline:Bool):sap.ui.core.tmpl.TemplateControl{ })

	/**
	* Creates an anonymous TemplateControl for the Template and places the control into the specified DOM element.
	* @param	oRef the id or the DOM reference where to render the template
	* @param	oContext The context to use to evaluate the Template. It will be applied as value for the context property of the created control.
	* @param	vPosition Describes the position where the control should be put into the container
	* @param	bInline null
	* @return	the created control instance
	*/
	public function placeAt( oRef:sap.ui.core.Control, ?oContext:Dynamic, ?vPosition:Int, bInline:Bool):sap.ui.core.tmpl.TemplateControl;

	/**
	* Sets a new value for property {@link #getContent content}.

The Template definition as a String.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sContent New value for property <code>content</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContent( ?sContent:String):sap.ui.core.tmpl.Template;
}

typedef TemplateArgs = sap.ui.base.ManagedObject.ManagedObjectArgs & {

	/**
	* The Template definition as a String.
	*/
	@:optional var content:String;
}
