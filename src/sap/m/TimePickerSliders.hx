package sap.m;

@:native("sap.m.TimePickerSliders")

/**
* A picker list container control used inside the {@link sap.m.TimePicker} or standalone to hold all the sliders.
*/
extern class TimePickerSliders extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:TimePickerSlidersArgs):Void {})
	public function new(?mSettings:TimePickerSlidersArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:change change} event of this <code>sap.m.TimePickerSliders</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.TimePickerSliders</code> itself.

Fired when the value is changed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.TimePickerSliders</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.TimePickerSliders;

	/**
	* Collapses all the slider controls.
	* @return	Pointer to the control instance to allow method chaining
	*/
	public function collapseAll( ):sap.m.TimePickerSliders;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:change change} event of this <code>sap.m.TimePickerSliders</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachChange( fnFunction:()->Void, ?oListener:Dynamic):sap.m.TimePickerSliders;

	/**
	* Creates a new subclass of class sap.m.TimePickerSliders with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getDisplayFormat displayFormat}.

Defines the time <code>displayFormat</code> of the sliders. The <code>displayFormat</code> comes from the browser language settings if not set explicitly.
	* @return	Value of property <code>displayFormat</code>
	*/
	public function getDisplayFormat( ):String;

	/**
	* Gets current value of property {@link #getHeight height}.

Sets the height of the container. If percentage value is used the parent container should have specified height
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getLabelText labelText}.

Defines the text of the picker label.

It is read by screen readers. It is visible only on phone.
	* @return	Value of property <code>labelText</code>
	*/
	public function getLabelText( ):String;

	/**
	* Gets current value of property {@link #getLocaleId localeId}.

Defines the locale used to parse string values representing time.

Determines the locale, used to interpret the string, supplied by the <code>value</code> property.

Example: AM in the string "09:04 AM" is locale (language) dependent. The format comes from the browser language settings if not set explicitly. Used in combination with 12 hour <code>displayFormat</code> containing 'a', which stands for day period string.
	* @return	Value of property <code>localeId</code>
	*/
	public function getLocaleId( ):String;

	/**
	* Returns a metadata object for class sap.m.TimePickerSliders.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getMinutesStep minutesStep}.

Sets the minutes slider step. If step is less than 1, it will be automatically converted back to 1. The minutes slider is populated only by multiples of the step.

Default value is <code>1</code>.
	* @return	Value of property <code>minutesStep</code>
	*/
	public function getMinutesStep( ):Int;

	/**
	* Gets current value of property {@link #getSecondsStep secondsStep}.

Sets the seconds slider step. If step is less than 1, it will be automatically converted back to 1. The seconds slider is populated only by multiples of the step.

Default value is <code>1</code>.
	* @return	Value of property <code>secondsStep</code>
	*/
	public function getSecondsStep( ):Int;

	/**
	* Gets current value of property {@link #getSupport2400 support2400}.

Allows to set a value of 24:00, used to indicate the end of the day. Works only with HH or H formats. Don't use it together with am/pm.

Default value is <code>false</code>.
	* @return	Value of property <code>support2400</code>
	*/
	public function getSupport2400( ):Bool;

	/**
	* Gets the time values from the sliders, as a date object.
	* @return	A JavaScript date object
	*/
	public function getTimeValues( ):Dynamic;

	/**
	* Gets current value of property {@link #getValue value}.

Defines the value of the control.
	* @return	Value of property <code>value</code>
	*/
	public function getValue( ):String;

	/**
	* Gets current value of property {@link #getValueFormat valueFormat}.

Determines the format of the <code>value</code> property.
	* @return	Value of property <code>valueFormat</code>
	*/
	public function getValueFormat( ):String;

	/**
	* Gets current value of property {@link #getWidth width}.

Sets the width of the container. The minimum width is 320px.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Opens first slider.
	* @return	Pointer to the control instance to allow method chaining
	*/
	public function openFirstSlider( ):sap.m.TimePickerSliders;

	/**
	* Sets the time <code>displayFormat</code>.
	* @param	sFormat New display format
	* @return	this instance, used for chaining
	*/
	public function setDisplayFormat( sFormat:String):sap.m.TimePickerSliders;

	/**
	* Sets a new value for property {@link #getHeight height}.

Sets the height of the container. If percentage value is used the parent container should have specified height

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( sHeight:sap.ui.core.CSSSize):sap.m.TimePickerSliders;

	/**
	* Sets a new value for property {@link #getLabelText labelText}.

Defines the text of the picker label.

It is read by screen readers. It is visible only on phone.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sLabelText New value for property <code>labelText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLabelText( sLabelText:String):sap.m.TimePickerSliders;

	/**
	* Sets the <code>localeId</code> property.
	* @param	sLocaleId The ID of the Locale
	* @return	this instance, used for chaining
	*/
	public function setLocaleId( sLocaleId:String):sap.m.TimePickerSliders;

	/**
	* Sets the minutes slider step.
	* @param	value The step used to generate values for the minutes slider
	* @return	<code>this</code> to allow method chaining
	*/
	public function setMinutesStep( value:Int):sap.m.TimePickerSliders;

	/**
	* Sets the seconds slider step.
	* @param	value The step used to generate values for the seconds slider
	* @return	<code>this</code> to allow method chaining
	*/
	public function setSecondsStep( value:Int):sap.m.TimePickerSliders;

	/**
	* Sets <code>support2400</code>.
	* @param	bSupport2400 null
	* @return	this instance, used for chaining
	*/
	public function setSupport2400( bSupport2400:Bool):sap.m.TimePickerSliders;

	/**
	* Sets the value of the <code>TimepickerSliders</code> container.
	* @param	sValue The value of the <code>TimepickerSliders</code>
	* @return	Pointer to the control instance to allow method chaining
	*/
	public function setValue( sValue:String):sap.m.TimePickerSliders;

	/**
	* Sets a new value for property {@link #getValueFormat valueFormat}.

Determines the format of the <code>value</code> property.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sValueFormat New value for property <code>valueFormat</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValueFormat( sValueFormat:String):sap.m.TimePickerSliders;

	/**
	* Sets a new value for property {@link #getWidth width}.

Sets the width of the container. The minimum width is 320px.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.m.TimePickerSliders;
}

typedef TimePickerSlidersArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the locale used to parse string values representing time.

Determines the locale, used to interpret the string, supplied by the <code>value</code> property.

Example: AM in the string "09:04 AM" is locale (language) dependent. The format comes from the browser language settings if not set explicitly. Used in combination with 12 hour <code>displayFormat</code> containing 'a', which stands for day period string.
	*/
	@:optional var localeId:String;

	/**
	* Defines the time <code>displayFormat</code> of the sliders. The <code>displayFormat</code> comes from the browser language settings if not set explicitly.
	*/
	@:optional var displayFormat:String;

	/**
	* Defines the text of the picker label.

It is read by screen readers. It is visible only on phone.
	*/
	@:optional var labelText:String;

	/**
	* Sets the minutes slider step. If step is less than 1, it will be automatically converted back to 1. The minutes slider is populated only by multiples of the step.
	*/
	@:optional var minutesStep:haxe.extern.EitherType<String,Int>;

	/**
	* Sets the seconds slider step. If step is less than 1, it will be automatically converted back to 1. The seconds slider is populated only by multiples of the step.
	*/
	@:optional var secondsStep:haxe.extern.EitherType<String,Int>;

	/**
	* Sets the width of the container. The minimum width is 320px.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Sets the height of the container. If percentage value is used the parent container should have specified height
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Defines the value of the control.
	*/
	@:optional var value:String;

	/**
	* Determines the format of the <code>value</code> property.
	*/
	@:optional var valueFormat:String;

	/**
	* Allows to set a value of 24:00, used to indicate the end of the day. Works only with HH or H formats. Don't use it together with am/pm.
	*/
	@:optional var support2400:haxe.extern.EitherType<String,Bool>;

    /**
    * Holds the inner sliders.
    */
	@:optional var _columns:Array<haxe.extern.EitherType<String,sap.m.TimePickerSlider>>;

	/**
	* Fired when the value is changed.
	*/
	@:optional var change:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
