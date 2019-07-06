package sap.ui.unified;

@:native("sap.ui.unified.CalendarTimeInterval")

/**
* Calendar with granularity of time items displayed in one line.
*/
extern class CalendarTimeInterval extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:CalendarTimeIntervalArgs):Void {})
	public function new(?mSettings:CalendarTimeIntervalArgs):Void;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.unified.CalendarTimeInterval{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.unified.CalendarTimeInterval;

	/**
	* Adds some selectedDate to the aggregation {@link #getSelectedDates selectedDates}.
	* @param	oSelectedDate The selectedDate to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addSelectedDate( oSelectedDate:sap.ui.unified.DateRange):sap.ui.unified.CalendarTimeInterval;

	/**
	* Adds some specialDate to the aggregation {@link #getSpecialDates specialDates}.
	* @param	oSpecialDate The specialDate to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addSpecialDate( oSpecialDate:sap.ui.unified.DateTypeRange):sap.ui.unified.CalendarTimeInterval;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:cancel cancel} event of this <code>sap.ui.unified.CalendarTimeInterval</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.CalendarTimeInterval</code> itself.

Time selection was cancelled
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.CalendarTimeInterval</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachCancel( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.CalendarTimeInterval;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:select select} event of this <code>sap.ui.unified.CalendarTimeInterval</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.CalendarTimeInterval</code> itself.

Time selection changed
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.CalendarTimeInterval</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.CalendarTimeInterval;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:startDateChange startDateChange} event of this <code>sap.ui.unified.CalendarTimeInterval</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.CalendarTimeInterval</code> itself.

<code>startDate</code> was changed while navigation in <code>CalendarTimeInterval</code>
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.CalendarTimeInterval</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachStartDateChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.CalendarTimeInterval;

	/**
	* Destroys all the selectedDates in the aggregation {@link #getSelectedDates selectedDates}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySelectedDates( ):sap.ui.unified.CalendarTimeInterval;

	/**
	* Destroys all the specialDates in the aggregation {@link #getSpecialDates specialDates}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySpecialDates( ):sap.ui.unified.CalendarTimeInterval;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:cancel cancel} event of this <code>sap.ui.unified.CalendarTimeInterval</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachCancel( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.CalendarTimeInterval;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:select select} event of this <code>sap.ui.unified.CalendarTimeInterval</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelect( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.CalendarTimeInterval;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:startDateChange startDateChange} event of this <code>sap.ui.unified.CalendarTimeInterval</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachStartDateChange( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.CalendarTimeInterval;

	/**
	* Displays an item in the <code>CalendarTimeInterval</code> but doesn't set the focus.
	* @param	oDate JavaScript date object for displayed item.
	* @return	<code>this</code> to allow method chaining
	*/
	public function displayDate( oDate:Dynamic):sap.ui.unified.Calendar;

	/**
	* Creates a new subclass of class sap.ui.unified.CalendarTimeInterval with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Sets the focused item of the <code>CalendarTimeInterval</code>.
	* @param	oDate JavaScript date object for focused item.
	* @return	<code>this</code> to allow method chaining
	*/
	public function focusDate( oDate:Dynamic):sap.ui.unified.Calendar;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets current value of property {@link #getIntervalMinutes intervalMinutes}.

Size of on time interval in minutes, default is 60 minutes.

<b>Note:</b> the start of the interval calculation is always on the corresponding date at 00:00.

An interval longer than 720 minutes is not allowed. Please use the <code>CalendarDateInterval</code> instead.

A day must be divisible by this interval size. One interval must not include more than one day.

Default value is <code>60</code>.
	* @return	Value of property <code>intervalMinutes</code>
	*/
	public function getIntervalMinutes( ):Int;

	/**
	* Gets current value of property {@link #getIntervalSelection intervalSelection}.

If set, interval selection is allowed

Default value is <code>false</code>.
	* @return	Value of property <code>intervalSelection</code>
	*/
	public function getIntervalSelection( ):Bool;

	/**
	* Gets current value of property {@link #getItems items}.

Number of time items displayed. Default is 12.

<b>Note:</b> On phones, the maximum number of items displayed in the row is always 6.

Default value is <code>12</code>.
	* @return	Value of property <code>items</code>
	*/
	public function getItems( ):Int;

	/**
	* ID of the element which is the current target of the association {@link #getLegend legend}, or <code>null</code>.
	* @return	null
	*/
	public function getLegend( ):sap.ui.core.ID;

	/**
	* Gets current value of property {@link #getMaxDate maxDate}.

Maximum date that can be shown and selected in the Calendar. This must be a JavaScript date object.

<b>Note:</b> If the <code>maxDate</code> is set to be before the <code>minDate</code>, the <code>minDate</code> is set to the begin of the month of the <code>maxDate</code>.
	* @return	Value of property <code>maxDate</code>
	*/
	public function getMaxDate( ):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.unified.CalendarTimeInterval.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getMinDate minDate}.

Minimum date that can be shown and selected in the Calendar. This must be a JavaScript date object.

<b>Note:</b> If the <code>minDate</code> is set to be after the <code>maxDate</code>, the <code>maxDate</code> is set to the end of the month of the <code>minDate</code>.
	* @return	Value of property <code>minDate</code>
	*/
	public function getMinDate( ):Dynamic;

	/**
	* Gets current value of property {@link #getPickerPopup pickerPopup}.

If set, the day-, month- and yearPicker opens on a popup

Default value is <code>false</code>.
	* @return	Value of property <code>pickerPopup</code>
	*/
	public function getPickerPopup( ):Bool;

	/**
	* Gets content of aggregation {@link #getSelectedDates selectedDates}.

Date ranges for selected items of the <code>CalendarTimeInterval</code>.

If <code>singleSelection</code> is set, only the first entry is used.
	* @return	null
	*/
	public function getSelectedDates( ):Array<sap.ui.unified.DateRange>;

	/**
	* Gets current value of property {@link #getSingleSelection singleSelection}.

If set, only a single date or interval, if <code>intervalSelection</code> is enabled, can be selected

<b>Note:</b> Selection of multiple intervals is not supported in the current version.

Default value is <code>true</code>.
	* @return	Value of property <code>singleSelection</code>
	*/
	public function getSingleSelection( ):Bool;

	/**
	* Gets content of aggregation {@link #getSpecialDates specialDates}.

Date ranges with type to visualize special items in the <code>CalendarTimeInterval</code>. If one interval is assigned to more than one type, only the first one will be used.
	* @return	null
	*/
	public function getSpecialDates( ):Array<sap.ui.unified.DateTypeRange>;

	/**
	* Gets current value of property {@link #getStartDate startDate}.

Start date of the Interval as JavaScript Date object. The time interval corresponding to this Date and <code>items</code> and <code>intervalMinutes</code> will be the first time in the displayed row.
	* @return	Value of property <code>startDate</code>
	*/
	public function getStartDate( ):Dynamic;

	/**
	* Gets current value of property {@link #getWidth width}.

Width of the <code>CalendarTimeInterval</code>. The width of the single months depends on this width.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

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
	* Inserts a selectedDate into the aggregation {@link #getSelectedDates selectedDates}.
	* @param	oSelectedDate The selectedDate to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the selectedDate should be inserted at; for a negative value of <code>iIndex</code>, the selectedDate is inserted at position 0; for a value greater than the current size of the aggregation, the selectedDate is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertSelectedDate( oSelectedDate:sap.ui.unified.DateRange, iIndex:Int):sap.ui.unified.CalendarTimeInterval;

	/**
	* Inserts a specialDate into the aggregation {@link #getSpecialDates specialDates}.
	* @param	oSpecialDate The specialDate to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the specialDate should be inserted at; for a negative value of <code>iIndex</code>, the specialDate is inserted at position 0; for a value greater than the current size of the aggregation, the specialDate is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertSpecialDate( oSpecialDate:sap.ui.unified.DateTypeRange, iIndex:Int):sap.ui.unified.CalendarTimeInterval;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;

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
	* Sets a new value for property {@link #getIntervalMinutes intervalMinutes}.

Size of on time interval in minutes, default is 60 minutes.

<b>Note:</b> the start of the interval calculation is always on the corresponding date at 00:00.

An interval longer than 720 minutes is not allowed. Please use the <code>CalendarDateInterval</code> instead.

A day must be divisible by this interval size. One interval must not include more than one day.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>60</code>.
	* @param	iIntervalMinutes New value for property <code>intervalMinutes</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIntervalMinutes( iIntervalMinutes:Int):sap.ui.unified.CalendarTimeInterval;

	/**
	* Sets a new value for property {@link #getIntervalSelection intervalSelection}.

If set, interval selection is allowed

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bIntervalSelection New value for property <code>intervalSelection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIntervalSelection( bIntervalSelection:Bool):sap.ui.unified.CalendarTimeInterval;

	/**
	* Sets a new value for property {@link #getItems items}.

Number of time items displayed. Default is 12.

<b>Note:</b> On phones, the maximum number of items displayed in the row is always 6.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>12</code>.
	* @param	iItems New value for property <code>items</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setItems( iItems:Int):sap.ui.unified.CalendarTimeInterval;
	@:overload( function(oLegend:sap.ui.core.ID):sap.ui.unified.CalendarTimeInterval{ })

	/**
	* Sets the associated {@link #getLegend legend}.
	* @param	oLegend ID of an element which becomes the new target of this legend association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLegend( oLegend:sap.ui.unified.CalendarLegend):sap.ui.unified.CalendarTimeInterval;

	/**
	* Sets a new value for property {@link #getMaxDate maxDate}.

Maximum date that can be shown and selected in the Calendar. This must be a JavaScript date object.

<b>Note:</b> If the <code>maxDate</code> is set to be before the <code>minDate</code>, the <code>minDate</code> is set to the begin of the month of the <code>maxDate</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oMaxDate New value for property <code>maxDate</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxDate( oMaxDate:Dynamic):sap.ui.unified.CalendarTimeInterval;

	/**
	* Sets a new value for property {@link #getMinDate minDate}.

Minimum date that can be shown and selected in the Calendar. This must be a JavaScript date object.

<b>Note:</b> If the <code>minDate</code> is set to be after the <code>maxDate</code>, the <code>maxDate</code> is set to the end of the month of the <code>minDate</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oMinDate New value for property <code>minDate</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMinDate( oMinDate:Dynamic):sap.ui.unified.CalendarTimeInterval;

	/**
	* Sets a new value for property {@link #getPickerPopup pickerPopup}.

If set, the day-, month- and yearPicker opens on a popup

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bPickerPopup New value for property <code>pickerPopup</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPickerPopup( bPickerPopup:Bool):sap.ui.unified.CalendarTimeInterval;

	/**
	* Sets a new value for property {@link #getSingleSelection singleSelection}.

If set, only a single date or interval, if <code>intervalSelection</code> is enabled, can be selected

<b>Note:</b> Selection of multiple intervals is not supported in the current version.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bSingleSelection New value for property <code>singleSelection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSingleSelection( bSingleSelection:Bool):sap.ui.unified.CalendarTimeInterval;

	/**
	* Sets a new value for property {@link #getStartDate startDate}.

Start date of the Interval as JavaScript Date object. The time interval corresponding to this Date and <code>items</code> and <code>intervalMinutes</code> will be the first time in the displayed row.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oStartDate New value for property <code>startDate</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setStartDate( oStartDate:Dynamic):sap.ui.unified.CalendarTimeInterval;

	/**
	* Sets a new value for property {@link #getWidth width}.

Width of the <code>CalendarTimeInterval</code>. The width of the single months depends on this width.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.unified.CalendarTimeInterval;
}

typedef CalendarTimeIntervalArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Width of the <code>CalendarTimeInterval</code>. The width of the single months depends on this width.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Start date of the Interval as JavaScript Date object. The time interval corresponding to this Date and <code>items</code> and <code>intervalMinutes</code> will be the first time in the displayed row.
	*/
	@:optional var startDate:haxe.extern.EitherType<String,Dynamic>;

	/**
	* If set, interval selection is allowed
	*/
	@:optional var intervalSelection:haxe.extern.EitherType<String,Bool>;

	/**
	* If set, only a single date or interval, if <code>intervalSelection</code> is enabled, can be selected

<b>Note:</b> Selection of multiple intervals is not supported in the current version.
	*/
	@:optional var singleSelection:haxe.extern.EitherType<String,Bool>;

	/**
	* Number of time items displayed. Default is 12.

<b>Note:</b> On phones, the maximum number of items displayed in the row is always 6.
	*/
	@:optional var items:haxe.extern.EitherType<String,Int>;

	/**
	* Size of on time interval in minutes, default is 60 minutes.

<b>Note:</b> the start of the interval calculation is always on the corresponding date at 00:00.

An interval longer than 720 minutes is not allowed. Please use the <code>CalendarDateInterval</code> instead.

A day must be divisible by this interval size. One interval must not include more than one day.
	*/
	@:optional var intervalMinutes:haxe.extern.EitherType<String,Int>;

	/**
	* If set, the day-, month- and yearPicker opens on a popup
	*/
	@:optional var pickerPopup:haxe.extern.EitherType<String,Bool>;

	/**
	* Minimum date that can be shown and selected in the Calendar. This must be a JavaScript date object.

<b>Note:</b> If the <code>minDate</code> is set to be after the <code>maxDate</code>, the <code>maxDate</code> is set to the end of the month of the <code>minDate</code>.
	*/
	@:optional var minDate:haxe.extern.EitherType<String,Dynamic>;

	/**
	* Maximum date that can be shown and selected in the Calendar. This must be a JavaScript date object.

<b>Note:</b> If the <code>maxDate</code> is set to be before the <code>minDate</code>, the <code>minDate</code> is set to the begin of the month of the <code>maxDate</code>.
	*/
	@:optional var maxDate:haxe.extern.EitherType<String,Dynamic>;

    /**
    * Date ranges for selected items of the <code>CalendarTimeInterval</code>.

If <code>singleSelection</code> is set, only the first entry is used.
    */
	@:optional var selectedDates:Array<haxe.extern.EitherType<String,sap.ui.unified.DateRange>>;

    /**
    * Date ranges with type to visualize special items in the <code>CalendarTimeInterval</code>. If one interval is assigned to more than one type, only the first one will be used.
    */
	@:optional var specialDates:Array<haxe.extern.EitherType<String,sap.ui.unified.DateTypeRange>>;

    /**
    * Hidden, for internal use only.
    */
	@:optional var header:haxe.extern.EitherType<String,sap.ui.unified.calendar.Header>;

    /**
    * null
    */
	@:optional var timesRow:haxe.extern.EitherType<String,sap.ui.unified.calendar.TimesRow>;

    /**
    * null
    */
	@:optional var datesRow:haxe.extern.EitherType<String,sap.ui.unified.calendar.Month>;

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
	@:optional var calendarPicker:haxe.extern.EitherType<String,sap.ui.unified.Calendar>;

	/**
	* Association to controls / IDs which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to the <code>CalendarLegend</code> explaining the colors of the <code>specialDates</code>.

<b>Note</b> The legend does not have to be rendered but must exist, and all required types must be assigned.
	*/
	@:optional var legend:haxe.extern.EitherType<String,sap.ui.unified.CalendarLegend>;

	/**
	* Time selection was cancelled
	*/
	@:optional var cancel:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Time selection changed
	*/
	@:optional var select:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* <code>startDate</code> was changed while navigation in <code>CalendarTimeInterval</code>
	*/
	@:optional var startDateChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
