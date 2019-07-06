package sap.ui.commons;

@:native("sap.ui.commons.RatingIndicator")

/**
* RatingIndicator is used to let the user do some rating on a given topic. The amount of rating symbols can be specified, as well as the URIs to the image icons which shall be used as rating symbols. When the user performs a rating, an event is fired.
*/
extern class RatingIndicator extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:RatingIndicatorArgs):Void {})
	public function new(?mSettings:RatingIndicatorArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.ui.commons.RatingIndicator{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.ui.commons.RatingIndicator;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.commons.RatingIndicator{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.commons.RatingIndicator;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:change change} event of this <code>sap.ui.commons.RatingIndicator</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.RatingIndicator</code> itself.

The event is fired when the user has done a rating.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.RatingIndicator</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.RatingIndicator;

	/**
	* Binds property {@link #getValue value} to model data.

See {@link sap.ui.base.ManagedObject#bindProperty ManagedObject.bindProperty} for a detailed description of the possible properties of <code>oBindingInfo</code>
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindValue( oBindingInfo:Dynamic):sap.ui.commons.RatingIndicator;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:change change} event of this <code>sap.ui.commons.RatingIndicator</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachChange( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.RatingIndicator;

	/**
	* Creates a new subclass of class sap.ui.commons.RatingIndicator with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

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
	* Gets current value of property {@link #getAverageValue averageValue}.

Determines the average value. This value is shown if no value is set. This can be used to display an average Value before the user votes.

Default value is <code>0</code>.
	* @return	Value of property <code>averageValue</code>
	*/
	public function getAverageValue( ):Float;

	/**
	* Gets current value of property {@link #getEditable editable}.

Determines if the rating symbols can be edited.

Default value is <code>true</code>.
	* @return	Value of property <code>editable</code>
	*/
	public function getEditable( ):Bool;

	/**
	* Gets current value of property {@link #getIconHovered iconHovered}.

The URI to the image which is displayed when the mouse hovers onto a rating symbol. If used, a requirement is that all custom icons need to have the same size. Note that when this attribute is used also the other icon attributes need to be set.
	* @return	Value of property <code>iconHovered</code>
	*/
	public function getIconHovered( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getIconSelected iconSelected}.

The URI to the image which shall be displayed for all selected rating symbols. Note that when this attribute is used, also the other icon attributes need to be set.
	* @return	Value of property <code>iconSelected</code>
	*/
	public function getIconSelected( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getIconUnselected iconUnselected}.

The URI to the image which shall be displayed for all unselected rating symbols. If this attribute is used, a requirement is that all custom icons need to have the same size. Note that when this attribute is used also the other icon attributes need to be set.
	* @return	Value of property <code>iconUnselected</code>
	*/
	public function getIconUnselected( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getMaxValue maxValue}.

Determines the number of displayed rating symbols

Default value is <code>5</code>.
	* @return	Value of property <code>maxValue</code>
	*/
	public function getMaxValue( ):Int;

	/**
	* Returns a metadata object for class sap.ui.commons.RatingIndicator.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getValue value}.

Determines the currently selected value. If value is set to sap.ui.commons.RatingIndicator.NoValue, the averageValue is shown.

Default value is <code>0</code>.
	* @return	Value of property <code>value</code>
	*/
	public function getValue( ):Float;

	/**
	* Gets current value of property {@link #getVisualMode visualMode}.

Defines how float values are visualized: Full, Half, Continuous (see enumeration RatingIndicatorVisualMode)

Default value is <code>Half</code>.
	* @return	Value of property <code>visualMode</code>
	*/
	public function getVisualMode( ):sap.ui.commons.RatingIndicatorVisualMode;

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
	* Sets a new value for property {@link #getAverageValue averageValue}.

Determines the average value. This value is shown if no value is set. This can be used to display an average Value before the user votes.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	fAverageValue New value for property <code>averageValue</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAverageValue( fAverageValue:Float):sap.ui.commons.RatingIndicator;

	/**
	* Sets a new value for property {@link #getEditable editable}.

Determines if the rating symbols can be edited.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEditable New value for property <code>editable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEditable( bEditable:Bool):sap.ui.commons.RatingIndicator;

	/**
	* Sets a new value for property {@link #getIconHovered iconHovered}.

The URI to the image which is displayed when the mouse hovers onto a rating symbol. If used, a requirement is that all custom icons need to have the same size. Note that when this attribute is used also the other icon attributes need to be set.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIconHovered New value for property <code>iconHovered</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconHovered( sIconHovered:sap.ui.core.URI):sap.ui.commons.RatingIndicator;

	/**
	* Sets a new value for property {@link #getIconSelected iconSelected}.

The URI to the image which shall be displayed for all selected rating symbols. Note that when this attribute is used, also the other icon attributes need to be set.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIconSelected New value for property <code>iconSelected</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconSelected( sIconSelected:sap.ui.core.URI):sap.ui.commons.RatingIndicator;

	/**
	* Sets a new value for property {@link #getIconUnselected iconUnselected}.

The URI to the image which shall be displayed for all unselected rating symbols. If this attribute is used, a requirement is that all custom icons need to have the same size. Note that when this attribute is used also the other icon attributes need to be set.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIconUnselected New value for property <code>iconUnselected</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconUnselected( sIconUnselected:sap.ui.core.URI):sap.ui.commons.RatingIndicator;

	/**
	* Setter for property <code>maxValue</code>.

Default value is <code>5</code> Minimum value is <code>1</code>
	* @param	iMaxValue new value for property <code>maxValue</code>
	* @return	<code>this</code> to allow method chaining
	*/
	public function setMaxValue( iMaxValue:Int):sap.ui.commons.RatingIndicator;

	/**
	* Sets a new value for property {@link #getValue value}.

Determines the currently selected value. If value is set to sap.ui.commons.RatingIndicator.NoValue, the averageValue is shown.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	fValue New value for property <code>value</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValue( fValue:Float):sap.ui.commons.RatingIndicator;

	/**
	* Sets a new value for property {@link #getVisualMode visualMode}.

Defines how float values are visualized: Full, Half, Continuous (see enumeration RatingIndicatorVisualMode)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Half</code>.
	* @param	sVisualMode New value for property <code>visualMode</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisualMode( sVisualMode:sap.ui.commons.RatingIndicatorVisualMode):sap.ui.commons.RatingIndicator;

	/**
	* Unbinds property {@link #getValue value} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindValue( ):sap.ui.commons.RatingIndicator;
}

typedef RatingIndicatorArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines if the rating symbols can be edited.
	*/
	@:optional var editable:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the number of displayed rating symbols
	*/
	@:optional var maxValue:haxe.extern.EitherType<String,Int>;

	/**
	* Determines the currently selected value. If value is set to sap.ui.commons.RatingIndicator.NoValue, the averageValue is shown.
	*/
	@:optional var value:haxe.extern.EitherType<String,Float>;

	/**
	* Determines the average value. This value is shown if no value is set. This can be used to display an average Value before the user votes.
	*/
	@:optional var averageValue:haxe.extern.EitherType<String,Float>;

	/**
	* The URI to the image which shall be displayed for all selected rating symbols. Note that when this attribute is used, also the other icon attributes need to be set.
	*/
	@:optional var iconSelected:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* The URI to the image which shall be displayed for all unselected rating symbols. If this attribute is used, a requirement is that all custom icons need to have the same size. Note that when this attribute is used also the other icon attributes need to be set.
	*/
	@:optional var iconUnselected:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* The URI to the image which is displayed when the mouse hovers onto a rating symbol. If used, a requirement is that all custom icons need to have the same size. Note that when this attribute is used also the other icon attributes need to be set.
	*/
	@:optional var iconHovered:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Defines how float values are visualized: Full, Half, Continuous (see enumeration RatingIndicatorVisualMode)
	*/
	@:optional var visualMode:haxe.extern.EitherType<String,sap.ui.commons.RatingIndicatorVisualMode>;

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
}
