package sap.m;

@:native("sap.m.Image")

/**
* A wrapper around the &lt;img&gt; tag; the image can be loaded from a remote or local server.

If property <code>densityAware</code> is true, a density-specific image will be loaded by constructing a density-specific image name in format <code>[imageName]@[densityValue].[extension]</code> from the given <code>src</code> and the <code>devicePixelRatio</code> of the current device. The only supported density values are 1, 1.5 and 2. If the original <code>devicePixelRatio</code> ratio isn't one of the three valid numbers, it will be rounded to the nearest one.

There are various size setting options available, and the images can be combined with actions.

From version 1.30, a new image mode {@link sap.m.ImageMode.Background} is added. When this mode is set, the <code>src</code> property is set using the CSS style <code>background-image</code>. The properties <code>backgroundSize</code>, <code>backgroundPosition</code>, and <code>backgroundRepeat</code> take effect only when the image is in <code>sap.m.ImageMode.Background</code> mode. In order to display the high density image correctly, the <code>backgroundSize</code> should be set to the dimension of the normal density version.
*/
extern class Image extends sap.ui.core.Control implements sap.ui.core.IFormContent
{
	@:overload(function(?sId:String, ?mSettings:ImageArgs):Void {})
	public function new(?mSettings:ImageArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.m.Image{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.m.Image;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.Image{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.Image;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:error error} event of this <code>sap.m.Image</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Image</code> itself.

Event is fired when the image resource can't be loaded. If densityAware is set to true, the event is fired when none of the fallback resources can be loaded.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Image</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachError( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Image;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:load load} event of this <code>sap.m.Image</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Image</code> itself.

Event is fired when the image resource is loaded.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Image</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachLoad( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Image;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.m.Image</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Image</code> itself.

Event is fired when the user clicks on the control.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Image</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Image;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:tap tap} event of this <code>sap.m.Image</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Image</code> itself.

Event is fired when the user clicks on the control. (This event is deprecated, use the press event instead)
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Image</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachTap( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Image;

	/**
	* Binds aggregation {@link #getDetailBox detailBox} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindDetailBox( oBindingInfo:Dynamic):sap.m.Image;

	/**
	* Destroys the detailBox in the aggregation {@link #getDetailBox detailBox}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyDetailBox( ):sap.m.Image;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:error error} event of this <code>sap.m.Image</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachError( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Image;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:load load} event of this <code>sap.m.Image</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachLoad( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Image;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.m.Image</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Image;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:tap tap} event of this <code>sap.m.Image</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachTap( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Image;

	/**
	* Creates a new subclass of class sap.m.Image with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getActiveSrc activeSrc}.

The source property which is used when the image is pressed.

Default value is <code>empty string</code>.
	* @return	Value of property <code>activeSrc</code>
	*/
	public function getActiveSrc( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getAlt alt}.

The alternative text that is displayed in case the image is not available, or cannot be displayed.

If the image is set to decorative, this property is ignored.
	* @return	Value of property <code>alt</code>
	*/
	public function getAlt( ):String;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @return	null
	*/
	public function getAriaDescribedBy( ):Array<sap.ui.core.ID>;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets current value of property {@link #getBackgroundPosition backgroundPosition}.

Defines the position of the image in <code>sap.m.ImageMode.Background</code> mode.

This property is set on the output DOM element using the CSS style <code>background-position</code>. It takes effect only when the <code>mode</code> property is set to <code>sap.m.ImageMode.Background</code>.

Default value is <code>initial</code>.
	* @return	Value of property <code>backgroundPosition</code>
	*/
	public function getBackgroundPosition( ):String;

	/**
	* Gets current value of property {@link #getBackgroundRepeat backgroundRepeat}.

Defines whether the source image is repeated when the output DOM element is bigger than the source.

This property is set on the output DOM element using the CSS style <code>background-repeat</code>. It takes effect only when the <code>mode</code> property is set to <code>sap.m.ImageMode.Background</code>.

Default value is <code>no-repeat</code>.
	* @return	Value of property <code>backgroundRepeat</code>
	*/
	public function getBackgroundRepeat( ):String;

	/**
	* Gets current value of property {@link #getBackgroundSize backgroundSize}.

Defines the size of the image in <code>sap.m.ImageMode.Background</code> mode.

This property is set on the output DOM element using the CSS style <code>background-size</code>. It takes effect only when the <code>mode</code> property is set to <code>sap.m.ImageMode.Background</code>.

Default value is <code>cover</code>.
	* @return	Value of property <code>backgroundSize</code>
	*/
	public function getBackgroundSize( ):String;

	/**
	* Gets current value of property {@link #getDecorative decorative}.

A decorative image is included for design reasons; accessibility tools will ignore decorative images.

Note: If the image has an image map (<code>useMap</code> is set), this property will be overridden (the image will not be rendered as decorative). A decorative image has no <code>ALT</code> attribute, so the <code>alt</code> property is ignored if the image is decorative.

Default value is <code>true</code>.
	* @return	Value of property <code>decorative</code>
	*/
	public function getDecorative( ):Bool;

	/**
	* Gets current value of property {@link #getDensityAware densityAware}.

If this is set to <code>true</code>, one or more network requests will be made that try to obtain the density perfect version of the image.

By default, this is set to <code>false</code>, so the <code>src</code> image is loaded directly without attempting to fetch the density perfect image for high-density devices.

<b>Note:</b> Before 1.60, the default value was set to <code>true</code>, which brought redundant network requests for apps that used the default but did not provide density perfect image versions on server-side. You should set this property to <code>true</code> only if you also provide the corresponding image versions for high-density devices.

Default value is <code>false</code>.
	* @return	Value of property <code>densityAware</code>
	*/
	public function getDensityAware( ):Bool;

	/**
	* Gets content of aggregation {@link #getDetailBox detailBox}.

A <code>sap.m.LightBox</code> instance that will be opened automatically when the user interacts with the <code>Image</code> control.

The <code>tap</code> event will still be fired.
	* @return	null
	*/
	public function getDetailBox( ):sap.m.LightBox;

	/**
	* Gets current value of property {@link #getHeight height}.

When the empty value is kept, the original size is not changed.

It is also possible to make settings for width or height only, in which case the original ratio between width/height is maintained. When the <code>mode</code> property is set to <code>sap.m.ImageMode.Background</code>, this property always needs to be set. Otherwise the output DOM element has a 0 size.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.m.Image.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getMode mode}.

Defines how the <code>src</code> and the <code>activeSrc</code> is output to the DOM Element.

When set to <code>sap.m.ImageMode.Image</code>, which is the default value, the <code>src</code> (<code>activeSrc</code>) is set to the <code>src</code> attribute of the &lt;img&gt; tag. When set to <code>sap.m.ImageMode.Background</code>, the <code>src</code> (<code>activeSrc</code>) is set to the CSS style <code>background-image</code> and the root DOM element is rendered as a &lt;span&gt; tag instead of an &lt;img&gt; tag.

Default value is <code>Image</code>.
	* @return	Value of property <code>mode</code>
	*/
	public function getMode( ):sap.m.ImageMode;

	/**
	* Gets current value of property {@link #getSrc src}.

Relative or absolute path to URL where the image file is stored.

The path will be adapted to the density-aware format according to the density of the device following the naming convention [imageName]@[densityValue].[extension].
	* @return	Value of property <code>src</code>
	*/
	public function getSrc( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getUseMap useMap}.

The name of the image map that defines the clickable areas.
	* @return	Value of property <code>useMap</code>
	*/
	public function getUseMap( ):String;

	/**
	* Gets current value of property {@link #getWidth width}.

When the empty value is kept, the original size is not changed.

It is also possible to make settings for width or height only, in which case the original ratio between width/height is maintained. When the <code>mode</code> property is set to <code>sap.m.ImageMode.Background</code>, this property always needs to be set. Otherwise the output DOM element has a 0 size.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Removes all the controls in the association named {@link #getAriaDescribedBy ariaDescribedBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaDescribedBy( ):Array<sap.ui.core.ID>;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;
	@:overload( function(vAriaDescribedBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaDescribedBy from the association named {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to be removed or its index or ID
	* @return	The removed ariaDescribedBy or <code>null</code>
	*/
	public function removeAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.ui.core.ID;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;

	/**
	* Sets a new value for property {@link #getActiveSrc activeSrc}.

The source property which is used when the image is pressed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sActiveSrc New value for property <code>activeSrc</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setActiveSrc( sActiveSrc:sap.ui.core.URI):sap.m.Image;

	/**
	* Sets a new value for property {@link #getAlt alt}.

The alternative text that is displayed in case the image is not available, or cannot be displayed.

If the image is set to decorative, this property is ignored.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sAlt New value for property <code>alt</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAlt( sAlt:String):sap.m.Image;

	/**
	* Sets a new value for property {@link #getBackgroundPosition backgroundPosition}.

Defines the position of the image in <code>sap.m.ImageMode.Background</code> mode.

This property is set on the output DOM element using the CSS style <code>background-position</code>. It takes effect only when the <code>mode</code> property is set to <code>sap.m.ImageMode.Background</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>initial</code>.
	* @param	sBackgroundPosition New value for property <code>backgroundPosition</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundPosition( sBackgroundPosition:String):sap.m.Image;

	/**
	* Sets a new value for property {@link #getBackgroundRepeat backgroundRepeat}.

Defines whether the source image is repeated when the output DOM element is bigger than the source.

This property is set on the output DOM element using the CSS style <code>background-repeat</code>. It takes effect only when the <code>mode</code> property is set to <code>sap.m.ImageMode.Background</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>no-repeat</code>.
	* @param	sBackgroundRepeat New value for property <code>backgroundRepeat</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundRepeat( sBackgroundRepeat:String):sap.m.Image;

	/**
	* Sets a new value for property {@link #getBackgroundSize backgroundSize}.

Defines the size of the image in <code>sap.m.ImageMode.Background</code> mode.

This property is set on the output DOM element using the CSS style <code>background-size</code>. It takes effect only when the <code>mode</code> property is set to <code>sap.m.ImageMode.Background</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>cover</code>.
	* @param	sBackgroundSize New value for property <code>backgroundSize</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundSize( sBackgroundSize:String):sap.m.Image;

	/**
	* Sets a new value for property {@link #getDecorative decorative}.

A decorative image is included for design reasons; accessibility tools will ignore decorative images.

Note: If the image has an image map (<code>useMap</code> is set), this property will be overridden (the image will not be rendered as decorative). A decorative image has no <code>ALT</code> attribute, so the <code>alt</code> property is ignored if the image is decorative.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bDecorative New value for property <code>decorative</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDecorative( bDecorative:Bool):sap.m.Image;

	/**
	* Sets a new value for property {@link #getDensityAware densityAware}.

If this is set to <code>true</code>, one or more network requests will be made that try to obtain the density perfect version of the image.

By default, this is set to <code>false</code>, so the <code>src</code> image is loaded directly without attempting to fetch the density perfect image for high-density devices.

<b>Note:</b> Before 1.60, the default value was set to <code>true</code>, which brought redundant network requests for apps that used the default but did not provide density perfect image versions on server-side. You should set this property to <code>true</code> only if you also provide the corresponding image versions for high-density devices.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bDensityAware New value for property <code>densityAware</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDensityAware( bDensityAware:Bool):sap.m.Image;
	@:overload( function(oLightBox:sap.m.LightBox):Dynamic{ })

	/**
	* Sets the <code>detailBox</code> aggregation.
	* @param	oLightBox Instance of the <code>LightBox</code> control or undefined
	* @return	<code>this</code> for chaining
	*/
	public function setDetailBox( oLightBox:Dynamic):Dynamic;

	/**
	* Sets a new value for property {@link #getHeight height}.

When the empty value is kept, the original size is not changed.

It is also possible to make settings for width or height only, in which case the original ratio between width/height is maintained. When the <code>mode</code> property is set to <code>sap.m.ImageMode.Background</code>, this property always needs to be set. Otherwise the output DOM element has a 0 size.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( sHeight:sap.ui.core.CSSSize):sap.m.Image;

	/**
	* Sets a new value for property {@link #getMode mode}.

Defines how the <code>src</code> and the <code>activeSrc</code> is output to the DOM Element.

When set to <code>sap.m.ImageMode.Image</code>, which is the default value, the <code>src</code> (<code>activeSrc</code>) is set to the <code>src</code> attribute of the &lt;img&gt; tag. When set to <code>sap.m.ImageMode.Background</code>, the <code>src</code> (<code>activeSrc</code>) is set to the CSS style <code>background-image</code> and the root DOM element is rendered as a &lt;span&gt; tag instead of an &lt;img&gt; tag.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Image</code>.
	* @param	sMode New value for property <code>mode</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMode( sMode:sap.m.ImageMode):sap.m.Image;

	/**
	* Sets a new value for property {@link #getSrc src}.

Relative or absolute path to URL where the image file is stored.

The path will be adapted to the density-aware format according to the density of the device following the naming convention [imageName]@[densityValue].[extension].

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sSrc New value for property <code>src</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSrc( sSrc:sap.ui.core.URI):sap.m.Image;

	/**
	* Sets a new value for property {@link #getUseMap useMap}.

The name of the image map that defines the clickable areas.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sUseMap New value for property <code>useMap</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUseMap( sUseMap:String):sap.m.Image;

	/**
	* Sets a new value for property {@link #getWidth width}.

When the empty value is kept, the original size is not changed.

It is also possible to make settings for width or height only, in which case the original ratio between width/height is maintained. When the <code>mode</code> property is set to <code>sap.m.ImageMode.Background</code>, this property always needs to be set. Otherwise the output DOM element has a 0 size.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.m.Image;

	/**
	* Unbinds aggregation {@link #getDetailBox detailBox} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindDetailBox( ):sap.m.Image;
}

typedef ImageArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Relative or absolute path to URL where the image file is stored.

The path will be adapted to the density-aware format according to the density of the device following the naming convention [imageName]@[densityValue].[extension].
	*/
	@:optional var src:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* When the empty value is kept, the original size is not changed.

It is also possible to make settings for width or height only, in which case the original ratio between width/height is maintained. When the <code>mode</code> property is set to <code>sap.m.ImageMode.Background</code>, this property always needs to be set. Otherwise the output DOM element has a 0 size.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* When the empty value is kept, the original size is not changed.

It is also possible to make settings for width or height only, in which case the original ratio between width/height is maintained. When the <code>mode</code> property is set to <code>sap.m.ImageMode.Background</code>, this property always needs to be set. Otherwise the output DOM element has a 0 size.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* A decorative image is included for design reasons; accessibility tools will ignore decorative images.

Note: If the image has an image map (<code>useMap</code> is set), this property will be overridden (the image will not be rendered as decorative). A decorative image has no <code>ALT</code> attribute, so the <code>alt</code> property is ignored if the image is decorative.
	*/
	@:optional var decorative:haxe.extern.EitherType<String,Bool>;

	/**
	* The alternative text that is displayed in case the image is not available, or cannot be displayed.

If the image is set to decorative, this property is ignored.
	*/
	@:optional var alt:String;

	/**
	* The name of the image map that defines the clickable areas.
	*/
	@:optional var useMap:String;

	/**
	* If this is set to <code>true</code>, one or more network requests will be made that try to obtain the density perfect version of the image.

By default, this is set to <code>false</code>, so the <code>src</code> image is loaded directly without attempting to fetch the density perfect image for high-density devices.

<b>Note:</b> Before 1.60, the default value was set to <code>true</code>, which brought redundant network requests for apps that used the default but did not provide density perfect image versions on server-side. You should set this property to <code>true</code> only if you also provide the corresponding image versions for high-density devices.
	*/
	@:optional var densityAware:haxe.extern.EitherType<String,Bool>;

	/**
	* The source property which is used when the image is pressed.
	*/
	@:optional var activeSrc:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Defines how the <code>src</code> and the <code>activeSrc</code> is output to the DOM Element.

When set to <code>sap.m.ImageMode.Image</code>, which is the default value, the <code>src</code> (<code>activeSrc</code>) is set to the <code>src</code> attribute of the &lt;img&gt; tag. When set to <code>sap.m.ImageMode.Background</code>, the <code>src</code> (<code>activeSrc</code>) is set to the CSS style <code>background-image</code> and the root DOM element is rendered as a &lt;span&gt; tag instead of an &lt;img&gt; tag.
	*/
	@:optional var mode:haxe.extern.EitherType<String,sap.m.ImageMode>;

	/**
	* Defines the size of the image in <code>sap.m.ImageMode.Background</code> mode.

This property is set on the output DOM element using the CSS style <code>background-size</code>. It takes effect only when the <code>mode</code> property is set to <code>sap.m.ImageMode.Background</code>.
	*/
	@:optional var backgroundSize:String;

	/**
	* Defines the position of the image in <code>sap.m.ImageMode.Background</code> mode.

This property is set on the output DOM element using the CSS style <code>background-position</code>. It takes effect only when the <code>mode</code> property is set to <code>sap.m.ImageMode.Background</code>.
	*/
	@:optional var backgroundPosition:String;

	/**
	* Defines whether the source image is repeated when the output DOM element is bigger than the source.

This property is set on the output DOM element using the CSS style <code>background-repeat</code>. It takes effect only when the <code>mode</code> property is set to <code>sap.m.ImageMode.Background</code>.
	*/
	@:optional var backgroundRepeat:String;

    /**
    * A <code>sap.m.LightBox</code> instance that will be opened automatically when the user interacts with the <code>Image</code> control.

The <code>tap</code> event will still be fired.
    */
	@:optional var detailBox:haxe.extern.EitherType<String,sap.m.LightBox>;

	/**
	* Association to controls / ids which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / ids which label this control (see WAI-ARIA attribute aria-labelledBy).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Event is fired when the image resource can't be loaded. If densityAware is set to true, the event is fired when none of the fallback resources can be loaded.
	*/
	@:optional var error:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event is fired when the image resource is loaded.
	*/
	@:optional var load:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event is fired when the user clicks on the control.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event is fired when the user clicks on the control. (This event is deprecated, use the press event instead)
	*/
	@:optional var tap:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
