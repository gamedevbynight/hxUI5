package sap.ui.unified.calendar;

@:native("sap.ui.unified.calendar.MonthsRow")

/**
* Renders a row of months using ItemNavigation. There is no paging or navigation outside the rendered area implemented. This is done inside the CalendarMonthInterval. If used inside the CalendarMonthInterval the properties and aggregation are directly taken from the parent (to not duplicate and synchronize DateRanges and so on...).

The MontsRow works with JavaScript Date objects, but only the month and the year are used to display and interact. As representation for a month, the 1st of the month will always be returned in the API.
*/
extern class MonthsRow extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:MonthsRowArgs):Void {})
	public function new(?mSettings:MonthsRowArgs):Void;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.unified.calendar.MonthsRow{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.unified.calendar.MonthsRow;

	/**
	* Adds some selectedDate to the aggregation {@link #getSelectedDates selectedDates}.
	* @param	oSelectedDate The selectedDate to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addSelectedDate( oSelectedDate:sap.ui.unified.DateRange):sap.ui.unified.calendar.MonthsRow;

	/**
	* Adds some specialDate to the aggregation {@link #getSpecialDates specialDates}.
	* @param	oSpecialDate The specialDate to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addSpecialDate( oSpecialDate:sap.ui.unified.DateTypeRange):sap.ui.unified.calendar.MonthsRow;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:focus focus} event of this <code>sap.ui.unified.calendar.MonthsRow</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.calendar.MonthsRow</code> itself.

Month focus changed
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.calendar.MonthsRow</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachFocus( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.calendar.MonthsRow;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:select select} event of this <code>sap.ui.unified.calendar.MonthsRow</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.calendar.MonthsRow</code> itself.

Month selection changed
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.calendar.MonthsRow</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.calendar.MonthsRow;

	/**
	* Checks if a date is focusable in the current rendered output. This means that if it is not rendered, it is not focusable.
	* @param	oDateTime JavaScript Date object for focused date.
	* @return	flag if focusable
	*/
	public function checkDateFocusable( oDateTime:Dynamic):Bool;

	/**
	* Destroys all the selectedDates in the aggregation {@link #getSelectedDates selectedDates}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySelectedDates( ):sap.ui.unified.calendar.MonthsRow;

	/**
	* Destroys all the specialDates in the aggregation {@link #getSpecialDates specialDates}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySpecialDates( ):sap.ui.unified.calendar.MonthsRow;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:focus focus} event of this <code>sap.ui.unified.calendar.MonthsRow</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachFocus( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.calendar.MonthsRow;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:select select} event of this <code>sap.ui.unified.calendar.MonthsRow</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelect( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.calendar.MonthsRow;

	/**
	* Displays the month of a given date without setting the focus
	* @param	oDate JavaScript Date object for focused date.
	* @return	<code>this</code> to allow method chaining
	*/
	public function displayDate( oDate:Dynamic):sap.ui.unified.calendar.MonthsRow;

	/**
	* Creates a new subclass of class sap.ui.unified.calendar.MonthsRow with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

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

A date as JavaScript Date object. The month including this date is rendered and this date is focused initially (if no other focus is set). If the date property is not in the range <code>startDate</code> + <code>months</code> in the rendering phase, it is set to the <code>startDate</code>. So after setting the <code>startDate</code> the date should be set to be in the visible range.
	* @return	Value of property <code>date</code>
	*/
	public function getDate( ):Dynamic;

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
	* Returns a metadata object for class sap.ui.unified.calendar.MonthsRow.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getMonths months}.

Number of months displayed

Default value is <code>12</code>.
	* @return	Value of property <code>months</code>
	*/
	public function getMonths( ):Int;

	/**
	* Gets content of aggregation {@link #getSelectedDates selectedDates}.

Date ranges for selected dates. If <code>singleSelection</code> is set, only the first entry is used.

<b>Note:</b> Even if only one day is selected, the whole corresponding month is selected.
	* @return	null
	*/
	public function getSelectedDates( ):Array<sap.ui.unified.DateRange>;

	/**
	* Gets current value of property {@link #getShowHeader showHeader}.

If set, a header with the years is shown to visualize what month belongs to what year.

Default value is <code>false</code>.
	* @return	Value of property <code>showHeader</code>
	*/
	public function getShowHeader( ):Bool;

	/**
	* Gets current value of property {@link #getSingleSelection singleSelection}.

If set, only a single month or interval, if intervalSelection is enabled, can be selected

<b>Note:</b> Selection of multiple intervals is not supported in the current version.

Default value is <code>true</code>.
	* @return	Value of property <code>singleSelection</code>
	*/
	public function getSingleSelection( ):Bool;

	/**
	* Gets content of aggregation {@link #getSpecialDates specialDates}.

Date ranges with type to visualize special months in the row. If one day is assigned to more than one type, only the first one will be used.

<b>Note:</b> Even if only one day is set as a special day, the whole corresponding month is displayed in this way.
	* @return	null
	*/
	public function getSpecialDates( ):Array<sap.ui.unified.DateTypeRange>;

	/**
	* Gets current value of property {@link #getStartDate startDate}.

Start date, as JavaScript Date object, of the row. The month of this date is the first month of the displayed row.
	* @return	Value of property <code>startDate</code>
	*/
	public function getStartDate( ):Dynamic;

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
	public function insertSelectedDate( oSelectedDate:sap.ui.unified.DateRange, iIndex:Int):sap.ui.unified.calendar.MonthsRow;

	/**
	* Inserts a specialDate into the aggregation {@link #getSpecialDates specialDates}.
	* @param	oSpecialDate The specialDate to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the specialDate should be inserted at; for a negative value of <code>iIndex</code>, the specialDate is inserted at position 0; for a value greater than the current size of the aggregation, the specialDate is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertSpecialDate( oSpecialDate:sap.ui.unified.DateTypeRange, iIndex:Int):sap.ui.unified.calendar.MonthsRow;

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
	* Sets a new value for property {@link #getDate date}.

A date as JavaScript Date object. The month including this date is rendered and this date is focused initially (if no other focus is set). If the date property is not in the range <code>startDate</code> + <code>months</code> in the rendering phase, it is set to the <code>startDate</code>. So after setting the <code>startDate</code> the date should be set to be in the visible range.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oDate New value for property <code>date</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDate( oDate:Dynamic):sap.ui.unified.calendar.MonthsRow;

	/**
	* Sets a new value for property {@link #getIntervalSelection intervalSelection}.

If set, interval selection is allowed

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bIntervalSelection New value for property <code>intervalSelection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIntervalSelection( ?bIntervalSelection:Bool):sap.ui.unified.calendar.MonthsRow;
	@:overload( function(oLegend:sap.ui.core.ID):sap.ui.unified.calendar.MonthsRow{ })

	/**
	* Sets the associated {@link #getLegend legend}.
	* @param	oLegend ID of an element which becomes the new target of this legend association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLegend( oLegend:sap.ui.unified.CalendarLegend):sap.ui.unified.calendar.MonthsRow;

	/**
	* Sets a new value for property {@link #getMonths months}.

Number of months displayed

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>12</code>.
	* @param	iMonths New value for property <code>months</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMonths( ?iMonths:Int):sap.ui.unified.calendar.MonthsRow;

	/**
	* Sets a new value for property {@link #getShowHeader showHeader}.

If set, a header with the years is shown to visualize what month belongs to what year.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowHeader New value for property <code>showHeader</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowHeader( ?bShowHeader:Bool):sap.ui.unified.calendar.MonthsRow;

	/**
	* Sets a new value for property {@link #getSingleSelection singleSelection}.

If set, only a single month or interval, if intervalSelection is enabled, can be selected

<b>Note:</b> Selection of multiple intervals is not supported in the current version.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bSingleSelection New value for property <code>singleSelection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSingleSelection( ?bSingleSelection:Bool):sap.ui.unified.calendar.MonthsRow;

	/**
	* Sets a new value for property {@link #getStartDate startDate}.

Start date, as JavaScript Date object, of the row. The month of this date is the first month of the displayed row.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oStartDate New value for property <code>startDate</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setStartDate( oStartDate:Dynamic):sap.ui.unified.calendar.MonthsRow;
}

typedef MonthsRowArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* A date as JavaScript Date object. The month including this date is rendered and this date is focused initially (if no other focus is set). If the date property is not in the range <code>startDate</code> + <code>months</code> in the rendering phase, it is set to the <code>startDate</code>. So after setting the <code>startDate</code> the date should be set to be in the visible range.
	*/
	@:optional var date:haxe.extern.EitherType<String,Dynamic>;

	/**
	* Start date, as JavaScript Date object, of the row. The month of this date is the first month of the displayed row.
	*/
	@:optional var startDate:haxe.extern.EitherType<String,Dynamic>;

	/**
	* Number of months displayed
	*/
	@:optional var months:haxe.extern.EitherType<String,Int>;

	/**
	* If set, interval selection is allowed
	*/
	@:optional var intervalSelection:haxe.extern.EitherType<String,Bool>;

	/**
	* If set, only a single month or interval, if intervalSelection is enabled, can be selected

<b>Note:</b> Selection of multiple intervals is not supported in the current version.
	*/
	@:optional var singleSelection:haxe.extern.EitherType<String,Bool>;

	/**
	* If set, a header with the years is shown to visualize what month belongs to what year.
	*/
	@:optional var showHeader:haxe.extern.EitherType<String,Bool>;

    /**
    * Date ranges for selected dates. If <code>singleSelection</code> is set, only the first entry is used.

<b>Note:</b> Even if only one day is selected, the whole corresponding month is selected.
    */
	@:optional var selectedDates:Array<haxe.extern.EitherType<String,sap.ui.unified.DateRange>>;

    /**
    * Date ranges with type to visualize special months in the row. If one day is assigned to more than one type, only the first one will be used.

<b>Note:</b> Even if only one day is set as a special day, the whole corresponding month is displayed in this way.
    */
	@:optional var specialDates:Array<haxe.extern.EitherType<String,sap.ui.unified.DateTypeRange>>;

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
	* Month focus changed
	*/
	@:optional var focus:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Month selection changed
	*/
	@:optional var select:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
