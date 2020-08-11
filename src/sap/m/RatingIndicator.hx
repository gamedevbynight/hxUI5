package sap.m;

@:native("sap.m.RatingIndicator")

/**
* The rating indicator is used to display a specific number of icons that are used to rate an item. Additionally it is also used to display the average over all ratings. <h3>Structure</h3> <ul> <li>The rating indicator can use different icons (default: stars) which are defined as URIs in the properties <code>iconHovered</code>, <code>iconSelected</code> and <code>iconUnselected</code>.</li> <li>The rating indicator can display half-values ({@link sap.m.RatingIndicatorVisualMode visualMode} = Half) when it is used to show the average. Half-values can't be selected by the user.</li> </ul> <h3>Usage</h3> The preferred number of icons is between 5 (default) and 7. <h3>Responsive Behavior</h3> You can display icons in 4 recommended sizes: <ul> <li>large - 32px</li> <li>medium(default) - 22px</li> <li>small - 16px</li> <li>XS - 12px</li> </ul> <b>Note:</b> If no icon size is set, the rating indicator will set it according to the content density.</h4>
*/
extern class RatingIndicator extends sap.ui.core.Control implements sap.ui.core.IFormContent
{
	@:overload(function(?sId:String, ?mSettings:RatingIndicatorArgs):Void {})
	public function new(?mSettings:RatingIndicatorArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.m.RatingIndicator{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.m.RatingIndicator;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.RatingIndicator{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.RatingIndicator;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:change change} event of this <code>sap.m.RatingIndicator</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.RatingIndicator</code> itself.

The event is fired when the user has done a rating.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.RatingIndicator</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.RatingIndicator;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:liveChange liveChange} event of this <code>sap.m.RatingIndicator</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.RatingIndicator</code> itself.

This event is triggered during the dragging period, each time the rating value changes.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.RatingIndicator</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachLiveChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.RatingIndicator;

	/**
	* Binds property {@link #getValue value} to model data.

See {@link sap.ui.base.ManagedObject#bindProperty ManagedObject.bindProperty} for a detailed description of the possible properties of <code>oBindingInfo</code>
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindValue( oBindingInfo:Dynamic):sap.m.RatingIndicator;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:change change} event of this <code>sap.m.RatingIndicator</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachChange( fnFunction:()->Void, ?oListener:Dynamic):sap.m.RatingIndicator;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:liveChange liveChange} event of this <code>sap.m.RatingIndicator</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachLiveChange( fnFunction:()->Void, ?oListener:Dynamic):sap.m.RatingIndicator;

	/**
	* Creates a new subclass of class sap.m.RatingIndicator with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
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
	* Gets current value of property {@link #getDisplayOnly displayOnly}.

The RatingIndicator in displayOnly mode is not interactive, not editable, not focusable, and not in the tab chain. This setting is used for forms in review mode.

Default value is <code>false</code>.
	* @return	Value of property <code>displayOnly</code>
	*/
	public function getDisplayOnly( ):Bool;

	/**
	* Gets current value of property {@link #getEditable editable}.

Defines whether the user is allowed to edit the RatingIndicator. If editable is false the control is focusable, and in the tab chain but not interactive.

Default value is <code>true</code>.
	* @return	Value of property <code>editable</code>
	*/
	public function getEditable( ):Bool;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Value "true" is required to let the user rate with this control. It is recommended to set this parameter to "false" for the "Small" size which is meant for indicating a value only

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets current value of property {@link #getIconHovered iconHovered}.

The URI to the icon font icon or image that will be displayed for hovered rating symbols. A star icon will be used if the property is not set
	* @return	Value of property <code>iconHovered</code>
	*/
	public function getIconHovered( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getIconSelected iconSelected}.

The URI to the icon font icon or image that will be displayed for selected rating symbols. A star icon will be used if the property is not set
	* @return	Value of property <code>iconSelected</code>
	*/
	public function getIconSelected( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getIconSize iconSize}.

The Size of the image or icon to be displayed. The default value depends on the theme. Please be sure that the size is corresponding to a full pixel value as some browsers don't support subpixel calculations. Recommended size is 1.375rem (22px) for normal, 1rem (16px) for small, and 2rem (32px) for large icons correspondingly.
	* @return	Value of property <code>iconSize</code>
	*/
	public function getIconSize( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getIconUnselected iconUnselected}.

The URI to the icon font icon or image that will be displayed for all unselected rating symbols. A star icon will be used if the property is not set
	* @return	Value of property <code>iconUnselected</code>
	*/
	public function getIconUnselected( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getMaxValue maxValue}.

The number of displayed rating symbols

Default value is <code>5</code>.
	* @return	Value of property <code>maxValue</code>
	*/
	public function getMaxValue( ):Int;

	/**
	* Returns a metadata object for class sap.m.RatingIndicator.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getValue value}.

The indicated value of the rating

Default value is <code>0</code>.
	* @return	Value of property <code>value</code>
	*/
	public function getValue( ):Float;

	/**
	* Gets current value of property {@link #getVisualMode visualMode}.

Defines how float values are visualized: Full, Half (see enumeration RatingIndicatorVisualMode)

Default value is <code>Half</code>.
	* @return	Value of property <code>visualMode</code>
	*/
	public function getVisualMode( ):sap.m.RatingIndicatorVisualMode;

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
	* Sets a new value for property {@link #getDisplayOnly displayOnly}.

The RatingIndicator in displayOnly mode is not interactive, not editable, not focusable, and not in the tab chain. This setting is used for forms in review mode.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bDisplayOnly New value for property <code>displayOnly</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDisplayOnly( ?bDisplayOnly:Bool):sap.m.RatingIndicator;

	/**
	* Sets a new value for property {@link #getEditable editable}.

Defines whether the user is allowed to edit the RatingIndicator. If editable is false the control is focusable, and in the tab chain but not interactive.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEditable New value for property <code>editable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEditable( ?bEditable:Bool):sap.m.RatingIndicator;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Value "true" is required to let the user rate with this control. It is recommended to set this parameter to "false" for the "Small" size which is meant for indicating a value only

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( ?bEnabled:Bool):sap.m.RatingIndicator;

	/**
	* Sets a new value for property {@link #getIconHovered iconHovered}.

The URI to the icon font icon or image that will be displayed for hovered rating symbols. A star icon will be used if the property is not set

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIconHovered New value for property <code>iconHovered</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconHovered( sIconHovered:sap.ui.core.URI):sap.m.RatingIndicator;

	/**
	* Sets a new value for property {@link #getIconSelected iconSelected}.

The URI to the icon font icon or image that will be displayed for selected rating symbols. A star icon will be used if the property is not set

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIconSelected New value for property <code>iconSelected</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconSelected( sIconSelected:sap.ui.core.URI):sap.m.RatingIndicator;

	/**
	* Sets a new value for property {@link #getIconSize iconSize}.

The Size of the image or icon to be displayed. The default value depends on the theme. Please be sure that the size is corresponding to a full pixel value as some browsers don't support subpixel calculations. Recommended size is 1.375rem (22px) for normal, 1rem (16px) for small, and 2rem (32px) for large icons correspondingly.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIconSize New value for property <code>iconSize</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconSize( sIconSize:sap.ui.core.CSSSize):sap.m.RatingIndicator;

	/**
	* Sets a new value for property {@link #getIconUnselected iconUnselected}.

The URI to the icon font icon or image that will be displayed for all unselected rating symbols. A star icon will be used if the property is not set

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIconUnselected New value for property <code>iconUnselected</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconUnselected( sIconUnselected:sap.ui.core.URI):sap.m.RatingIndicator;

	/**
	* Sets a new value for property {@link #getMaxValue maxValue}.

The number of displayed rating symbols

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>5</code>.
	* @param	iMaxValue New value for property <code>maxValue</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxValue( ?iMaxValue:Int):sap.m.RatingIndicator;

	/**
	* Sets the rating value. The method is automatically checking whether the value is in the valid range of 0-{@link #getMaxValue maxValue} and if it is a valid number. Calling the setter with null or undefined will reset the value to it's default.
	* @param	fValue The rating value to be set.
	* @return	Returns <code>this</code> to facilitate method chaining.
	*/
	public function setValue( fValue:Float):sap.m.RatingIndicator;

	/**
	* Sets a new value for property {@link #getVisualMode visualMode}.

Defines how float values are visualized: Full, Half (see enumeration RatingIndicatorVisualMode)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Half</code>.
	* @param	sVisualMode New value for property <code>visualMode</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisualMode( ?sVisualMode:sap.m.RatingIndicatorVisualMode):sap.m.RatingIndicator;

	/**
	* Unbinds property {@link #getValue value} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindValue( ):sap.m.RatingIndicator;
}

typedef RatingIndicatorArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Value "true" is required to let the user rate with this control. It is recommended to set this parameter to "false" for the "Small" size which is meant for indicating a value only
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* The number of displayed rating symbols
	*/
	@:optional var maxValue:haxe.extern.EitherType<String,Int>;

	/**
	* The indicated value of the rating
	*/
	@:optional var value:haxe.extern.EitherType<String,Float>;

	/**
	* The Size of the image or icon to be displayed. The default value depends on the theme. Please be sure that the size is corresponding to a full pixel value as some browsers don't support subpixel calculations. Recommended size is 1.375rem (22px) for normal, 1rem (16px) for small, and 2rem (32px) for large icons correspondingly.
	*/
	@:optional var iconSize:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* The URI to the icon font icon or image that will be displayed for selected rating symbols. A star icon will be used if the property is not set
	*/
	@:optional var iconSelected:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* The URI to the icon font icon or image that will be displayed for all unselected rating symbols. A star icon will be used if the property is not set
	*/
	@:optional var iconUnselected:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* The URI to the icon font icon or image that will be displayed for hovered rating symbols. A star icon will be used if the property is not set
	*/
	@:optional var iconHovered:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Defines how float values are visualized: Full, Half (see enumeration RatingIndicatorVisualMode)
	*/
	@:optional var visualMode:haxe.extern.EitherType<String,sap.m.RatingIndicatorVisualMode>;

	/**
	* The RatingIndicator in displayOnly mode is not interactive, not editable, not focusable, and not in the tab chain. This setting is used for forms in review mode.
	*/
	@:optional var displayOnly:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines whether the user is allowed to edit the RatingIndicator. If editable is false the control is focusable, and in the tab chain but not interactive.
	*/
	@:optional var editable:haxe.extern.EitherType<String,Bool>;

	/**
	* Association to controls / ids which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / ids which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* The event is fired when the user has done a rating.
	*/
	@:optional var change:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is triggered during the dragging period, each time the rating value changes.
	*/
	@:optional var liveChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
