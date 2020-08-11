package sap.m;

@:native("sap.m.DatePicker")

/**
* Enables the users to select a localized date between 0001-01-01 and 9999-12-31.

<h3>Overview</h3>

The <code>DatePicker</code> lets the users select a localized date using touch, mouse, or keyboard input. It consists of two parts: the date input field and the date picker.

<b>Note:</b> The {@link sap.ui.unified.Calendar} is used internally only if the <code>DatePicker</code> is opened (not used for the initial rendering). If the <code>sap.ui.unified</code> library is not loaded before the <code>DatePicker</code> is opened, it will be loaded upon opening. This could lead to a waiting time when the <code>DatePicker</code> is opened for the first time. To prevent this, apps using the <code>DatePicker</code> should also load the <code>sap.ui.unified</code> library.

<h3>Usage</h3>

The user can enter a date by: <ul><li>Using the calendar that opens in a popup</li> <li>Typing it in directly in the input field</li></ul>

On app level, there are two options to provide a date for the <code>DatePicker</code> - as a string to the <code>value</code> property or as a JavaScript Date object to the <code>dateValue</code> property (only one of these properties should be used at a time):

<ul><li>Use the <code>value</code> property if you want to bind the <code>DatePicker</code> to a model using the <code>sap.ui.model.type.Date</code></li> <li>Use the <code>value</code> property if the date is provided as a string from the backend or inside the app (for example, as ABAP type DATS field)</li> <li>Use the <code>dateValue</code> property if the date is already provided as a JavaScript Date object or you want to work with a JavaScript Date object. Use <code>dateValue</code> as a helper property to easily obtain the day, month and year of the chosen date. Although possible to bind it, the recommendation is not to do it. When binding is needed, use <code>value</code> property instead</li></ul>

<h3>Formatting</h3>

All formatting and parsing of dates from and to strings is done using the {@link sap.ui.core.format.DateFormat}. If a date is entered by typing it into the input field, it must fit to the used date format and locale.

Supported format options are pattern-based on Unicode LDML Date Format notation. See {@link http://unicode.org/reports/tr35/#Date_Field_Symbol_Table}

For example, if the <code>valueFormat</code> is "yyyy-MM-dd", the <code>displayFormat</code> is "MMM d, y", and the used locale is English, a valid value string is "2015-07-30", which leads to an output of "Jul 30, 2015".

If no placeholder is set to the <code>DatePicker</code>, the used <code>displayFormat</code> is displayed as a placeholder. If another placeholder is needed, it must be set.

<b>Note:</b> If the string does NOT match the <code>displayFormat</code> (from user input) or the <code>valueFormat</code> (on app level), the {@link sap.ui.core.format.DateFormat} makes an attempt to parse it based on the locale settings. For more information, see the respective documentation in the API Reference.

<h3>Responsive behavior</h3>

The <code>DatePicker</code> is smaller in compact mode and provides a touch-friendly size in cozy mode.

On mobile devices, one tap on the input field opens the <code>DatePicker</code> in full screen. To close the window, the user can select a date (which triggers the close event), or select Cancel.
*/
extern class DatePicker extends sap.m.DateTimeField
{
	@:overload(function(?sId:String, ?mSettings:DatePickerArgs):Void {})
	public function new(?mSettings:DatePickerArgs):Void;

	/**
	* Adds some <code>specialDate</code> to the aggregation <code>specialDates</code>.
	* @param	oSpecialDate the specialDate to add; if empty, nothing is added
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addSpecialDate( oSpecialDate:sap.ui.unified.DateTypeRange):sap.m.DatePicker;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:navigate navigate} event of this <code>sap.m.DatePicker</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.DatePicker</code> itself.

Fired when navigating in <code>Calendar</code> popup.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.DatePicker</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachNavigate( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.DatePicker;

	/**
	* Destroys all the specialDates in the aggregation {@link #getSpecialDates specialDates}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySpecialDates( ):sap.m.DatePicker;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:navigate navigate} event of this <code>sap.m.DatePicker</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachNavigate( fnFunction:()->Void, ?oListener:Dynamic):sap.m.DatePicker;

	/**
	* Creates a new subclass of class sap.m.DatePicker with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.DateTimeField.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* The date as JavaScript Date object. This is independent from any formatter.

<b>Note:</b> If this property is used, the <code>value</code> property should not be changed from the caller.
	* @return	the value of property <code>dateValue</code>
	*/
	public function getDateValue( ):Dynamic;

	/**
	* The date is displayed in the input field using this format. By default, the medium format of the used locale is used.

Supported format options are pattern-based on Unicode LDML Date Format notation. {@link http://unicode.org/reports/tr35/#Date_Field_Symbol_Table} <b>Note:</b> If you use data binding on the <code>value</code> property with type <code>sap.ui.model.type.Date</code> this property will be ignored. The format defined in the binding will be used.
	* @return	the value of property <code>displayFormat</code>
	*/
	public function getDisplayFormat( ):String;

	/**
	* Gets current value of property {@link #getDisplayFormatType displayFormatType}.

Displays date in this given type in input field. Default value is taken from locale settings. Accepted are values of <code>sap.ui.core.CalendarType</code> or an empty string. If no type is set, the default type of the configuration is used. <b>Note:</b> If data binding on <code>value</code> property with type <code>sap.ui.model.type.Date</code> is used, this property will be ignored.

Default value is <code>empty string</code>.
	* @return	Value of property <code>displayFormatType</code>
	*/
	public function getDisplayFormatType( ):String;

	/**
	* ID of the element which is the current target of the association {@link #getLegend legend}, or <code>null</code>.
	* @return	null
	*/
	public function getLegend( ):sap.ui.core.ID;

	/**
	* Gets current value of property {@link #getMaxDate maxDate}.

Maximum date that can be shown and selected in the <code>DatePicker</code>. This must be a JavaScript date object.

<b>Note:</b> If the <code>maxDate</code> is set to be before the <code>minDate</code>, the <code>maxDate</code> and the <code>minDate</code> are switched before rendering.
	* @return	Value of property <code>maxDate</code>
	*/
	public function getMaxDate( ):Dynamic;

	/**
	* Returns a metadata object for class sap.m.DatePicker.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getMinDate minDate}.

Minimum date that can be shown and selected in the <code>DatePicker</code>. This must be a JavaScript date object.

<b>Note:</b> If the <code>minDate</code> is set to be after the <code>maxDate</code>, the <code>maxDate</code> and the <code>minDate</code> are switched before rendering.
	* @return	Value of property <code>minDate</code>
	*/
	public function getMinDate( ):Dynamic;

	/**
	* Gets current value of property {@link #getSecondaryCalendarType secondaryCalendarType}.

If set, the days in the calendar popup are also displayed in this calendar type If not set, the dates are only displayed in the primary calendar type
	* @return	Value of property <code>secondaryCalendarType</code>
	*/
	public function getSecondaryCalendarType( ):sap.ui.core.CalendarType;

	/**
	* Gets current value of property {@link #getShowFooter showFooter}.

Hides or shows the popover's footer.

Default value is <code>false</code>.
	* @return	Value of property <code>showFooter</code>
	*/
	public function getShowFooter( ):Bool;

	/**
	* Gets content of aggregation {@link #getSpecialDates specialDates}.

Date Range with type to visualize special days in the Calendar. If one day is assigned to more than one Type, only the first one will be used.

To set a single date (instead of a range), set only the startDate property of the sap.ui.unified.DateRange class.

<b>Note:</b> Since 1.48 you could set a non-working day via the sap.ui.unified.CalendarDayType.NonWorking enum type just as any other special date type using sap.ui.unified.DateRangeType.
	* @return	null
	*/
	public function getSpecialDates( ):Array<sap.ui.core.Element>;

	/**
	* Getter for property <code>value</code>.

Returns a date as a string in the format defined in property <code>valueFormat</code>.

<b>Note:</b> The value is always expected and updated in Gregorian calendar format. (If data binding is used the format of the binding is used.)

If this property is used, the <code>dateValue</code> property should not be changed from the caller.
	* @return	the value of property <code>value</code>
	*/
	public function getValue( ):String;

	/**
	* The date string expected and returned in the <code>value</code> property uses this format. By default the medium format of the used locale is used.

Supported format options are pattern-based on Unicode LDML Date Format notation. {@link http://unicode.org/reports/tr35/#Date_Field_Symbol_Table}

For example, if the date string represents an ABAP DATS type, the format should be "yyyyMMdd".

<b>Note:</b> If data binding on <code>value</code> property with type <code>sap.ui.model.type.Date</code> is used, this property will be ignored. The format defined in the binding will be used.
	* @return	the value of property <code>valueFormat</code>
	*/
	public function getValueFormat( ):String;

	/**
	* Checks for the provided <code>sap.ui.core.Element</code> in the aggregation {@link #getSpecialDates specialDates}. and returns its index if found or -1 otherwise.
	* @param	oSpecialDate The specialDate whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfSpecialDate( oSpecialDate:sap.ui.core.Element):Int;

	/**
	* Inserts a <code>specialDate</code> to the aggregation <code>specialDates</code>.
	* @param	oSpecialDate the specialDate to insert; if empty, nothing is inserted
	* @param	iIndex the 0-based index the <code>specialDate</code> should be inserted at; for a negative value of <code>iIndex</code>, the <code>specialDate</code> is inserted at position 0; for a value greater than the current size of the aggregation, the <code>specialDate</code> is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertSpecialDate( oSpecialDate:sap.ui.unified.DateTypeRange, iIndex:Int):sap.m.DatePicker;

	/**
	* Returns if the last entered value is valid.
	* @return	null
	*/
	public function isValidValue( ):Bool;

	/**
	* Removes all the controls from the aggregation {@link #getSpecialDates specialDates}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllSpecialDates( ):Array<sap.ui.core.Element>;

	/**
	* Removes a <code>specialDate</code> from the aggregation <code>specialDates</code>.
	* @param	oSpecialDate The <code>specialDate</code> to remove or its index or id
	* @return	The removed <code>specialDate</code> or null
	*/
	public function removeSpecialDate( oSpecialDate:sap.ui.unified.DateTypeRange):sap.ui.unified.DateTypeRange;

	/**
	* Sets a new value for property {@link #getDisplayFormatType displayFormatType}.

Displays date in this given type in input field. Default value is taken from locale settings. Accepted are values of <code>sap.ui.core.CalendarType</code> or an empty string. If no type is set, the default type of the configuration is used. <b>Note:</b> If data binding on <code>value</code> property with type <code>sap.ui.model.type.Date</code> is used, this property will be ignored.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sDisplayFormatType New value for property <code>displayFormatType</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDisplayFormatType( ?sDisplayFormatType:String):sap.m.DatePicker;
	@:overload( function(oLegend:sap.ui.core.ID):sap.m.DatePicker{ })

	/**
	* Sets the associated legend.
	* @param	oLegend ID of an element which becomes the new target of this <code>legend</code> association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLegend( oLegend:sap.ui.unified.CalendarLegend):sap.m.DatePicker;

	/**
	* Sets a new value for property {@link #getMaxDate maxDate}.

Maximum date that can be shown and selected in the <code>DatePicker</code>. This must be a JavaScript date object.

<b>Note:</b> If the <code>maxDate</code> is set to be before the <code>minDate</code>, the <code>maxDate</code> and the <code>minDate</code> are switched before rendering.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oMaxDate New value for property <code>maxDate</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxDate( oMaxDate:Dynamic):sap.m.DatePicker;

	/**
	* Sets a new value for property {@link #getMinDate minDate}.

Minimum date that can be shown and selected in the <code>DatePicker</code>. This must be a JavaScript date object.

<b>Note:</b> If the <code>minDate</code> is set to be after the <code>maxDate</code>, the <code>maxDate</code> and the <code>minDate</code> are switched before rendering.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oMinDate New value for property <code>minDate</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMinDate( oMinDate:Dynamic):sap.m.DatePicker;

	/**
	* Sets a new value for property {@link #getSecondaryCalendarType secondaryCalendarType}.

If set, the days in the calendar popup are also displayed in this calendar type If not set, the dates are only displayed in the primary calendar type

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sSecondaryCalendarType New value for property <code>secondaryCalendarType</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSecondaryCalendarType( sSecondaryCalendarType:sap.ui.core.CalendarType):sap.m.DatePicker;

	/**
	* Sets <code>showFooter</code> property to the given boolean value
	* @param	bFlag when true footer is displayed
	* @return	Void
	*/
	public function setShowFooter( bFlag:Dynamic):Void;

	/**
	* Setter for property <code>value</code>.

Expects a date as a string in the format defined in property <code>valueFormat</code>.

<b>Note:</b> The value is always expected and updated in Gregorian calendar format. (If data binding is used the format of the binding is used.)

If this property is used, the <code>dateValue</code> property should not be changed from the caller.

If Data binding using a <code>sap.ui.model.type.Date</code> is used, please set the <code>formatOption</code> <code>stricktParsing</code> to <code>true</code>. This prevents unwanted automatic corrections of wrong input.
	* @param	sValue The new value of the input.
	* @return	<code>this</code> to allow method chaining
	*/
	public function setValue( sValue:String):sap.m.DatePicker;

	/**
	* Defines the width of the DatePicker. Default value is 100%
	* @param	sWidth new value for <code>width</code>
	* @return	<code>this</code> to allow method chaining
	*/
	public function setWidth( sWidth:String):sap.m.DatePicker;
}

typedef DatePickerArgs = sap.m.DateTimeField.DateTimeFieldArgs & {

	/**
	* Displays date in this given type in input field. Default value is taken from locale settings. Accepted are values of <code>sap.ui.core.CalendarType</code> or an empty string. If no type is set, the default type of the configuration is used. <b>Note:</b> If data binding on <code>value</code> property with type <code>sap.ui.model.type.Date</code> is used, this property will be ignored.
	*/
	@:optional var displayFormatType:String;

	/**
	* If set, the days in the calendar popup are also displayed in this calendar type If not set, the dates are only displayed in the primary calendar type
	*/
	@:optional var secondaryCalendarType:haxe.extern.EitherType<String,sap.ui.core.CalendarType>;

	/**
	* Minimum date that can be shown and selected in the <code>DatePicker</code>. This must be a JavaScript date object.

<b>Note:</b> If the <code>minDate</code> is set to be after the <code>maxDate</code>, the <code>maxDate</code> and the <code>minDate</code> are switched before rendering.
	*/
	@:optional var minDate:haxe.extern.EitherType<String,Dynamic>;

	/**
	* Maximum date that can be shown and selected in the <code>DatePicker</code>. This must be a JavaScript date object.

<b>Note:</b> If the <code>maxDate</code> is set to be before the <code>minDate</code>, the <code>maxDate</code> and the <code>minDate</code> are switched before rendering.
	*/
	@:optional var maxDate:haxe.extern.EitherType<String,Dynamic>;

	/**
	* Hides or shows the popover's footer.
	*/
	@:optional var showFooter:haxe.extern.EitherType<String,Bool>;

    /**
    * Date Range with type to visualize special days in the Calendar. If one day is assigned to more than one Type, only the first one will be used.

To set a single date (instead of a range), set only the startDate property of the sap.ui.unified.DateRange class.

<b>Note:</b> Since 1.48 you could set a non-working day via the sap.ui.unified.CalendarDayType.NonWorking enum type just as any other special date type using sap.ui.unified.DateRangeType.
    */
	@:optional var specialDates:Array<haxe.extern.EitherType<String,sap.ui.core.Element>>;

    /**
    * Internal aggregation that contains the inner picker pop-up.
    */
	@:optional var _popup:haxe.extern.EitherType<String,sap.m.ResponsivePopover>;

	/**
	* Association to the <code>CalendarLegend</code> explaining the colors of the <code>specialDates</code>.

<b>Note</b> The legend does not have to be rendered but must exist, and all required types must be assigned.
	*/
	@:optional var legend:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* Fired when the input operation has finished and the value has changed.

<b>Note:</b> Fired only when a new date is selected. If you change the month or year from the picker but not select a new date from the newly selected month/year, the value of the <code>sap.m.DatePicker</code> won't be updated and no change event will be fired.
	*/
	@:optional var change:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when navigating in <code>Calendar</code> popup.
	*/
	@:optional var navigate:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
