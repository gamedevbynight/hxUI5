package sap.m;

@:native("sap.m.ProgressIndicator")

/**
* Shows the progress of a process in a graphical way. To indicate the progress, the inside of the ProgressIndicator is filled with a color. Additionally, a user-defined string can be displayed on the ProgressIndicator.
*/
extern class ProgressIndicator extends sap.ui.core.Control implements sap.ui.core.IFormContent
{
	@:overload(function(?sId:String, ?mSettings:ProgressIndicatorArgs):Void {})
	public function new(?mSettings:ProgressIndicatorArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.m.ProgressIndicator{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.m.ProgressIndicator;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.ProgressIndicator{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.ProgressIndicator;

	/**
	* Creates a new subclass of class sap.m.ProgressIndicator with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

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
	* Gets current value of property {@link #getDisplayAnimation displayAnimation}.

Determines whether a percentage change is displayed with animation.

Default value is <code>true</code>.
	* @return	Value of property <code>displayAnimation</code>
	*/
	public function getDisplayAnimation( ):Bool;

	/**
	* Gets current value of property {@link #getDisplayOnly displayOnly}.

Determines whether the control is in display-only state where the control has different visualization and cannot be focused.

Default value is <code>false</code>.
	* @return	Value of property <code>displayOnly</code>
	*/
	public function getDisplayOnly( ):Bool;

	/**
	* Gets current value of property {@link #getDisplayValue displayValue}.

Specifies the text value to be displayed in the bar.
	* @return	Value of property <code>displayValue</code>
	*/
	public function getDisplayValue( ):String;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Switches enabled state of the control. Disabled fields have different colors, and cannot be focused.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets current value of property {@link #getHeight height}.

Specifies the height of the control. The default value depends on the theme. Suggested size for normal use is 2.5rem (40px). Suggested size for small size (like for use in ObjectHeader) is 1.375rem (22px).
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.m.ProgressIndicator.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getPercentValue percentValue}.

Specifies the numerical value in percent for the length of the progress bar.

<b>Note:</b> If a value greater than 100 is provided, the <code>percentValue</code> is set to 100. In other cases of invalid value, <code>percentValue</code> is set to its default of 0.

Default value is <code>0</code>.
	* @return	Value of property <code>percentValue</code>
	*/
	public function getPercentValue( ):Float;

	/**
	* Gets current value of property {@link #getShowValue showValue}.

Indicates whether the displayValue should be shown in the ProgressIndicator.

Default value is <code>true</code>.
	* @return	Value of property <code>showValue</code>
	*/
	public function getShowValue( ):Bool;

	/**
	* Gets current value of property {@link #getState state}.

Specifies the state of the bar. Enumeration sap.ui.core.ValueState provides Error, Warning, Success, Information, None (default value). The color for each state depends on the theme.

Default value is <code>None</code>.
	* @return	Value of property <code>state</code>
	*/
	public function getState( ):sap.ui.core.ValueState;

	/**
	* Gets current value of property {@link #getTextDirection textDirection}.

Specifies the element's text directionality with enumerated options (RTL or LTR). By default, the control inherits text direction from the DOM.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>textDirection</code>
	*/
	public function getTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Gets current value of property {@link #getWidth width}.

Specifies the width of the control.

Default value is <code>'100%'</code>.
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
	* Sets a new value for property {@link #getDisplayAnimation displayAnimation}.

Determines whether a percentage change is displayed with animation.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bDisplayAnimation New value for property <code>displayAnimation</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDisplayAnimation( ?bDisplayAnimation:Bool):sap.m.ProgressIndicator;

	/**
	* Sets a new value for property {@link #getDisplayOnly displayOnly}.

Determines whether the control is in display-only state where the control has different visualization and cannot be focused.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bDisplayOnly New value for property <code>displayOnly</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDisplayOnly( ?bDisplayOnly:Bool):sap.m.ProgressIndicator;

	/**
	* Sets a new value for property {@link #getDisplayValue displayValue}.

Specifies the text value to be displayed in the bar.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sDisplayValue New value for property <code>displayValue</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDisplayValue( ?sDisplayValue:String):sap.m.ProgressIndicator;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Switches enabled state of the control. Disabled fields have different colors, and cannot be focused.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( ?bEnabled:Bool):sap.m.ProgressIndicator;

	/**
	* Sets a new value for property {@link #getHeight height}.

Specifies the height of the control. The default value depends on the theme. Suggested size for normal use is 2.5rem (40px). Suggested size for small size (like for use in ObjectHeader) is 1.375rem (22px).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( ?sHeight:sap.ui.core.CSSSize):sap.m.ProgressIndicator;

	/**
	* Sets a new value for property {@link #getPercentValue percentValue}.

Specifies the numerical value in percent for the length of the progress bar.

<b>Note:</b> If a value greater than 100 is provided, the <code>percentValue</code> is set to 100. In other cases of invalid value, <code>percentValue</code> is set to its default of 0.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	fPercentValue New value for property <code>percentValue</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPercentValue( ?fPercentValue:Float):sap.m.ProgressIndicator;

	/**
	* Sets a new value for property {@link #getShowValue showValue}.

Indicates whether the displayValue should be shown in the ProgressIndicator.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowValue New value for property <code>showValue</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowValue( ?bShowValue:Bool):sap.m.ProgressIndicator;

	/**
	* Sets a new value for property {@link #getState state}.

Specifies the state of the bar. Enumeration sap.ui.core.ValueState provides Error, Warning, Success, Information, None (default value). The color for each state depends on the theme.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sState New value for property <code>state</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setState( ?sState:sap.ui.core.ValueState):sap.m.ProgressIndicator;

	/**
	* Sets a new value for property {@link #getTextDirection textDirection}.

Specifies the element's text directionality with enumerated options (RTL or LTR). By default, the control inherits text direction from the DOM.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sTextDirection New value for property <code>textDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextDirection( ?sTextDirection:sap.ui.core.TextDirection):sap.m.ProgressIndicator;

	/**
	* Sets a new value for property {@link #getWidth width}.

Specifies the width of the control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>'100%'</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.m.ProgressIndicator;
}

typedef ProgressIndicatorArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Switches enabled state of the control. Disabled fields have different colors, and cannot be focused.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies the state of the bar. Enumeration sap.ui.core.ValueState provides Error, Warning, Success, Information, None (default value). The color for each state depends on the theme.
	*/
	@:optional var state:haxe.extern.EitherType<String,sap.ui.core.ValueState>;

	/**
	* Specifies the text value to be displayed in the bar.
	*/
	@:optional var displayValue:String;

	/**
	* Specifies the numerical value in percent for the length of the progress bar.

<b>Note:</b> If a value greater than 100 is provided, the <code>percentValue</code> is set to 100. In other cases of invalid value, <code>percentValue</code> is set to its default of 0.
	*/
	@:optional var percentValue:haxe.extern.EitherType<String,Float>;

	/**
	* Indicates whether the displayValue should be shown in the ProgressIndicator.
	*/
	@:optional var showValue:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies the width of the control.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Specifies the height of the control. The default value depends on the theme. Suggested size for normal use is 2.5rem (40px). Suggested size for small size (like for use in ObjectHeader) is 1.375rem (22px).
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Specifies the element's text directionality with enumerated options (RTL or LTR). By default, the control inherits text direction from the DOM.
	*/
	@:optional var textDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

	/**
	* Determines whether the control is in display-only state where the control has different visualization and cannot be focused.
	*/
	@:optional var displayOnly:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether a percentage change is displayed with animation.
	*/
	@:optional var displayAnimation:haxe.extern.EitherType<String,Bool>;

	/**
	* Association to controls / IDs which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / IDs which label this control (see WAI-ARIA attribute aria-labelledBy).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;
}
