package sap.ui.unified.calendar;

@:native("sap.ui.unified.calendar.YearPicker")

/**
* renders a YearPicker with ItemNavigation This is used inside the calendar. Not for stand alone usage. As in all date-time controls, all pubic JS Date objects that are given (e.g. <code>setDate()</code>) or read (e.g. <code>getFirstRenderedDate</code>) with values which are considered as date objects in browser(local) timezone.
*/
extern class YearPicker extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:YearPickerArgs):Void {})
	public function new(?mSettings:YearPickerArgs):Void;

	/**
	* Adds some selectedDate to the aggregation {@link #getSelectedDates selectedDates}.
	* @param	oSelectedDate The selectedDate to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addSelectedDate( oSelectedDate:sap.ui.unified.DateRange):sap.ui.unified.calendar.YearPicker;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:pageChange pageChange} event of this <code>sap.ui.unified.calendar.YearPicker</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.calendar.YearPicker</code> itself.

The <code>pageChange</code> event is fired if the displayed years are changed by user navigation.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.calendar.YearPicker</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPageChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.calendar.YearPicker;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:select select} event of this <code>sap.ui.unified.calendar.YearPicker</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.calendar.YearPicker</code> itself.

Year selection changed
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.calendar.YearPicker</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.calendar.YearPicker;

	/**
	* Destroys all the selectedDates in the aggregation {@link #getSelectedDates selectedDates}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySelectedDates( ):sap.ui.unified.calendar.YearPicker;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:pageChange pageChange} event of this <code>sap.ui.unified.calendar.YearPicker</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPageChange( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.calendar.YearPicker;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:select select} event of this <code>sap.ui.unified.calendar.YearPicker</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelect( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.calendar.YearPicker;

	/**
	* Creates a new subclass of class sap.ui.unified.calendar.YearPicker with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getColumns columns}.

number of years in each row 0 means just to have all years in one row, independent of the number

Default value is <code>4</code>.
	* @return	Value of property <code>columns</code>
	*/
	public function getColumns( ):Int;

	/**
	* Gets current value of property {@link #getDate date}.

Date as JavaScript Date object. For this date a <code>YearPicker</code> is rendered. If a Year is selected the date is updated with the start date of the selected year (depending on the calendar type).
	* @return	Value of property <code>date</code>
	*/
	public function getDate( ):Dynamic;

	/**
	* return the first date of the first rendered year <b>Note:</b> If the YearPicker is not rendered no date is returned
	* @return	JavaScript Date Object
	*/
	public function getFirstRenderedDate( ):Dynamic;

	/**
	* Gets current value of property {@link #getIntervalSelection intervalSelection}.

If set, interval selection is allowed

Default value is <code>false</code>.
	* @return	Value of property <code>intervalSelection</code>
	*/
	public function getIntervalSelection( ):Bool;

	/**
	* Returns a metadata object for class sap.ui.unified.calendar.YearPicker.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getPrimaryCalendarType primaryCalendarType}.

If set, the calendar type is used for display. If not set, the calendar type of the global configuration is used.
	* @return	Value of property <code>primaryCalendarType</code>
	*/
	public function getPrimaryCalendarType( ):sap.ui.core.CalendarType;

	/**
	* Gets content of aggregation {@link #getSelectedDates selectedDates}.

Date Ranges for selected dates of the YearPicker
	* @return	null
	*/
	public function getSelectedDates( ):Array<sap.ui.unified.DateRange>;

	/**
	* Gets current value of property {@link #getYears years}.

number of displayed years

Default value is <code>20</code>.
	* @return	Value of property <code>years</code>
	*/
	public function getYears( ):Int;

	/**
	* Checks for the provided <code>sap.ui.unified.DateRange</code> in the aggregation {@link #getSelectedDates selectedDates}. and returns its index if found or -1 otherwise.
	* @param	oSelectedDate The selectedDate whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfSelectedDate( oSelectedDate:sap.ui.unified.DateRange):Int;

	/**
	* Inserts a selectedDate into the aggregation {@link #getSelectedDates selectedDates}.
	* @param	oSelectedDate The selectedDate to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the selectedDate should be inserted at; for a negative value of <code>iIndex</code>, the selectedDate is inserted at position 0; for a value greater than the current size of the aggregation, the selectedDate is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertSelectedDate( oSelectedDate:sap.ui.unified.DateRange, iIndex:Int):sap.ui.unified.calendar.YearPicker;

	/**
	* displays the next page
	* @return	<code>this</code> to allow method chaining
	*/
	public function nextPage( ):sap.ui.unified.calendar.YearPicker;

	/**
	* displays the previous page
	* @return	<code>this</code> to allow method chaining
	*/
	public function previousPage( ):sap.ui.unified.calendar.YearPicker;

	/**
	* Removes all the controls from the aggregation {@link #getSelectedDates selectedDates}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllSelectedDates( ):Array<sap.ui.unified.DateRange>;
	@:overload( function(vSelectedDate:Int):sap.ui.unified.DateRange{ })
	@:overload( function(vSelectedDate:String):sap.ui.unified.DateRange{ })

	/**
	* Removes a selectedDate from the aggregation {@link #getSelectedDates selectedDates}.
	* @param	vSelectedDate The selectedDate to remove or its index or id
	* @return	The removed selectedDate or <code>null</code>
	*/
	public function removeSelectedDate( vSelectedDate:sap.ui.unified.DateRange):sap.ui.unified.DateRange;

	/**
	* Sets a new value for property {@link #getColumns columns}.

number of years in each row 0 means just to have all years in one row, independent of the number

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>4</code>.
	* @param	iColumns New value for property <code>columns</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumns( iColumns:Int):sap.ui.unified.calendar.YearPicker;

	/**
	* Sets a new value for property {@link #getDate date}.

Date as JavaScript Date object. For this date a <code>YearPicker</code> is rendered. If a Year is selected the date is updated with the start date of the selected year (depending on the calendar type).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oDate New value for property <code>date</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDate( oDate:Dynamic):sap.ui.unified.calendar.YearPicker;

	/**
	* Sets a new value for property {@link #getIntervalSelection intervalSelection}.

If set, interval selection is allowed

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bIntervalSelection New value for property <code>intervalSelection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIntervalSelection( bIntervalSelection:Bool):sap.ui.unified.calendar.YearPicker;

	/**
	* Sets a new value for property {@link #getPrimaryCalendarType primaryCalendarType}.

If set, the calendar type is used for display. If not set, the calendar type of the global configuration is used.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sPrimaryCalendarType New value for property <code>primaryCalendarType</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPrimaryCalendarType( sPrimaryCalendarType:sap.ui.core.CalendarType):sap.ui.unified.calendar.YearPicker;

	/**
	* Sets a new value for property {@link #getYears years}.

number of displayed years

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>20</code>.
	* @param	iYears New value for property <code>years</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setYears( iYears:Int):sap.ui.unified.calendar.YearPicker;
}

typedef YearPickerArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* number of displayed years
	*/
	@:optional var years:haxe.extern.EitherType<String,Int>;

	/**
	* If set, interval selection is allowed
	*/
	@:optional var intervalSelection:haxe.extern.EitherType<String,Bool>;

	/**
	* number of years in each row 0 means just to have all years in one row, independent of the number
	*/
	@:optional var columns:haxe.extern.EitherType<String,Int>;

	/**
	* Date as JavaScript Date object. For this date a <code>YearPicker</code> is rendered. If a Year is selected the date is updated with the start date of the selected year (depending on the calendar type).
	*/
	@:optional var date:haxe.extern.EitherType<String,Dynamic>;

	/**
	* If set, the calendar type is used for display. If not set, the calendar type of the global configuration is used.
	*/
	@:optional var primaryCalendarType:haxe.extern.EitherType<String,sap.ui.core.CalendarType>;

    /**
    * Date Ranges for selected dates of the YearPicker
    */
	@:optional var selectedDates:Array<haxe.extern.EitherType<String,sap.ui.unified.DateRange>>;

	/**
	* The <code>pageChange</code> event is fired if the displayed years are changed by user navigation.
	*/
	@:optional var pageChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Year selection changed
	*/
	@:optional var select:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
