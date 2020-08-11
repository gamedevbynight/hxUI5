package sap.m;

@:native("sap.m.NumericContent")

/**
* Shows numeric values used for example in tiles colored according to their meaning and displays deviations.
*/
extern class NumericContent extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:NumericContentArgs):Void {})
	public function new(?mSettings:NumericContentArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.m.NumericContent</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.NumericContent</code> itself.

The event is fired when the user chooses the numeric content.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.NumericContent</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.NumericContent;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.m.NumericContent</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.NumericContent;

	/**
	* Creates a new subclass of class sap.m.NumericContent with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAdaptiveFontSize adaptiveFontSize}.

If set to its default value true this property applies the appropriate font style class based on the language. When set to false the font size will always be large

Default value is <code>true</code>.
	* @return	Value of property <code>adaptiveFontSize</code>
	*/
	public function getAdaptiveFontSize( ):Bool;

	/**
	* Gets current value of property {@link #getAnimateTextChange animateTextChange}.

If set to true, the change of the value will be animated.

Default value is <code>true</code>.
	* @return	Value of property <code>animateTextChange</code>
	*/
	public function getAnimateTextChange( ):Bool;

	/**
	* Gets current value of property {@link #getFormatterValue formatterValue}.

If set to true, the value parameter contains a numeric value and scale. If set to false (default), the value parameter contains a numeric value only.

Default value is <code>false</code>.
	* @return	Value of property <code>formatterValue</code>
	*/
	public function getFormatterValue( ):Bool;

	/**
	* Gets current value of property {@link #getIcon icon}.

The icon to be displayed as a graphical element within the control. This can be an image or an icon from the icon font.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getIconDescription iconDescription}.

Description of an icon that is used in the tooltip.
	* @return	Value of property <code>iconDescription</code>
	*/
	public function getIconDescription( ):String;

	/**
	* Gets current value of property {@link #getIndicator indicator}.

The indicator arrow that shows value deviation.

Default value is <code>None</code>.
	* @return	Value of property <code>indicator</code>
	*/
	public function getIndicator( ):sap.m.DeviationIndicator;

	/**
	* Returns a metadata object for class sap.m.NumericContent.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getNullifyValue nullifyValue}.

If set to true, the omitted value property is set to 0.

Default value is <code>true</code>.
	* @return	Value of property <code>nullifyValue</code>
	*/
	public function getNullifyValue( ):Bool;

	/**
	* Gets current value of property {@link #getScale scale}.

The scaling prefix. Financial characters can be used for currencies and counters. The SI prefixes can be used for units. If the scaling prefix contains more than three characters, only the first three characters are displayed.
	* @return	Value of property <code>scale</code>
	*/
	public function getScale( ):String;

	/**
	* Gets current value of property {@link #getState state}.

Indicates the load status.

Default value is <code>Loaded</code>.
	* @return	Value of property <code>state</code>
	*/
	public function getState( ):sap.m.LoadState;

	/**
	* Gets current value of property {@link #getTruncateValueTo truncateValueTo}.

The number of characters of the <code>value</code> property to display.

<b>Note</b> If <code>adaptiveFontSize</code> is set to <code>true</code> the default value of this property will vary between languages. If <code>adaptiveFontSize</code> is set to <code>false</code> the default value of this property is <code>4</code>.
	* @return	Value of property <code>truncateValueTo</code>
	*/
	public function getTruncateValueTo( ):Int;

	/**
	* Gets current value of property {@link #getValue value}.

The actual value.
	* @return	Value of property <code>value</code>
	*/
	public function getValue( ):String;

	/**
	* Gets current value of property {@link #getValueColor valueColor}.

The semantic color of the value.

Default value is <code>Neutral</code>.
	* @return	Value of property <code>valueColor</code>
	*/
	public function getValueColor( ):sap.m.ValueColor;

	/**
	* Gets current value of property {@link #getWidth width}.

The width of the control. If it is not set, the size of the control is defined by the 'size' property.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getWithMargin withMargin}.

If the value is set to false, the content is adjusted to the whole size of the control.

Default value is <code>true</code>.
	* @return	Value of property <code>withMargin</code>
	*/
	public function getWithMargin( ):Bool;

	/**
	* Sets a new value for property {@link #getAdaptiveFontSize adaptiveFontSize}.

If set to its default value true this property applies the appropriate font style class based on the language. When set to false the font size will always be large

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bAdaptiveFontSize New value for property <code>adaptiveFontSize</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
<<<<<<< HEAD
	public function setAdaptiveFontSize( ?bAdaptiveFontSize:Bool):sap.m.NumericContent;
=======
	public function setAdaptiveFontSize( bAdaptiveFontSize:Bool):sap.m.NumericContent;
>>>>>>> bd78e88ba76c5bd0a95baa0cbb72c1713c532a11

	/**
	* Sets a new value for property {@link #getAnimateTextChange animateTextChange}.

If set to true, the change of the value will be animated.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bAnimateTextChange New value for property <code>animateTextChange</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAnimateTextChange( ?bAnimateTextChange:Bool):sap.m.NumericContent;

	/**
	* Sets a new value for property {@link #getFormatterValue formatterValue}.

If set to true, the value parameter contains a numeric value and scale. If set to false (default), the value parameter contains a numeric value only.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bFormatterValue New value for property <code>formatterValue</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFormatterValue( ?bFormatterValue:Bool):sap.m.NumericContent;

	/**
	* Sets a new value for property {@link #getIcon icon}.

The icon to be displayed as a graphical element within the control. This can be an image or an icon from the icon font.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( sIcon:sap.ui.core.URI):sap.m.NumericContent;

	/**
	* Sets a new value for property {@link #getIconDescription iconDescription}.

Description of an icon that is used in the tooltip.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIconDescription New value for property <code>iconDescription</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconDescription( sIconDescription:String):sap.m.NumericContent;

	/**
	* Sets a new value for property {@link #getIndicator indicator}.

The indicator arrow that shows value deviation.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sIndicator New value for property <code>indicator</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIndicator( ?sIndicator:sap.m.DeviationIndicator):sap.m.NumericContent;

	/**
	* Sets a new value for property {@link #getNullifyValue nullifyValue}.

If set to true, the omitted value property is set to 0.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bNullifyValue New value for property <code>nullifyValue</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNullifyValue( ?bNullifyValue:Bool):sap.m.NumericContent;

	/**
	* Sets a new value for property {@link #getScale scale}.

The scaling prefix. Financial characters can be used for currencies and counters. The SI prefixes can be used for units. If the scaling prefix contains more than three characters, only the first three characters are displayed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sScale New value for property <code>scale</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setScale( sScale:String):sap.m.NumericContent;

	/**
	* Sets a new value for property {@link #getState state}.

Indicates the load status.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Loaded</code>.
	* @param	sState New value for property <code>state</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setState( ?sState:sap.m.LoadState):sap.m.NumericContent;

	/**
	* Sets a new value for property {@link #getTruncateValueTo truncateValueTo}.

The number of characters of the <code>value</code> property to display.

<b>Note</b> If <code>adaptiveFontSize</code> is set to <code>true</code> the default value of this property will vary between languages. If <code>adaptiveFontSize</code> is set to <code>false</code> the default value of this property is <code>4</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iTruncateValueTo New value for property <code>truncateValueTo</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTruncateValueTo( iTruncateValueTo:Int):sap.m.NumericContent;

	/**
	* Sets a new value for property {@link #getValue value}.

The actual value.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sValue New value for property <code>value</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValue( sValue:String):sap.m.NumericContent;

	/**
	* Sets a new value for property {@link #getValueColor valueColor}.

The semantic color of the value.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Neutral</code>.
	* @param	sValueColor New value for property <code>valueColor</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValueColor( ?sValueColor:sap.m.ValueColor):sap.m.NumericContent;

	/**
	* Sets a new value for property {@link #getWidth width}.

The width of the control. If it is not set, the size of the control is defined by the 'size' property.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.m.NumericContent;

	/**
	* Sets a new value for property {@link #getWithMargin withMargin}.

If the value is set to false, the content is adjusted to the whole size of the control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bWithMargin New value for property <code>withMargin</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWithMargin( ?bWithMargin:Bool):sap.m.NumericContent;
}

typedef NumericContentArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* If set to true, the change of the value will be animated.
	*/
	@:optional var animateTextChange:haxe.extern.EitherType<String,Bool>;

	/**
	* If set to true, the value parameter contains a numeric value and scale. If set to false (default), the value parameter contains a numeric value only.
	*/
	@:optional var formatterValue:haxe.extern.EitherType<String,Bool>;

	/**
	* The icon to be displayed as a graphical element within the control. This can be an image or an icon from the icon font.
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Description of an icon that is used in the tooltip.
	*/
	@:optional var iconDescription:String;

	/**
	* The indicator arrow that shows value deviation.
	*/
	@:optional var indicator:haxe.extern.EitherType<String,sap.m.DeviationIndicator>;

	/**
	* If set to true, the omitted value property is set to 0.
	*/
	@:optional var nullifyValue:haxe.extern.EitherType<String,Bool>;

	/**
	* The scaling prefix. Financial characters can be used for currencies and counters. The SI prefixes can be used for units. If the scaling prefix contains more than three characters, only the first three characters are displayed.
	*/
	@:optional var scale:String;

	/**
	* The number of characters of the <code>value</code> property to display.

<b>Note</b> If <code>adaptiveFontSize</code> is set to <code>true</code> the default value of this property will vary between languages. If <code>adaptiveFontSize</code> is set to <code>false</code> the default value of this property is <code>4</code>.
	*/
	@:optional var truncateValueTo:haxe.extern.EitherType<String,Int>;

	/**
	* The actual value.
	*/
	@:optional var value:String;

	/**
	* The semantic color of the value.
	*/
	@:optional var valueColor:haxe.extern.EitherType<String,sap.m.ValueColor>;

	/**
	* The width of the control. If it is not set, the size of the control is defined by the 'size' property.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* If the value is set to false, the content is adjusted to the whole size of the control.
	*/
	@:optional var withMargin:haxe.extern.EitherType<String,Bool>;

	/**
	* Indicates the load status.
	*/
	@:optional var state:haxe.extern.EitherType<String,sap.m.LoadState>;

	/**
	* If set to its default value true this property applies the appropriate font style class based on the language. When set to false the font size will always be large
	*/
	@:optional var adaptiveFontSize:haxe.extern.EitherType<String,Bool>;

	/**
	* The event is fired when the user chooses the numeric content.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
