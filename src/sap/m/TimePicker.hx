package sap.m;

@:native("sap.m.TimePicker")

/**
* A single-field input control that enables the users to fill time related input fields.

<h3>Overview</h3>

The <code>TimePicker</code> control enables the users to fill time related input fields using touch, mouse, or keyboard input.

<h3>Usage</h3>

Use this control if you want the user to select a time. If you want the user to select a duration (1 hour), use the {@link sap.m.Select} control instead.

The user can enter a date by:

<ul><li>Using the <code>TimePicker</code> dropdown that opens in a popup</li> <li>Typing it in directly in the input field</li></ul>

On app level, there are two options to provide value for the <code>TimePicker</code> - as a string to the <code>value</code> property or as a JavaScript Date object to the <code>dateValue</code> property (only one of these properties should be used at a time):

<ul><li>Use the <code>value</code> property if you want to bind the <code>TimePicker</code> to a model using the <code>sap.ui.model.type.Time</code></li> <li>Use the <code>value</code> property if the date is provided as a string from the backend or inside the app (for example, as ABAP type DATS field)</li> <li>Use the <code>dateValue</code> property if the date is already provided as a JavaScript Date object or you want to work with a JavaScript Date object. Use <code>dateValue</code> as a helper property to easily obtain the hours, minutes and seconds of the chosen time. Although possible to bind it, the recommendation is to not to do it. When binding is needed, use <code>value</code> property instead</li></ul>

<h3>Formatting</h3>

All formatting and parsing of values from and to strings is done using the {@link sap.ui.core.format.DateFormat}. If a value is entered by typing it into the input field, it must fit to the used time format and locale.

Supported format options are pattern-based on Unicode LDML Date Format notation. See {@link http://unicode.org/reports/tr35/#Date_Field_Symbol_Table}

A time format must be specified, otherwise the default "HH:mm:ss a" will be used. For example, if the <code>valueFormat</code> is "HH-mm-ss a", the <code>displayFormat</code> is "HH:mm:ss a", and the used locale is English, a valid value string is "10-30-15 AM", which leads to an output of "10:30:15 AM".

If no placeholder is set to the <code>TimePicker</code>, the used <code>displayFormat</code> is displayed as a placeholder. If another placeholder is needed, it must be set.

<b>Note:</b> If the string does NOT match the <code>displayFormat</code> (from user input) or the <code>valueFormat</code> (on app level), the {@link sap.ui.core.format.DateFormat} makes an attempt to parse it based on the locale settings. For more information, see the respective documentation in the API Reference.

<h3>Responsive behavior</h3>

The <code>TimePicker</code> is responsive and fully adapts to all device types. For larger screens, such as tablet or desktop, it opens as a popover. For mobile devices, it opens in full screen.
*/
extern class TimePicker extends sap.m.DateTimeField
{
	@:overload(function(?sId:String, ?mSettings:TimePickerArgs):Void {})
	public function new(?mSettings:TimePickerArgs):Void;

	/**
	* Adds some rule to the aggregation {@link #getRules rules}.
	* @param	oRule The rule to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addRule( oRule:sap.m.MaskInputRule):sap.m.TimePicker;

	/**
	* Destroys all the rules in the aggregation {@link #getRules rules}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyRules( ):sap.m.TimePicker;

	/**
	* Creates a new subclass of class sap.m.TimePicker with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.DateTimeField.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Holds a reference to a JavaScript Date Object. The <code>value</code> (string) property will be set according to it. Alternatively, if the <code>value</code> and <code>valueFormat</code> pair properties are supplied instead, the <code>dateValue</code> will be instantiated according to the parsed <code>value</code>.
	* @return	the value of property <code>dateValue</code>
	*/
	public function getDateValue( ):Dynamic;

	/**
	* Determines the format, displayed in the input field and the picker sliders.

The default value is the browser's medium time format locale setting {@link sap.ui.core.LocaleData#getTimePattern}. If data binding with type {@link sap.ui.model.type.Time} or {@link sap.ui.model.odata.type.Time} is used for the <code>value</code> property, the <code>displayFormat</code> property is ignored as the information is provided from the binding itself.
	* @return	the value of property <code>displayFormat</code>
	*/
	public function getDisplayFormat( ):String;

	/**
	* Gets current value of property {@link #getLocaleId localeId}.

Defines the locale used to parse string values representing time.

Determines the locale, used to interpret the string, supplied by the <code>value</code> property.

Example: AM in the string "09:04 AM" is locale (language) dependent. The format comes from the browser language settings if not set explicitly. Used in combination with 12 hour <code>displayFormat</code> containing 'a', which stands for day period string.
	* @return	Value of property <code>localeId</code>
	*/
	public function getLocaleId( ):String;

	/**
	* Gets current value of property {@link #getMask mask}.

Mask defined by its characters type (respectively, by its length). You should consider the following important facts: 1. The mask characters normally correspond to an existing rule (one rule per unique char). Characters which don't, are considered immutable characters (for example, the mask '2099', where '9' corresponds to a rule for digits, has the characters '2' and '0' as immutable). 2. Adding a rule corresponding to the <code>placeholderSymbol</code> is not recommended and would lead to an unpredictable behavior. 3. You can use the special escape character '^' called "Caret" prepending a rule character to make it immutable. Use the double escape '^^' if you want to make use of the escape character as an immutable one.
	* @return	Value of property <code>mask</code>
	*/
	public function getMask( ):String;

	/**
	* Gets current value of property {@link #getMaskMode maskMode}.

Defines whether the mask is enabled. When disabled, there are no restrictions and validation for the user and no placeholders are displayed.

<b>Note:</b> A disabled mask does not reset any validation rules that are already set. You can update the <code>mask</code> property and add new <code>rules</code> while it is disabled. When <code>maskMode</code> is set to <code>On</code> again, the <code>rules</code> and the updated <code>mask</code> will be applied.

Default value is <code>On</code>.
	* @return	Value of property <code>maskMode</code>
	*/
	public function getMaskMode( ):sap.m.TimePickerMaskMode;

	/**
	* Returns a metadata object for class sap.m.TimePicker.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getMinutesStep minutesStep}.

Sets the minutes slider step. If step is less than 1, it will be automatically converted back to 1. The minutes slider is populated only by multiples of the step.

Default value is <code>1</code>.
	* @return	Value of property <code>minutesStep</code>
	*/
	public function getMinutesStep( ):Int;

	/**
	* Gets current value of property {@link #getPlaceholderSymbol placeholderSymbol}.

Defines a placeholder symbol. Shown at the position where there is no user input yet.

Default value is <code>_</code>.
	* @return	Value of property <code>placeholderSymbol</code>
	*/
	public function getPlaceholderSymbol( ):String;

	/**
	* Gets content of aggregation {@link #getRules rules}.

A list of validation rules (one rule per mask character).
	* @return	null
	*/
	public function getRules( ):Array<sap.m.MaskInputRule>;

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
	* Gets current value of property {@link #getTitle title}.

Displays the text of the general picker label and is read by screen readers. It is visible only on phone.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Determines the format of the value property.

The default value is the browser's medium time format locale setting {@link sap.ui.core.LocaleData#getTimePattern}. If data binding with type {@link sap.ui.model.type.Time} or {@link sap.ui.model.odata.type.Time} is used for the <code>value</code> property, the <code>valueFormat</code> property is ignored as the information is provided from the binding itself.
	* @return	the value of property <code>valueFormat</code>
	*/
	public function getValueFormat( ):String;

	/**
	* Checks for the provided <code>sap.m.MaskInputRule</code> in the aggregation {@link #getRules rules}. and returns its index if found or -1 otherwise.
	* @param	oRule The rule whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfRule( oRule:sap.m.MaskInputRule):Int;

	/**
	* Initializes the control.
	* @return	Void
	*/
	public function init( ):Void;

	/**
	* Inserts a rule into the aggregation {@link #getRules rules}.
	* @param	oRule The rule to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the rule should be inserted at; for a negative value of <code>iIndex</code>, the rule is inserted at position 0; for a value greater than the current size of the aggregation, the rule is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertRule( oRule:sap.m.MaskInputRule, iIndex:Int):sap.m.TimePicker;

	/**
	* Called after the picker closes.
	* @return	Void
	*/
	public function onAfterClose( ):Void;

	/**
	* Called after the picker appears.
	* @return	Void
	*/
	public function onAfterOpen( ):Void;

	/**
	* Called before the picker appears.
	* @return	Void
	*/
	public function onBeforeOpen( ):Void;

	/**
	* Removes all the controls from the aggregation {@link #getRules rules}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllRules( ):Array<sap.m.MaskInputRule>;
	@:overload( function(vRule:Int):sap.m.MaskInputRule{ })
	@:overload( function(vRule:String):sap.m.MaskInputRule{ })

	/**
	* Removes a rule from the aggregation {@link #getRules rules}.
	* @param	vRule The rule to remove or its index or id
	* @return	The removed rule or <code>null</code>
	*/
	public function removeRule( vRule:sap.m.MaskInputRule):sap.m.MaskInputRule;

	/**
	* Sets the locale of the control.

Used for parsing and formatting the time values in languages different than English. Necessary for translation and auto-complete of the day periods, such as AM and PM.
	* @param	sLocaleId A locale identifier like 'en_US'
	* @return	this instance, used for chaining
	*/
	public function setLocaleId( sLocaleId:String):sap.m.TimePicker;

	/**
	* Sets a new value for property {@link #getMask mask}.

Mask defined by its characters type (respectively, by its length). You should consider the following important facts: 1. The mask characters normally correspond to an existing rule (one rule per unique char). Characters which don't, are considered immutable characters (for example, the mask '2099', where '9' corresponds to a rule for digits, has the characters '2' and '0' as immutable). 2. Adding a rule corresponding to the <code>placeholderSymbol</code> is not recommended and would lead to an unpredictable behavior. 3. You can use the special escape character '^' called "Caret" prepending a rule character to make it immutable. Use the double escape '^^' if you want to make use of the escape character as an immutable one.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sMask New value for property <code>mask</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMask( sMask:String):sap.m.TimePicker;

	/**
	* Sets a new value for property {@link #getMaskMode maskMode}.

Defines whether the mask is enabled. When disabled, there are no restrictions and validation for the user and no placeholders are displayed.

<b>Note:</b> A disabled mask does not reset any validation rules that are already set. You can update the <code>mask</code> property and add new <code>rules</code> while it is disabled. When <code>maskMode</code> is set to <code>On</code> again, the <code>rules</code> and the updated <code>mask</code> will be applied.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>On</code>.
	* @param	sMaskMode New value for property <code>maskMode</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaskMode( sMaskMode:sap.m.TimePickerMaskMode):sap.m.TimePicker;

	/**
	* Sets the minutes slider step.
	* @param	step The step used to generate values for the minutes slider
	* @return	this
	*/
	public function setMinutesStep( step:Int):Dynamic;

	/**
	* Sets a new value for property {@link #getPlaceholderSymbol placeholderSymbol}.

Defines a placeholder symbol. Shown at the position where there is no user input yet.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>_</code>.
	* @param	sPlaceholderSymbol New value for property <code>placeholderSymbol</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPlaceholderSymbol( sPlaceholderSymbol:String):sap.m.TimePicker;

	/**
	* Sets the seconds slider step.
	* @param	step The step used to generate values for the seconds slider
	* @return	<code>this</code> to allow method chaining
	*/
	public function setSecondsStep( step:Int):sap.m.TimePicker;

	/**
	* Sets <code>support2400</code> of the control.

Allows the control to use 24-hour format. Recommended usage is to not use it with am/pm format.
	* @param	bSupport2400 null
	* @return	this instance, used for chaining
	*/
	public function setSupport2400( bSupport2400:Bool):sap.m.TimePicker;

	/**
	* Sets a new value for property {@link #getTitle title}.

Displays the text of the general picker label and is read by screen readers. It is visible only on phone.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( sTitle:String):sap.m.TimePicker;
	@:overload( function(vTooltip:String):sap.m.TimePicker{ })

	/**
	* Sets tooltip of the control.
	* @param	vTooltip null
	* @return	A reference to <code>this</code> instance to allow method chaining.
	*/
	public function setTooltip( vTooltip:sap.ui.core.TooltipBase):sap.m.TimePicker;
}

typedef TimePickerArgs = sap.m.DateTimeField.DateTimeFieldArgs & {

	/**
	* Defines the locale used to parse string values representing time.

Determines the locale, used to interpret the string, supplied by the <code>value</code> property.

Example: AM in the string "09:04 AM" is locale (language) dependent. The format comes from the browser language settings if not set explicitly. Used in combination with 12 hour <code>displayFormat</code> containing 'a', which stands for day period string.
	*/
	@:optional var localeId:String;

	/**
	* Displays the text of the general picker label and is read by screen readers. It is visible only on phone.
	*/
	@:optional var title:String;

	/**
	* Sets the minutes slider step. If step is less than 1, it will be automatically converted back to 1. The minutes slider is populated only by multiples of the step.
	*/
	@:optional var minutesStep:haxe.extern.EitherType<String,Int>;

	/**
	* Sets the seconds slider step. If step is less than 1, it will be automatically converted back to 1. The seconds slider is populated only by multiples of the step.
	*/
	@:optional var secondsStep:haxe.extern.EitherType<String,Int>;

	/**
	* Defines a placeholder symbol. Shown at the position where there is no user input yet.
	*/
	@:optional var placeholderSymbol:String;

	/**
	* Mask defined by its characters type (respectively, by its length). You should consider the following important facts: 1. The mask characters normally correspond to an existing rule (one rule per unique char). Characters which don't, are considered immutable characters (for example, the mask '2099', where '9' corresponds to a rule for digits, has the characters '2' and '0' as immutable). 2. Adding a rule corresponding to the <code>placeholderSymbol</code> is not recommended and would lead to an unpredictable behavior. 3. You can use the special escape character '^' called "Caret" prepending a rule character to make it immutable. Use the double escape '^^' if you want to make use of the escape character as an immutable one.
	*/
	@:optional var mask:String;

	/**
	* Defines whether the mask is enabled. When disabled, there are no restrictions and validation for the user and no placeholders are displayed.

<b>Note:</b> A disabled mask does not reset any validation rules that are already set. You can update the <code>mask</code> property and add new <code>rules</code> while it is disabled. When <code>maskMode</code> is set to <code>On</code> again, the <code>rules</code> and the updated <code>mask</code> will be applied.
	*/
	@:optional var maskMode:haxe.extern.EitherType<String,sap.m.TimePickerMaskMode>;

	/**
	* Allows to set a value of 24:00, used to indicate the end of the day. Works only with HH or H formats. Don't use it together with am/pm.
	*/
	@:optional var support2400:haxe.extern.EitherType<String,Bool>;

    /**
    * A list of validation rules (one rule per mask character).
    */
	@:optional var rules:Array<haxe.extern.EitherType<String,sap.m.MaskInputRule>>;

    /**
    * Internal aggregation that contains the inner _picker pop-up.
    */
	@:optional var _picker:haxe.extern.EitherType<String,sap.m.ResponsivePopover>;

	/**
	* Fires when the input operation has finished and the value has changed.
	*/
	@:optional var change:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
