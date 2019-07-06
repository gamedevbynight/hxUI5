package sap.ui.commons;

@:native("sap.ui.commons.Image")

/**
* A wrapper around the IMG tag. The image can be loaded from a remote or local server. There are various size setting options available, and the images can be combined with actions.
*/
extern class Image extends sap.ui.core.Control implements sap.ui.commons.ToolbarItem implements sap.ui.commons.FormattedTextViewControl implements sap.ui.core.IFormContent
{
	@:overload(function(?sId:String, ?mSettings:ImageArgs):Void {})
	public function new(?mSettings:ImageArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.ui.commons.Image</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.Image</code> itself.

Event is fired when the user clicks on the control.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.Image</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.Image;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.ui.commons.Image</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.Image;

	/**
	* Creates a new subclass of class sap.ui.commons.Image with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAlt alt}.

The alternative text that is displayed in case the Image is not available, or cannot be displayed. If the image is set to decorative this property is ignored.
	* @return	Value of property <code>alt</code>
	*/
	public function getAlt( ):String;

	/**
	* Gets current value of property {@link #getDecorative decorative}.

A decorative image is included for design reasons. Accessibility tools will ignore decorative images. Note: If the Image has an image map (useMap is set), this property will be overridden (the image will not be rendered as decorative). A decorative image has no ALT attribute, so the Alt property is ignored if the image is decorative.

Default value is <code>true</code>.
	* @return	Value of property <code>decorative</code>
	*/
	public function getDecorative( ):Bool;

	/**
	* Gets current value of property {@link #getHeight height}.

When the empty value is kept, the original size is not changed. It is also possible to make settings for width or height only, the overall size is maintained then, considering the aspect ratio.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.ui.commons.Image.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getSrc src}.

Relative or absolute path to URL where the image file is stored.
	* @return	Value of property <code>src</code>
	*/
	public function getSrc( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getUseMap useMap}.

The name of the image map that defines the clickable areas
	* @return	Value of property <code>useMap</code>
	*/
	public function getUseMap( ):String;

	/**
	* Gets current value of property {@link #getWidth width}.

When the empty value is kept, the original size is not changed. It is also possible to make settings for width or height only, the overall size is maintained then, considering the aspect ratio.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Sets a new value for property {@link #getAlt alt}.

The alternative text that is displayed in case the Image is not available, or cannot be displayed. If the image is set to decorative this property is ignored.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sAlt New value for property <code>alt</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAlt( sAlt:String):sap.ui.commons.Image;

	/**
	* Sets a new value for property {@link #getDecorative decorative}.

A decorative image is included for design reasons. Accessibility tools will ignore decorative images. Note: If the Image has an image map (useMap is set), this property will be overridden (the image will not be rendered as decorative). A decorative image has no ALT attribute, so the Alt property is ignored if the image is decorative.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bDecorative New value for property <code>decorative</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDecorative( bDecorative:Bool):sap.ui.commons.Image;

	/**
	* Sets a new value for property {@link #getHeight height}.

When the empty value is kept, the original size is not changed. It is also possible to make settings for width or height only, the overall size is maintained then, considering the aspect ratio.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( sHeight:sap.ui.core.CSSSize):sap.ui.commons.Image;

	/**
	* Sets a new value for property {@link #getSrc src}.

Relative or absolute path to URL where the image file is stored.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sSrc New value for property <code>src</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSrc( sSrc:sap.ui.core.URI):sap.ui.commons.Image;

	/**
	* Sets a new value for property {@link #getUseMap useMap}.

The name of the image map that defines the clickable areas

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sUseMap New value for property <code>useMap</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUseMap( sUseMap:String):sap.ui.commons.Image;

	/**
	* Sets a new value for property {@link #getWidth width}.

When the empty value is kept, the original size is not changed. It is also possible to make settings for width or height only, the overall size is maintained then, considering the aspect ratio.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.commons.Image;
}

typedef ImageArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Relative or absolute path to URL where the image file is stored.
	*/
	@:optional var src:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* When the empty value is kept, the original size is not changed. It is also possible to make settings for width or height only, the overall size is maintained then, considering the aspect ratio.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* When the empty value is kept, the original size is not changed. It is also possible to make settings for width or height only, the overall size is maintained then, considering the aspect ratio.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* A decorative image is included for design reasons. Accessibility tools will ignore decorative images. Note: If the Image has an image map (useMap is set), this property will be overridden (the image will not be rendered as decorative). A decorative image has no ALT attribute, so the Alt property is ignored if the image is decorative.
	*/
	@:optional var decorative:haxe.extern.EitherType<String,Bool>;

	/**
	* The alternative text that is displayed in case the Image is not available, or cannot be displayed. If the image is set to decorative this property is ignored.
	*/
	@:optional var alt:String;

	/**
	* The name of the image map that defines the clickable areas
	*/
	@:optional var useMap:String;

	/**
	* Event is fired when the user clicks on the control.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
