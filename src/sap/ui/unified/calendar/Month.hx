package sap.ui.unified.calendar;

@:native("sap.ui.unified.calendar.Month")

/**
* renders a month with ItemNavigation This is used inside the calendar. Not for stand alone usage If used inside the calendar the properties and aggregation are directly taken from the parent (To not duplicate and sync DateRanges and so on...)
*/
extern class Month extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:MonthArgs):Void {})
	public function new(?mSettings:MonthArgs):Void;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.unified.calendar.Month{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.unified.calendar.Month;

	/**
	* Adds some disabledDate to the aggregation {@link #getDisabledDates disabledDates}.
	* @param	oDisabledDate The disabledDate to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addDisabledDate( oDisabledDate:sap.ui.unified.DateRange):sap.ui.unified.calendar.Month;

	/**
	* Adds some selectedDate to the aggregation {@link #getSelectedDates selectedDates}.
	* @param	oSelectedDate The selectedDate to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addSelectedDate( oSelectedDate:sap.ui.unified.DateRange):sap.ui.unified.calendar.Month;

	/**
	* Adds some specialDate to the aggregation {@link #getSpecialDates specialDates}.
	* @param	oSpecialDate The specialDate to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addSpecialDate( oSpecialDate:sap.ui.unified.DateTypeRange):sap.ui.unified.calendar.Month;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:focus focus} event of this <code>sap.ui.unified.calendar.Month</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.calendar.Month</code> itself.

Date focus changed
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.calendar.Month</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachFocus( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.calendar.Month;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:select select} event of this <code>sap.ui.unified.calendar.Month</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.calendar.Month</code> itself.

Date selection changed
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.calendar.Month</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.calendar.Month;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:weekNumberSelect weekNumberSelect} event of this <code>sap.ui.unified.calendar.Month</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.calendar.Month</code> itself.

Fired when a week number selection is changed. By default, choosing the week number will select the corresponding week. If the week has already been selected, choosing the week number will deselect it.

The default behavior can be prevented using the <code>preventDefault</code> method.

<b>Note:</b> Works for Gregorian calendars only and when <code>intervalSelection</code> is set to <code>true</code>.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.calendar.Month</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachWeekNumberSelect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.calendar.Month;

	/**
	* checks if a date is focusable in the current rendered output. So if not rendered or in other month it is not focusable.
	* @param	oDate JavaScript date object for focused date.
	* @return	flag if focusable
	*/
	public function checkDateFocusable( oDate:Dynamic):Bool;

	/**
	* Destroys all the disabledDates in the aggregation {@link #getDisabledDates disabledDates}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyDisabledDates( ):sap.ui.unified.calendar.Month;

	/**
	* Destroys all the selectedDates in the aggregation {@link #getSelectedDates selectedDates}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySelectedDates( ):sap.ui.unified.calendar.Month;

	/**
	* Destroys all the specialDates in the aggregation {@link #getSpecialDates specialDates}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySpecialDates( ):sap.ui.unified.calendar.Month;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:focus focus} event of this <code>sap.ui.unified.calendar.Month</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachFocus( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.calendar.Month;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:select select} event of this <code>sap.ui.unified.calendar.Month</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelect( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.calendar.Month;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:weekNumberSelect weekNumberSelect} event of this <code>sap.ui.unified.calendar.Month</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachWeekNumberSelect( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.calendar.Month;

	/**
	* displays the month of a given date without setting the focus
	* @param	oDate JavaScript date object for focused date.
	* @return	<code>this</code> to allow method chaining
	*/
	public function displayDate( oDate:Dynamic):sap.ui.unified.calendar.Month;

	/**
	* Creates a new subclass of class sap.ui.unified.calendar.Month with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

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
	* Gets current value of property {@link #getDate date}.

A date as JavaScript Date object. The month including this date is rendered and this date is focused initially (if no other focus is set).
	* @return	Value of property <code>date</code>
	*/
	public function getDate( ):Dynamic;

	/**
	* Gets content of aggregation {@link #getDisabledDates disabledDates}.

Date Ranges for disabled dates
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
	* Returns a metadata object for class sap.ui.unified.calendar.Month.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getNonWorkingDays nonWorkingDays}.

If set, the provided weekdays are displayed as non-working days. Valid values inside the array are 0 to 6. If not set, the weekend defined in the locale settings is displayed as non-working days.
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

Date Ranges for selected dates of the DatePicker
	* @return	null
	*/
	public function getSelectedDates( ):Array<sap.ui.unified.DateRange>;

	/**
	* Gets current value of property {@link #getShowHeader showHeader}.

If set, a header with the month name is shown

Default value is <code>false</code>.
	* @return	Value of property <code>showHeader</code>
	*/
	public function getShowHeader( ):Bool;

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

<code>DateRange</code> with type to visualize special days in the Calendar.

<b>Note:</b> If one day is assigned to more than one DateTypeRange, only the first one will be used. The only exception is when one of the types is <code>NonWorking</code>, then you can have both <code>NonWorking</code> and the other type. For example, you can have <code>NonWorking</code> + <code>Type01</code> but you can't have <code>Type01</code> + <code>Type02</code>.
	* @return	null
	*/
	public function getSpecialDates( ):Array<sap.ui.unified.DateTypeRange>;

	/**
	* Gets current value of property {@link #getWidth width}.

Width of Month
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
	public function insertDisabledDate( oDisabledDate:sap.ui.unified.DateRange, iIndex:Int):sap.ui.unified.calendar.Month;

	/**
	* Inserts a selectedDate into the aggregation {@link #getSelectedDates selectedDates}.
	* @param	oSelectedDate The selectedDate to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the selectedDate should be inserted at; for a negative value of <code>iIndex</code>, the selectedDate is inserted at position 0; for a value greater than the current size of the aggregation, the selectedDate is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertSelectedDate( oSelectedDate:sap.ui.unified.DateRange, iIndex:Int):sap.ui.unified.calendar.Month;

	/**
	* Inserts a specialDate into the aggregation {@link #getSpecialDates specialDates}.
	* @param	oSpecialDate The specialDate to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the specialDate should be inserted at; for a negative value of <code>iIndex</code>, the specialDate is inserted at position 0; for a value greater than the current size of the aggregation, the specialDate is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertSpecialDate( oSpecialDate:sap.ui.unified.DateTypeRange, iIndex:Int):sap.ui.unified.calendar.Month;

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
	* Sets a new value for property {@link #getDate date}.

A date as JavaScript Date object. The month including this date is rendered and this date is focused initially (if no other focus is set).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oDate New value for property <code>date</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDate( oDate:Dynamic):sap.ui.unified.calendar.Month;

	/**
	* Sets a new value for property {@link #getFirstDayOfWeek firstDayOfWeek}.

If set, the first day of the displayed week is this day. Valid values are 0 to 6. If not a valid value is set, the default of the used locale is used.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>-1</code>.
	* @param	iFirstDayOfWeek New value for property <code>firstDayOfWeek</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFirstDayOfWeek( iFirstDayOfWeek:Int):sap.ui.unified.calendar.Month;

	/**
	* Sets a new value for property {@link #getIntervalSelection intervalSelection}.

If set, interval selection is allowed

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bIntervalSelection New value for property <code>intervalSelection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIntervalSelection( bIntervalSelection:Bool):sap.ui.unified.calendar.Month;
	@:overload( function(oLegend:sap.ui.core.ID):sap.ui.unified.calendar.Month{ })

	/**
	* Sets the associated {@link #getLegend legend}.
	* @param	oLegend ID of an element which becomes the new target of this legend association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLegend( oLegend:sap.ui.unified.CalendarLegend):sap.ui.unified.calendar.Month;

	/**
	* Sets a new value for property {@link #getNonWorkingDays nonWorkingDays}.

If set, the provided weekdays are displayed as non-working days. Valid values inside the array are 0 to 6. If not set, the weekend defined in the locale settings is displayed as non-working days.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sNonWorkingDays New value for property <code>nonWorkingDays</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNonWorkingDays( sNonWorkingDays:Array<Int>):sap.ui.unified.calendar.Month;

	/**
	* Sets a new value for property {@link #getPrimaryCalendarType primaryCalendarType}.

If set, the calendar type is used for display. If not set, the calendar type of the global configuration is used.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sPrimaryCalendarType New value for property <code>primaryCalendarType</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPrimaryCalendarType( sPrimaryCalendarType:sap.ui.core.CalendarType):sap.ui.unified.calendar.Month;

	/**
	* Sets a new value for property {@link #getSecondaryCalendarType secondaryCalendarType}.

If set, the days are also displayed in this calendar type If not set, the dates are only displayed in the primary calendar type

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sSecondaryCalendarType New value for property <code>secondaryCalendarType</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSecondaryCalendarType( sSecondaryCalendarType:sap.ui.core.CalendarType):sap.ui.unified.calendar.Month;

	/**
	* Sets a new value for property {@link #getShowHeader showHeader}.

If set, a header with the month name is shown

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowHeader New value for property <code>showHeader</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowHeader( bShowHeader:Bool):sap.ui.unified.calendar.Month;

	/**
	* Sets a new value for property {@link #getShowWeekNumbers showWeekNumbers}.

Determines whether the week numbers in the months are displayed.

<b>Note:</b> For Islamic calendars, the week numbers are not displayed regardless of what is set to this property.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowWeekNumbers New value for property <code>showWeekNumbers</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowWeekNumbers( bShowWeekNumbers:Bool):sap.ui.unified.calendar.Month;

	/**
	* Sets a new value for property {@link #getSingleSelection singleSelection}.

If set, only a single date or interval, if intervalSelection is enabled, can be selected

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bSingleSelection New value for property <code>singleSelection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSingleSelection( bSingleSelection:Bool):sap.ui.unified.calendar.Month;

	/**
	* Sets a new value for property {@link #getWidth width}.

Width of Month

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.unified.calendar.Month;
}

typedef MonthArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* A date as JavaScript Date object. The month including this date is rendered and this date is focused initially (if no other focus is set).
	*/
	@:optional var date:haxe.extern.EitherType<String,Dynamic>;

	/**
	* If set, interval selection is allowed
	*/
	@:optional var intervalSelection:haxe.extern.EitherType<String,Bool>;

	/**
	* If set, only a single date or interval, if intervalSelection is enabled, can be selected
	*/
	@:optional var singleSelection:haxe.extern.EitherType<String,Bool>;

	/**
	* If set, a header with the month name is shown
	*/
	@:optional var showHeader:haxe.extern.EitherType<String,Bool>;

	/**
	* If set, the first day of the displayed week is this day. Valid values are 0 to 6. If not a valid value is set, the default of the used locale is used.
	*/
	@:optional var firstDayOfWeek:haxe.extern.EitherType<String,Int>;

	/**
	* If set, the provided weekdays are displayed as non-working days. Valid values inside the array are 0 to 6. If not set, the weekend defined in the locale settings is displayed as non-working days.
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
	* Width of Month
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Determines whether the week numbers in the months are displayed.

<b>Note:</b> For Islamic calendars, the week numbers are not displayed regardless of what is set to this property.
	*/
	@:optional var showWeekNumbers:haxe.extern.EitherType<String,Bool>;

    /**
    * Date Ranges for selected dates of the DatePicker
    */
	@:optional var selectedDates:Array<haxe.extern.EitherType<String,sap.ui.unified.DateRange>>;

    /**
    * <code>DateRange</code> with type to visualize special days in the Calendar.

<b>Note:</b> If one day is assigned to more than one DateTypeRange, only the first one will be used. The only exception is when one of the types is <code>NonWorking</code>, then you can have both <code>NonWorking</code> and the other type. For example, you can have <code>NonWorking</code> + <code>Type01</code> but you can't have <code>Type01</code> + <code>Type02</code>.
    */
	@:optional var specialDates:Array<haxe.extern.EitherType<String,sap.ui.unified.DateTypeRange>>;

    /**
    * Date Ranges for disabled dates
    */
	@:optional var disabledDates:Array<haxe.extern.EitherType<String,sap.ui.unified.DateRange>>;

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
	* Date focus changed
	*/
	@:optional var focus:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Date selection changed
	*/
	@:optional var select:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when a week number selection is changed. By default, choosing the week number will select the corresponding week. If the week has already been selected, choosing the week number will deselect it.

The default behavior can be prevented using the <code>preventDefault</code> method.

<b>Note:</b> Works for Gregorian calendars only and when <code>intervalSelection</code> is set to <code>true</code>.
	*/
	@:optional var weekNumberSelect:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
