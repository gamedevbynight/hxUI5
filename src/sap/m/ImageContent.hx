package sap.m;

@:native("sap.m.ImageContent")

/**
* This control can be used to display image content in a GenericTile.
*/
extern class ImageContent extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ImageContentArgs):Void {})
	public function new(?mSettings:ImageContentArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.m.ImageContent</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ImageContent</code> itself.

The event is triggered when the image content is pressed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ImageContent</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ImageContent;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.m.ImageContent</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ImageContent;

	/**
	* Creates a new subclass of class sap.m.ImageContent with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getDescription description}.

Description of image. This text is used to provide ScreenReader information.
	* @return	Value of property <code>description</code>
	*/
	public function getDescription( ):String;

	/**
	* Returns a metadata object for class sap.m.ImageContent.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getSrc src}.

The image to be displayed as a graphical element within the imageContent. This can be an image or an icon from the icon font.
	* @return	Value of property <code>src</code>
	*/
	public function getSrc( ):sap.ui.core.URI;

	/**
	* Sets a new value for property {@link #getDescription description}.

Description of image. This text is used to provide ScreenReader information.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sDescription New value for property <code>description</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDescription( ?sDescription:String):sap.m.ImageContent;

	/**
	* Sets a new value for property {@link #getSrc src}.

The image to be displayed as a graphical element within the imageContent. This can be an image or an icon from the icon font.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sSrc New value for property <code>src</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSrc( ?sSrc:sap.ui.core.URI):sap.m.ImageContent;
}

typedef ImageContentArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The image to be displayed as a graphical element within the imageContent. This can be an image or an icon from the icon font.
	*/
	@:optional var src:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Description of image. This text is used to provide ScreenReader information.
	*/
	@:optional var description:String;

    /**
    * The hidden aggregation for the image content.
    */
	@:optional var _content:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* The event is triggered when the image content is pressed.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
