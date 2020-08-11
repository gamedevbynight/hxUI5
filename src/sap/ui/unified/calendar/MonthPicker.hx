package sap.ui.unified.calendar;

@:native("sap.ui.unified.calendar.MonthPicker")

/**
* renders a MonthPicker with ItemNavigation This is used inside the calendar. Not for stand alone usage
*/
extern class MonthPicker extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:MonthPickerArgs):Void {})
	public function new(?mSettings:MonthPickerArgs):Void;

	/**
	* Adds some selectedDate to the aggregation {@link #getSelectedDates selectedDates}.
	* @param	oSelectedDate The selectedDate to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addSelectedDate( oSelectedDate:sap.ui.unified.DateRange):sap.ui.unified.calendar.MonthPicker;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:pageChange pageChange} event of this <code>sap.ui.unified.calendar.MonthPicker</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.calendar.MonthPicker</code> itself.

If less than 12 months are displayed the <code>pageChange</code> event is fired if the displayed months are changed by user navigation.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.calendar.MonthPicker</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPageChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.calendar.MonthPicker;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:select select} event of this <code>sap.ui.unified.calendar.MonthPicker</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.calendar.MonthPicker</code> itself.

Month selection changed
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.calendar.MonthPicker</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.calendar.MonthPicker;

	/**
	* Destroys all the selectedDates in the aggregation {@link #getSelectedDates selectedDates}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySelectedDates( ):sap.ui.unified.calendar.MonthPicker;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:pageChange pageChange} event of this <code>sap.ui.unified.calendar.MonthPicker</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPageChange( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.calendar.MonthPicker;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:select select} event of this <code>sap.ui.unified.calendar.MonthPicker</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelect( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.calendar.MonthPicker;

	/**
	* Creates a new subclass of class sap.ui.unified.calendar.MonthPicker with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getColumns columns}.

number of months in each row The value must be between 0 and 12 (0 means just to have all months in one row, independent of the number)

Default value is <code>3</code>.
	* @return	Value of property <code>columns</code>
	*/
	public function getColumns( ):Int;

	/**
	* Gets current value of property {@link #getIntervalSelection intervalSelection}.

If set, interval selection is allowed

Default value is <code>false</code>.
	* @return	Value of property <code>intervalSelection</code>
	*/
	public function getIntervalSelection( ):Bool;

	/**
	* Returns a metadata object for class sap.ui.unified.calendar.MonthPicker.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getMonth month}.

The month is initial focused and selected The value must be between 0 and 11

Default value is <code>0</code>.
	* @return	Value of property <code>month</code>
	*/
	public function getMonth( ):Int;

	/**
	* Gets current value of property {@link #getMonths months}.

number of displayed months The value must be between 1 and 12

Default value is <code>12</code>.
	* @return	Value of property <code>months</code>
	*/
	public function getMonths( ):Int;

	/**
	* Gets current value of property {@link #getPrimaryCalendarType primaryCalendarType}.

If set, the calendar type is used for display. If not set, the calendar type of the global configuration is used.
	* @return	Value of property <code>primaryCalendarType</code>
	*/
	public function getPrimaryCalendarType( ):sap.ui.core.CalendarType;

	/**
	* Gets content of aggregation {@link #getSelectedDates selectedDates}.

Date Ranges for selected dates of the MonthPicker
	* @return	null
	*/
	public function getSelectedDates( ):Array<sap.ui.unified.DateRange>;

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
	public function insertSelectedDate( oSelectedDate:sap.ui.unified.DateRange, iIndex:Int):sap.ui.unified.calendar.MonthPicker;

	/**
	* displays the next page
	* @return	<code>this</code> to allow method chaining
	*/
	public function nextPage( ):sap.ui.unified.calendar.MonthPicker;

	/**
	* displays the previous page
	* @return	<code>this</code> to allow method chaining
	*/
	public function previousPage( ):sap.ui.unified.calendar.MonthPicker;

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

number of months in each row The value must be between 0 and 12 (0 means just to have all months in one row, independent of the number)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>3</code>.
	* @param	iColumns New value for property <code>columns</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumns( ?iColumns:Int):sap.ui.unified.calendar.MonthPicker;

	/**
	* Sets a new value for property {@link #getIntervalSelection intervalSelection}.

If set, interval selection is allowed

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bIntervalSelection New value for property <code>intervalSelection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIntervalSelection( ?bIntervalSelection:Bool):sap.ui.unified.calendar.MonthPicker;

	/**
	* Sets a new value for property {@link #getIntervalSelection intervalSelection}.

If set, interval selection is allowed

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bIntervalSelection New value for property <code>intervalSelection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIntervalSelection( bIntervalSelection:Bool):sap.ui.unified.calendar.MonthPicker;

	/**
	* sets a minimum and maximum month
	* @param	iMin minimum month as integer (starting with 0)
	* @param	iMax maximum month as integer (starting with 0)
	* @return	<code>this</code> to allow method chaining
	*/
	public function setMinMax( ?iMin:Int, ?iMax:Int):sap.ui.unified.calendar.MonthPicker;

	/**
	* Sets a new value for property {@link #getMonth month}.

The month is initial focused and selected The value must be between 0 and 11

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iMonth New value for property <code>month</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMonth( ?iMonth:Int):sap.ui.unified.calendar.MonthPicker;

	/**
	* Sets a new value for property {@link #getMonths months}.

number of displayed months The value must be between 1 and 12

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>12</code>.
	* @param	iMonths New value for property <code>months</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMonths( ?iMonths:Int):sap.ui.unified.calendar.MonthPicker;

	/**
	* Sets a new value for property {@link #getPrimaryCalendarType primaryCalendarType}.

If set, the calendar type is used for display. If not set, the calendar type of the global configuration is used.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sPrimaryCalendarType New value for property <code>primaryCalendarType</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPrimaryCalendarType( sPrimaryCalendarType:sap.ui.core.CalendarType):sap.ui.unified.calendar.MonthPicker;
}

typedef MonthPickerArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The month is initial focused and selected The value must be between 0 and 11
	*/
	@:optional var month:haxe.extern.EitherType<String,Int>;

	/**
	* number of displayed months The value must be between 1 and 12
	*/
	@:optional var months:haxe.extern.EitherType<String,Int>;

	/**
	* If set, interval selection is allowed
	*/
	@:optional var intervalSelection:haxe.extern.EitherType<String,Bool>;

	/**
	* number of months in each row The value must be between 0 and 12 (0 means just to have all months in one row, independent of the number)
	*/
	@:optional var columns:haxe.extern.EitherType<String,Int>;

	/**
	* If set, the calendar type is used for display. If not set, the calendar type of the global configuration is used.
	*/
	@:optional var primaryCalendarType:haxe.extern.EitherType<String,sap.ui.core.CalendarType>;

    /**
    * Date Ranges for selected dates of the MonthPicker
    */
	@:optional var selectedDates:Array<haxe.extern.EitherType<String,sap.ui.unified.DateRange>>;

	/**
	* If less than 12 months are displayed the <code>pageChange</code> event is fired if the displayed months are changed by user navigation.
	*/
	@:optional var pageChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Month selection changed
	*/
	@:optional var select:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
