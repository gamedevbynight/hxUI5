package sap.ui.commons;

@:native("sap.ui.commons.Slider")

/**
* The interactive control is displayed either as a horizontal or a vertical line with a pointer and units of measurement. Users can move the pointer along the line to change values with graphical support.
*/
extern class Slider extends sap.ui.core.Control implements sap.ui.core.IFormContent
{
	@:overload(function(?sId:String, ?mSettings:SliderArgs):Void {})
	public function new(?mSettings:SliderArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.ui.commons.Slider{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.ui.commons.Slider;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.commons.Slider{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.commons.Slider;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:change change} event of this <code>sap.ui.commons.Slider</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.Slider</code> itself.

Value was changed. This event is fired if the value has changed by a user action.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.Slider</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.Slider;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:liveChange liveChange} event of this <code>sap.ui.commons.Slider</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.Slider</code> itself.

Value was changed. This event is fired during the mouse move. The normal change event is only fired by mouseup.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.Slider</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachLiveChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.Slider;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:change change} event of this <code>sap.ui.commons.Slider</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachChange( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.Slider;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:liveChange liveChange} event of this <code>sap.ui.commons.Slider</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachLiveChange( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.Slider;

	/**
	* Creates a new subclass of class sap.ui.commons.Slider with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

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
	* Gets current value of property {@link #getEditable editable}.

Using the slider interactively requires value "true".

Default value is <code>true</code>.
	* @return	Value of property <code>editable</code>
	*/
	public function getEditable( ):Bool;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Switches enabled state of the control. Disabled fields have different colors, and can not be focused.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets current value of property {@link #getHeight height}.

Height of the vertical slider.

Default value is <code>100%</code>.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getLabels labels}.

Labels to be displayed instead of numbers. Attribute totalUnits and label count should be the same

<b>Note:</b> To show the labels <code>stepLabels</code> must be activated.
	* @return	Value of property <code>labels</code>
	*/
	public function getLabels( ):Array<String>;

	/**
	* Gets current value of property {@link #getMax max}.

Maximal value of the slider

<b>Note:</b> If <code>min</code> is larger than <code>max</code> both values will be switched

Default value is <code>100</code>.
	* @return	Value of property <code>max</code>
	*/
	public function getMax( ):Float;

	/**
	* Returns a metadata object for class sap.ui.commons.Slider.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getMin min}.

Minimal value of the slider.

<b>Note:</b> If <code>min</code> is larger than <code>max</code> both values will be switched

Default value is <code>0</code>.
	* @return	Value of property <code>min</code>
	*/
	public function getMin( ):Float;

	/**
	* Gets current value of property {@link #getSmallStepWidth smallStepWidth}.

The grip can only be moved in steps of this width.
	* @return	Value of property <code>smallStepWidth</code>
	*/
	public function getSmallStepWidth( ):Float;

	/**
	* Gets current value of property {@link #getStepLabels stepLabels}.

Display step numbers for the ticks on the slider.

Default value is <code>false</code>.
	* @return	Value of property <code>stepLabels</code>
	*/
	public function getStepLabels( ):Bool;

	/**
	* Gets current value of property {@link #getTotalUnits totalUnits}.

Number of units that are displayed by ticks. The PageUp and PageDown keys navigate according to these units.
	* @return	Value of property <code>totalUnits</code>
	*/
	public function getTotalUnits( ):Int;

	/**
	* Gets current value of property {@link #getValue value}.

Current value of the slider. (Position of the grip.)

<b>Note:</b> If the value is not in the valid range (between <code>min</code> and <code>max</code>) it will be changed to be in the valid range.

Default value is <code>50</code>.
	* @return	Value of property <code>value</code>
	*/
	public function getValue( ):Float;

	/**
	* Gets current value of property {@link #getVertical vertical}.

Orientation of slider

Default value is <code>false</code>.
	* @return	Value of property <code>vertical</code>
	*/
	public function getVertical( ):Bool;

	/**
	* Gets current value of property {@link #getWidth width}.

Width of the horizontal slider.

Default value is <code>100%</code>.
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
	* Sets a new value for property {@link #getEditable editable}.

Using the slider interactively requires value "true".

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEditable New value for property <code>editable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEditable( bEditable:Bool):sap.ui.commons.Slider;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Switches enabled state of the control. Disabled fields have different colors, and can not be focused.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( bEnabled:Bool):sap.ui.commons.Slider;

	/**
	* Sets a new value for property {@link #getHeight height}.

Height of the vertical slider.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100%</code>.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( sHeight:sap.ui.core.CSSSize):sap.ui.commons.Slider;

	/**
	* Sets a new value for property {@link #getLabels labels}.

Labels to be displayed instead of numbers. Attribute totalUnits and label count should be the same

<b>Note:</b> To show the labels <code>stepLabels</code> must be activated.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sLabels New value for property <code>labels</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLabels( sLabels:Array<String>):sap.ui.commons.Slider;

	/**
	* Sets a new value for property {@link #getMax max}.

Maximal value of the slider

<b>Note:</b> If <code>min</code> is larger than <code>max</code> both values will be switched

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100</code>.
	* @param	fMax New value for property <code>max</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMax( fMax:Float):sap.ui.commons.Slider;

	/**
	* Sets a new value for property {@link #getMin min}.

Minimal value of the slider.

<b>Note:</b> If <code>min</code> is larger than <code>max</code> both values will be switched

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	fMin New value for property <code>min</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMin( fMin:Float):sap.ui.commons.Slider;

	/**
	* Sets a new value for property {@link #getSmallStepWidth smallStepWidth}.

The grip can only be moved in steps of this width.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	fSmallStepWidth New value for property <code>smallStepWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSmallStepWidth( fSmallStepWidth:Float):sap.ui.commons.Slider;

	/**
	* Sets a new value for property {@link #getStepLabels stepLabels}.

Display step numbers for the ticks on the slider.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bStepLabels New value for property <code>stepLabels</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setStepLabels( bStepLabels:Bool):sap.ui.commons.Slider;

	/**
	* Sets a new value for property {@link #getTotalUnits totalUnits}.

Number of units that are displayed by ticks. The PageUp and PageDown keys navigate according to these units.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iTotalUnits New value for property <code>totalUnits</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTotalUnits( iTotalUnits:Int):sap.ui.commons.Slider;

	/**
	* Sets a new value for property {@link #getValue value}.

Current value of the slider. (Position of the grip.)

<b>Note:</b> If the value is not in the valid range (between <code>min</code> and <code>max</code>) it will be changed to be in the valid range.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>50</code>.
	* @param	fValue New value for property <code>value</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValue( fValue:Float):sap.ui.commons.Slider;

	/**
	* Sets a new value for property {@link #getVertical vertical}.

Orientation of slider

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bVertical New value for property <code>vertical</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVertical( bVertical:Bool):sap.ui.commons.Slider;

	/**
	* Sets a new value for property {@link #getWidth width}.

Width of the horizontal slider.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100%</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.commons.Slider;
}

typedef SliderArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Width of the horizontal slider.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Minimal value of the slider.

<b>Note:</b> If <code>min</code> is larger than <code>max</code> both values will be switched
	*/
	@:optional var min:haxe.extern.EitherType<String,Float>;

	/**
	* Maximal value of the slider

<b>Note:</b> If <code>min</code> is larger than <code>max</code> both values will be switched
	*/
	@:optional var max:haxe.extern.EitherType<String,Float>;

	/**
	* Current value of the slider. (Position of the grip.)

<b>Note:</b> If the value is not in the valid range (between <code>min</code> and <code>max</code>) it will be changed to be in the valid range.
	*/
	@:optional var value:haxe.extern.EitherType<String,Float>;

	/**
	* The grip can only be moved in steps of this width.
	*/
	@:optional var smallStepWidth:haxe.extern.EitherType<String,Float>;

	/**
	* Number of units that are displayed by ticks. The PageUp and PageDown keys navigate according to these units.
	*/
	@:optional var totalUnits:haxe.extern.EitherType<String,Int>;

	/**
	* Display step numbers for the ticks on the slider.
	*/
	@:optional var stepLabels:haxe.extern.EitherType<String,Bool>;

	/**
	* Using the slider interactively requires value "true".
	*/
	@:optional var editable:haxe.extern.EitherType<String,Bool>;

	/**
	* Switches enabled state of the control. Disabled fields have different colors, and can not be focused.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Labels to be displayed instead of numbers. Attribute totalUnits and label count should be the same

<b>Note:</b> To show the labels <code>stepLabels</code> must be activated.
	*/
	@:optional var labels:Array<String>;

	/**
	* Orientation of slider
	*/
	@:optional var vertical:haxe.extern.EitherType<String,Bool>;

	/**
	* Height of the vertical slider.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Association to controls / IDs which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / IDs which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Value was changed. This event is fired if the value has changed by a user action.
	*/
	@:optional var change:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Value was changed. This event is fired during the mouse move. The normal change event is only fired by mouseup.
	*/
	@:optional var liveChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
