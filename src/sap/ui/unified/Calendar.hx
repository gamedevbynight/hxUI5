package sap.ui.unified;

@:native("sap.ui.unified.Calendar")

/**
* Basic Calendar. This calendar is used for DatePickers
*/
extern class Calendar extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:CalendarArgs):Void {})
	public function new(?mSettings:CalendarArgs):Void;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.unified.Calendar{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.unified.Calendar;

	/**
	* Adds some disabledDate to the aggregation {@link #getDisabledDates disabledDates}.
	* @param	oDisabledDate The disabledDate to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addDisabledDate( oDisabledDate:sap.ui.unified.DateRange):sap.ui.unified.Calendar;

	/**
	* Adds some selectedDate to the aggregation {@link #getSelectedDates selectedDates}.
	* @param	oSelectedDate The selectedDate to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addSelectedDate( oSelectedDate:sap.ui.unified.DateRange):sap.ui.unified.Calendar;

	/**
	* Adds some specialDate to the aggregation {@link #getSpecialDates specialDates}.
	* @param	oSpecialDate The specialDate to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addSpecialDate( oSpecialDate:sap.ui.unified.DateTypeRange):sap.ui.unified.Calendar;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:cancel cancel} event of this <code>sap.ui.unified.Calendar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.Calendar</code> itself.

Date selection was cancelled
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.Calendar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachCancel( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.Calendar;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:select select} event of this <code>sap.ui.unified.Calendar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.Calendar</code> itself.

Date selection changed
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.Calendar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.Calendar;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:startDateChange startDateChange} event of this <code>sap.ui.unified.Calendar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.Calendar</code> itself.

<code>startDate</code> was changed while navigation in <code>Calendar</code>

Use <code>getStartDate</code> function to determine the current start date
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.Calendar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachStartDateChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.Calendar;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:weekNumberSelect weekNumberSelect} event of this <code>sap.ui.unified.Calendar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.Calendar</code> itself.

Week number selection changed. By default, clicking on the week number will select the corresponding week. If the week has already been selected, clicking the week number will deselect it.

The default behavior can be prevented using the <code>preventDefault</code> method.

<b>Note</b> Works for Gregorian calendars only and when <code>intervalSelection</code> is set to 'true'.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.Calendar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachWeekNumberSelect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.Calendar;

	/**
	* Destroys all the disabledDates in the aggregation {@link #getDisabledDates disabledDates}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyDisabledDates( ):sap.ui.unified.Calendar;

	/**
	* Destroys all the selectedDates in the aggregation {@link #getSelectedDates selectedDates}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySelectedDates( ):sap.ui.unified.Calendar;

	/**
	* Destroys all the specialDates in the aggregation {@link #getSpecialDates specialDates}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySpecialDates( ):sap.ui.unified.Calendar;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:cancel cancel} event of this <code>sap.ui.unified.Calendar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachCancel( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.Calendar;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:select select} event of this <code>sap.ui.unified.Calendar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelect( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.Calendar;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:startDateChange startDateChange} event of this <code>sap.ui.unified.Calendar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachStartDateChange( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.Calendar;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:weekNumberSelect weekNumberSelect} event of this <code>sap.ui.unified.Calendar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachWeekNumberSelect( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.Calendar;

	/**
	* Displays a date in the calendar but doesn't set the focus.
	* @param	oDate JavaScript date object for focused date.
	* @return	<code>this</code> to allow method chaining
	*/
	public function displayDate( oDate:Dynamic):sap.ui.unified.Calendar;

	/**
	* Creates a new subclass of class sap.ui.unified.Calendar with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Sets the focused date of the calendar.
	* @param	oDate JavaScript date object for focused date.
	* @return	<code>this</code> to allow method chaining
	*/
	public function focusDate( oDate:Dynamic):sap.ui.unified.Calendar;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets content of aggregation {@link #getDisabledDates disabledDates}.

Dates or date ranges for disabled dates.

To set a single date (instead of a range), set only the <code>startDate</code> property of the {@link sap.ui.unified.DateRange} class.
	* @return	null
	*/
	public function getDisabledDates( ):Array<sap.ui.unified.DateRange>;

	/**
	* Gets current value of property {@link #getFirstDayOfWeek firstDayOfWeek}.

If set, the first day of the displayed week is this day. Valid values are 0 to 6. If not a valid value is set, the default of the used locale is used.

Default value is <code>-1</code>.
	* @return	Value of property <code>firstDayOfWeek</code>
	*/
	public function getFirstDayOfWeek( ):Int;

	/**
	* Gets current value of property {@link #getIntervalSelection intervalSelection}.

If set, interval selection is allowed

Default value is <code>false</code>.
	* @return	Value of property <code>intervalSelection</code>
	*/
	public function getIntervalSelection( ):Bool;

	/**
	* ID of the element which is the current target of the association {@link #getLegend legend}, or <code>null</code>.
	* @return	null
	*/
	public function getLegend( ):sap.ui.core.ID;

	/**
	* Gets current value of property {@link #getMaxDate maxDate}.

Maximum date that can be shown and selected in the Calendar. This must be a JavaScript date object.

<b>Note:</b> if the date is inside of a month the complete month is displayed, but dates outside the valid range can not be selected.

<b>Note:</b> If the <code>maxDate</code> is set to be before the <code>minDate</code>, the <code>minDate</code> is set to the begin of the month of the <code>maxDate</code>.
	* @return	Value of property <code>maxDate</code>
	*/
	public function getMaxDate( ):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.unified.Calendar.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getMinDate minDate}.

Minimum date that can be shown and selected in the Calendar. This must be a JavaScript date object.

<b>Note:</b> if the date is inside of a month the complete month is displayed, but dates outside the valid range can not be selected.

<b>Note:</b> If the <code>minDate</code> is set to be after the <code>maxDate</code>, the <code>maxDate</code> is set to the end of the month of the <code>minDate</code>.
	* @return	Value of property <code>minDate</code>
	*/
	public function getMinDate( ):Dynamic;

	/**
	* Gets current value of property {@link #getMonths months}.

Determines the number of months displayed.

As of version 1.50, the duplicated dates are not displayed if there are multiple months.

<b>Note:</b> On phones, only one month is displayed.

Default value is <code>1</code>.
	* @return	Value of property <code>months</code>
	*/
	public function getMonths( ):Int;

	/**
	* Gets current value of property {@link #getNonWorkingDays nonWorkingDays}.

If set, the provided weekdays are displayed as non-working days. Valid values inside the array are 0 to 6. If not set, the weekend defined in the locale settings is displayed as non-working days.

<b>Note:</b> Keep in mind that this property sets only weekly-recurring days as non-working. If you need specific dates or dates ranges, such as national holidays, use the <code>specialDates</code> aggregation to set them. Both the non-working days (from property) and dates (from aggregation) are visualized the same.
	* @return	Value of property <code>nonWorkingDays</code>
	*/
	public function getNonWorkingDays( ):Array<Int>;

	/**
	* Gets current value of property {@link #getPrimaryCalendarType primaryCalendarType}.

If set, the calendar type is used for display. If not set, the calendar type of the global configuration is used.
	* @return	Value of property <code>primaryCalendarType</code>
	*/
	public function getPrimaryCalendarType( ):sap.ui.core.CalendarType;

	/**
	* Gets current value of property {@link #getSecondaryCalendarType secondaryCalendarType}.

If set, the days are also displayed in this calendar type If not set, the dates are only displayed in the primary calendar type
	* @return	Value of property <code>secondaryCalendarType</code>
	*/
	public function getSecondaryCalendarType( ):sap.ui.core.CalendarType;

	/**
	* Gets content of aggregation {@link #getSelectedDates selectedDates}.

Dates or date ranges for selected dates.

To set a single date (instead of a range), set only the <code>startDate</code> property of the {@link sap.ui.unified.DateRange} class.
	* @return	null
	*/
	public function getSelectedDates( ):Array<sap.ui.unified.DateRange>;

	/**
	* Gets current value of property {@link #getShowWeekNumbers showWeekNumbers}.

Determines whether the week numbers in the months are displayed.

<b>Note:</b> For Islamic calendars, the week numbers are not displayed regardless of what is set to this property.

Default value is <code>true</code>.
	* @return	Value of property <code>showWeekNumbers</code>
	*/
	public function getShowWeekNumbers( ):Bool;

	/**
	* Gets current value of property {@link #getSingleSelection singleSelection}.

If set, only a single date or interval, if intervalSelection is enabled, can be selected

Default value is <code>true</code>.
	* @return	Value of property <code>singleSelection</code>
	*/
	public function getSingleSelection( ):Bool;

	/**
	* Gets content of aggregation {@link #getSpecialDates specialDates}.

Dates or date ranges with type, to visualize special days in the <code>Calendar</code>. If one day is assigned to more than one Type, only the first one will be used.

To set a single date (instead of a range), set only the <code>startDate</code> property of the {@link sap.ui.unified.DateRange} class.

<b>Note:</b> Keep in mind that the <code>NonWorking</code> type is for marking specific dates or date ranges as non-working, where if you need a weekly-reccuring non-working days (weekend), you should use the <code>nonWorkingDays</code> property. Both the non-working days (from property) and dates (from aggregation) are visualized the same.
	* @return	null
	*/
	public function getSpecialDates( ):Array<sap.ui.unified.DateTypeRange>;

	/**
	* Returns the first day of the displayed month.

There might be some days of the previous month shown, but they can not be focused.
	* @return	JavaScript date object for start date.
	*/
	public function getStartDate( ):Dynamic;

	/**
	* Gets current value of property {@link #getWidth width}.

Width of Calendar

<b>Note:</b> There is a theme depending minimum width, so the calendar can not be set smaller.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.ui.unified.DateRange</code> in the aggregation {@link #getDisabledDates disabledDates}. and returns its index if found or -1 otherwise.
	* @param	oDisabledDate The disabledDate whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfDisabledDate( oDisabledDate:sap.ui.unified.DateRange):Int;

	/**
	* Checks for the provided <code>sap.ui.unified.DateRange</code> in the aggregation {@link #getSelectedDates selectedDates}. and returns its index if found or -1 otherwise.
	* @param	oSelectedDate The selectedDate whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfSelectedDate( oSelectedDate:sap.ui.unified.DateRange):Int;

	/**
	* Checks for the provided <code>sap.ui.unified.DateTypeRange</code> in the aggregation {@link #getSpecialDates specialDates}. and returns its index if found or -1 otherwise.
	* @param	oSpecialDate The specialDate whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfSpecialDate( oSpecialDate:sap.ui.unified.DateTypeRange):Int;

	/**
	* Inserts a disabledDate into the aggregation {@link #getDisabledDates disabledDates}.
	* @param	oDisabledDate The disabledDate to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the disabledDate should be inserted at; for a negative value of <code>iIndex</code>, the disabledDate is inserted at position 0; for a value greater than the current size of the aggregation, the disabledDate is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertDisabledDate( oDisabledDate:sap.ui.unified.DateRange, iIndex:Int):sap.ui.unified.Calendar;

	/**
	* Inserts a selectedDate into the aggregation {@link #getSelectedDates selectedDates}.
	* @param	oSelectedDate The selectedDate to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the selectedDate should be inserted at; for a negative value of <code>iIndex</code>, the selectedDate is inserted at position 0; for a value greater than the current size of the aggregation, the selectedDate is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertSelectedDate( oSelectedDate:sap.ui.unified.DateRange, iIndex:Int):sap.ui.unified.Calendar;

	/**
	* Inserts a specialDate into the aggregation {@link #getSpecialDates specialDates}.
	* @param	oSpecialDate The specialDate to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the specialDate should be inserted at; for a negative value of <code>iIndex</code>, the specialDate is inserted at position 0; for a value greater than the current size of the aggregation, the specialDate is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertSpecialDate( oSpecialDate:sap.ui.unified.DateTypeRange, iIndex:Int):sap.ui.unified.Calendar;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Removes all the controls from the aggregation {@link #getDisabledDates disabledDates}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllDisabledDates( ):Array<sap.ui.unified.DateRange>;

	/**
	* Removes all the controls from the aggregation {@link #getSelectedDates selectedDates}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllSelectedDates( ):Array<sap.ui.unified.DateRange>;

	/**
	* Removes all the controls from the aggregation {@link #getSpecialDates specialDates}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllSpecialDates( ):Array<sap.ui.unified.DateTypeRange>;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;
	@:overload( function(vDisabledDate:Int):sap.ui.unified.DateRange{ })
	@:overload( function(vDisabledDate:String):sap.ui.unified.DateRange{ })

	/**
	* Removes a disabledDate from the aggregation {@link #getDisabledDates disabledDates}.
	* @param	vDisabledDate The disabledDate to remove or its index or id
	* @return	The removed disabledDate or <code>null</code>
	*/
	public function removeDisabledDate( vDisabledDate:sap.ui.unified.DateRange):sap.ui.unified.DateRange;
	@:overload( function(vSelectedDate:Int):sap.ui.unified.DateRange{ })
	@:overload( function(vSelectedDate:String):sap.ui.unified.DateRange{ })

	/**
	* Removes a selectedDate from the aggregation {@link #getSelectedDates selectedDates}.
	* @param	vSelectedDate The selectedDate to remove or its index or id
	* @return	The removed selectedDate or <code>null</code>
	*/
	public function removeSelectedDate( vSelectedDate:sap.ui.unified.DateRange):sap.ui.unified.DateRange;
	@:overload( function(vSpecialDate:Int):sap.ui.unified.DateTypeRange{ })
	@:overload( function(vSpecialDate:String):sap.ui.unified.DateTypeRange{ })

	/**
	* Removes a specialDate from the aggregation {@link #getSpecialDates specialDates}.
	* @param	vSpecialDate The specialDate to remove or its index or id
	* @return	The removed specialDate or <code>null</code>
	*/
	public function removeSpecialDate( vSpecialDate:sap.ui.unified.DateTypeRange):sap.ui.unified.DateTypeRange;

	/**
	* Sets a new value for property {@link #getFirstDayOfWeek firstDayOfWeek}.

If set, the first day of the displayed week is this day. Valid values are 0 to 6. If not a valid value is set, the default of the used locale is used.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>-1</code>.
	* @param	iFirstDayOfWeek New value for property <code>firstDayOfWeek</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFirstDayOfWeek( iFirstDayOfWeek:Int):sap.ui.unified.Calendar;

	/**
	* Sets a new value for property {@link #getIntervalSelection intervalSelection}.

If set, interval selection is allowed

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bIntervalSelection New value for property <code>intervalSelection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIntervalSelection( bIntervalSelection:Bool):sap.ui.unified.Calendar;
	@:overload( function(oLegend:sap.ui.core.ID):sap.ui.unified.Calendar{ })

	/**
	* Sets the associated {@link #getLegend legend}.
	* @param	oLegend ID of an element which becomes the new target of this legend association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLegend( oLegend:sap.ui.unified.CalendarLegend):sap.ui.unified.Calendar;

	/**
	* Sets a maximum date for the calendar.
	* @param	oDate a JavaScript date
	* @return	<code>this</code> for method chaining
	*/
	public function setMaxDate( oDate:Date):sap.ui.unified.Calendar;

	/**
	* Sets a minimum date for the calendar.
	* @param	oDate a JavaScript date
	* @return	<code>this</code> for method chaining
	*/
	public function setMinDate( oDate:Date):sap.ui.unified.Calendar;

	/**
	* Sets a new value for property {@link #getMonths months}.

Determines the number of months displayed.

As of version 1.50, the duplicated dates are not displayed if there are multiple months.

<b>Note:</b> On phones, only one month is displayed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	iMonths New value for property <code>months</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMonths( iMonths:Int):sap.ui.unified.Calendar;

	/**
	* Sets a new value for property {@link #getNonWorkingDays nonWorkingDays}.

If set, the provided weekdays are displayed as non-working days. Valid values inside the array are 0 to 6. If not set, the weekend defined in the locale settings is displayed as non-working days.

<b>Note:</b> Keep in mind that this property sets only weekly-recurring days as non-working. If you need specific dates or dates ranges, such as national holidays, use the <code>specialDates</code> aggregation to set them. Both the non-working days (from property) and dates (from aggregation) are visualized the same.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sNonWorkingDays New value for property <code>nonWorkingDays</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNonWorkingDays( sNonWorkingDays:Array<Int>):sap.ui.unified.Calendar;

	/**
	* Sets a new value for property {@link #getPrimaryCalendarType primaryCalendarType}.

If set, the calendar type is used for display. If not set, the calendar type of the global configuration is used.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sPrimaryCalendarType New value for property <code>primaryCalendarType</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPrimaryCalendarType( sPrimaryCalendarType:sap.ui.core.CalendarType):sap.ui.unified.Calendar;

	/**
	* Sets a new value for property {@link #getSecondaryCalendarType secondaryCalendarType}.

If set, the days are also displayed in this calendar type If not set, the dates are only displayed in the primary calendar type

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sSecondaryCalendarType New value for property <code>secondaryCalendarType</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSecondaryCalendarType( sSecondaryCalendarType:sap.ui.core.CalendarType):sap.ui.unified.Calendar;

	/**
	* Sets a new value for property {@link #getShowWeekNumbers showWeekNumbers}.

Determines whether the week numbers in the months are displayed.

<b>Note:</b> For Islamic calendars, the week numbers are not displayed regardless of what is set to this property.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowWeekNumbers New value for property <code>showWeekNumbers</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowWeekNumbers( bShowWeekNumbers:Bool):sap.ui.unified.Calendar;

	/**
	* Sets a new value for property {@link #getSingleSelection singleSelection}.

If set, only a single date or interval, if intervalSelection is enabled, can be selected

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bSingleSelection New value for property <code>singleSelection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSingleSelection( bSingleSelection:Bool):sap.ui.unified.Calendar;

	/**
	* Sets a new value for property {@link #getWidth width}.

Width of Calendar

<b>Note:</b> There is a theme depending minimum width, so the calendar can not be set smaller.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.unified.Calendar;
}

typedef CalendarArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* If set, interval selection is allowed
	*/
	@:optional var intervalSelection:haxe.extern.EitherType<String,Bool>;

	/**
	* If set, only a single date or interval, if intervalSelection is enabled, can be selected
	*/
	@:optional var singleSelection:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the number of months displayed.

As of version 1.50, the duplicated dates are not displayed if there are multiple months.

<b>Note:</b> On phones, only one month is displayed.
	*/
	@:optional var months:haxe.extern.EitherType<String,Int>;

	/**
	* If set, the first day of the displayed week is this day. Valid values are 0 to 6. If not a valid value is set, the default of the used locale is used.
	*/
	@:optional var firstDayOfWeek:haxe.extern.EitherType<String,Int>;

	/**
	* If set, the provided weekdays are displayed as non-working days. Valid values inside the array are 0 to 6. If not set, the weekend defined in the locale settings is displayed as non-working days.

<b>Note:</b> Keep in mind that this property sets only weekly-recurring days as non-working. If you need specific dates or dates ranges, such as national holidays, use the <code>specialDates</code> aggregation to set them. Both the non-working days (from property) and dates (from aggregation) are visualized the same.
	*/
	@:optional var nonWorkingDays:Array<haxe.extern.EitherType<String,Int>>;

	/**
	* If set, the calendar type is used for display. If not set, the calendar type of the global configuration is used.
	*/
	@:optional var primaryCalendarType:haxe.extern.EitherType<String,sap.ui.core.CalendarType>;

	/**
	* If set, the days are also displayed in this calendar type If not set, the dates are only displayed in the primary calendar type
	*/
	@:optional var secondaryCalendarType:haxe.extern.EitherType<String,sap.ui.core.CalendarType>;

	/**
	* Width of Calendar

<b>Note:</b> There is a theme depending minimum width, so the calendar can not be set smaller.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Minimum date that can be shown and selected in the Calendar. This must be a JavaScript date object.

<b>Note:</b> if the date is inside of a month the complete month is displayed, but dates outside the valid range can not be selected.

<b>Note:</b> If the <code>minDate</code> is set to be after the <code>maxDate</code>, the <code>maxDate</code> is set to the end of the month of the <code>minDate</code>.
	*/
	@:optional var minDate:haxe.extern.EitherType<String,Dynamic>;

	/**
	* Maximum date that can be shown and selected in the Calendar. This must be a JavaScript date object.

<b>Note:</b> if the date is inside of a month the complete month is displayed, but dates outside the valid range can not be selected.

<b>Note:</b> If the <code>maxDate</code> is set to be before the <code>minDate</code>, the <code>minDate</code> is set to the begin of the month of the <code>maxDate</code>.
	*/
	@:optional var maxDate:haxe.extern.EitherType<String,Dynamic>;

	/**
	* Determines whether the week numbers in the months are displayed.

<b>Note:</b> For Islamic calendars, the week numbers are not displayed regardless of what is set to this property.
	*/
	@:optional var showWeekNumbers:haxe.extern.EitherType<String,Bool>;

    /**
    * Dates or date ranges for selected dates.

To set a single date (instead of a range), set only the <code>startDate</code> property of the {@link sap.ui.unified.DateRange} class.
    */
	@:optional var selectedDates:Array<haxe.extern.EitherType<String,sap.ui.unified.DateRange>>;

    /**
    * Dates or date ranges with type, to visualize special days in the <code>Calendar</code>. If one day is assigned to more than one Type, only the first one will be used.

To set a single date (instead of a range), set only the <code>startDate</code> property of the {@link sap.ui.unified.DateRange} class.

<b>Note:</b> Keep in mind that the <code>NonWorking</code> type is for marking specific dates or date ranges as non-working, where if you need a weekly-reccuring non-working days (weekend), you should use the <code>nonWorkingDays</code> property. Both the non-working days (from property) and dates (from aggregation) are visualized the same.
    */
	@:optional var specialDates:Array<haxe.extern.EitherType<String,sap.ui.unified.DateTypeRange>>;

    /**
    * Dates or date ranges for disabled dates.

To set a single date (instead of a range), set only the <code>startDate</code> property of the {@link sap.ui.unified.DateRange} class.
    */
	@:optional var disabledDates:Array<haxe.extern.EitherType<String,sap.ui.unified.DateRange>>;

    /**
    * Hidden, for internal use only.
    */
	@:optional var header:haxe.extern.EitherType<String,sap.ui.unified.calendar.Header>;

    /**
    * null
    */
	@:optional var secondMonthHeader:haxe.extern.EitherType<String,sap.ui.unified.calendar.Header>;

    /**
    * null
    */
	@:optional var month:Array<haxe.extern.EitherType<String,sap.ui.unified.calendar.Month>>;

    /**
    * null
    */
	@:optional var monthPicker:haxe.extern.EitherType<String,sap.ui.unified.calendar.MonthPicker>;

    /**
    * null
    */
	@:optional var yearPicker:haxe.extern.EitherType<String,sap.ui.unified.calendar.YearPicker>;

    /**
    * null
    */
	@:optional var yearRangePicker:haxe.extern.EitherType<String,sap.ui.unified.calendar.YearPicker>;

	/**
	* Association to controls / ids which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to the <code>CalendarLegend</code> explaining the colors of the <code>specialDates</code>.

<b>Note</b> The legend does not have to be rendered but must exist, and all required types must be assigned.
	*/
	@:optional var legend:haxe.extern.EitherType<String,sap.ui.unified.CalendarLegend>;

	/**
	* Date selection was cancelled
	*/
	@:optional var cancel:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Date selection changed
	*/
	@:optional var select:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* <code>startDate</code> was changed while navigation in <code>Calendar</code>

Use <code>getStartDate</code> function to determine the current start date
	*/
	@:optional var startDateChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Week number selection changed. By default, clicking on the week number will select the corresponding week. If the week has already been selected, clicking the week number will deselect it.

The default behavior can be prevented using the <code>preventDefault</code> method.

<b>Note</b> Works for Gregorian calendars only and when <code>intervalSelection</code> is set to 'true'.
	*/
	@:optional var weekNumberSelect:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
