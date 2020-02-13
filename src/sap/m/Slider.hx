package sap.m;

@:native("sap.m.Slider")

/**
* <h3>Overview</h3>

A {@link sap.m.Slider} control represents a numerical range and a handle. The purpose of the control is to enable visual selection of a value in a continuous numerical range by moving an adjustable handle.

<b>Notes:</b> <ul><li>Only horizontal sliders are possible. </li> <li>The handle can be moved in steps of predefined size. This is done with the <code>step</code> property. </li> <li>Setting the property <code>showAdvancedTooltip</code> shows an input field above the handle</li> <li>Setting the property <code>inputsAsTooltips</code> enables the user to enter a specific value in the handle's tooltip. </li> </ul>

<h3>Structure</h3>

The most important properties of the Slider are: <ul> <li> min - The minimum value of the slider range </li> <li> max - The maximum value of the slider range </li> <li> value - The current value of the slider</li> <li> progress - Determines if a progress bar will be shown on the slider range</li> <li> step - Determines the increments in which the slider will move</li> </ul> These properties determine the visualization of the tooltips: <ul> <li> <code>showAdvancedTooltip</code> - Determines if a tooltip should be displayed above the handle</li> <li> <code>inputsAsTooltips</code> - Determines if the tooltip displayed above the slider's handle should include an input field</li> </ul>

<h3>Usage</h3>

The most common usecase is to select values on a continuous numerical scale (e.g. temperature, volume, etc. ).

<h3>Responsive Behavior</h3>

The <code>sap.m.Slider</code> control adjusts to the size of its parent container by recalculating and resizing the width of the control. You can move the slider handle in several different ways: <ul> <li> Drag and drop to the desired value</li> <li> Click/tap on the range bar to move the handle to that location </li> <li> Enter the desired value in the input field (if available) </li> <li> Keyboard (Arrow keys, "+" and "-") </li> </ul>
*/
extern class Slider extends sap.ui.core.Control implements sap.ui.core.IFormContent
{
	@:overload(function(?sId:String, ?mSettings:SliderArgs):Void {})
	public function new(?mSettings:SliderArgs):Void;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.Slider{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.Slider;

	/**
	* Adds some customTooltip to the aggregation {@link #getCustomTooltips customTooltips}.
	* @param	oCustomTooltip The customTooltip to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addCustomTooltip( oCustomTooltip:sap.m.SliderTooltipBase):sap.m.Slider;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:change change} event of this <code>sap.m.Slider</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Slider</code> itself.

This event is triggered after the end user finishes interacting, if there is any change.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Slider</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Slider;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:liveChange liveChange} event of this <code>sap.m.Slider</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Slider</code> itself.

This event is triggered during the dragging period, each time the slider value changes.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Slider</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachLiveChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Slider;

	/**
	* Destroys all the customTooltips in the aggregation {@link #getCustomTooltips customTooltips}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyCustomTooltips( ):sap.m.Slider;

	/**
	* Destroys the scale in the aggregation {@link #getScale scale}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyScale( ):sap.m.Slider;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:change change} event of this <code>sap.m.Slider</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachChange( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Slider;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:liveChange liveChange} event of this <code>sap.m.Slider</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachLiveChange( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Slider;

	/**
	* Creates a new subclass of class sap.m.Slider with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets content of aggregation {@link #getCustomTooltips customTooltips}.

Aggregation for user-defined tooltips. <b>Note:</b> In case of Slider, only the first tooltip of the aggregation is used. In the RangeSlider case - the first two. If no custom tooltips are provided, the default are used
	* @return	null
	*/
	public function getCustomTooltips( ):Array<sap.m.SliderTooltipBase>;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Indicates whether the user can change the value.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets current value of property {@link #getEnableTickmarks enableTickmarks}.

Enables tickmarks visualisation

Default value is <code>false</code>.
	* @return	Value of property <code>enableTickmarks</code>
	*/
	public function getEnableTickmarks( ):Bool;

	/**
	* Gets current value of property {@link #getInputsAsTooltips inputsAsTooltips}.

Indicates whether input fields should be used as tooltips for the handles. <b>Note:</b> Setting this option to <code>true</code> will only work if <code>showAdvancedTooltip</code> is set to <code>true</code>.

Default value is <code>false</code>.
	* @return	Value of property <code>inputsAsTooltips</code>
	*/
	public function getInputsAsTooltips( ):Bool;

	/**
	* Gets current value of property {@link #getMax max}.

The maximum value.

Default value is <code>100</code>.
	* @return	Value of property <code>max</code>
	*/
	public function getMax( ):Float;

	/**
	* Returns a metadata object for class sap.m.Slider.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getMin min}.

The minimum value.

Default value is <code>0</code>.
	* @return	Value of property <code>min</code>
	*/
	public function getMin( ):Float;

	/**
	* Gets current value of property {@link #getName name}.

The name property to be used in the HTML code for the slider (e.g. for HTML forms that send data to the server via submit).

Default value is <code>empty string</code>.
	* @return	Value of property <code>name</code>
	*/
	public function getName( ):String;

	/**
	* Gets current value of property {@link #getProgress progress}.

Indicate whether a progress bar indicator is shown.

Default value is <code>true</code>.
	* @return	Value of property <code>progress</code>
	*/
	public function getProgress( ):Bool;

	/**
	* Gets content of aggregation {@link #getScale scale}.

Scale for visualisation of tickmarks and labels
	* @return	null
	*/
	public function getScale( ):sap.m.IScale;

	/**
	* Gets current value of property {@link #getShowAdvancedTooltip showAdvancedTooltip}.

Indicate whether the handle's advanced tooltip is shown. <b>Note:</b> Setting this option to <code>true</code> will ignore the value set in <code>showHandleTooltip</code>. This will cause only the advanced tooltip to be shown.

Default value is <code>false</code>.
	* @return	Value of property <code>showAdvancedTooltip</code>
	*/
	public function getShowAdvancedTooltip( ):Bool;

	/**
	* Gets current value of property {@link #getShowHandleTooltip showHandleTooltip}.

Indicate whether the handle tooltip is shown.

Default value is <code>true</code>.
	* @return	Value of property <code>showHandleTooltip</code>
	*/
	public function getShowHandleTooltip( ):Bool;

	/**
	* Gets current value of property {@link #getStep step}.

Define the amount of units to change the slider when adjusting by drag and drop.

Defines the size of the slider's selection intervals. (e.g. min = 0, max = 10, step = 5 would result in possible selection of the values 0, 5, 10).

The step must be positive, if a negative number is provided, the default value will be used instead. If the width of the slider converted to pixels is less than the range (max - min), the value will be rounded to multiples of the step size.

Default value is <code>1</code>.
	* @return	Value of property <code>step</code>
	*/
	public function getStep( ):Float;

	/**
	* Gets current value of property {@link #getValue value}.

Define the value.

If the value is lower/higher than the allowed minimum/maximum, the value of the properties <code>min</code>/<code>max</code> are used instead.

Default value is <code>0</code>.
	* @return	Value of property <code>value</code>
	*/
	public function getValue( ):Float;

	/**
	* Gets current value of property {@link #getWidth width}.

Defines the width of the control.

Default value is <code>100%</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.m.SliderTooltipBase</code> in the aggregation {@link #getCustomTooltips customTooltips}. and returns its index if found or -1 otherwise.
	* @param	oCustomTooltip The customTooltip whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfCustomTooltip( oCustomTooltip:sap.m.SliderTooltipBase):Int;

	/**
	* Inserts a customTooltip into the aggregation {@link #getCustomTooltips customTooltips}.
	* @param	oCustomTooltip The customTooltip to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the customTooltip should be inserted at; for a negative value of <code>iIndex</code>, the customTooltip is inserted at position 0; for a value greater than the current size of the aggregation, the customTooltip is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertCustomTooltip( oCustomTooltip:sap.m.SliderTooltipBase, iIndex:Int):sap.m.Slider;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Removes all the controls from the aggregation {@link #getCustomTooltips customTooltips}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllCustomTooltips( ):Array<sap.m.SliderTooltipBase>;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;
	@:overload( function(vCustomTooltip:Int):sap.m.SliderTooltipBase{ })
	@:overload( function(vCustomTooltip:String):sap.m.SliderTooltipBase{ })

	/**
	* Removes a customTooltip from the aggregation {@link #getCustomTooltips customTooltips}.
	* @param	vCustomTooltip The customTooltip to remove or its index or id
	* @return	The removed customTooltip or <code>null</code>
	*/
	public function removeCustomTooltip( vCustomTooltip:sap.m.SliderTooltipBase):sap.m.SliderTooltipBase;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Indicates whether the user can change the value.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( bEnabled:Bool):sap.m.Slider;

	/**
	* Sets a new value for property {@link #getEnableTickmarks enableTickmarks}.

Enables tickmarks visualisation

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bEnableTickmarks New value for property <code>enableTickmarks</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableTickmarks( bEnableTickmarks:Bool):sap.m.Slider;

	/**
	* Sets a new value for property {@link #getInputsAsTooltips inputsAsTooltips}.

Indicates whether input fields should be used as tooltips for the handles. <b>Note:</b> Setting this option to <code>true</code> will only work if <code>showAdvancedTooltip</code> is set to <code>true</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bInputsAsTooltips New value for property <code>inputsAsTooltips</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInputsAsTooltips( bInputsAsTooltips:Bool):sap.m.Slider;

	/**
	* Sets a new value for property {@link #getMax max}.

The maximum value.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100</code>.
	* @param	fMax New value for property <code>max</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMax( fMax:Float):sap.m.Slider;

	/**
	* Sets a new value for property {@link #getMin min}.

The minimum value.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	fMin New value for property <code>min</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMin( fMin:Float):sap.m.Slider;

	/**
	* Sets a new value for property {@link #getName name}.

The name property to be used in the HTML code for the slider (e.g. for HTML forms that send data to the server via submit).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sName New value for property <code>name</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setName( sName:String):sap.m.Slider;

	/**
	* Sets a new value for property {@link #getProgress progress}.

Indicate whether a progress bar indicator is shown.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bProgress New value for property <code>progress</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setProgress( bProgress:Bool):sap.m.Slider;

	/**
	* Sets the aggregated {@link #getScale scale}.
	* @param	oScale The scale to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setScale( oScale:sap.m.IScale):sap.m.Slider;

	/**
	* Sets a new value for property {@link #getShowAdvancedTooltip showAdvancedTooltip}.

Indicate whether the handle's advanced tooltip is shown. <b>Note:</b> Setting this option to <code>true</code> will ignore the value set in <code>showHandleTooltip</code>. This will cause only the advanced tooltip to be shown.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowAdvancedTooltip New value for property <code>showAdvancedTooltip</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowAdvancedTooltip( bShowAdvancedTooltip:Bool):sap.m.Slider;

	/**
	* Sets a new value for property {@link #getShowHandleTooltip showHandleTooltip}.

Indicate whether the handle tooltip is shown.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowHandleTooltip New value for property <code>showHandleTooltip</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowHandleTooltip( bShowHandleTooltip:Bool):sap.m.Slider;

	/**
	* Sets a new value for property {@link #getStep step}.

Define the amount of units to change the slider when adjusting by drag and drop.

Defines the size of the slider's selection intervals. (e.g. min = 0, max = 10, step = 5 would result in possible selection of the values 0, 5, 10).

The step must be positive, if a negative number is provided, the default value will be used instead. If the width of the slider converted to pixels is less than the range (max - min), the value will be rounded to multiples of the step size.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	fStep New value for property <code>step</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setStep( fStep:Float):sap.m.Slider;

	/**
	* Sets the property <code>value</code>.

Default value is <code>0</code>.
	* @param	fNewValue new value for property <code>value</code>.
	* @param	mOptions The options object
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setValue( fNewValue:Float, mOptions:Dynamic):sap.m.Slider;

	/**
	* Sets a new value for property {@link #getWidth width}.

Defines the width of the control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100%</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.m.Slider;

	/**
	* Decrements the value by multiplying the step the <code>step</code> with the given parameter.
	* @param	iStep The number of steps the slider goes down.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function stepDown( ?iStep:Int):sap.m.Slider;

	/**
	* Increments the value by multiplying the <code>step</code> with the given parameter.
	* @param	iStep The number of steps the slider goes up.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function stepUp( ?iStep:Int):sap.m.Slider;
}

typedef SliderArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the width of the control.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Indicates whether the user can change the value.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* The name property to be used in the HTML code for the slider (e.g. for HTML forms that send data to the server via submit).
	*/
	@:optional var name:String;

	/**
	* The minimum value.
	*/
	@:optional var min:haxe.extern.EitherType<String,Float>;

	/**
	* The maximum value.
	*/
	@:optional var max:haxe.extern.EitherType<String,Float>;

	/**
	* Define the amount of units to change the slider when adjusting by drag and drop.

Defines the size of the slider's selection intervals. (e.g. min = 0, max = 10, step = 5 would result in possible selection of the values 0, 5, 10).

The step must be positive, if a negative number is provided, the default value will be used instead. If the width of the slider converted to pixels is less than the range (max - min), the value will be rounded to multiples of the step size.
	*/
	@:optional var step:haxe.extern.EitherType<String,Float>;

	/**
	* Indicate whether a progress bar indicator is shown.
	*/
	@:optional var progress:haxe.extern.EitherType<String,Bool>;

	/**
	* Define the value.

If the value is lower/higher than the allowed minimum/maximum, the value of the properties <code>min</code>/<code>max</code> are used instead.
	*/
	@:optional var value:haxe.extern.EitherType<String,Float>;

	/**
	* Indicate whether the handle tooltip is shown.
	*/
	@:optional var showHandleTooltip:haxe.extern.EitherType<String,Bool>;

	/**
	* Indicate whether the handle's advanced tooltip is shown. <b>Note:</b> Setting this option to <code>true</code> will ignore the value set in <code>showHandleTooltip</code>. This will cause only the advanced tooltip to be shown.
	*/
	@:optional var showAdvancedTooltip:haxe.extern.EitherType<String,Bool>;

	/**
	* Indicates whether input fields should be used as tooltips for the handles. <b>Note:</b> Setting this option to <code>true</code> will only work if <code>showAdvancedTooltip</code> is set to <code>true</code>.
	*/
	@:optional var inputsAsTooltips:haxe.extern.EitherType<String,Bool>;

	/**
	* Enables tickmarks visualisation
	*/
	@:optional var enableTickmarks:haxe.extern.EitherType<String,Bool>;

    /**
    * A Container popup that renders SliderTooltips The actual type should be sap.m.SliderTooltipContainer
    */
	@:optional var _tooltipContainer:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * Scale for visualisation of tickmarks and labels
    */
	@:optional var scale:haxe.extern.EitherType<String,sap.m.IScale>;

    /**
    * Default scale for visualisation of tickmarks, if scale aggregation is not provided
    */
	@:optional var _defaultScale:haxe.extern.EitherType<String,sap.m.ResponsiveScale>;

    /**
    * Multiple Aggregation for Tooltips
    */
	@:optional var _defaultTooltips:Array<haxe.extern.EitherType<String,sap.m.SliderTooltipBase>>;

    /**
    * Aggregation for user-defined tooltips. <b>Note:</b> In case of Slider, only the first tooltip of the aggregation is used. In the RangeSlider case - the first two. If no custom tooltips are provided, the default are used
    */
	@:optional var customTooltips:Array<haxe.extern.EitherType<String,sap.m.SliderTooltipBase>>;

    /**
    * Invisible text for handles and progress announcement
    */
	@:optional var _handlesLabels:Array<haxe.extern.EitherType<String,sap.ui.core.InvisibleText>>;

	/**
	* Association to controls / IDs which label this control (see WAI-ARIA attribute <code>aria-labelledby</code>).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* This event is triggered after the end user finishes interacting, if there is any change.
	*/
	@:optional var change:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is triggered during the dragging period, each time the slider value changes.
	*/
	@:optional var liveChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
